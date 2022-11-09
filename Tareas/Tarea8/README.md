# Ejercicios Básicos MR (3-11)
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

11. **Empresa Discográfica**

Una empresa discográfica emergente de Canarias quiere almacenar y organizar eficientemente la información sobre grupos musicales, canciones y músicos. Para ello se hace necesario crear una base de datos que incluya los siguientes requerimientos y consideraciones:

Un Músico se identifica por un código de músico, su nombre, su fecha de nacimiento, su año de fallecimiento, su género y su nacionalidad.

Una Banda tiene un identificador de banda, el nombre del grupo, el año de formación, el año de disolución, el estilo musical y el país de origen. El estilo musical sólo puede tomar los valores:Blues, Country, Heavy, Jazz, Pop,Punk, Reggae ,Rock, Soul, Thrash, Techno.

Un Álbum se caracteriza por incluir un identificador de álbum, su título, el año de publicación, su duración y el identificador del grupo que lo ha grabado.

Una Canción almacena su identificador de canción, su título, su duración y el identificador del álbum al que pertenece.

Es necesario también mantener información sobre los músicos que forman parte, es decir, son miembros de un grupo o grupos musicales, así como del instrumento que toca el músico en el grupo, existiendo la posibilidad de que un músico toque más de un instrumento en un grupo.

Así mismo, también se debe disponer de información sobre las canciones y el músico o músicos que las han compuesto. En este sentido, como es lógico y habitual, un músico puede componer varias canciones y, también, una canción puede estar compuesta por más de un músico.

![<Imagen de la actividad 11>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea8/IMG/Empresa%20discogr%C3%A1fica.png>)
