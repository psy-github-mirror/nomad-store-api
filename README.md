# Building a Site Connectivity Checker - Real Python

<details> <summary><b>videos</b></summary>

<br>


> <details> <summary>01. Building a Site Connectivity Checker (Overview)</summary>
>
> <br>
>
> - Notes:
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  construir un verificador de conductividad del sitio en python
construir un verificador de conectividad lateral en python
es un proyecto interesante para subir de nivel
sus habilidades
con este proyecto integrará conocimientos
relacionados con el manejo de solicitudes http
crear una interfaz de línea de comando es
y organizar el código de sus aplicaciones usando prácticas comunes
python en voz alta
al crear este proyecto, aprenderá cómo
las características asincrónicas de Python pueden ayudarlo a manejar
con las solicitudes moto http de manera eficiente
en este curso aprenderá cómo
crear una interfaz de línea de comando es usando pythons
no pasan
verifique que el sitio web esté en línea usando pythons
cliente de documentación http de la biblioteca estándar
implemente verificaciones síncronas para múltiples sitios web
verifique si el sitio web está en línea usando
la biblioteca de terceros io http
e implemente asíncrono busca múltiples web
sitios
para aprovechar al máximo este proyecto
necesita conocer los conceptos básicos de
manejo de solicitudes http sts y usando nuestro poder
para crear ver aliados
también debe estar familiarizado con el
creo que debo el módulo y el
un fregadero y espero palabras clave pero
no se preocupe, los temas a lo largo del curso
se presentarán en un paso a paso
paso a paso para que puedas comprender
a medida que avanzas
además, puedes descargar el código fuente completo
para el proyecto como parte de
los materiales del curso incluidos
así que ahora sabes lo que se va a cubrir
comencemos
>
> </details>
>
> </details>

<br>


> <details> <summary>02. Understanding the Project Details</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  detalles del proyecto
en este curso creas una aplicación
que verifica si uno o más sitios web
están en línea en un momento dado el
apu toma una lista de años objetivo
que la línea de comando y los verifica
para conectividad, ya sea sincrónica lee o asíncrono
lee
en la pantalla puede ver la aplicación
en acción
la verificación de conductividad del sitio puede tomar
uno o más euros que el comando
línea a luego crea una lista interna
de urinarios objetivo y los verifica en busca de
conectividad emitiendo solicitudes http y procesamiento
las respuestas correspondientes
la aplicación de verificación de conectividad de su sitio web proporcionará
algunas opciones para un comando mínimo
interfaz de línea, también conocida como ver
aliado, aquí hay un resumen de estas opciones
usted está despierto le permite
proporcionar uno o más urinarios objetivo en
la línea de comando
f o el archivo de entrada le permite
suministrar un archivo que contiene una lista de
su casa para comprobar
a o asíncrono permite que ejecute
las comprobaciones de conectividad asincrónicas lee
por defecto la aplicación ejecutará las
comprobaciones de conectividad sincrónicas lee en otras palabras
realizará las comprobaciones una después de
otra
con la opción a o asincrónica usted
puede modificar este comportamiento y hacer la
aplicación ejecuta las comprobaciones de conectividad al mismo tiempo que
hace esto, aprovechará las funciones asincrónicas de pythons
y la biblioteca io http de terceros
parte
este modo puede hacer que la conectividad de su sitio web
compruebe una forma más rápida y eficiente, especialmente
cuando tiene una larga lista de
usted debe verificar
internamente su aplicación usará el estándar
library http doc client mojo para crear
una conexión a su sitio web de destino
una vez que tenga una conexión, entonces
puede realizar una solicitud http a
 sitio web que, con suerte, reaccionará con una
respuesta apropiada
si la solicitud tiene éxito entonces
sabrá que el sitio está en línea de lo contrario
usted sabe que el sitio está fuera de línea
para mostrar el resultado de cada conectividad
verifique en su pantalla que proporcione su
aplicación para obtener un resultado con un formato agradable que
hará que los usuarios se sientan atractivos
el proyecto que está construyendo este curso
requerirá familiaridad con programación general de python
además, el conocimiento básico de los siguientes temas
será útil para comprender
lo que está sucediendo en el código que dirá
manejando excepciones en python
trabajando con archivos, la instrucción with y
una ruta de ese módulo
 manejar la solicitud http con la biblioteca estándar o
herramientas de terceros
crear aplicaciones i de venta con el pasado
módulo y usar las funciones asincrónicas de python
conocer los conceptos básicos de io http
la biblioteca de terceros también sería un
plus pero no es un requisito
 sin embargo, si aún no tiene todo este
