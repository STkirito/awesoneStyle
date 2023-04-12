import 'dart:async';
import 'dart:io';

/// Representa el estado de la conexión de datos.
/// Devuelto por [AwsConnection.connectionStatus]
enum AwsConnectionStatus {
  disconnected,
  connected,
}

/// Este es un singleton al que se puede acceder como un constructor regular
/// es decir, DataConnectionChecker() siempre devuelve la misma instancia.
class AwsConnection {
  /// El puerto predeterminado de conexión es 53.
  ///
  /// Para más información consulte "https://www.google.com/search?q=dns+server+port".
  static const int defaultPort = 53;

  /// El tiempo de espera predeterminado es de 10 segundos antes de que se elimine una solicitud inalcanzable.
  static const Duration defaultTimeOut = Duration(seconds: 10);

  /// El intervalo de solicitudes se realiza cada 10 segundos por defecto.
  static const Duration defaultInterval = Duration(seconds: 10);

  set alternateInterval(Duration interval) => checkInterval = interval;

  /// Direcciones fiables predefinidas.
  /// google: "1.1.1.1" y "8.8.4.4".
  /// opendns: "208.67.222.222".

  static final List<AwsConnectionOption> defaultAddresses = List.unmodifiable([
    AwsConnectionOption(
      address: InternetAddress('1.1.1.1'),
      port: defaultPort,
      timeout: defaultTimeOut,
    ),
    AwsConnectionOption(
      address: InternetAddress('8.8.4.4'),
      port: defaultPort,
      timeout: defaultTimeOut,
    ),
    AwsConnectionOption(
      address: InternetAddress('208.67.222.222'),
      port: defaultPort,
      timeout: defaultTimeOut,
    ),
  ]);

  List<AwsConnectionOption> addresses = defaultAddresses;
  //final List<AwsConnectionOption>? alternateAddresses;
  set alternateAddresses(List<AwsConnectionOption> addresses) =>
      this.addresses = addresses;

  /// Este es un singleton al que se puede acceder como un constructor regular
  /// es decir, DataConnectionChecker() siempre devuelve la misma instancia.
  factory AwsConnection() {
    return _instance;
  }
  AwsConnection._() {
    // realizar inmediatamente una comprobación inicial para que sepamos el último status?
    // estado de conexión.entonces((status) => _últimoestado = status);

    // comienza a enviar actualizaciones de estado a onStatusChange cuando hay oyentes
    // (emite solo si hay algún cambio desde la última actualización de estado)

    _statusController.onListen = () {
      _maybeEmitStatusUpdate();
    };
    // deja de enviar actualizaciones de estado cuando nadie está escuchando
    _statusController.onCancel = () {
      _timerHandle?.cancel();
      _lastStatus = null; // restablecer el último estado
    };
  }
  static final AwsConnection _instance = AwsConnection._();

  /// Hacer ping a una sola dirección. Ver [AwsConnectionOption] para más
  /// información sobre el argumento aceptado.
  Future<AwsConnectionResult> isHostReachable(
      AwsConnectionOption option) async {
    Socket? socket;
    try {
      socket = await Socket.connect(
        option.address,
        option.port,
        timeout: option.timeout,
      );
      socket.destroy();
      return AwsConnectionResult(option, true);
    } catch (e) {
      socket?.destroy();
      return AwsConnectionResult(option, false);
    }
  }

  /// Devuelve los resultados de la última comprobación.
  ///
  /// La lista se rellena sólo cuando [hasConnection]
  /// (o [connectionStatus]) se llama.
  List<AwsConnectionResult> get lastTryResults => _lastTryResults;
  List<AwsConnectionResult> _lastTryResults = <AwsConnectionResult>[];

  /// Inicia una solicitud a cada dirección en [addresses].
  /// Si al menos una de las direcciones es accesible
  /// asumimos que hay una conexión a Internet disponible y devolvemos `true`.
  /// `falso` en caso contrario.
  Future<bool> get hasConnection async {
    var requests = <Future<AwsConnectionResult>>[];

    for (var addressOptions in addresses) {
      requests.add(isHostReachable(addressOptions));
    }
    _lastTryResults = List.unmodifiable(await Future.wait(requests));

    return _lastTryResults.map((result) => result.isSuccess).contains(true);
  }

  /// Inicia una solicitud a cada dirección en [addresses].
  /// Si al menos una de las direcciones es accesible
  /// asumimos que hay una conexión a Internet disponible y devolvemos `true`
  /// [AwsConnectionStatus.connected].
  /// [AwsConnectionStatus.disconnected] de lo contrario.
  Future<AwsConnectionStatus> get connectionStatus async {
    return await hasConnection
        ? AwsConnectionStatus.connected
        : AwsConnectionStatus.disconnected;
  }

  /// El intervalo entre comprobaciones periódicas. Los controles periódicos
  /// solo se hace si hay un oyente adjunto [onStatusChange].
  /// Si ese es el caso [onStatusChange] emite una actualización sólo si
  /// hay cambio desde el estado anterior.
  ///
  /// Por defecto es [defaultInterval] (10 segundos).
  Duration checkInterval = defaultInterval;

