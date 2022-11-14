# Ejercicios Básicos MR (3-13)
3. **Sistema de Artículos**.


Se desea crear una base de datos para una pequeña empresa debe contener información acerca de clientes, artículos y pedidos. Hasta el momento se registran los siguientes datos en documentos varios:

Para cada cliente: Número de cliente (único), Direcciones de envío (varias por cliente), Saldo, Límite de crédito (depende del cliente, pero en ningún caso debe superar los 3.000.000 €), Descuento.

Para cada artículo: Número de artículo (único), Fábricas que lo distribuyen, Existencias de ese artículo en cada fábrica, Descripción del artículo.

Para cada pedido: Cada pedido tiene una cabecera y el cuerpo del pedido. La cabecera está formada por el número de cliente, dirección de envío y fecha del pedido. El cuerpo del pedido son varias líneas, en cada línea se especifican el número del artículo pedido y la cantidad.

Además, se ha determinado que se debe almacenar la información de las fábricas. Sin embargo, dado el uso de distribuidores, se usará: Número de la fábrica (único) y Teléfono de contacto. Y se desean ver cuántos artículos (en total) provee la fábrica. También, por información estratégica, se podría incluir información de fábricas alternativas respecto de las que ya fabrican artículos para esta empresa.

**Nota**: Una dirección se entenderá como Nº, Calle, Ciudad y Provincia . Una fecha incluye hora.

![<Imagen de la actividad 3>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Sistema%20de%20art%C3%ADculos.png>)

4. **Sistema de Reparto.**

A partir del siguiente enunciado se desea realizar el modelo entidad-relación. Se desea informatizar la gestión de una empresa de reparto de mercancías que reparte paquetes por toda la isla. Los encargados de llevar los paquetes son los camioneros, de los que se quiere guardar el dni, nombre, teléfono, dirección, salario y población en la que vive. 

De los paquetes transportados interesa conocer el código de paquete, descripción, destinatario y dirección del destinatario. Un camionero distribuye muchos paquetes, y un paquete sólo puede ser distribuido por un camionero. De los camiones que llevan los camioneros, interesa conocer la matrícula, modelo, tipo y potencia. Un camionero puede conducir diferentes camiones en fechas diferentes, y un camión puede ser conducido por varios camioneros.

![<Imagen de la actividad 4>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Sistema%20de%20reparto.png>)

5. **Profesorado**

Para presentar los siguientes conceptos vamos a partir de un ejemplo de entidad que se encuentra en la mayoría de empresas: la entidad EMPLEADO. En la mayoría de empresas existen distintos tipos de empleados, cuya descripción es difícil de recoger utilizando una misma entidad.

Por ejemplo en un centro de enseñanza nos podemos encontrar con profesores, personal de administración, personal de limpieza y mantenimiento, etc. De los profesores, por ejemplo, tendremos que recoger información que no se requiere para el resto de personal. Por ejemplo: el número de registro personal, la especialidad, el cuerpo al que pertenece, la fecha de alta en el cuerpo, etc.

![<Imagen de la actividad 5>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Profesorado.png>)

6. **Sistema Gestión de ventas de Automóviles.**

Se desea diseñar una base de datos para almacenar y gestionar la información empleada por una empresa dedicada a la venta de automóviles, teniendo en cuenta los siguientes aspectos: La empresa dispone de una serie de coches para su venta. Se necesita conocer la matrícula, marca y modelo, el color y el precio de venta de cada coche. Los datos que interesa conocer de cada cliente son el NIF, nombre, dirección, ciudad y número de teléfono: además, los clientes se diferencian por un código interno de la empresa que se incrementa automáticamente cuando un cliente se da de alta en ella. 

Un cliente puede comprar tantos coches como desee a la empresa. Un coche determinado solo puede ser comprado por un único cliente. El concesionario también se encarga de llevar a cabo las revisiones que se realizan a cada coche. Cada revisión tiene asociado un código que se incrementa automáticamente por cada revisión que se haga. De cada revisión se desea saber si se ha hecho cambio de filtro, si se ha hecho cambio de aceite, si se ha hecho cambio de frenos u otros. Los coches pueden pasar varias revisiones en el concesionario.

![<Imagen de la actividad 6>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Gesti%C3%B3n%20de%20Autom%C3%B3viles.png>)

7. **Sistema Empresa Tecnológica**

