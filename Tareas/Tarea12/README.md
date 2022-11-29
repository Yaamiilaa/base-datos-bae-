# Editorial

## Iíndice:
1. Comprobar si se cumple la 1ª Forma Normal.
2. Normalizar si no se cumple el apartado 2.
3. Comprobar si se cumple la 2ª Forma Normal.
4. Normalizar si no se cumple el apartado 4.
5. Comprobar si se cumple la 3ª Forma Normal.
6. Normalizar si no se cumple el apartado 5.
7. Indicar claves de todas las tablas resultantes.
8. Genera el diagrama E/R resultante.

## 1. Comprobar si se cumple la 1ª Forma Normal.

No se cumple la 1º Forma Normal porque hay campos que no son atómicos, es decir, que son multievaluados. 

## 2. Normalizar si no se cumple el apartado 2.

![<Imagen 1>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea12/img/Cap%201.png>)

## 3. Comprobar si se cumple la 2ª Forma Normal.

No se cumple la 2º Forma Normal porque los campos títulos y autor dependen del Código del libro.

## 4. Normalizar si no se cumple el apartado 4.

![<Imagen 2>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea12/img/Cap%202.png>)

## 5. Comprobar si se cumple la 3ª Forma Normal.

No está en 3º Forma Normal porque hay exixten dependencias transitivas entre los campos en las tablas vistas en el apartado anterior.

## 6. Normalizar si no se cumple el apartado 5.

![<Imagen 3>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea12/img/Cap%203.png>)

![<Imagen 4>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea12/img/Cap%204.png>)

## 7. Indicar claves de todas las tablas resultantes.

Las claves de todas las tablas resultantes son las siguientes: CódigoLibro, CódigoAutor, CódigoEditorial y CódigoLector.

## 8. Genera el diagrama E/R resultante.

![<Imagen 5>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea12/img/Editorial.png>)