conocimiento, está bien, puede
aprender más si sigue adelante y le da
un proyecto para llevar a cabo. formas
descargue el código completo como parte de
los materiales del proyecto para usar su comparación
si tiene un problema que
no puede resolver
con esta breve descripción general de su sitio web
conectividad verifique un proyecto y los requisitos previos
usted Estás casi listo para comenzar a envenenar y
divertirte mientras codificas, pero primero
necesitas crear un entorno de trabajo adecuado
y configurar tus proyectos en voz alta y
eso es lo que cubrirás en la
próxima parte del curso
>
> </details>
>
> </details>

<br>


> <details> <summary>03. Setting Up the Development Environment</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  configure el entorno de desarrollo
la primera parte para el personal es crear
un entorno virtual para el proyecto a
el entorno virtual proporciona un intérprete de python aislado
y un espacio para almacenar sus proyectos
dependencies
para obtener más información sobre los entornos virtuales, consulte este
real curso de python
para comenzar, siga adelante y cree un
directorio raíz del código del proyecto rp checker en
el proyecto escolar
luego se trasladó a este directorio y ejecute
los siguientes comandos en el comando de su sistema
línea o terminal
aquí está creando y activando el virtual
environment usando windows
y está creando y activando el virtual
environment o linux o mac o s
en ambos, el primero que llega
crea un python virtual
environment completamente funcional llamado v y dentro de los proyectos
directorio raíz
el segundo el comando cual es la diferencia
entre windows o mac o s activa
el entorno
ahora ejecuta el siguiente comando para instalar
las dependencias de proyectos con pip su estándar
gestor de paquetes de python
con este comando instalas ai http
en tu entorno virtual usas esta
biblioteca de terceros junto con pythons a
características de fregadero en la aplicación
nota en esta causa python tres
punto diez se usa junto con a
io http tres punto ocho punto uno
en este curso se ejecuta cualquier código
en un rapper de python se mostrará
usando be python y rappel que
proporciona una serie de mejoras sobre el
estándar pasteles y uno que incluye códigos de color
sin embargo, todo el código que
ve en ejecución funcionará en el sorteo estándar
python al que puede acceder
escribiendo envenenar en su símbolo del sistema
python es sorprendentemente flexible cuando se trata
de estructurar aplicaciones puede encontrar
estructuras bastante diferentes de un proyecto a otro
por pequeña que sea la instalación de un precio y
los proyectos suelen tener un solo paquete que
a menudo se llama después del proyecto en sí
siguiendo esta práctica, puede organizar su
aplicación utilizando la estructura de directorios que se ve
en la pantalla
puede usar cualquier nombre para este
proyecto y su paquete principal en este
curso, el proyecto se llamará are
checker como una combinación de python real
y verificador que señala las aplicaciones
funcionalidad principal
el archivo Léame a m d
contendrá la descripción del proyecto y las instrucciones
para instalar y ejecutar la aplicación
agregar un archivo Léame a su
proyecto es un las mejores prácticas en programación
especialmente si está planeando lanzar el
proyecto como una solución de código abierto
para obtener más información sobre cómo escribir un buen archivo de lectura
vea cómo escribir
una gran sensación de lectura obtenga top
proyectos en el enlace visto en la pantalla
el archivo de recuperación e inicio txt
mantendrá la lista de sus proyectos externos
dependencias en este caso solo necesita
la biblioteca io http porque el resto
de los dedos de los pies y los módulos que 
usará están disponibles desde el primer momento
en la biblioteca estándar de python
puede usar este otoño para reproducir automáticamente
el precio y el entorno virtual adecuados
para su aplicación usando pip el administrador de paquetes estándar
python
puede crear requisitos punto ticks t
utilizando la salida de pip como
visto en la pantalla
tenga en cuenta que no agregará contenido
el léame a md otoño y
este curso, pero está incluido en
los materiales del curso que puede descargue
dentro de op paycheck un directorio que
tiene los siguientes archivos
dunder a net dot p y habilita
rp checker como un paquete de python
dundee llamado p y funciona como un
script de punto de entrada para la aplicación check
don't p y proporciona el núcleo de aplicaciones
funcionalidades y venta no pago por qué
contiene una interfaz de línea de comandos para
aplicación
puede crear estos archivos vacíos
desde la línea de comandos en windows
o en mac o s y linux
now ev todo está en su lugar puede
comenzar a escribir código esto es lo que
hará en la siguiente parte de
el paso elevado creará un núcleo
funcionalidad el proyecto verificando si un sitio
está en línea o no
>
> </details>
>
> </details>

<br>


