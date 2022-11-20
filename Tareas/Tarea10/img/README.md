# Gestión Escuela de Topografía de Madrid
## Índice:
- 1. Indicar claves candidatas.
- 2. Comprobar si se cumple 1º Formal Normal.
- 3. Normalizar si no se cumple el apartado 2 y determinantes sobre las tablas resultados. 
- 4. Indicar claves candidatas de todas las tablas resultantes. 

### 1. Indicar claves candidatas.

Es una tabla que relacions alumnos y asignaturas. 

Claves candidatas: (DNI, Asignatura), (Apellidos, Nombre, Asignatura), (DNI, Código) y (Apellidos, Nombre, Código).

### 2. Comprobar si se cumple 1º Formal Normal.

No se cumple la Primera Forma Normal porque los campos Código, Aignatura y Nota no son atómicos, es decir, son atributos multievaluados. 

### 3. Normalizar si no se cumple el apartado 2 y determinantes sobre las tablas resultados.

Tabla *Alumno*

![<Imagen 1>](<>)

Tabla *Asignatura*

![<Imagen 2>](<>)

Tabla *Alumno-Asignatura*

![<Imagen 3>](<>)

### 4. Indicar claves candidatas de todas las tablas resultantes. 

Las claves candidatas son las siguientes:

Clave Primaria {DNI, código}ALUMNO_ASIGNATURA.DNI = Alumno.DNIALUMNO_ASIGNATURA.codigo = Asignatura.codigo