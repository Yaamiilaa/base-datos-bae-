--- Creación de la base de datos
mysql> create database salario;
Query OK, 1 row affected (0,01 sec)

mysql> use salario;
Database changed

--- Cración de la tabla
drop table if EXISTS persona;
create table persona(
    id varchar(9) not null primary key,
    nombre varchar(50),
    salario_base integer,
    subsidio float,
    salud float,
    pension float,
    bono float,
    integral float
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

--- Procedimiento para registrar al menos 10 personas.
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

--- Función para calcular el porcentaje
DELIMITER //
DROP FUNCTION IF EXISTS calcular_porcentaje //
CREATE FUNCTION calcular_porcentaje(numero int) RETURNS float DETERMINISTIC
BEGIN 
    declare calcular_porcentaje float;
    set calcular_porcentaje = numero / 100;
    RETURN calcular_porcentaje;
end
//
/* 
mysql> CREATE FUNCTION calcular_porcentaje(numero int) RETURNS float DETERMINISTIC
    -> BEGIN 
    ->     declare calcular_porcentaje float;
    ->     set calcular_porcentaje = numero / 100;
    ->     RETURN calcular_porcentaje;
    -> end
    -> //
Query OK, 0 rows affected (0,02 sec) */


--- Función de subsidio_transporte
DELIMITER //
DROP FUNCTION IF EXISTS subsidio_transporte //
CREATE FUNCTION subsidio_transporte(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE resultado float;
    declare numero_porcentaje int;
    set numero_porcentaje = 7;
    SET resultado = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    update persona set subsidio = resultado where id = identificador;  
    RETURN resultado;
END 
//
/* 
mysql> CREATE FUNCTION subsidio_transporte(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
    -> BEGIN
    ->     DECLARE resultado float;
    ->     declare numero_porcentaje int;
    ->     set numero_porcentaje = 7;
    ->     SET resultado = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    ->     update persona set subsidio = resultado where id = identificador;  
    ->     RETURN resultado;
    -> END 
    -> //
Query OK, 0 rows affected (0,00 sec)
 */

--- Función de salud.
DELIMITER //
DROP FUNCTION IF EXISTS modificar_salud //
CREATE FUNCTION modificar_salud(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
BEGIN 
    DECLARE calcular_salud float;
    declare numero_porcentaje int;
    set numero_porcentaje = 4;
    SET calcular_salud = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    update persona set salud = calcular_salud where id = identificador;
    RETURN calcular_salud;
END 
//
/* 
mysql> CREATE FUNCTION modificar_salud(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
    -> BEGIN 
    ->     DECLARE calcular_salud float;
    ->     declare numero_porcentaje int;
    ->     set numero_porcentaje = 4;
    ->     SET calcular_salud = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    ->     update persona set salud = calcular_salud where id = identificador;
    ->     RETURN calcular_salud;
    -> END 
    -> //
Query OK, 0 rows affected (0,02 sec) */


--- Función de pensión.
DELIMITER //
DROP FUNCTION IF EXISTS modificar_pension //
CREATE FUNCTION modificar_pension(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
BEGIN 
    DECLARE calcular_pension float;
    declare numero_porcentaje int;
    set numero_porcentaje = 4;
    SET calcular_pension = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    update persona set pension = calcular_pension where id = identificador;
    RETURN calcular_pension;
END 
//
/* 
mysql> CREATE FUNCTION modificar_pension(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
    -> BEGIN 
    ->     DECLARE calcular_pension float;
    ->     declare numero_porcentaje int;
    ->     set numero_porcentaje = 4;
    ->     SET calcular_pension = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    ->     update persona set pension = calcular_pension where id = identificador;
    ->     RETURN calcular_pension;
    -> END 
    -> //
Query OK, 0 rows affected (0,02 sec)

 */

--- Función bono.
DELIMITER //
DROP FUNCTION IF EXISTS modificar_bono //
CREATE FUNCTION modificar_bono(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
BEGIN 
    DECLARE calcular_bono float;
    declare numero_porcentaje int;
    set numero_porcentaje = 8;
    SET calcular_bono = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    update persona set bono = calcular_bono where id = identificador;
    RETURN calcular_bono;
END 
//
/* 
mysql> CREATE FUNCTION modificar_bono(identificador varchar(9)) RETURNS FLOAT DETERMINISTIC
    -> BEGIN 
    ->     DECLARE calcular_bono float;
    ->     declare numero_porcentaje int;
    ->     set numero_porcentaje = 8;
    ->     SET calcular_bono = (select salario_base * calcular_porcentaje(numero_porcentaje) from persona where id = identificador);
    ->     update persona set bono = calcular_bono where id = identificador;
    ->     RETURN calcular_bono;
    -> END 
    -> //
Query OK, 0 rows affected (0,00 sec) */

--- Función integral.
DELIMITER //
DROP FUNCTION IF EXISTS modificar_integral //
CREATE FUNCTION modificar_integral(identificador varchar(9)) RETURNS float DETERMINISTIC
BEGIN
    DECLARE calcular_integral float;
    DECLARE calcular_salud FLOAT;
    DECLARE salario FLOAT;
    declare calcular_pension float;
    DECLARE calcular_bono float;
    declare subsidio_transporte float;
    set calcular_bono = modificar_bono(identificador);
    set calcular_pension = modificar_pension(identificador);
    set subsidio_transporte = subsidio_transporte(identificador);
    set calcular_salud = modificar_salud(identificador);
    set salario = (select salario_base from persona where id = identificador); 
    set calcular_integral = (salario - calcular_salud - calcular_pension + calcular_bono + subsidio_transporte);
    update persona set integral = calcular_integral where id = identificador;
    RETURN calcular_integral;
END 
//