> <details> <summary>04. Checking a Website's Connectivity</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  verifique la conectividad de un sitio web en python
en este punto, debe tener un
entorno virtual de python adecuado con sus proyectos
dependencias instaladas en un directorio de proyecto que contenga
todos los archivos que usó durante
el curso, así que es hora de comenzar
codificación
 antes de saltar a las cosas divertidas, vaya
adelante y agregue el número de versión de la aplicación
al módulo dunder a no paga
por qué y usted es un cheque de pago a
paquete como se ve en la pantalla
la constante de nivel de módulo de versión dunder cómo
proyectos de trabajo número de versión actual porque está
creando una nueva y la
versión inicial está establecida en cero punto uno
punto cero con esta configuración mínima
puede comenzar a implementar su conectividad revisando
funcionalidad
hay varios puntos y herramientas y
 bibliotecas que puede usar para verificar
si un sitio web está en línea en un
momento dado, por ejemplo, una opción popular
es la solicitud de biblioteca de terceros que
le permite realizar solicitudes http usando
un usuario legible por humanos, sin embargo
el uso de solicitudes tiene el inconveniente de instalar
una biblioteca externa solo para usted
una parte mínima de su funcionalidad,
sería más eficiente encontrar una
toll apropiada en un estándar de python biblioteca
con un vistazo rápido a la estándar
biblioteca encontrará el paquete you are a
lip que proporciona varios módulos para
manejar solicitudes http, por ejemplo, para verificar
si los sitios web en línea pueden
usar la función está abierto from
the euro lleva el módulo de solicitudes como
se ve en la pantalla
the you are i'll open función toma
a todos ustedes y lo abre devolviendo
su contenido como una cadena o solicitud
objeto pero solo necesita verificar
si el el sitio web está en línea dijo que descargar
toda la página sería un desperdicio
necesita algo más eficiente
¿qué pasa con todo eso le da un
control de nivel inferior sobre su solicitud http
ahí es donde el módulo http no sube
viene en este módulo proporciona la http
clase de conexión que representa una conexión a un
servidor http dado. La conexión http tiene un método
de solicitud que le permite
realizar solicitudes http usando los diferentes métodos
http para este proyecto, puede
usar el encabezado http método para solicitar
una respuesta que contenga solo los encabezados
de los sitios web de destino
esta opción reducirá la cantidad de
datos para descargar, lo que hará que su verificación de conectividad
sea más eficiente
en este punto, tiene una
idea clara de la peaje para usar ahora
puedes ir a hacer algunas pruebas rápidas
adelante y ejecutar el siguiente código
en una sesión interactiva de python
primera conexión http se importa
y luego se crea una instancia de conexión
dirigido a una canalización hey al sitio web de la organización
usando puerto ochenta, que es el predeterminado
puerto http, el argumento de tiempo de espera proporciona
el número de segundos de espera antes de cronometrar
la conexión
a continuación, realiza una solicitud por adelantado en el
ro del sitio Utilice la barra oblicua directa de la ruta usando el método
no solicitar
para obtener una respuesta real del
servidor al que llamó no obtenga respuesta en
el objeto de conexión
puede inspeccionar los encabezados de respuesta mediante
llamando no obtenga encabezados
 la conectividad del sitio web a cuadros solo necesita
crear una conexión y seguir adelante
solicitar si la solicitud es exitosa que
el sitio web de destino está en línea
de lo contrario, el sitio está fuera de línea
en el último caso sería
apropiado para mostrar un mensaje de error to
the user
next open check adult poi and your
editor y agregue el código que se ve en
screen
esta línea importa la conexión http de http
cliente esta es la clase que usó
para establecer una conexión con el objetivo
sitio web como se ve anteriormente
siguiente que pasaré es importada esta función
lo ayudará a pasar ese objetivo su
casa
hey, usted define que el sitio está en línea que
toma un euro y un argumento de tiempo de espera
el argumento oral se mantiene es una cadena
que representa el cero del sitio web y el tiempo de espera
cómo la cantidad de segundos de espera
antes de que se agote el tiempo de los intentos de conexión
esto define una instancia de excepción genérica como
un marcador de posición
aquí se define una variable pasiva que contiene
el resultado de pasar el objetivo euro
usando su i'll pass
esta línea usa el operador o para
extraer el nombre de la casa de su objetivo
euro
esta estrella un bucle for sobre el
http un https pausa esto por qué usted
puede verificar si el sitio web es disponible
en cualquiera de los dos puertos
esto crea una instancia de http puede realmente
utilizar el puerto de host y el tiempo de espera como
argumentos
hey, usted define un intento excepto finalmente
declaración
el bloque de intentos intenta avanzar
solicitar el sitio web de destino llamando al
 método de solicitudes si las solicitudes tienen éxito entonces
