--- Eliminamos la tabla si existe y creamos una nueva
drop table donacion;
create table donacion(
    peso integer,
    admitido ENUM('Si', 'No'),
    sexo ENUM('H', 'M'),
    ultima_donacion datetime
);

--- Realizamos 10 insert en la tabla.
insert into donacion values (52, 'Si', 'H', ultima_donacion);
insert into donacion values (84, 'No', 'M', ultima_donacion);
insert into donacion values (76, 'Si', 'M', ultima_donacion);
insert into donacion values (35, 'No', 'H', ultima_donacion);
insert into donacion values (90, 'No', 'H', ultima_donacion);
insert into donacion values (83, 'Si', 'M', ultima_donacion);
insert into donacion values (30, 'No', 'M', ultima_donacion);
insert into donacion values (93, 'No', 'H', ultima_donacion);
insert into donacion values (65, 'Si', 'M', ultima_donacion);
insert into donacion values (102, 'No', 'H', ultima_donacion);

--- Procedimiento para saber si la persona es apta para donar sangre
DELIMITER $$
DROP PROCEDURE IF EXISTS apto_para_donar $$
create procedure apto_para_donar()
BEGIN 
    update donacion set admitido = 'Si' where peso > 50;
    update donacion set admitido = 'No' where peso < 50;

END $$

