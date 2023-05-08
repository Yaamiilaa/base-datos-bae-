--- Realiza cada una de las siguientes consultas:

    --- Actores que tienen de primer nombre Scarlett.
mysql> select count(first_name) from actor where first_name = 'SCARLETT';
/* 
+-------------------+
| count(first_name) |
+-------------------+
|                 2 |
+-------------------+
1 row in set (0,00 sec)
 */
    --- Actores que tienen de apellido Johansson.

mysql> select count(last_name) from actor where last_name = 'JOHANSSON';
/* 
+------------------+
| count(last_name) |
+------------------+
|                3 |
+------------------+
1 row in set (0,00 sec)
*/

    --- Actores que contengan una O en su nombre.

mysql> select count(first_name) from actor where first_name regexp 'O';
/* 
+-------------------+
| count(first_name) |
+-------------------+
|                36 |
+-------------------+
1 row in set (0,00 sec)
 */

    --- Actores que contengan una O en su nombre y en una A en su apellido.

mysql> select count(first_name) from actor where first_name regexp 'O' and last_name regexp 'A';
/* 
+-------------------+
| count(first_name) |
+-------------------+
|                16 |
+-------------------+
1 row in set (0,00 sec)
*/
    
    --- Actores que contengan dos O en su nombre y en una A en su apellido.

mysql> select count(*) from actor where first_name like '%O%O%' and last_name regexp 'A';
/* 
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0,00 sec)
 */
  
    --- Actores donde su tercera letra sea B.

mysql> select count(first_name) from actor where first_name regexp '...B';
/* 
+-------------------+
| count(first_name) |
+-------------------+
|                 1 |
+-------------------+
1 row in set (0,00 sec)
*/

    --- Ciudades que empiezan por a.

mysql> select count(city) from city where city regexp'^A';
/* 
+-------------+
| count(city) |
+-------------+
|          43 |
+-------------+
1 row in set (0,00 sec)
*/


    --- Ciudades que acaban por s.

mysql> select count(city) from city where city regexp'S$';
/* 
+-------------+
| count(city) |
+-------------+
|          31 |
+-------------+
1 row in set (0,00 sec)
 */

    --- Ciudades del country 61.

mysql> select count(city) from city where country_id = 61;
/* 
+-------------+
| count(city) |
+-------------+
|           1 |
+-------------+
1 row in set (0,00 sec)
 */

    --- Ciudades del country Spain.

mysql> select count(city) from city join country on city.country_id=country.country_id where country.country= 'Spain';
/* 
+-------------+
| count(city) |
+-------------+
|           5 |
+-------------+
1 row in set (0,00 sec)
 */

    --- Ciudades con nombres compuestos.

mysql> select count(city) from city where city like '% %';
/* 
+-------------+
| count(city) |
+-------------+
|          92 |
+-------------+
1 row in set (0,00 sec)
 */

    --- Películas con una duración entre 80 y 100.

mysql> select count(*) from film where length between 80 and 100;
/* 
+----------+
| count(*) |
+----------+
|      147 |
+----------+
1 row in set (0,00 sec)
 */

    --- Peliculas con un rental_rate entre 1 y 3.

mysql> select count(*) from film where rental_rate between 1 and 3;
/* 
+----------+
| count(*) |
+----------+
|      323 |
+----------+
1 row in set (0,01 sec)
 */

    --- Películas con un titulo de más de 12 letras.

mysql> select count(*) from film where length > 12;
/* 
+----------+
| count(*) |
+----------+
|     1000 |
+----------+
1 row in set (0,00 sec)
 */

    ---Peliculas con un rating de PG o G.

mysql> select count(*) from film where rating regexp 'PG|G';
/* 
+----------+
| count(*) |
+----------+
|      595 |
+----------+
1 row in set (0,01 sec)
 */
    
    --- Peliculas que no tengan un rating de NC-17.
mysql> select count(*) from film where rating NOT regexp 'NC-17';
/* 
+----------+
| count(*) |
+----------+
|      790 |
+----------+
1 row in set (0,00 sec)
 */
    --- Peliculas con un rating PG y duracion de más de 120.

mysql> select count(*) from film where rating REGEXP 'PG' OR length > 120;
/* 
+----------+
| count(*) |
+----------+
|      674 |
+----------+
1 row in set (0,00 sec)
 */
    ---¿Cuantos actores hay?
mysql> select count(*) from actor;
/* 
+----------+
| count(*) |
+----------+
|      200 |
+----------+
1 row in set (0,03 sec)
 */

    --- ¿Cuántas ciudades tiene el country Spain?

mysql> select count(*) from city join country on country.country_id = city.country_id where country.country = 'Spain';
/* 
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0,00 sec)
 */
 
    --- ¿Cuántos countries hay que empiezan por a?

mysql> select count(city) from city where city regexp'^A';
/* 
+-------------+
| count(city) |
+-------------+
|          43 |
+-------------+
1 row in set (0,00 sec)
*/

    --- Media de duración de peliculas con PG.

mysql> select avg(length) from film where rating regexp 'PG';
/* 
+-------------+
| avg(length) |
+-------------+
|    116.5180 |
+-------------+
1 row in set (0,01 sec)
 */

    --- Suma de rental_rate de todas las peliculas.