Para presentar los siguientes conceptos vamos a partir de un ejemplo de entidad que se encuentra en la mayoría de empresas: la entidad EMPLEADO. En la mayoría de empresas existen distintos tipos de empleados, cuya descripción es difícil de recoger utilizando una misma entidad.

Por ejemplo en un centro de enseñanza nos podemos encontrar con profesores, personal de administración, personal de limpieza y mantenimiento, etc. De los profesores, por ejemplo, tendremos que recoger información que no se requiere para el resto de personal. Por ejemplo: el número de registro personal, la especialidad, el cuerpo al que pertenece, la fecha de alta en el cuerpo, etc.

![<Imagen de la actividad 7>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Sistema%20Empresa%20Tecnolog%C3%ADa.png>)

8. **Sistema Instituto Secundaria**

Queremos recoger la información correspondiente a las aulas de un instituto de secundaria con la especialidad de informática:

De cada aula se quiere recoger la siguiente información: NºAula, Piso, Pasillo, Nº plazas. El número de aula es único y distinto para todas ellas.
Cuando las aulas son salas de ordenadores necesitamos saber: nº de ordenadores, escáner y nº de impresoras, así como otros equipamientos que pudieran instalarse.
Si se trata de laboratorios queremos saber el tipo (de ciencias, de idioma, etc.) y el equipamiento que tiene.
Todas las aulas, sean comunes, laboratorios o salas de ordenadores, pueden tener o no proyector y pizarra interactiva.
Existen otros tipos de aulas no recogidos en el modelo anterior como gimnasio, biblioteca, etc.
Cada aula se utiliza únicamente para las funciones que tiene asignadas (no se imparte una clase normal en un laboratorio, etc.)

![<Imagen de la actividad 8>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Sistema%20Instituto%20Secundaria.png>)

9. **Campeonato del mundo de Ajedrez**

El club de Ajedrez IES Puerto, ha sido encargado por la Federación Internacional de Ajedrez de la organización de los próximos campeonatos mundiales que se celebrarán en la mencionada localidad. Por este motivo, desea llevar a una base de datos toda la gestión relativa a participantes, alojamientos y partidas. Teniendo en cuenta qué:

En el campeonato participan únicamente jugadores y árbitros; de ambos se requiere conocer el número de asociado, nombre, dirección, teléfono de contacto y campeonatos en los que han participado. De los jugadores se precisa además el nivel de juego en una escala de 1 a 10.
Ningún árbitro puede participar como jugador.
Los países envían al campeonato un conjunto de jugadores y árbitros, aunque no todos los países envían participantes. Todo jugador y árbitro es enviado por un único país. Un país puede ser representado por otro país.
Cada país se identifica por un número e interesa además conocer su nombre y el número de clubes de ajedrez existentes en el mismo.
Cada partida se identifica por un código ( Cod_P ), jugada por dos jugadores y arbitrada por un árbitro. Interesa registrar las partidas que juega cada jugador y el color ( blancas o negras ) con el que juega. Ha de tenerse en cuenta que un árbitro no puede arbitrar a jugadores enviados por el mismo país que le ha enviado a él.
Todo participante participa en al menos una partida.
Tanto jugadores como árbitros se alojan en uno de los hoteles en los que se desarrollan las partidas, se desea conocer en qué hotel y en qué fechas se ha alojado cada uno de los participantes. Los participantes pueden no permanecer en el Puerto durante todo el campeonato, sino acudir cuando tienen que jugar alguna partida alojándose en el mismo o distinto hotel. De cada hotel, se desea conocer el nombre, la dirección y el número de teléfono.
El campeonato se desarrolla a lo largo de una serie de jornadas (año, mes, día) y cada partida tiene lugar en una de las jornadas aunque no tengan lugar partidas todas las jornadas.
Cada partida se celebra en una de las salas de las que pueden disponer los hoteles, se desea conocer el número de entradas vendidas en la sala para cada partida. De cada sala, se desea conocer la capacidad y medios de que dispone (radio, televisión, vídeo...) para facilitar la retransmisión de los encuentros. Una sala puede disponer de varios medios distintos.
De cada partida se pretende registrar todos los movimientos que la componen, la identificación de movimiento se establece en base a un número de orden dentro de cada partida: para cada movimiento se guardan la jugaday un breve comentario realizado por un experto.

![<Imagen de la actividad 9>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Ajedrez.png>)

10. **Star-Trek**

Un club de fans de la famosa película Star Trek, ha decidido crear una página web donde se pueda consultar información referente a todas las películas y capítulos de la saga. El dominio startrekfans.com se redirigirá a un servidor web que consulte una base de datos con la siguiente información:

