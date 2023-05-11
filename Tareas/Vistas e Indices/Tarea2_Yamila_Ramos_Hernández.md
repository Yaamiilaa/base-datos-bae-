# Tarea 1 de trabajo con índices

1. Elimine la tabla "alumno" si existe.

    drop table if exists alumno;

```sql
Query OK, 0 rows affected, 1 warning (0,01 sec)
```

2. Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de inscripción). 

    create table alumnos(
        año_inscripcion integer,
        numero_inscripcion integer,
        nombre varchar(9),
        domicilio varchar(50),
        documento varchar(50),
        ciudad varchar(15),
        provincia varchar(15),
        primary key (año_inscripcion, numero_inscripcion)
    );

```sql
Query OK, 0 rows affected, 1 warning (0,01 sec)
```

3. Define los siguientes indices: 
    - Un índice único por el campo "documento" y un índice común por ciudad y provincia.

        create unique index indice_documentos on alumnos(documento);

        ```sql             
        Query OK, 0 rows affected (0,03 sec)
        Records: 0  Duplicates: 0  Warnings: 0
        ```

        create index indice_ciudad on alumnos(ciudad);

        ```sql             
        Query OK, 0 rows affected (0,03 sec)
        Records: 0  Duplicates: 0  Warnings: 0
        ```

        create index indice_provincia on alumnos(provincia);

        ```sql             
        Query OK, 0 rows affected (0,02 sec)
        Records: 0  Duplicates: 0  Warnings: 0
        ```

    - Vea los índices de la tabla. 

        show index from alumnos;

        ```sql
            +---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
            | Table   | Non_unique | Key_name         | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
            +---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
            | alumnos |          0 | PRIMARY          |            1 | año_inscripcion    | A         |          25 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
            | alumnos |          0 | PRIMARY          |            2 | numero_inscripcion | A         |          26 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
            | alumnos |          1 | indice_ciudad    |            1 | ciudad             | A         |           2 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
            | alumnos |          1 | indice_provincia |            1 | provincia          | A         |           2 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
            +---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
            4 rows in set (0,00 sec)
        ´´´     
4. Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria. 

    DELIMITER //
    DROP PROCEDURE IF EXISTS insertar_registros //
    CREATE PROCEDURE insertar_registros () 
    BEGIN 
        DECLARE contador INT;
        DECLARE numero_random INT;
        DECLARE nombre_insertar VARCHAR(9);
        DECLARE domicilio_insertar VARCHAR(9);
        set contador = 0;
        while contador < 5 DO
            set nombre_insertar = CONCAT('Usuario', contador);
            set domicilio_insertar = CONCAT('Calle', contador);
            set numero_random = rand()*1000;
            insert into alumnos (año_inscripcion, numero_inscripcion, nombre, domicilio, documento, ciudad, provincia) values (numero_random, numero_random, nombre_insertar, domicilio_insertar, CONCAT(contador, 'A'), 'S/C de Tenerife', 'S/C de Tenerife');
            SET contador = contador + 1;
        END WHILE;
    END
    //

```sql 
Query OK, 0 rows affected (0,01 sec)
```

5. Intente ingresar un alumno con clave primaria repetida. 

    insert into alumnos values (0, 0, 'Juan', 'Calle20', '20A', 'Las Palmas', 'Las Palmas');

```sql
Query OK, 1 row affected (0,01 sec)
```
6. Intente ingresar un alumno con documento repetido. 

    insert into alumnos values (20, 0, 'Juan', 'Calle20', '0A', 'Las Palmas', 'Las Palmas');

```sql
Query OK, 1 row affected (0,01 sec)
```

7. Ingrese varios alumnos de la misma ciudad y provincia. 

    insert into alumnos values (30, 40, 'Juan', 'Calle20', '30A', 'S/C de Tenerife', 'S/C de Tenerife');

```sql 
insert into alumnos values (30, 40, 'Juan', 'Calle20', '30A', 'S/C de Tenerife', 'S/C de Tenerife');
```

    insert into alumnos values (40, 10, 'Juan', 'Calle20', '30A', 'S/C de Tenerife', 'S/C de Tenerife');

```sql
Query OK, 1 row affected (0,00 sec)
```

8. Elimina los indices creados, y muestra que ya no se encuentran. 

    show index from alumnos;

```sql
+---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name         | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumnos |          0 | PRIMARY          |            1 | año_inscripcion    | A         |          25 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          0 | PRIMARY          |            2 | numero_inscripcion | A         |          26 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          1 | indice_ciudad    |            1 | ciudad             | A         |           2 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumnos |          1 | indice_provincia |            1 | provincia          | A         |           2 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
4 rows in set (0,00 sec)
```
     drop index indice_ciudad on alumnos; 

```sql
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

    drop index indice_provincia on alumnos; //
    
```sql
Query OK, 0 rows affected (0,03 sec)
Records: 0  Duplicates: 0  Warnings: 0
```