la función devuelve verdadero
si ocurre una excepción entonces el bloque excepto
mantiene una referencia a esa excepción
en error
el bloque finalmente cierra el conexión para
liberar los recursos requeridos esto sucede independientemente
de si ocurre una excepción asegurando que
la conexión se cierra
esta última línea genera una excepción almacenada en
error si el salto finaliza sin una
solicitud exitosa
el sitio está en línea la función devuelve verdadero
si el sitio web de destino está disponible en línea
de lo contrario genera una excepción que señala
el problema que encontró este último comportamiento
es conveniente porque necesita mostrar
y un mensaje de error informativo cuando el sitio
es un en línea
para probar fuera de él está en línea ejecutar
el siguiente código y un python interactivo
sesión iniciada en el directorio del proyecto
a primera vista está en línea se importa de
el verificador rp verifique un module
luego llamas a la función con python
los ogros son un argumento
porque la función devuelve verdadero, sabes
que los científicos objetivo están en línea
hey, llamas al sitio está en línea con
un sitio web no existente como objetivo
jarrell
en este caso la función genera una
excepción que puede capturar más tarde y
procesar para mostrar un mensaje de error a
el usuario
ha implementado la función principal de la aplicación nalidad de
comprobar la conectividad de un sitio web ahora puede
continuar con el proyecto configurando
su interfaz de línea de comandos y eso es lo que
será en la próxima parte de
>
> </details>
>
> </details>

<br>


> <details> <summary>05. Creating the Command-Line Interface</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  creando la interfaz de línea de comandos
hasta ahora tiene una función operativa
le permite comprobar si un determinado
sitio web está en línea
al final de este paso,
tendrá una interfaz de línea de comandos mínima que le permitirá ver
 para ejecutar
la aplicación de comprobación de conectividad de su sitio web desde la
línea de comandos
la venta, incluiré opciones para
sacar una lista de sus activos
la línea de comandos y cargar una lista
de euros del archivo de ataques de la aplicación
también mostrará la resultados de verificación de conectividad
con un mensaje amigable para el usuario
para crear la venta de la aplicación si usted
usa no se pasa del estándar python
library
este módulo le permite crear aliados amigables para el usuario sin instalar ninguna dependencia externa
para comenzar escribe el
código repetitivo requerido para trabajar con nuestro
pase también codificará la opción para
radio en rieles desde la línea de comando
para construir la aplicación venta i sin
pase que necesita para crear una instancia de argumento
analizador para que pueda pasar
argumentos proporcionados en la línea de comando una vez
tiene un analizador de argumentos y luego 
puede comenzar a agregar argumentos y opciones a
usted puede navegar i
abrir la venta no orino why
fall y su editor y agregue el
código que se ve en la pantalla
primero importa nuestro módulo anterior
a continuación, crea el usuario de lectura, vea ally
args para mantener la funcionalidad relacionada con
el analizador de argumentos en un solo lugar
para construir el objeto analizador que usa
para argumentos
praga define el nombre del programa
descripción proporciona una descripción adecuada para la
aplicación esta descripción se mostrará cuando
llame a la aplicación con la ayuda
opción
después de crear el argumento pasa que agrega
a primero entrar en línea usando el método de argumento
ad subrayado este argumento
permitirá al usuario ingresar uno o
más. s
el resto de los argumentos para agregar
el argumento funciona de la siguiente manera
conoció los activos un nombre para el
argumento y el uso o los mensajes de ayuda
knox les dice a todos que acepten una
lista de argumentos de la línea de comando después del
usted o su i Cambiaré
tipo dice el tipo de datos de los
argumentos de la línea de comando que es una cadena en
este argumento
por defecto establece el argumento de la línea de comando en
una lista vacía por defecto
ayuda a proporcionar un mensaje de ayuda para el
usuario
finalmente la función devuelve un resultado de
llamar al método alex de guión bajo en
el objeto pasado
este método devuelve un espacio de nombre de
juez que contiene los argumentos pasados
otra opción valiosa para implementar en su
comprobación de conectividad del sitio es la capacidad
para cargar un lista de su casa
del archivo de ataques en su máquina local
para hacer esto, puede agregar un
segundo argumento come on lied que se
se activará con la entrada f o
marcas de archivo
esto se logra agregando un su argumento
esa función que ya creaste
aquí se usa el método de argumento de anuncio
con casi los mismos argumentos que se ve
anteriormente en este caso no estás usando
el argumento de los golpes porque quieres que la
aplicación acepte solo uno archivo de entrada
o la línea de comando
un componente esencial de cada aplicación que
interactúa con el uso de tres la
línea de comando es la salida de la aplicación
su aplicación necesita mostrar el resultado
de su operación al usuario entonces
esta característica es vital para garantizar una
buena experiencia de usuario la verificación de conectividad del sitio
no necesita un resultado muy complejo
solo necesita informar al usuario
sobre el estado actual de su consulta
sitio web
para implementar esta funcionalidad su código de
función resultado de la comprobación de visualización de código
de nuevo en venta no pago por qué
en la función al final
disfunción toma el resultado de la comprobación de conectividad el
la prueba de estambre condicional para ver si
resultado es verdadero en cuyo caso y
el mensaje en línea se imprime en la pantalla
si el resultado es amigos que la cláusula
else príncipe fuera de línea junto con una
flecha informa sobre el problema real que s
acaba de ocurrir
tenga en cuenta que el mensaje se acaba de ver
en la pantalla involucra caracteres Unicode de pulgar hacia arriba y
pulgar hacia abajo
cómo ingresa estos caracteres depende de
el sistema operativo que está usando que
los números Unicode se ven en la pantalla
y están disponibles en los materiales del curso
la verificación de conectividad del sitio web tiene una
interfaz de línea de comandos para permitir que el usuario
interactúe con la aplicación ahora es
el momento de poner todo junto en los
scripts de punto de entrada de las aplicaciones y eso es lo que
harás en la siguiente sección
del curso
>
> </details>
>
> </details>

