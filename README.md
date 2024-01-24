EJERCICIO 1

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




 EJERCICIO 2
- Deberás de crear una clase en flutter que sea una plantilla de los botones, en la que le pases el argumento de texto y  sustituirlo  por los 3 botones que tenemos → 2 puntos
- Darle funcionalidad a los botones, cambios solo por consola → 2 puntos
- Cambios por pantalla → 4 puntos.
- README → 2 puntos.

En este ejercicio he implementado la funcionalidad del contador haciendo que se actualize el texto del centro dependiendo de cual de los 3 botones se pulse. Proporciono capturas del resultado y explico:

[![ejercicio2flutter.png](https://i.postimg.cc/zvVkJTHp/ejercicio2flutter.png)](https://postimg.cc/D43G6Jgb)







[![ej2flutter.png](https://i.postimg.cc/fyGYDpNT/ej2flutter.png)](https://postimg.cc/7JN5NBhp)





Como podemos ver, dependiendo de el boton que se pulse se mostrará la suma, resta o reseteo del contador por pantalla además de verse también por consola.
Para realizar este ejercicio he creado otra clase stateless widget que será la plantilla de los botones. Para ello he programado la plantilla de forma que requiera texto y la función onTap de la que hablaré mas adelante. 

En la clase principal he sustituido donde tenia los botones por el nuevo metodo creado. También he eliminado el widget buildButton ya que para hacer la plantilla me iba a ser mas complicado y he puesto las propiedades del boton dentro del build.

Para la funcionalidad de los botones he creado una variable String text y otra variable del tipo VoidCallback llamada onTap. VoidCallback es un tipo de función de retorno de llamada (callback) que no recibe ningún argumento y no devuelve ningún valor, se suele usar para botones para que reciba el onTap, como es el caso. haciendo esto conseguimos que onTap se comporte como una variable callback que permite que el widget sepa qué acción ejecutar cuando se produce un evento de toque.ç

En la clase principal he creado 2 variables: Una de tipo int contador = 0 y otra de tipo TextEditingController contadorController = TextEditingController().  TextEditingController es una clase en Flutter que se utiliza para controlar y manipular el contenido de un widget de entrada de texto como es este caso actualizar el numero por pantalla. Despues he igualado la variable contadorController al contador haciendo un toString en el build.
  

Sabiendo esto ya solo queda añadir el texto que habra en cada boton y añadirle el onTap para que cuando se pulse el boton del texto '+', '-' o 'RESET',se haga un contador++, contador-- y contador==0 respectivamente además de un print(contador) para que se vea por consola tambien.


Como extra para añadir he tenido que cambiar la clase principal de stateless a statefull para que el numero se actualide al momento de pulsar el boton. Y tambien que he utilizado setState() dentro del onTap ya que es un metodo que notifica al widget de que tiene que actualizar el build ya que va a haber un cambio.