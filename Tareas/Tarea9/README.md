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

3. **Normalizar si no se cumple el apartado 2.**
La relación es de tipo N:N si suponemos que una ciudad puede tener varios aeropuertos y que un aeropuerto puede serlo de varias ciudades.