Actores: es necesario conocer el nombre del actor, el personaje que interpreta, la fecha de nacimiento y su nacionalidad.
Personajes: es necesario saber el nombre, graduación militar que desempeña (capitán, teniente, almirante, etc) y su raza (humano,vulcano, klingon). Si el personaje es humano, se indicará su fecha de nacimiento y ciudad terráquea donde nació, si el personaje es de la raza Vulcano, se almacenará el nombre del mento y la fecha de graduación, y si es de raza Klingon, se guardará su planeta natal y la fecha de su último combate. Es importante conocer el actor que interpreta el personaje, teniendo en cuenta que, un personaje sólo puede ser interpretado por un actor, y un actor sólo puede interpretar un personaje. Además, será necesarios conocer el personaje del que depende directamente en graduación militar.
Capítulos: hay que almacenas todos los capítulos, indicando a que temporada pertenece cada capítulo, el título, el orden en el que fue rodado, fecha de su primera emisión en televisión y los personajes que participaron en cada capítulo.
Películas: se debe almacenar también, todas las películas que se proyectaron en cines, cada una con su año de lanzamiento, título y director. También hay que guardar los personajes que aparecen en cada película y cuál de ellos fue el protagonista.
Planetas: en cada capítulo, se visita uno o varios planetas, hay que almacenar el código del planeta, su nombre, galaxia a la que pertenece, el problema que se resolvió en esa visita y la nave con la que se viajó al planeta. Para la descripción de la nave se almacenará el nombre, código y número de tripulantes. La nave que viaja a un planeta puede disponer de una nave pequeña llamada lanzadera con la que bajan a la superficie del planeta. La existencia de la lanzadera solo tiene sentido si existe la nave a la que pertenece. Se identificará cada lanzadera mediante un número entero y el código de la nave. Es necesario conocer la capacidad en personas de la lanzadera.

![<Imagen de la actividad 10>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Star-Trek.png>)

11. **Empresa Discográfica**

Una empresa discográfica emergente de Canarias quiere almacenar y organizar eficientemente la información sobre grupos musicales, canciones y músicos. Para ello se hace necesario crear una base de datos que incluya los siguientes requerimientos y consideraciones:

Un Músico se identifica por un código de músico, su nombre, su fecha de nacimiento, su año de fallecimiento, su género y su nacionalidad.

Una Banda tiene un identificador de banda, el nombre del grupo, el año de formación, el año de disolución, el estilo musical y el país de origen. El estilo musical sólo puede tomar los valores:Blues, Country, Heavy, Jazz, Pop,Punk, Reggae ,Rock, Soul, Thrash, Techno.

Un Álbum se caracteriza por incluir un identificador de álbum, su título, el año de publicación, su duración y el identificador del grupo que lo ha grabado.

Una Canción almacena su identificador de canción, su título, su duración y el identificador del álbum al que pertenece.

Es necesario también mantener información sobre los músicos que forman parte, es decir, son miembros de un grupo o grupos musicales, así como del instrumento que toca el músico en el grupo, existiendo la posibilidad de que un músico toque más de un instrumento en un grupo.

Así mismo, también se debe disponer de información sobre las canciones y el músico o músicos que las han compuesto. En este sentido, como es lógico y habitual, un músico puede componer varias canciones y, también, una canción puede estar compuesta por más de un músico.

![<Imagen de la actividad 11>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Empresa%20discogr%C3%A1fica.png>)

12. **Gestión docente.**

Diseñar una Base de Datos para representar la información docente de un colegio, sabiendo que: La formación abarca ocho cursos (1º, 2º, 3º .. 8º) en los que se imparten diversas asignaturas, tales como Matemáticas, Física, Ciencias Naturales, Sociales, Dibujo, etc., dándose el caso de algunas asignaturas de distintos cursos que tienen el mismo nombre. Cada curso se reparte en varios grupos de alumnos a los que se asigna una letra: p.e. 3ºA, 2ºD, 5ºC, 1ºB, y se ubican en un aula fija para todo el curso. Las aulas, identificadas por un número, tienen una determinada capacidad de número de alumnos. De ellas interesa conocer, además, si disponen o no de conexión a la red de computadores del centro, y de pantalla para la proyección de transparencias. Los profesores del centro, de los que se dispone de su nombre y apellidos, DNI, dirección y teléfono, pueden impartir varias asignaturas distintas a grupos distintos. Además, cada curso tiene un profesor coordinador y cada grupo un profesor tutor. Acerca de los alumnos, además de su nombre y apellidos, dirección y teléfono, se desea reflejar el curso en que están matriculados y el grupo al que están asignados. También se desea representar qué alumno es el delegado de cada grupo. Como puede darse el caso, de alumnos con el mismo nombre y apellidos, cada alumno tiene asociado un (único) número de matrícula que facilita su identificación.

