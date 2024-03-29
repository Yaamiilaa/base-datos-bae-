--- Creación de la bsae de datos
mysql -u root -p 
mysql> create database gestion_clientes;
mysql> use gestion_clientes;

--- Creación de la table personas
drop table if exists personas;
create table persona(
    id  VARCHAR(50) primary key,
    nombre VARCHAR(50) ,
    apellido1 VARCHAR(50) ,
    apellido2 VARCHAR(50),
    peso int,
    sexo ENUM('H', 'M')
);

--- Realizar al menos 10 insert en la tabla
insert into persona values('11111111A', 'Juan', 'Perez', 'Morales', 61, 'H');
insert into persona values('22222222B', 'Juana', 'Ramos', 'Díaz', 80, 'M');
insert into persona values('33333333C', 'Maria', 'Barroso', 'Hernández', 65, 'H');
insert into persona values('44444444D', 'Pepe', 'Rodriguez', 'Fuentes', 93, 'H');
insert into persona values('55555555E', 'Javier', 'Regalado', 'Verde', 89, 'H');
insert into persona values('66666666F', 'Paula', 'Morales', 'Rodriguez', 59, 'M');
insert into persona values('77777777G', 'Laura', 'Verde', 'Ramos', 72, 'M');
insert into persona values('88888888H', 'Pepe', 'Rodriguez', 'Barroso', 73, 'H');
insert into persona values('99999999I', 'Ariadna', 'Perez', 'Regalado', 65, 'M');
insert into persona values('10101010J', 'Pepe', 'Díaz', 'Fuentes', 86, 'H');

--- Creación de procedimientos 
--- 1. Insertar información en la tabla "personas"
DELIMITER //
DROP PROCEDURE IF EXISTS info_personas //
CREATE PROCEDURE info_personas(in nuevo_id VARCHAR(50), 
                               in nuevo_nombre VARCHAR(50), 
                               in nuevo_apellido1 VARCHAR(50), 
                               in nuevo_apellido2 VARCHAR(50), 
                               in nuevo_peso int, 
                               in nuevo_sexo VARCHAR(1))
BEGIN   
    declare id_anterior int;
    set id_anterior = select id from persona where id = nuevo_id;
    if id_anterior != nuevo_id then
    insert into persona values(nuevo_id, nuevo_nombre, nuevo_apellido1, nuevo_apellido2, nuevo_peso, nuevo_sexo);
    end if ;
END 
//

--- 2. Actualizar el nombre e id de un cliente
DELIMITER //
DROP TABLE IF EXISTS actualizar_nombre //
CREATE PROCEDURE actualizar_nombre(in identificador VARCHAR(20), in nuevo_nombre VARCHAR(20))
BEGIN 
    /* Se podría poner otro procedimiento que verifica si el id que se introduce existe */
            /* procedure existe (in parámetro de entrada y otra de salida) */
                     /* Este procedimiento se hace a parte */
    update persona set nombre = nuevo_nombre where id = identificador;
END
//

--- 3. Eliminar un cliente
DELIMITER //
DROP PROCEDURE IF EXISTS eliminar_cliente //
CREATE PROCEDURE eliminar_cliente(in id_eliminar VARCHAR(20))
BEGIN
    delete from persona where id = id_eliminar;
END
//

--- 4. Investigar procedimientos con paramentaros de salida.
DELIMITER //
DROP PROCEDURE IF EXISTS obtener_peso //
CREATE PROCEDURE obtener_peso(in nombre_persona varchar(20), out peso_obtenido int)
BEGIN
    set peso_obtenido = (
        select peso from persona 
        where nombre = nombre_persona
    );
END
//


--- 5. Investigar cómo hacer un ciclo (while).
DELIMITER // 
DROP PROCEDURE IF EXISTS insertar_personas //
CREATE PROCEDURE insertar_personas(in numero_de_personas int)
BEGIN
    DECLARE clave varchar(9); /* Todos los declare tienen que ir juntos, porque da error */
    DECLARE numero INT;
    SET numero = 1;
    while numero < numero_de_personas do
        SET clave = CONCAT('000000', numero);
        insert into persona values(clave, 'Juan', 'Ramos', 'Hernández', 65, 'H');
        SET numero = numero + 1;
    end while;
END 
//
