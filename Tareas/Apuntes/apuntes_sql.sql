--- Tipos de datos:

create table libro(
    titulo text,
    autor text,
    editorial text,
    precio real,  --- Número con decimales
    cantidad integer
)

--- Operaciones racionales:

=  | igual
<> | distinto
>  | mayor 
<  | menor 
>= | mayor o igual 
<= | menor o igual 

--- Actualizar un registro:

update <tabla> set <campo que queremos cambiar = valor al que queremos cambiar>
where condición 

--- Hacer referencia a otra tabla o a la misma tabla:

create table editorial(
	codigo integer primary key,
	nombre text
);

create table libro(
	codigo integer primary key,
	titulo text,
	autor text, 
	precio real,
	codigo_editorial integer	references editorial(codigo)
);

create table director(
dni text primary key,
nombre text,
apellido text,
director_jefe text REFERENCES director(dni), --- Referencias en una misma tabla
id_despacho INTEGER REFERENCES despacho (id)
);


--- Concatenar campos de una misma tabla: 
--- (Se usa los guiones para separar campos)

select titulo||'-'||autor||'-'||editorial
from libro;

--- Se utiliza dafault para definir un campo por defecto, es decir, queremos que 
--- el campo autor sea desconocido y el campo cantidad sea 0:

create table libro(
	codigo integer primary key,
	titulo text,
	autor text not null default 'desconocido', 
	editorial text,
	precio real,
	cantidad integer default 0
 );

 --- Utilizamos having con group by para agrupar un campo con una condición:

select editorial, count(*) from libro
group by editorial
having count(*)>2;

--- Para coger información de dos tablas se hace lo siguiente:

select tabla.campo
from tabla1, tabla2
where tabla1.campo = tabla2.campo;