--- Sentancias para la creación de la base de datos 

sqlite3 ceintíficos.sql

--- Sentencias para la creación de las tablas

create table cientifico(
id text primary key, 
nombre text, 
apellido1 text, 
apellido2 text);

create table proyecto(
id text primary key, 
nombre text,
horas integer);

create table cientifico_proyecto (
id_cientifico text references cientifico(id),
id_proyecto text references proyecto(id));

--- Sentencias para la insercción de datos 

INSERT INTO cientifico VALUES ('1', 'Leonardo', 'Da', 'Vinci');
INSERT INTO cientifico VALUES ('2', 'Nicolás', 'Copérnico', NULL);
INSERT INTO cientifico VALUES ('3', 'Galileo', 'Galilei', NULL);
INSERT INTO cientifico VALUES ('4', 'Isaac', 'Newton', NULL);
INSERT INTO cientifico VALUES ('5', 'Charles', 'Darwin', NULL);
INSERT INTO cientifico VALUES ('6', 'Nikola', 'Tesla', NULL);
INSERT INTO cientifico VALUES ('7', 'Dimitri', 'Mendeléyev', NULL);
INSERT INTO cientifico VALUES ('8', 'Albert', 'Einstein', NULL);
INSERT INTO cientifico VALUES ('9', 'Tu', 'Youyou', NULL);
INSERT INTO cientifico VALUES ('10', 'Tasuku', 'Honjo', NULL);

INSERT INTO proyecto VALUES ('1', 'Hombre de Vitruvio', 40);
INSERT INTO proyecto VALUES ('2', 'Cálculos matemáticos', 50);
INSERT INTO proyecto VALUES ('3', 'Telescopio', 100);
INSERT INTO proyecto VALUES ('4', 'Cálculos', 500);
INSERT INTO proyecto VALUES ('5', 'Evolución biológica', 200);

INSERT INTO cientifico_proyecto VALUES ('1','1');
INSERT INTO cientifico_proyecto VALUES ('1','4');
INSERT INTO cientifico_proyecto VALUES ('2','2');
INSERT INTO cientifico_proyecto VALUES ('3','3');
INSERT INTO cientifico_proyecto VALUES ('4','4');
INSERT INTO cientifico_proyecto VALUES ('5','5');
INSERT INTO cientifico_proyecto VALUES ('5','1');

--- 1. Sacar una relación completa de los científicos asignados a cada proyecto. Mostrar DNI, Nombre del científico, identificador del proyecto y nombre del proyecto.
--- Porcedimiento para la sentencia 1

DELIMITER // --- Comienzo del delimitador
DROP PROCEDURE IF EXISTS cientifico_asignados_proyecto$$ --- Si el procedimeinto existe lo borra
create procedure cientifico_asignados_proyecto(
    out dni_cientifico varchar(50),
    out nombre_cientifico varchar(50),
    out id_proyecto vrachar(50),
    out nombre_proyecto varchar(50)
)
BEGIN --- Empieza la sentencia a ejecutar
SELECT cientifico.id, cientifico.nombre, proyecto.id, proyecto.nombre 
FROM cientifico 
JOIN proyecto ON cientifico.id = proyecto.id
into dni_cientifico, nombre_cientifico, id_proyecto, nombre_proyecto;
END 
// --- Fin del delimitador

DELIMITER ; --- Llamada al procedimeinto
call cientifico_asignados_proyecto(@dni_cientifico, @nombre_cientifico, @id_proyecto, @nombre_proyecto);
SELECT @dni_cientifico, @nombre_cientifico, @id_proyecto, @nombre_proyecto; --- Obteer los valores de las varibles del procedimiento

/* Para crear este procedimeinto he inicializado un procedimiento llamado cientificios_asignados_proyecto,
después, si existe un procedimiento llamado igual lo borré. A continuación he creado dicho procedimeinto con
parámetros de salida. Para ello he puesto la palabra reservada "out" y después le he peuesto el máximo de caracteres 
que puede tener la salida. En la línea 60 empecé la setencia que nos da el resultado del apartado 1. Después, he finalizado 
el delimitador con la palabra "END" y las dos barras. Por último, volví a comenzar el delimitador, pero esta vez lo hice 
con un punto y coma, En la siguiente línea he llamado al delimitador con la palabra reservada "CALL" donde le pasé 
las variables que el procedimiento debe de mostrar cuando se llame. En la última línea vaos a obtener los valores de las 
variable sobtenidas */ 

--- 2. Obtener el número de proyectos al que está asignado cada científico (mostrar el DNI y el nombre).
--- Procedimiento 2
 
DELIMITER // --- Comienzo del delimitador
DROP PROCEDURE IF EXISTS cantidad_proyectos$$
create procedure cantidad_proyectos(
    out cantidad integer(50),
    out id_proyecto varchar(50),
    out nombre_proyecto varchar(50)
)
BEGIN
SELECT c.id, c.nombre, count(cp.id_proyecto) from cientifico as c, cientifico_proyecto as cp
where c.id = cp.id_cientifico group by cp.id_cientifico, c.nombre
into cantidad, id_proyecto, nombre_proyecto;
END
// --- Fin del delimitador

DELIMITER ; --- Comienzo del delimitador
CALL cantidad_proyectos(@cantidad, @id_proyecto, @nombre_proyecto);
SELECT @cantidad, @id_proyecto, @nombre_proyecto; --- Obtenemos los valores de las variables

