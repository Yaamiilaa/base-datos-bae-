--- Creación de la bsae de datos
mysql -u root -p gestion_clientes 
mysql> create database gestion_clientes;
mysql> use gestion_clientes;

--- Creación de la table personas
create table persona(
    id text primary key,
    nombre text VARCHAR(50),
    apellido1 text VARCHAR(50),
    apellido2 text VARCHAR(50),
    peso int,
    sexo ENUM('H', 'M')
);

--- Realizar al menos 10 insert en la tabla
insert into persona values('11111111A', 'Juan', 'Perez', 'Morales', 61, 'H');
insert into persona values('22222222B', 'Juana', 'Ramos', 'Díaz', 80, 'M');
insert into persona values('33333333C', 'Maria', 'Barroso', 'Hernández', 65, 'H');
insert into persona values('44444444D', 'Felipe', 'Rodriguez', 'Fuentes', 93, 'H');
insert into persona values('55555555E', 'Javier', 'Regalado', 'Verde', 89, 'H');
insert into persona values('66666666F', 'Paula', 'Morales', 'Rodriguez', 59, 'M');
insert into persona values('77777777G', 'Laura', 'Verde', 'Ramos', 72, 'M');
insert into persona values('88888888H', 'Acaymo', 'Rodriguez', 'Barroso', 73, 'H');
insert into persona values('99999999I', 'Ariadna', 'Perez', 'Regalado', 65, 'M');
insert into persona values('10101010J', 'Pepe', 'Díaz', 'Fuentes', 86, 'H');

--- Creación de procedimientos 
--- 1. Insertar información enb la tabla 
DELIMITER //
DROP PROCEDURE IF EXISTS info_personas //
CREATE TABLE info_personas(in id text, in nombre text, in apellido1 text, text, apellido2 text, peso int, in sexo ENUM('M', 'H'))
BEGIN   
    insert into persona values(id, nombre, apellido1, apellido2, peso, sexo);
END 
//