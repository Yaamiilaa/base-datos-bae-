# Pedidos
## Índice:
1. Comprobar si se cumple la 1ª Forma Normal.
2. Normalizar si no se cumple el apartado 2.
3. Comprobar si se cumple la 2ª Forma Normal.
4. Normalizar si no se cumple el apartado 4.
5. Comprobar si se cumple la 3ª Forma Normal.
6. Normalizar si no se cumple el apartado 5.
7. Indicar claves de todas las tablas resultantes.
8. Genera el diagrama E/R resultante.

## 1. Comprobar si se cumple la 1ª Forma Normal.

No se cumple la 1º Forma Normal porque hay campos que no son atómicos, es decir, que son multivaluados.

## 2. Normalizar si no se cumple el apartado 2.

![<Imagen 1>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Traea13/img/Cap1%20.png>)

## 3. Comprobar si se cumple la 2ª Forma Normal.

No se cumple la 2° Forma Normal porque hay atributos que no forman parte de la clave principal pero que aún así siguen dependiendo de ella, como es el ejemplo de ID Cliente, Nombre y Ciudad, donde Nombre y Ciudad dependen de ID Cliente. 

## 4. Normalizar si no se cumple el apartado 3.

![<Imagen 2>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Traea13/img/cap%202.png>)

## 5. Comprobar si se cumple la 3ª Forma Normal.

No se cumple la 3• Forma Normal porque existen dependencias transitivas entre el precio y la cantidad de un artículo.  

## 6. Normalizar si no se cumple el apartado 5.

![<Imagen 3>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Traea13/img/cap3%20.png>)

![<Imagen 4>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Traea13/img/cap4%20.png>)

## 7. Indicar claves de todas las tablas resultantes.

Las claves de todas las tablas resultantes son las siguientes: Número Artículo, ID Orden, ID Cliente.

## 8. Genera el diagrama E/R resultante.

![<Imagen 5>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Traea13/img/pedido.png>)