<br>


> <details> <summary>06. Putting Everything Together</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  juntando todo
Hasta ahora, la conectividad de su sitio verifica que un
proyecto tiene una función que verifica si
un sitio web está en línea y también
tiene una venta i que no pudo
construyó usando el módulo no aprobado
en En este paso, escribe el
código de pegamento el código que unirá todos
de estos componentes y hará que su
aplicación funcione como un comando completo
aplicación de línea
a
primero, comenzará configurando el script principal de
aplicaciones o secuencia de comandos de punto de entrada
una secuencia de comandos que contiene la función principal
y algún código de alto nivel que
lo ayudará a conectar el aliado de visualización en
el frente con la verificación de conectividad
funcionalidad en el backend
el siguiente paso y la creación de la aplicación
es para definir el script de punto de entrada
con una función principal adecuada para hacer
esto usa ese dunder main no
pee por qué el archivo que vive en el
todo el cheque de pago un paquete
incluyendo una caída principal de dunder en un
paquete de Python habilita y ou para ejecutar el
paquete empaqueta un programa ejecutable usando el
comando que se ve en la pantalla
para comenzar a completar hecho el principal no
p por qué con el código ábralo y
será editor al agregar el código
visto en la pantalla
 después de importar leer use un c l
i args del módulo say i
usted define la función principal de la aplicación
dentro de main encontrará algunas líneas
de código que aún no funciona
él es lo que el código debería hacer a menudo
provide la funcionalidad que falta
esta línea hace que la lectura use un c
argumentos aliados para pasar la línea de comando
argumentos el objeto de espacio de nombres resultante es
luego se almacena en los argumentos del usuario local
variable
esto reúne una lista de objetivos
urinarios llamando a un función de ayuda que
estarás codificando en un momento
oye, defines una declaración if para
comprueba si la lista de tu casa
está vacía
si ese es el caso, entonces el
si bloquea al príncipe y envía un mensaje de error a
el usuario y sale de la aplicación
esta línea invoca una f unación que toma
una lista de euros objetivo como un
argumento y ejecuta la comprobación de conectividad sobre
ocho cero como indica el nombre
esta función ejecutará las comprobaciones de conectividad
síncrono lee o uno tras otro de nuevo
estarás codificando esto función en un
momento
con main en su lugar, puede comenzar
codificando las piezas que faltan para que
funcione correctamente y eso es lo que estará
haciendo a continuación
>
> </details>
>
> </details>

<br>


