Crea un nuevo PROYECTO y crea el contador que creamos en android(sin funcionalidad por ahora).


En este proyecto he tenido que replicar el contador que hice en Android Studio pero utilizando Flutter solo para la parte visual.
A continuacion adjunto una imagen del resultado final y despues explicaré los puntos importantes que me han llevado a realizar el ejercicio.


[![ej02acceso.png](https://i.postimg.cc/JnQD9Qtg/ej02acceso.png)](https://postimg.cc/PpP5DYWz)


Para modificar el color de fondo y hacer que sea igual al del proyecto del contador he tenido que crear una variable  final Color customGreyColor en el que he puesto el color fromRGBO que mas se parecía para después en el themedata usando el  ColorScheme.fromSwatch y primarySwatch: MaterialColor he ido aplicando el mismo color a las diferentes tonalidades que hay desde la mas clara a la mas oscura para mantener una consistencia visual dentro del tema de la aplicación.




Para que el texto de contador esté en la posicion y mismas caracteristicas del del proyecto de Android he tenido que crear un column en el body en el que irán todos los elementos de la pagina y despues aplicar al texto propiedades como MainAxisAlignment.start, un padding con const EdgeInsets.only(top: 20.0) que representa el margen superior para que el texto no este pegado arriba y despues en TextStyle he ido modificando el tamaño de la letra, el color y el grosor hasta conseguir el resultado final.



Para el texto del 0 he utilizado el Expanded que se utiliza para ocupar el espacio disponible en un widget padre, en este caso el column que ya he mencionado y lo he puesto para que ocupe el espacio vertical de la forma padding: EdgeInsets.symmetric(vertical: 20.0)
Tambien he puesto el center para que el 0 siempre este posicionado en el centro de la pantalla y que sea Responsive y tambien he modificado las propiedades de la letra como las del texto del contador pero modificando ligeramente la fuente y el grosor de la letra.


Dentro del extended tambien he añadido los tres botones utilizando el widget _buildbutton. Los he metido en un padding y despues un child:Row para que esten horizontalmente uno al lado del otro. Dentro del _buildbutton he modificado las propiedades de los btotones para modificar el color, el texto de dentro de cada uno, la separacion entre ambos y entre otras cosas utilizando mismos widgets y otros elementos ya mencionados (width,height,style: TextStyle...).


Finalmente he añadido el texto de bienvenida del pie de pagina fuera del Expanded y utilizando padding: EdgeInsets.only y TextStyle para lograr la posicion y propiedades de la letra para acabar con el resultado que se ve por pantalla.