  // Comprueba el estado actual, lo compara con el anterior y emite
  // un evento solo si hay un cambio y hay oyentes adjuntos
  //
  // Si hay oyentes, se inicia un temporizador que vuelve a ejecutar esta función
  // después del tiempo especificado en 'checkInterval'
  Future<void> _maybeEmitStatusUpdate([Timer? timer]) async {
    // por si acaso
    _timerHandle?.cancel();
    timer?.cancel();

    var currentStatus = await connectionStatus;

    // solo envía la actualización de estado si el último estado difiere del actual
    // y si alguien realmente está escuchando
    if (_lastStatus != currentStatus && _statusController.hasListener) {
      _statusController.add(currentStatus);
    }

    // inicia un nuevo temporizador solo si hay oyentes
    if (!_statusController.hasListener) return;
    _timerHandle = Timer(checkInterval, _maybeEmitStatusUpdate);

    // actualiza el ultimo estado
    _lastStatus = currentStatus;
  }

// _lastStatus solo debe establecerse mediante _maybeEmitStatusUpdate()
  // y el controlador de eventos _statusController's.onCancel
  AwsConnectionStatus? _lastStatus;
  Timer? _timerHandle;

  // controlador para el flujo 'onStatusChange' expuesto
  final StreamController<AwsConnectionStatus> _statusController =
      StreamController.broadcast();

  /// Suscríbete a esta transmisión para recibir eventos cada vez que
  /// [AwsConnectionStatus] cambios. Cuando un oyente está conectado
  /// se realiza una comprobación inmediatamente y el estado([AwsConnectionStatus])
  /// se emite. Después de eso, se inicia un temporizador que realiza
  /// verifica con el intervalo especificado.
  ///
  /// *Mientras haya un oyente adjunto, se realizan comprobaciones,
  /// así que recuerda desechar las suscripciones cuando ya no las necesites.*
  ///
  /// Example:
  ///
  /// ```dart
  /// var listener = AwsConnection().onStatusChange.listen((status) {
  ///   switch(status) {
  ///     case AwsConnectionStatus.connected:
  ///       print('Data connection is available.');
  ///       break;
  ///     case AwsConnectionStatus.disconnected:
  ///       print('You are disconnected from the internet.');
  ///       break;
  ///   }
  /// });
  /// ```
  ///
  /// *Nota: Recuerde deshacerse de cualquier oyente,
  /// cuando ya no se necesitan,
  /// p.ej. en un* método *dispose() de `StatefulWidget`*
  ///
  /// ```dart
  /// ...
  /// @override
  /// void dispose() {
  ///   listener.cancel();
  ///   super.dispose();
  /// }
  /// ...
  /// ```
  ///
  /// Mientras haya un oyente adjunto, las solicitudes son
  /// se hace con un intervalo de `checkInterval`. el temporizador se detiene
  /// cuando se ejecuta actualmente una comprobación automática, por lo que este intervalo
  /// en realidad es un poco más largo (el máximo sería `checkInterval`
  /// el tiempo de espera máximo para una dirección en `direcciones`). Esto es por diseño
  /// para evitar múltiples llamadas automáticas a `connectionStatus`, que
  /// haría estragos.
  ///
  /// Puede, por supuesto, anular este comportamiento implementando su propio
  /// variación de verificaciones basadas en el tiempo y llamando a `connectionStatus`
  /// o `hasConnection` tantas veces como quieras.
  ///
  /// Cuando todos los oyentes se eliminan de `onStatusChange`, el interno
  /// el temporizador se cancela y la transmisión no emite eventos.
  Stream<AwsConnectionStatus> get onStatusChange => _statusController.stream;

  /// Devuelve verdadero si hay algún oyente adjunto [onStatusChange]
  bool get hasListeners => _statusController.hasListener;

  // Alias ​​para [hasListeners]
  bool get isActivelyChecking => _statusController.hasListener;
}

/// [AwsConnectionOption] es una clase que contiene los datos necesarios para realizar una conexión.
/// El puerto predeterminado de conexión es 53.
///
/// Para más información consulte "https://www.google.com/search?q=dns+server+port".
///
/// El tiempo de espera predeterminado es de 10 segundos antes de que se elimine una solicitud inalcanzable.
class AwsConnectionOption {
  final InternetAddress address;
  final int port;
  final Duration timeout;

  AwsConnectionOption({
    required this.address,
    required this.port,
    required this.timeout,
  });

  @override
  String toString() => 'AddressCheckOptions($address, $port, $timeout)';
}

/// [AwsConnectionResult] es una clase que brinda el estado de la conexión como tambien [AwsConnectionOption].
class AwsConnectionResult {
  final AwsConnectionOption options;
  final bool isSuccess;

  AwsConnectionResult(
    this.options,
    this.isSuccess,
  );

  @override
  String toString() => 'AddressCheckResult($options, $isSuccess)';
}
