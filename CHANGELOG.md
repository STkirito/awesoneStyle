## [1.2.0] - Stable
### Abstract
	#### - AwsAuth:
		Es una clase abstracta que sirve para crear un Auth que incluye los métodos `login()`, `createUser()`, logout y `readToken()`.
	#### - AwsLoginRegister:
		Es una clase Abstracta que sirve para crear una clase con los métodos `validationLogin()` y `validationRegister()`.
---- 
### Constant
	#### - Animation:
		Contiene todas las animaciones del paquete [animate_do: 2.1.0] en un enum.
		_Nota: puede cambiar de nombre y contenido en una futura actualización._
	#### - Button:
		##### -AwsButtonDialog:
			Es un enum que contiene: ok, change y cancel.
		##### -AwsButtonType:
			Es un enum que contiene: text y iconText.
	#### - Direction:
		##### - AwsWidgetDirections
			Es un en un que contiene: horizontal y vertical.
	#### - formatter
		##### - AwsFormatter:
			###### - `AwsFormatter.formatter`: Da como resultado (año/mes/dia).
			###### - `AwsFormatter.formatterCard`: Da como resultado (año/mes).
			###### - `AwsFormatter.formatterTime`: Da como resultado (hora/minutos/(am o pm)).
	#### - Orientation:
		##### - AwsChildrenOrientation:
			Es un enum que contiene: row y column.
---- 
### Function
	#### - Validation:
		##### - AwsValidation: es una clase que contiene métodos estáticos de validación.
			###### - `AwsValidation.validationEmailAndPassword(...)`: Este método valida el email y él password y retorna un bool o ejecuta un GetSnackBar.
			###### - `AwsValidation.login(...)`: Este método realiza el login y espera unos parámetros como:
					- email (String)
					- password (String)
					- isLoading (Function(bool))
					- authService (AwsAuth)
					- result (Function(bool))
					regresa los resultados en los paramento indicados y ejecuta un GetSnackBar dependiendo de las validaciones internas realizadas.
			###### - `AwsValidation.validationPassword`: Este método recibe un `String value` y retorna un bool.
			###### - `AwsValidation.register`: Este método realiza el registro y espera unos parámetros como:
					- form (bool)
					- isLoading (Function(bool))
					- authService (AwsAuth)
					- email (String)
					- password (String)
					- result (Function(bool))
					regresa los resultados en los paramento indicados y ejecuta un GetSnackBar dependiendo de las validaciones internas realizadas.
		_Nota: los métodos `login()` y `register()`, funciona con **firebase**._
---- 
### Generators
	#### - `AwsGenerator.year(…)`: 
		genera un rango de años desde 1923 hasta la actualidad, puede ingresar el `int start `y `int finish` como parámetros.
---- 
### Models
	#### - AwsArguments:
		Es una clase que puede contener:
		- string (String)
		- index (index)
		- route (String)
		- id (String)
		- file (File)
		se usa para enviar argumentos en el Navigator o con Getx.
	#### - DateSettings:
		 Es una clase que se usa en el widget AwsDatePicker.
	#### - Date:
		Es una clase que puede contener:
		- day (String)
		- moth (String)
		- year (String)
		y tiene el metodo `isEmpty()`.
	#### - GradientSettings:
			es una clase que se usa para configurar el gradiente en el widget AwsGradientButton.
	#### - BoxShadowSettings
			es una clase que se usa para configurar el Shadow en el widget AwsGradientButton.
---- 
### Router
	#### - AwsRouter:
	- `AwsRouter.routeIsDeviceName`: Es un método estático que espera los dispositivos que soportara la aplicación como también el tamaño de la pantalla y retornara routeName respectivo a cada plataforma.
---- 
### Services
	#### - AwsConnection:
		Es una clase de tipo GetxController que verifica la conectividad a una red y la conexión a una url por defecto hace ping a la url de google. 
	#### - AwsScreenSize:
		Es una clase que retorna un width o height, dependiendo de lo que necesites usando el contexto para obtener el tamaño de la pantalla y se usan en base a porcentajes.
		- Se debe crear el `AwsScreenSize(context)`, de bajo del método `build(BuildContext context)`.
		Después de crear `AwsScreenSize(context)`, puedes usar.
		- `AwsScreenSize.width(100)`, Es similar a un double.infinity
		- `AwsScreenSize.height(60)`, Es el 60% de toda la pantalla en altura.
---- 
### Style
	Contiene diferentes estilos que se pueden usar:
	- BoxDecoration
	- Random
	- Color
	- InputDecoration
	- y otros.
---- 
### Widgets
	#### - Animation:
		###### - AwsAniWidget:
			Es un widget universal para que es compatible con animete_do y contiene todas sus animaciones y sus configuraciones para facilitar su usó.
				AniWidget(
					animation: AwsAnimationDo.spin,
					child: GradientButton.text(
					  boxShadow: true,
					  text: Text(‘text’,style: TextStyle(color: Colors.white),),
					  onPressed: () \{},
					),
				  ),

	#### - Buttons:
		##### - AwsBuildPressMenu:
				Es un button que puede ser row y column en cualquier momento y contiene un scroll.
		##### - AwsFlatButton:
				Es un button custom de FlatButton.
		##### - AwsGetButton:
				Es un button orientado a usarse en un login o registro principalmente.
		##### - AwsGradientButton:
				Es un button que contiene un gradiente con un boxShadow que se activa cuando el mouse este sobre él, contiene button normal (`AwsGradienteButton(…)`) y button text (`AwsGradienteButton.text(…)`).
		##### - AwsLinkText:
				Es un button text que detecta si el mouse esta sobre él y activa su propiedad isHover o notHover para cambiar su estado, recomendado para enlaces web.
		##### - AwsOutlinedButton:
				Es un custom Button de OutlinedButton.
		##### - AwsSocialButton:
				Es un button para redes sociales.
		##### - AwsTcButton:
				Es un button que contiene un checkbox para verificar una aceptación del usuario de un tc(Términos y Condiciones) o otro similar.
		##### - AwsUserButton:
				Es un button que actualmente solo contiene `AwsUserButton.circleAvatar(…)`.
	#### - Calendar
			Contiene widgets para calendar_view, son similares o iguales y se pueden usar agregando `Aws`, antes del nombre del widget de calendar_view.
	#### - Form
		##### - AwsDateFormField:
				Es un Widget que puede manejar la fecha dentro de un form.
		##### - AwsTimeFormField:
				Es un widget que maneja la hora y minuto en formato 24horas dentro de un form.
	#### - Input
		##### - AwsAreaTextField:
				Es un input de tipo area.
		##### - AwsUserInputField:
				Es un input para ser usado principalmente en un login o registro.
		##### - AwsUserInputSecondField:
				Es un input similar a **AwsUserInputField** para ser usado principalmente en un login o registro.
	#### - Picker
		##### - AwsDatePicker:
				Es un widget que se usa para fechas desde un dialog como Get.dialog().
		##### - AwsTimePicker:
				Es un widget que se usa para horas y minutos desde un dialog como Get.dialog().
---- 
### Enlaces:
se puede acceder los componentes de AwesoneStyle desde el enlace principal o desde el enlace de su categoría.		
---- 
### Nota Importante
Los paquetes como animate\_do, calendar\_view y sus widgets o otros dependientes puede quedar fuera del paquete en futuras actualizaciones de momento no hay un plan inmediato de reemplazo pero sí se asegura que tendrán un reemplazo.

## [1.1.0] - Stable
- class, components, constants, functions, generators, models, services.
## [1.0.0] - Stable
- class, components, constants, functions, generators, models, services.