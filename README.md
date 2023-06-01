AwesoneStyle es un paquete multiplataforma que contiene un conjunto de herramientas de código abierto bajo la Licencia Apache(Versión 2.0), para diseño de sitios, aplicaciones web, aplicaciones móviles y de escritorio.

## nota: funciona en casi todas las plataformas sin problemas.

### Formatter
	- formatter
		- AwsFormatter:
			- `AwsFormatter.formatter`: Da como resultado (año/mes/dia).
			- `AwsFormatter.formatterCard`: Da como resultado (año/mes).
			- `AwsFormatter.formatterTime`: Da como resultado (hora/minutos/(am o pm)).
			- `AwsFormatter.completTime`: es una funcion que retorna un formato (hora:minuto).
			- `AwsFormatter.parseDateTime` esta funcion que retorna un datatime a partir de un datatime y un time lo cual los fusiona en un datatime.
---- 
### Generators
	- AwsGenerator: 
		- year: es un metodo estatico que genera un rango de años desde 1923 hasta la actualidad, puede ingresar el `int start `y `int finish` como parámetros.
---- 
### Arguments
	- AwsArguments:
		Es una clase que puede contener:
		- string (String)
		- index (index)
		- route (String)
		- id (String)
		- file (File)
		- map (Map)
		- object (Object)
		- type (Type)
		- dinamic (dynamic)
		- mudable (var)
		- events (List<CalendarEventData>)
		- email (String)
		- password (String)
		- result (Object)
		se usa para enviar argumentos de una pantalla a otra.
----
### Services
	- AwsConnection:
		Es una clase que verifica la conectividad a una red y la conexión a una url por defecto hace ping a la url de google. 
	- AwsScreenSize:
		Es una extension del context al cual podemos acceder mediante los metodos width o height los cuales retornan un width o height dinamico, solo es necesario establecer el tamaño en porcentajes.
	- AwsStorage: crea, copia y elimina directorios o files.
---- 
### Widgets
	- Animation:
		- AwsAniWidget:
			Es un widget universal que contiene distintas animaciones, más de 40 animaciones extraidas de animate_do.
		- AwsAnimation: es un Widget de animacion que se actualiza si hay cambios en su controller.
		- AwsAnimationWidget: es un widget de animacion que se actualiza si hay cambios en su controller sin la necesidad de usar un statefullwidget para iniciar el controlador ya que dispone de AwsAnimationProperty para su definición y para acceder a su propiedades se debe usar AwsAnimation(ejemplo:AwsAnimation.of.value) y para usarlo se usar un AnimationController.

	- Buttons:
		- AwsBuildPressMenu:
				Es un button que puede ser row y column en cualquier momento y contiene un scroll.
		- AwsFlatButton:
				Es un button custom de FlatButton.
		- AwsGetButton:
				Es un button orientado a usarse en un login o registro principalmente.
		- AwsGradientButton:
				Es un button que contiene un gradiente con un boxShadow que se activa cuando el mouse este sobre él, contiene button normal (`AwsGradienteButton(…)`) y button text (`AwsGradienteButton.text(…)`).
		- AwsLinkText:
				Es un button text que detecta si el mouse esta sobre él y activa su propiedad isHover o notHover para cambiar su estado, recomendado para enlaces web.
		- AwsOutlinedButton:
				Es un custom Button de OutlinedButton.
		- AwsSocialButton:
				Es un button para redes sociales.
		- AwsTcButton:
				Es un button que contiene un checkbox para verificar una aceptación del usuario de un tc(Términos y Condiciones) o otro similar.
		- AwsUserButton:
				Es un button que actualmente solo contiene `AwsUserButton.circleAvatar(…)`.
		-AwsAnimationButton:
				Es un button que se compone de 3 fases,cada fase tiene su animación, se puede usar para peticiones que requieran un tiempo de respuesta.
		-AwsTextRowButton:
				Es un widget que contiene un texto y un button
	- Form:
		- AwsDateFormField:
				Es un Widget que puede manejar la fecha dentro de un form.
		- AwsTimeFormField:
				Es un widget que maneja la hora y minuto en formato 24horas dentro de un form.
	- Input:
		- AwsAreaTextField:
				Es un input de tipo area.
		- AwsUserInputField:
				Es un input para ser usado principalmente en un login o registro.
		- AwsUserInputSecondField:
				Es un input similar a **AwsUserInputField** para ser usado principalmente en un login o registro.
	- Picker:
		- AwsDatePicker:
				Es un widget que se usa para fechas desde un dialog como Get.dialog().
		- AwsTimePicker:
				Es un widget que se usa para horas y minutos desde un dialog como Get.dialog().
---- 
### Riverpod
	- AwsRiverpodController: es una clase para unificar un provider de riverpod.
	- AwsRiverpodMultiController: es una clase que reuni todos los providers de riverpod en un mapa.
	- AwsRiverpodWidget: es un widget que nos permite acceder de forma mas sencilla a un provider(riverpod) o varios.
### Enlaces:
se puede acceder los componentes de AwesoneStyle desde el enlace principal o desde el enlace de su categoría.		
---- 
### Nota Importante
calendar_view y animate_do fueron eliminados de este paquete.
animate_do se implemento de forma nativa para no requerir su dependencia.
implementación modificada de chornthorn.data_connection_checker.