> <details> <summary>07. Coding the Missing Pieces</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  codificando las piezas que faltan
en la sección anterior vio la
creación del código de unión principal para
la aplicación en esta parte del
curso verá las funciones de desorden creadas
completando la funcionalidad inicial de la verificación
su aplicación
la conectividad del sitio compruébela 
podrá comprobar varios euros en
cada ejecución los usuarios alimentarán su otro
hacia fuera al enumerarlos en
la línea de comando proporcionándolos en un
archivo de texto o ambos
para crear la lista interna de objetivo
su casa el primer proceso de Apple, sí
i se proporcionó en la línea de comando
luego agregará un euro adicional algún
un archivo si alguno
él es el código que realiza estos lanzamientos y
devuelve una lista de activación de objetivos que
combina ambas fuentes la línea de comando y
el archivo de texto opcional
el primer positivo se importa para administrar la
ruta a la operación sabe que usted es
otro archivo
a continuación se agrega una función de ayuda con
lo siguiente código
esto define ceros que inicialmente almacena la
lista de euros siempre que el comando
línea
tenga en cuenta que si el uso no lo hace
suministra urinarios entonces será una
lista vacía
hey para encontrar un condicional que verifique
si un usuario ha proporcionado un euro
archivo
si es así, entonces el bloque if aumenta
la lista de destino su propio resultante
de la llamada lee que está fuera de
archivo con la caída proporcionada en el
argumentos del usuario argumento de la línea de comando del archivo de entrada
finalmente se devuelve la lista de euros
el guión bajo lee los euros del archivo ejecuta las
siguientes acciones
esto convierte un argumento de caída en un objeto de ruta de
ruta cumplida para facilitar
el procesamiento adicional
esta línea define una declaración condicional que
comprueba si el archivo actual es un
archivo real en el sistema de archivos local
realiza la verificación de la causa condicional
es el método de caída en la ruta
objeto
entonces el bloque if abre el archivo
y lee su contenido usando una lista t
comprensión
la lista de comprensión elimina cualquier espacio en blanco inicial y
posterior de cada línea para
evitar el procesamiento horas más tarde
este control condicional si se ha recolectado algún euro
si es así, esta línea devuelve
de la lista resultante de euros
de lo contrario, esto line prince y mensaje de error
para informar al usuario que el archivo de entrada
está vacío
la cláusula else prince un mensaje de error
para señalar que el archivo de entrada
no existe si la función se ejecuta sin
devolviendo una lista válida de su house
devuelve y vacía la lista
ese es un flujo de programa razonablemente complejo pero
ahora puede continuar con la parte final
de dunder main don't pay why
para ejecutar verificaciones de conectividad en múltiples web
sitios que necesita es justo a través de
 la lista de destino de su casa hace
los controles y muestra los resultados correspondientes
eso es lo que ve la función de control síncrono
a continuación en la pantalla
en primer lugar, actualiza sus importaciones agregando 
el sitio está en línea y muestra el resultado de la verificación
a continuación, se define la función de verificación síncrona
que toma una lista de sus demás
como argumentos
esta línea inicia un ciclo for the
ocho tasas sobre los euros objetivo
hey, usted define e inicializa el error que
contendrá un mensaje que se
mostrará si la aplicación no recibe una
respuesta del sitio web de destino
oye, tú defines una declaración de prueba excepto
que detecta cualquier excepción que pueda ocurrir
durante las comprobaciones de conectividad, estas comprobaciones son geniales
 el sitio está en línea con el objetivo su
lo usaré como argumento
estas líneas actualizan el resultado una vez
variables si ocurre un problema de conexión
esta línea entrenador muestra el resultado de verificación con
argumentos apropiados para mostrar la conectividad verifica
resultado en la pantalla
para terminar este archivo, agrega
lo típico si se hace, el nombre es
podría haber hecho el repetitivo principal
código
esta causa es principal cuando el módulo se
ejecuta como script o ejecutable programa
y detiene la ejecución del código si
alguna vez se importa a otro script
ha escrito mucho código sin
verlo en acción ha codificado la
conectividad del sitio verifique su venta i y
el script de punto de entrada ahora es hora
de probar la aplicación
antes de hacerlo, asegúrese de haber descargado
la muestra incluida que despertó el archivo dot txt
de los materiales del curso y colóquelo en
en el directorio de trabajo
ahora regrese a la línea come on
 una tecla ex el comando visto
en pantalla
primero ejecuta rp checker con el indicador
h que muestra un mensaje que explica
cómo usar la aplicación
luego puede ver el contenido de
el archivo de texto de muestra de euros
finalmente rp checker es ejecutar con la bandera
f y el archivo de euros de muestra
que ejecuta una verificación en varios importantes
sitios web
si ocurre un error durante la verificación
el nuevo recibe un mensaje en pantalla
con la información sobre qué está causando el
error
go adelante y tr y algunos otros euros
y funciones
por ejemplo, intente combinar euros que
la línea de comando con el de un
archivo de texto usando usted y f
cambia
verifique adicionalmente qué sucede cuando proporciona
una caída de euros que está vacía o inexistente
la comprobación de conectividad funciona bien pero
tiene un problema oculto la ejecución
el tiempo puede ser considerable si lo ejecutas
con una lista larga de destino
euros
esto es porque todas las comprobaciones
ejecutar sincrónico lee esperando que el sitio quiera
responda antes de iniciar la verificación en
sitio y así sucesivamente
con una larga lista de euros y
respuestas lentas del sitio, esto puede sumar
rápidamente
la solución a este problema es
ejecutar las comprobaciones asincrónicas ejecutan múltiples comprobaciones
al mismo tiempo
esto es posible porque la mayoría del
tiempo de ejecución de los programas está esperando respuestas
de los lados que se están comprobando
en la siguiente sección del curso
>
> </details>
>
> </details>