![<Imagen de la actividad 12>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Gesti%C3%B3n%20docente.png>)

13. **Educando**

En la Empresa Educando S.A. se lleva control de sus Bienes y Servicios. El interés primario es poder hacer que los Bienes se manejen de forma rápida y con el menor grado de error. Para esto quien maneja la sección de "Bienes y Suministros" plantea las siguientes condiciones del negocio para la construcción de una base de datos:

- La Sección está dividida en tres (3) áreas: COMPRAS, ALMACEN, INVENTARIO.

- El área de Compras funciona de la siguiente forma:

    - Recibe las solicitudes de compras de las diferentes áreas de la empresa.

    - Cada solicitud tiene un responsable.

    - Cada solicitud es autorizada por el jefe del área y posteriormente por el Director Financiero.

    - Quien realiza una solicitud puede ser responsable de uno o varios centros de costos, con la salvedad de que él como empleado solo está adscrito a uno.

    - De la solicitud se debe diligenciar la siguiente información: Número de la solicitud (consecutivo), Fecha, Responsable (nombre y cédula), Centro de Costos, Rubro presupuestal del cual se descargará la compra. En cada solicitud se pueden discriminar uno o muchos ítems con la siguiente información: ítem, nombre del bien, cantidad solicitada, unidad de medida del bien, valor unitario y valor total. Cada solicitud debe ser totalizada.

    - Cada bien es identificado por un código universal que es único y es de carácter devolutivo (suministro) o un bien inmueble.

    - Una vez diligenciada la solicitud es remitida al área de compras para realizar su correspondiente cotización.

    - Las cotizaciones son realizadas con uno o varios proveedores de los bienes solicitados.

    - Una vez la cotización definitiva está lista, se crea una orden contractual que maneja la siguiente información: Número de la orden contractual, nit y nombre del proveedor al cual se le va a realizar la compra, fecha de la orden, monto total de la orden, fecha de entrega. Cada orden puede tener asociado uno o varios ítems de la solicitud o solicitudes que van a ser despachadas. Cada ítem tiene la siguiente información:

        - nombre del bien

        - cantidad solicitada

        - cantidad despachada

        - unidad de medida del bien

        - valor unitario

        - valor total.

    - La orden de compra es aprobada por el Director Financiero para que sea enviada al proveedor elegido.

- El área de Almacén funciona de la siguiente forma:

    - Su función principal es recepcionar los bienes que llegan de los proveedores y distribuirlos a las correspondientes áreas que realizaron las solicitudes de compras.

    - Cuando llega un proveedor mercancía, este hace una entrega física de los bienes, los cuales son comparados con la factura que este entrega y con la orden de compra correspondiente. Si esta acción es correcta se registra una entrada de almacén por cada factura relacionada, con la siguiente información: Número de Entrada, Fecha, Número de factura, Proveedor, Total Bienes, Valor Total (los totales deben coincidir con los de la factura). Adjunto a esta se discriminan los ítems recibidos con la siguiente información: nombre del bien, cantidad entregada.
        
    - Cuando el almacén decide despachar los bienes a las diferentes áreas solicitantes, registra cada una de las entregas en Salidas de Almacén con la siguiente información:
    - Número de Salida, Empleado responsable del bien a entregar, fecha de salida, fecha de entrega. Por cada entrega se detalla cada uno de los ítems con la siguiente información: nombre del bien, cantidad entregada.
    - Una entrada de almacén puede generar muchas salidas de almacén, por ejemplo: Pueden ingresar 500 pacas de papel higiénico, pero como se debe repartir entre varias áreas, cada una requiere de una salida de almacén.

- El área de inventarios funciona de la siguiente forma:
    - Es la encargada de administrar y controlar la ubicación de los bienes dentro de la empresa, por esto antes de que el bien salga del almacén debe ser codificado a través de un código único que lo haga identificable dentro de la empresa.
    - La ubicación del bien se identifica por la siguiente información: responsable del bien, fecha de entrega, dirección del bien (ubicación).

![<Imagen de la actividad 13>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Educando.png>)