/* En este apartado he calculado la cantidad de los proyectos y he obtenido el id y el nombre de los proyectos
mediante un procedimiento llamado cantidad_proyectos. Para ello, he creado un deilimitador con la palabra reservadad "DELIMITER"
y, acontinuación he he borrado un proceidimiento si había uno con el mismo nombre. Después, he creado dico procedimiento y he realizado
la consulta . Para indicar el final del delimitador he puesto la palabra reservada "END" y, en la línea de abajo he puesto dos barras
para indicar el final del procedimeinto. Por último, he realizado una llamada a al procedimiento que he creado anteriormente, al que le 
pasamos las variables que hemos ceado en dicho procedimiento. En la última línea, obtengo las valores de las variables mencionadas 
anteriormente. */ 

--- 3. Obtener el numero de científicos asignados a cada proyecto (mostrar el identificador del proyecto y el nombre del proyecto).
--- Procedimiento 3
DELIMITER //
DROP PROCEDURE IF EXISTS numero_cientificos$$
create procedure numero_cientificos(
    out cantidad_cientificos varchar(50),
    out id_proyecto varchar(50),
    out nombre_proyecto varchar(50)
)
BEGIN 
SELECT p.id, p.nombre, count(cp.id_proyecto)
from proyecto as p left join cientifico_proyecto as cp on p.id = cp.id_proyecto
group by p.id, p.nombre
into cantidad_cientificos, id_proyecto, nombre_proyecto;
END
//

DELIMITER ;
call numero_cientificos(@numero_cientificos, @id_proyecto, @nombre_proyecto);
SELECT @numero_cientificos, @id_proyecto, @nombre_proyecto;

/* Para crear este procedimeinto he inicializado un procedimiento llamado cientificios_asignados_proyecto,
después, si existe un procedimiento llamado igual lo borré. A continuación he creado dicho procedimeinto con
parámetros de salida. Para ello he puesto la palabra reservada "out" y después le he peuesto el máximo de caracteres 
que puede tener la salida. En la línea 60 empecé la setencia que nos da el resultado del apartado 1. Después, he finalizado 
el delimitador con la palabra "END" y las dos barras. Por último, volví a comenzar el delimitador, pero esta vez lo hice 
con un punto y coma, En la siguiente línea he llamado al delimitador con la palabra reservada "CALL" donde le pasé 
las variables que el procedimiento debe de mostrar cuando se llame. En la última línea vaos a obtener los valores de las 
variable sobtenidas */ 

--- 4. Obtener el número de horas de dedicación de cada científico.
--- Procedimeinto 4
DELIMITER //
DROP PROCEDURE IF EXISTS cantidad_horas$$
create procedure cantidad_horas(
    out numero_horas integer(50)
)
BEGIN
SELECT p.horas, c.nombre from proyecto as p, cientifico as c, cientifico_proyecto as cp
where p.id = cp.id_proyecto
and c.id = cp.id_cientifico
into numero_horas;
END 
//

DELIMITER ;
CALL cantidad_horas(@numero_horas);
SELECT @cantidad_horas;

/* Para crear este procedimeinto he inicializado un procedimiento llamado cientificios_asignados_proyecto,
después, si existe un procedimiento llamado igual lo borré. A continuación he creado dicho procedimeinto con
parámetros de salida. Paa ello he puesto la palabra reservada "out" y después le he peuesto el máximo de caracteres 
que puede tener la salida. En la línea 60 empecé la setencia que nos da el resultado del apartado 1. Después, he finalizado 
el delimitador con la palabra "END" y las dos barras. Por último, volví a comenzar el delimitador, pero esta vez lo hice 
con un punto y coma, En la siguiente línea he llamado al delimitador con la palabra reservada "CALL" donde le pasé 
las variables que el procedimiento debe de mostrar cuando se llame. En la última línea vaos a obtener los valores de las 
variable sobtenidas */ 

--- 5. Obtener el DNI y nombre de los científicos que se dedican a más de un proyecto y cuya dedicación media a cada proyecto sea superior a un número de horas superior a 10, por ejemplo 11 horas.
--- Procedimeinto 5

DELIMITER //
DROP PROCEDURE IF EXISTS media_horas$$
create procedure media_horas(
    out dni_cientifico varchar(50),
    out nombre_cientifico varchar(50)
)
BEGIN
SELECT c.id, c.nombre from cientifico as c, cientifico_proyecto as cp, proyecto as p
where c.id = cp.id_cientifico
and p.id = cp.id_proyecto
group by c.id, c.nombre
having count(cp.id_proyecto) > 1 and avg(p.horas) > 10
into media_horas;
END 
//

DELIMITER ;
CALL media_horas(@dni_cientifico, @nombre_cientifico);
SELECT @dni_cientifico, @nombre_cientifico;

/* Para crear este procedimeinto he inicializado un procedimiento llamado cientificios_asignados_proyecto,
después, si existe un procedimiento llamado igual lo borré. A continuación he creado dicho procedimeinto con
parámetros de salida. Para ello he puesto la palabra reservada "out" y después le he peuesto el máximo de caracteres 
que puede tener la salida. En la línea 60 empecé la setencia que nos da el resultado del apartado 1. Después, he finalizado 
el delimitador con la palabra "END" y las dos barras. Por último, volví a comenzar el delimitador, pero esta vez lo hice 
con un punto y coma, En la siguiente línea he llamado al delimitador con la palabra reservada "CALL" donde le pasé 
las variables que el procedimiento debe de mostrar cuando se llame. En la última línea vaos a obtener los valores de las 
variable sobtenidas */ 