<br>


> <details> <summary>08. Checking Sites Asynchronously</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  comprobando sitios asincrónicos tarde
al realizar las comprobaciones de conectividad en varios
sitios web al mismo tiempo a través de la programación asincrónica, usted
puede mejorar el rendimiento general de su
aplicación
para hacer esto, puede aprovechar
las funciones asincrónicas de python y el tercero io
http party library que ya has
instalado en el entorno virtual de tus proyectos
python supongamos que la programación asincrónica con el módulo a
sinclair y el sumidero en
unas palabras clave blancas en esta sección de
el curso tiene razón el código requerido
to haga que ejecute la conectividad
verifique de forma asíncrona lee usando estas herramientas
el primer paso para hacer que la verificación
a funcione al mismo tiempo es escribir y
una función receptora que le permita
realizar una única verificación de conectividad en un
sitio web dado
este será el equivalente asincrónico de
el sitio tiene una función en línea
regresa para comprobarlo p
y agrega el siguiente código
fir st usted en el registro importa a
cinco an io http
siguiente el sitio definido está en línea a
sink es una función de formación de hielo que toma
dos argumentos el euro para verificar y
la cantidad de segundos antes de la solicitud
timeout
esta línea define una instancia de excepción genérica
tiene un marcador de posición
esto define una variable pasiva que contiene el
resultado de pasar su euro de destino usando
tu te pasaré
esta línea usa el operador o para
extraer el nombre de host del objetivo
euro
 a continuación, define un bucle for sobre
el http en https juegos
esto le permitirá verificar si
el sitio web está disponible en cualquiera de ellos
esto lo usa como cadena para construir
un año usando su esquema actual
y el nombre de host
siguiente que defina y un sumidero con
declaración para manejar una instancia de ai http client
session esta clase es la
interfaz recomendada para realizar solicitudes http con io
http
estas líneas definen una declaración de prueba excepto
el bloque de prueba realiza y pondera
adelante las solicitudes al sitio web de destino mediante
llamando al encabezado en el objeto de la sesión
si las solicitudes tienen éxito, entonces la función
devuelve verdadero
el primero, excepto el cierre, detecta el error de tiempo de espera
excepciones y el sexo era a una nueva
instancia de excepción
 el segundo accept close detecta cualquier otra
excepciones y los días actualizan una variable en consecuencia
esta última línea genera una excepción almacenada en
error si el final finaliza sin una
solicitud exitosa
esta función asíncrona es similar a la
implementación del sitio en línea devuelve
true si el sitio web de destino está en línea
de lo contrario, genera una excepción que señala
el problema encontrado
la principal diferencia entre estas funciones es
ese sitio está en línea, un sumidero realiza
las solicitudes http son asincrónicas usando la biblioteca de terceros http
io
como ya se mencionó, esto puede ayudarlo
a optimizar el rendimiento de sus aplicaciones cuando tiene
una larga lista de sitios web para 
check
en la siguiente sección del curso
escribes el código necesario para completar
la implementación de controles asincrónicos
>
> </details>
>
> </details>

<br>


> <details> <summary>09. Completing Asynchronous Support</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  completing asynchronous support
en esta parte del curso, usted
completa el soporte asíncrono que comenzó anteriormente
al comenzar agregando y un sumidero
opción a su aliado de visualización
la opción puede ser simplemente un booleano
indicador para implementar este tipo de opción
usar el argumento de acción del método ad
argumento abrir la venta no
pagar por qué presentar una actualización leer usuario
venta i args con el código visto
en pantalla
esta llamada para agregar argumento agrega un
nuevo a o asincrónico opción a la
venta de la aplicación i
el argumento de la acción se establece en store
true, lo que indica que se pasa a
un asincrónico nuestros indicadores booleanos que
almacenarán true y se proporcionarán en el comando
line
para comprobar que la conectividad tiene múltiples web
 los sitios asincrónicos leen a la derecha y una función
