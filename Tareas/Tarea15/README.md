# Creación de una BBDD de una empresa tecnológica
## Índice:
- Introducción.
- Creación de cada una de las tablas.
- Realizar la inserción de los datos.
- Realizar cada una de las consultas propuestas. 

### · Introducción
En esta tarea deberemos realizar cada una de las tablas propuestas en el ejercicio. Además deberemos añadir los datos a dichas tablas para después realizar cada una de las consultas propuestas. 
### · Creación de cada una de las tablas
Para la creación de cada una de las tablas utilicé la operación *create table (nombre de la tabla);*
Además para añadir los campos de dichas tablas, en la operación vista anteriormente, se los añadí de la siguiente manera: 

    create table (nombre de la tabla)(
        (nombre del campo que queremos añadir) (tipo de dato),
        primary key(nombre del campo que queremos como PK)
    );

![<Imagen de las tablas creadas>](<>)

### · Realizar la inserción de los datos.
Para realizar la insercción de los datos he utilizado la operación *insert into (nombre de la tabla) ((campos)) values ((valores));*. 

Para ello hay que tener en cuenta que debemos ingresar los valores en el mismo orden en que se nombran los campos. En caso contrario, nos daría error y tendremos que borrar la tabla para crearla después correctamente. 

Para borrar una tabla deberemos hacerlo con la operación *drop table (nombre de la tabla);*

![<Imagen de las inserción de los datos>](<>)

### · Realizar cada una de las consultas propuestas. 
Para realizar las consultas propuestas deberemos utilizar el comando *select (campo/s) from (nombre de la tabla);* 

Las consultas son las siguientes:
- Averiguar el DNI de todos los clientes. 

![<Consulta 1>](<>)

- Consultar todos los datos de todos los programas.

![<Consulta 2>](<>)

- Obtener un listado con los nombres de todos los programas.

![<Consulta 3>](<>)

- Generar una lista con todos los comercios. 

![<Consulta 4>](<>)

- Generar una lista de las ciudades con establecimientos donde se venden programas, sin que aparezcan valores duplicados utilizando DISTINCT. 

![<Consulta 5>](<>)

- Obtener una lista con los nombres de programas sin que aparezcan valores duplicados utilizando DISTINCT.

![<Consulta 6>](<>)

- Obtener el DNI mas 4 de todos los clientes. 

![<Consulta 7>](<>)

- Hacer un listado con los códigos de los programas multiplicados por 7.9 . ¿Cuáles son los programas cuyo código es inferior o igual a 10?

![<Consulta 8>](<>)

- ¿Cuál es el programa cuyo código es 11?

![<Consulta 9>](<>)


- ¿Qué fabricantes son de Estados Unidos?

![<Consulta 10>](<>)

- ¿Cuales son los fabricantes no españoles utilizando IN?

![<Consulta 11>](<>)

- Obtener un listado con los códigos de las distintas versiones de Windows.

![<Consulta 12>](<>)

- ¿En qué ciudades comercializa programas El Corte Inglés?

![<Consulta 13>](<>)

- ¿Que otros comercios hay, además de El Corte Inglés utilizando IN?

![<Consulta 14>](<>)

- Generar una lista con los código de las distintas versiones de Windows y Access utilizando IN. 

![<Consulta 15>](<>)

- Obtener un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 y de los mayores de 50 años utilizando BETWEEN y otra sin BETWEEN.

![<Consulta 16 parte 1>](<>)

![<Consulta 16 parte 2>](<>)

- Sacar un listado con los comercios de Sevilla y Madrid sin valores duplicados. 

![<Consulta 17>](<>)

- ¿Qué clientes terminan su nombre en la letra “o”?

![<Consulta 18>](<>)

- ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años?

![<Consulta 19>](<>)

- Obtener un listado en el que aparezcan los programas cuya versión finalice por una letra i o cuyo nombre comience por una A o por una W.

![<Consulta 20>](<>)

- Obtener un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A y termine por una S.

![<Consulta 21>](<>)

- Obtener un listado en el que aparezcan los programas cuya versión finalice por una letra i, y cuyo nombre no comience por una A.

![<Consulta 22>](<>)

- Obtener una lista de empresas por orden alfabético ascendente.

![<Consulta 23>](<>)

- Generar un listado de empresas por orden alfabético descendente.

![<Consulta 24>](<>)

- Obtener un listado de programas por orden de versión.

![<Consulta 25>](<>)

- Generar un listado de los programas que desarrolla Oracle.

![<Consulta 26>](<>)

- ¿Qué comercios distribuyen Windows?

![<Consulta 27>](<>)

- Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid.

![<Consulta 28>](<>)

- ¿Qué fabricante ha desarrollado Freddy Hardest?

![<Consulta 29>](<>)

- Selecciona el nombre de los programas que se registran por Internet.

![<Consulta 30>](<>)

- ¿Qué medios ha utilizado para registrarse Pepe Pérez?

![<Consulta 31>](<>)

- ¿Qué usuarios han optado por Internet como medio de registro?

![<Consulta 32>](<>)

- ¿Qué programas han recibido registros por tarjeta postal?

![<Consulta 33>](<>)

- ¿En qué localidades se han vendido productos que se han registrado por Internet?

![<Consulta 34>](<>)

- Obtén un listado de los nombres de las personas que se han registrado por Internet, junto al nombre de los programas para los que ha efectuado el registro.

![<Consulta 35>](<>)

- Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido.

![<Consulta 36>](<>)

- Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.

![<Consulta 37>](<>)

- Obtén el nombre de los usuarios que han registrado Access XP.

![<Consulta 38>](<>)

- Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta).

![<Consulta 39>](<>)

- Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta).

![<Consulta 40>](<>)

- Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).

![<Consulta 41>](<>)

- Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta).

![<Consulta 42>](<>)

- Obtener el número de programas que hay en la tabla programas. 

![<Consulta 43>](<>)

-  Calcula el número de clientes cuya edad es mayor de 40 años.

![<Consulta 44>](<>)

- Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1.

![<Consulta 45>](<>)

- Calcula la media de programas que se venden cuyo código es 7.

![<Consulta 46>](<>)

- Calcula la mínima cantidad de programas de código 7 que se ha vendido

![<Consulta 47>](<>)

- Calcula la máxima cantidad de programas de código 7 que se ha vendido.

![<Consulta 48>](<>)

- ¿En cuántos establecimientos se vende el programa cuyo código es 7?

![<Consulta 49>](<>)

- Calcular el número de registros que se han realizado por Internet.

![<Consulta 50>](<>)

- Obtener el número total de programas que se han vendido en ʻSevillaʼ.

![<Consulta 51>](<>)

- Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ.

![<Consulta 52>](<>)

- Visualiza el nombre de todos los clientes en mayúscula. En el resultado de la consulta debe aparecer también la longitud de la cadena nombre.

![<Consulta 53>](<>)

- Con una consulta concatena los campos nombre y versión de la tabla PROGRAMA.

![<Consulta 54>](<>)