mysql> select sum(rental_rate) from film;
/* 
+------------------+
| sum(rental_rate) |
+------------------+
|          2980.00 |
+------------------+
1 row in set (0,00 sec)
 */

    --- Pelicula con mayor duración.

mysql> select title, length from film where length = (select max(length) from film);
/* 
+--------------------+--------+
| title              | length |
+--------------------+--------+
| CHICAGO NORTH      |    185 |
| CONTROL ANTHEM     |    185 |
| DARN FORRESTER     |    185 |
| GANGS PRIDE        |    185 |
| HOME PITY          |    185 |
| MUSCLE BRIGHT      |    185 |
| POND SEATTLE       |    185 |
| SOLDIERS EVOLUTION |    185 |
| SWEET BROTHERHOOD  |    185 |
| WORST BANGER       |    185 |
+--------------------+--------+
10 rows in set (0,00 sec)
 */
    
    --- Película con menor duración.

mysql> select title, length from film where length = (select min(length) from film);
/* 
+---------------------+--------+
| title               | length |
+---------------------+--------+
| ALIEN CENTER        |     46 |
| IRON MOON           |     46 |
| KWAI HOMEWARD       |     46 |
| LABYRINTH LEAGUE    |     46 |
| RIDGEMONT SUBMARINE |     46 |
+---------------------+--------+
5 rows in set (0,00 sec)
 */

    --- Mostrar las ciudades del country Spain (multitabla).

mysql> select country, city from city join country on country.country_id = city.country_id where country = 'Spain';
/* 
+---------+-------------------------+
| country | city                    |
+---------+-------------------------+
| Spain   | A Coruña (La Coruña)    |
| Spain   | Donostia-San Sebastián  |
| Spain   | Gijón                   |
| Spain   | Ourense (Orense)        |
| Spain   | Santiago de Compostela  |
+---------+-------------------------+
5 rows in set (0,00 sec)
 */

    --- Mostrar el nombre de la película y el nombre de los actores.

mysql> select film.title, actor.first_name from film, actor, film_actor where film.film_id = film_actor.film_id and actor.actor_id = film_actor.actor_id order by film.title;

    --- Mostrar el nombre de la película y el de sus categorías.

mysql> select film.title, category.name from film, category, film_category where film.film_id = category.category_id and category.category_id order by film.title;


    --- Mostrar el country, la ciudad y dirección de cada miembro del staff.

mysql> SELECT country.country, city.city, address.address, address.address2, staff.first_name, staff.last_name FROM country , city , address , staff  WHERE country.country_id = city.country_id  AND address.city_id = city.city_id  AND staff.address_id = address.address_id;
/* 
+-----------+------------+----------------------+----------+------------+-----------+
| country   | city       | address              | address2 | first_name | last_name |
+-----------+------------+----------------------+----------+------------+-----------+
| Canada    | Lethbridge | 23 Workhaven Lane    | NULL     | Mike       | Hillyer   |
| Australia | Woodridge  | 1411 Lillydale Drive | NULL     | Jon        | Stephens  |
+-----------+------------+----------------------+----------+------------+-----------+
2 rows in set (0,00 sec) */

    --- Mostrar el country, la ciudad y dirección de cada customer.

select country.country, city.city, address.address, address.address2, customer.first_name, customer.last_name from country, city, address, customer where country.country_id = city.country_id and address.city_id = city.city_id and customer.address_id = address.address_id;

/* Salen muchas lineas */

    --- Numero de películas de cada rating

mysql> select rating, count(*) from film group by rating;
/* 
+--------+----------+
| rating | count(*) |
+--------+----------+
| PG     |      194 |
| G      |      178 |
| NC-17  |      210 |
| PG-13  |      223 |
| R      |      195 |
+--------+----------+
5 rows in set (0,01 sec)
 */
    --- Cuantas películas ha realizado el actor ED CHASE.

mysql> select actor.first_name, actor.last_name,  count(*) from actor, film, film_actor where film.film_id = film_actor.film_id and actor.actor_id = film_actor.actor_id and actor.first_name = 'ED' and actor.last_name = 'CHASE';
/* 
+------------+-----------+----------+
| first_name | last_name | count(*) |
+------------+-----------+----------+
| ED         | CHASE     |       22 |
+------------+-----------+----------+
1 row in set (0,00 sec)
 */

    --- Media de duración de las películas cada categoría.

mysql> select category.name, avg(film.length) from category, film, film_category where category.category_id = film_category.category_id and film.film_id = film_category.film_id group by category.name;;
/* 
+-------------+------------------+
| name        | avg(film.length) |
+-------------+------------------+
| Action      |         111.6094 |
| Animation   |         111.0152 |
| Children    |         109.8000 |
| Classics    |         111.6667 |
| Comedy      |         115.8276 |
| Documentary |         108.7500 |
| Drama       |         120.8387 |
| Family      |         114.7826 |
| Foreign     |         121.6986 |
| Games       |         127.8361 |
| Horror      |         112.4821 |
| Music       |         113.6471 |
| New         |         111.1270 |
| Sci-Fi      |         108.1967 |
| Sports      |         128.2027 |
| Travel      |         113.3158 |
+-------------+------------------+
16 rows in set (0,01 sec)
 */