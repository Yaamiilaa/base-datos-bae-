--- 1- Eliminamos la tabla, si existe y la creamos.
drop table empleados;
create table empleados(
    documento integer primary key,
    nombre text,
    apellido text,
    sueldo integer,
    cantidad_hijos integer,
    seccion text
);

--- 2- Ingrese algunos registros.
insert into empleados values (22222222, 'Juan', 'Perez', 300.00, 2, 'Contaduria');
insert into empleados values (22333333, 'Luis', 'Lopez', 300.00, 1, 'Contaduria');
insert into empleados values (22444444, 'Marta', 'Perez', 500.00, 1, 'Sistemas');
insert into empleados values (22555555, 'Susana', 'Garcia', 400.00, 2, 'Secretaria');
insert into empleados values (22666666, 'Jose Maria', 'Morales', 400.00, 3, 'Secretaria');

--- 3- Elimine el procedimiento llamado pa_empleados_sueldo si existe.
drop procedure if exists pa_empleados_sueldo;

--- 4- Cree un procedimiento almacenado llamado pa_empleados_sueldo que seleccione los nombres.
DELIMITER //
create procedure pa_empleados_sueldo() # No hace falta los paréntesis porque no hay parámetros de entrada ni de salida
BEGIN
    select nombre from empleados;
END 
//

--- 5- Ejecute el procedimiento creado anteriormente.
DELIMITER ;
CALL pa_empleados_sueldo(); # Aquí tampoco hace falta los paréntesis

--- 6- Elimine el procedimiento llamado pa_empleados_hijos si existe.
drop procedure if exists pa_empleados_hijos;

--- 7- Cree un procedimiento almacenado llamado pa_empleados_hijos que seleccione los nombres apellidos y cantidad de hijos de los empleados con hijos.
# Se puede hacer ocn parámetros de entrada ya que la cantidad de hijos te la pueden pedir 
DELIMITER //
CREATE PROCEDURE pa_empleados_hijos()
BEGIN
    select nombre, apellido, cantidad_hijos from empleados where cantidad_hijos > 0; ---> El 0 puede ser un parámetro de entrada
END 
//

--- 8- Ejecute el procedimiento creado anteriormente.
DELIMITER ;
CALL pa_empleados_hijos();


--- 9- Actualice la cantidad de hijos de algún empleado sin hijos y vuelva a ejecutar el procedimiento para verificar que ahora si aparece en la lista.
update empleados set cantidad_hijos = 1 where cantidad_hijos = 0; # Hay que hacer un procedimiento

DELIMITER // 
DROP PROCEDURE IF EXISTS actualizar_hijos //
create PROCEDURE actualizar_hijos(in nombre_empleados varchar(50), 
                                  cantidad_nuevos_hijos int,
                                  filtro_nuevos_hijos int) 
BEGIN
    UPDATE empleados set  cantidad_hijos = cantidad_nuevos_hijos
    where nombre=nombre_empleados and cantidad_hijos > filtro_nuevos_hijos;
END
//
