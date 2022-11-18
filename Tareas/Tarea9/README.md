# Gestión de Aeropuertos

## Índice:
- 1. Indicar claves candidatas.
- 2. Comprobar si se cumple la 1ª Forma Normal.
- 3. Normalizar si no se cumple el apartado 2.
- 4. Determinantes sobre las tablas resultado del apartado 3.
- 5. Indicar claves candidatas de todas las tablas resultantes.

1. **Indicar claves candidatas.**

Las claves candidatas son: (ciudad, Cod Aeropuerto) y (Ciudad, Nombre Aeropuerto)

2. **Comprobar si se cumple la 1ª Forma Normal.**

No cumple la 1FN dado que tiene valores multivaluados. Los campos CodAeropuerto, NombreAeropuerto y distancia_km no son atómicos.

3. **Normalizar si no se cumple el apartado 2 y determinantes sobre las tablas resultado del apartado 3.**

La relación es de tipo N:N si suponemos que una ciudad puede tener varios aeropuertos y que un aeropuerto puede serlo de varias ciudades.

Tabla de *Ciudad*

![<Imgen 1>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea9/img/tabla%20ciudad.png>)

Tabla de *Aeropuerto*

![<Imgen 2>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea9/img/Tabla%20aeropuerto.png>)

Tabla de Ciudad-Aeropuerto

![<Imgen 3>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea9/img/Tabla%20ciudad-aeropuerto.png>)

5. **Indicar claves candidatas de todas las tablas resultantes.**

Las claves candidatas de todas las tablas resultantes son: ciudad: ciudad, aunque la columna debe de llamarse "nombre", y evitar la redundancia entre tabla y nombre; aeropuerto: codAeropuerto, aunque la columna debe de llamarse código; y ciudada_aeropuero: codAeropuerto y ciudada.