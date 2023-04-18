--- Creación de la base de datos 
mysql -u root -p
mysql> create database salario;
mysql> use salario;

--- Creación de la tabla de la base de datos 
create table salario(
    identificador int not null primary key,
    nombre varchar(20) not null,
    salario_base int not null
);

--- Insertar varios datos para la tabla creada anteriormente 
insert into salario values(1, 'Juan', 1000);
insert into salario values(2, 'Pepe', 1500);
insert into salario values(3, 'Sara', 1000);
insert into salario values(4, 'Laura', 1500);
insert into salario values(5, 'Juana', 1200);
insert into salario values(6, 'Sergio', 1500);
insert into salario values(7, 'Javier', 1000);
insert into salario values(8, 'Antonio', 1500);
insert into salario values(9, 'Andrés', 1250);
insert into salario values(10, 'María', 1000);

--- Creación de funciones
--- 1. Función subsidio_transporte: El subsidio de transporte equivale al 7% al salario básico.
DELIMITER //
DROP FUNCTION IF EXISTS subsidio_transporte //
CREATE FUNCTION subsidio_transporte(salario_base int) RETURNS int DETERMINISTIC
BEGIN 
    DECLARE calcular_subsidio int;
    set calcular_subsidio = salario_base * 0.07;
    RETURN calcular_subsidio;
END 
//

--- Otra manera de hacer el ejercicio 1.
DELIMITER //
DROP FUNCTION IF EXISTS subsidio_transporte //
CREATE FUNCTION subsidio_transporte(id int) RETURNS int DETERMINISTIC
BEGIN 
    declare calcular_subsidio int;
    set calcular_subsidio = (select salario_base * 0.07 from salario where identificador = id);
    RETURN calcular_subsidio;
END 
//

--- 2. Función salud: La salud que corresponde al 4% al salario básico.
DELIMITER //
DROP FUNCTION IF EXISTS salud //
CREATE FUNCTION salud(salario_base int) RETURNS int DETERMINISTIC
BEGIN
    DECLARE salud int;
    set salud = salario_base * 0.04;
    RETURN salud;
END 
//

--- Otra menera de hacer el ejercicio 2.
DELIMITER //
DROP FUNCTION IF EXISTS salud //
CREATE FUNCTION salud(id int) RETURNS int DETERMINISTIC
BEGIN 
    declare calcular_salud int;
    set calcular_salud = (select salario_base * 0.04 from salario where identificador = id);
    RETURN calcular_salud;
END 
//

--- 3. Función pension: La pensión que corresponde al 4% al salario básico.
DELIMITER //
DROP FUNCTION IF EXISTS pension //
CREATE FUNCTION pension(salario_base int) RETURNS int DETERMINISTIC
BEGIN
    DECLARE pension int;
    set pension = salario_base * 0.04;
    RETURN pension;
END 
//

--- Otra menra de hacer el ejercicio 3. 
DELIMITER //
DROP FUNCTION IF EXISTS pension //
CREATE FUNCTION pension(id int) RETURNS int DETERMINISTIC
BEGIN 
    declare calcular_pension int;
    set calcular_pension = (select salario_base * 0.04 from salario where identificador = id);
    RETURN calcular_pension;
END 
//

--- 4. Función bono: Un bono que corresponde al 8% al salario básico.
DELIMITER //
DROP FUNCTION IF EXISTS bono //
CREATE FUNCTION bono(salario_base int) RETURNS int DETERMINISTIC
BEGIN
    DECLARE bono int;
    set bono = salario_base * 0.08;
    RETURN bono;
END 
//

--- Otra menera de hacer el ejercicio 4. 
DELIMITER //
DROP FUNCTION IF EXISTS bono //
CREATE FUNCTION bono(id int) RETURNS int DETERMINISTIC
BEGIN 
    declare calcular_bono int;
    set calcular_bono = (select salario_base * 0.08 from salario where identificador = id);
    RETURN calcular_bono;
END 
//

--- 5. Función integral: El salario integral es la suma del salario básico - salud - pension + bono + sub de transporte.
DELIMITER //
DROP FUNCTION IF EXISTS integral //
CREATE FUNCTION integral(id int) RETURNS int DETERMINISTIC
BEGIN
    DECLARE calcular_integral int;
    DECLARE funcion_salud int;
    DECLARE funcion_pension int;
    DECLARE funcion_bono int;
    DECLARE funcion_subsidio_transporte int;
    set funcion_salud = (select salud(id));
    set funcion_pension = (select pension(id));
    set funcion_bono = (select bono(id));
    set funcion_subsidio_transporte = (select subsidio_transporte(id));
    set calcular_integral = (select salario_base - funcion_salud - funcion_pension + funcion_bono + funcion_subsidio_transporte from salario where identificador = id);
    RETURN calcular_integral;
END 
//
