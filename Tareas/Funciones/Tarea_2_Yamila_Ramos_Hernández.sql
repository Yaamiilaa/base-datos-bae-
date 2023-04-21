--- Creación de la base de datos
mysql> create database salario;
Query OK, 1 row affected (0,01 sec)

mysql> use salario;
Database changed

--- Cración de la tabla
create table persona(
    id varchar(9) not null primary key,
    nombre varchar(50),
    salario_base integer,
    subsidio int,
    salud int,
    pension int,
    bono int,
    integral int
);
/* 
mysql> create table persona(
    ->     id varchar(9) not null primary key,
    ->     nombre varchar(50),
    ->     salario_base integer,
    ->     subsidio int,
    ->     salud int,
    ->     pension int,
    ->     bono int,
    ->     integral int
    -> );
Query OK, 0 rows affected (0,02 sec)
 */

--- Procedimiento para registrar al emnos 10 personas.
DELIMITER //
DROP PROCEDURE IF EXISTS insertar_personas //
CREATE PROCEDURE insertar_personas(in numero_de_personas int)
BEGIN
    DECLARE clave varchar(9); 
    DECLARE numero INT;
    SET numero = 1; 
    while numero < numero_de_personas do
        SET clave = CONCAT('000000', numero);
        insert into persona values(clave, 'Pepe', 51515, 144185, 65, 84485485, 4514415, 15151);
        SET numero = numero + 1;
    end while;
END 
//

/* 
mysql> CREATE PROCEDURE insertar_personas(in numero_de_personas int)
    -> BEGIN
    ->     DECLARE clave varchar(9); 
    ->     DECLARE numero INT;
    ->     SET numero = 1;
    ->     while numero < numero_de_personas do
    ->         SET clave = CONCAT('000000', numero);
    ->         insert into persona values(clave, 'Juan', 'Ramos', 'Hernández', 65, 'H');
    ->         SET numero = numero + 1;
    ->     end while;
    -> END 
    -> //
Query OK, 0 rows affected (0,09 sec)
 */

--- Función de subsidio_transporte
DELIMITER //
DROP FUNCTION IF EXISTS subsidio_transporte //
CREATE FUNCTION subsidio_transporte(identificador int) RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE calcular_subsidio float;
    SET calcular_subsidio = (select salario_base * 0.07 from persona where id = identificador);
    update persona set subsidio = calcular_subsidio where id = identificador;  
    RETURN calcular_subsidio;
END 
//

--- Función de salud.
DELIMITER //
DROP FUNCTION IF EXISTS modificar_salud //
CREATE FUNCTION modificar_salud(identificador int) RETURNS FLOAT DETERMINISTIC
BEGIN 
    DECLARE calcular_salud float;
    SET calcular_salud = (select salario_base * 0.04 from persona where id = identificador);
    update persona set salud = calcular_salud;
    RETURN calcular_salud;
END 
//