sink que causa y un
sitio blanco está en línea un receptor del
compruebe un módulo
en el código que se ve en la pantalla a
hecho lo principal no pague por qué
archivo
primero el importaciones se actualizan para agregar
un sumidero io
y el sitio está en línea un sumidero
la próxima verificación asíncrona se define como una
función asíncrona usando la clave de un sumidero
palabra esta función toma una lista de
euros y verifica que la conectividad sea asíncrona lee
hey you define y en una carrera
función que te permite reutilizar el
código que verifica un solo año alfa
conectividad
oye, tú defines e inicializas una variable place
holder era que usamos en
el código para mostrar el resultado de la verificación más tarde
oye tú defina una sentencia try except
para envolver la conectividad verifique la causa try
block y un sitio blanco es
online un sumidero con el objetivo your
all como argumento si el cool
tiene éxito el resultado será verdadero
it's the coal plantea un excepción que
resultado será amigos una era 
mantendrá el mensaje de error resultante
esta línea el entrenador muestra el resultado de verificación usando
resultado euro y era como argumentos
discos que espera la función de recopilación de
t En un módulo de cinco, esta función ejecuta
una lista de objetos para facturar
concurrentemente y devuelve una lista agregada de
valores resultantes si todos los objetos de facturación
esperados se completan con éxito para proporcionar la lista
de objetos de un cinturón blanco use una expresión
generadora costa verifique la edad a
obtendré su lechuza
para agregar la funcionalidad asincrónica a las aplicaciones
la función principal usa una declaración condicional
para verificar si el usuario proporcionó el
a o el indicador asincrónico en el comando
line
esta voluntad condicional le permite ejecutar
las comprobaciones de conectividad con derecho a
de acuerdo con la entrada de usos
abrir el hecho principal para pagar
por qué volver a caer y actualizar el código
como se ve en la pantalla
el estambre condicional comprueba si el es
proporcionado el a un indicador síncrono en
la línea de comando
si ese es el caso, main ejecuta a
conectividad verifica lee asíncrono usando un sumidero
io no ejecute
de lo contrario, ejecuta el cheque síncrono lee
u cantar su función de verificación síncrona
eso es todo, puede probar esta nueva
función del verificador de conectividad de su sitio web en
practice
volver a conectarse y
ejecutar el comando que se ve en la pantalla
esto muestra que su aplicación ahora tiene
una o opción asincrónica que
ejecutará las comprobaciones de conectividad asynchronous lee
siguiente, el contenido de la muestra euros
archivo se muestra en la pantalla. como hiciste en
una sección anterior
esto se debe a que no proporcionas el
a o las banderas asincrónicas conocidas por los
euros que verifiqué en el mismo antiguo
aparecen en el archivo de texto
ahora usas la bandera a en
el final de la línea
este indicador hace que nuestra comprobación ejecute las
comprobaciones de conectividad al mismo tiempo
ahora los resultados de la comprobación se muestran en
los mismos pedidos que los euros o ingresados
pero en el orden en que los
resultan Las propuestas provienen de los sitios web de destino
como un impuesto especial, ejecute el comprobador de conectividad
con una lista larga de euros de destino
y compare el tiempo de ejecución cuando la
aplicación para y sincrónica lee y asynchronous
lee
ahora que tiene todas las funciones
 verificador de conectividad del sitio en la siguiente sección
revisa lo que
aprendió en este curso
>
> </details>
>
> </details>

<br>


> <details> <summary>10. Building a Site Connectivity Checker (Summary)</summary>
>
> <br>
>
> - note 1
>
> ```sh
> # comment
> $_ whoami
> foo
> ```
>
> <details> <summary><em>Transcript ES:</em></summary>
>
> <br>
>
>  summary
muy bien, llegaste al
final del curso en el que has
construido una aplicación funcional de verificación de conectividad del sitio
en python
ahora conoces los conceptos básicos del manejo de
solicitudes http a un sitio web dado
he también aprendió cómo crear una
interfaz de línea de comandos mínima pero funcional para
su aplicación y cómo organizar un
proyecto Python del mundo real
además, probó las funciones asincrónicas de Python
en este curso aprendió a
crear una interfaz de línea de comandos está en python
sin contraseña
verificar si un sitio web está en línea usando
pythons http door client
ejecutar verificaciones sincrónicas en múltiples sitios web
verificar si un sitio web está en línea usando
ai http
y verificar la conectividad tiene múltiples web
sitios asincrónicos lee
con esta base, está listo para continuar
mejorando sus habilidades creando más
aplicaciones de línea de comandos complejas, está mucho mejor
preparado para continuar aprendiendo sobre http solicitud
con python esperamos que hayas encontrado útil este
curso y nos vemos de nuevo
pronto en python real no vengas
>
> </details>
>
> </details>

<br>

