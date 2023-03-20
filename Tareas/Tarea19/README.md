# Creación de un contenedor Docker con phpMyAdmin
## ÍNDICE:
- Requisitos
- Cómo enlazar phpMyAdmin con un contenedor Docker con MySQL o MariaDB
    - Solución 1. Legacy container links con el flag --link, en la bridge network
    - Solución 2. Utilizando una user-defined bridge network
- Ejemplo de uso con MariaDB y phpMyAdmin
- ¿Cómo comprobar que los contenedores están en ejecución?
- ¿Cómo detener los contenedores?

---

### Requisitos
Para poder ejecutar contenedores Docker es necesario tener instalado Docker Community Edition (CE) en nuestro equipo.

En la web oficial encontrará la información necesaria para realizar la instalación de Docker CE sobre Windows, macOS, Ubuntu, Debian, Fedora y CentOS.

---

### Cómo enlazar phpMyAdmin con un contenedor Docker con MySQL o MariaDB

Para este ejemplo usaremos la imagen oficial de https://hub.docker.com/r/phpmyadmin/phpmyadmin/.

Para conectar dos contenedores podemos hacerlo de dos formas:

- Utilizando legacy container links con el flag --link, en la bridge network.
- Utilizando una user-defined bridge network.

--- 
#### Solución 1. Legacy container links con el flag --link, en la bridge network

Los enlaces permiten que los contenedores se descubran entre sí y transfieran de manera segura información sobre un contenedor a otro contenedor. Para crear un enlace se utiliza el flag –link.

En primer lugar hay que lanzar el comando:

    sudo docker ps -a

En función de la salida obtenida dedes de:

- Conocer el puerto de conexión y credenciales para poder conectar a la BBDD. No obstante y parea evitar problemas para el contenedor. y eliminalo con el comando que se muestra a continuación:

        docker stop ...
        docker rm ...

- Lanzar un contener docker de MySQL a través del siguiente comando:

        docker run -d \
        --rm \
        --name mysqlc \
        -p 3306:3306 \
        -e MYSQL_ROOT_PASSWORD=root \
        -v mysql_data:/var/lib/mysql \
        mysql:8.0
        ```

Una vez que la instancia de MySQL está en ejecución podemos crear el contenedor con phpMyAdmin con el siguiente comando --> 

        docker run -d \
    --rm \
    --name phpmyadminc \
    --link mysqlc \
    -e PMA_HOST=mysqlc \
    -p 8080:80 \
    phpmyadmin

Podemos comprobar que el contendedor phpmyadminc puede conectar con el contenedor mysqlc abriendo un navegador web y accediendo a la URL: http://localhost:8080.

---

#### Solución 2. Utilizando una user-defined bridge network
En primer lugar creamos una user-defined bridge network como se muestra a continuación --> 

    docker network create my-net

Después creamos un contenedor con MySQL indicando que queremos que esté en la red --network my-net con el siguiente comando:

    docker run -d \
    --rm \
    --name mysqlc \
    --network my-net \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=root \
    -v mysql_data:/var/lib/mysql \
    mysql:8.0

Dspués creamos un contenedor con phpMyAdmin indicando que queremos que esté en la red --network my-net con el siguiente comando:

    docker run -d \
    --rm \
    --name phpmyadminc \
    --network my-net \
    -e PMA_HOST=mysqlc \
    -p 8080:80 \
    phpmyadmin

Por último comprobamos que el contendedor phpmyadminc puede conectar con el contenedor mysql abriendo un navegador web y accediendo a la URL: http://localhost:8080.

#### Ejemplo de uso con MariaDB y phpMyAdmin

Lo primero que deberemos hacer es crear un contenedor con MariaDB con persistencia de datos como se muestra a continuación --> 

    docker run -d \
    --rm \
    --name mariadbc \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=root \
    -v mariadb_data:/var/lib/mysql \
    mariadb:10

Después lo que tenemos que hacer es crear un contenedor con phpMyAdmin que esté enlazado con el contenedor anterior con el siguiente comando:

    docker run -d \
    --rm \
    --name phpmyadminc \
    --link mariadbc \
    -e PMA_HOST=mariadbc \
    -p 8080:80 \
    phpmyadmin

---

#### ¿Cómo comprobar que los contenedores están en ejecución?
Para detener un contenedor en primer lugar tenemos que conocer cuál es su ID. Para obtenerlo podemos hacer uso del comando docker ps.

Obteniendo la información de todos los contenedores que tenemos en ejecución en nuestro sistema.

En la primera columna podemos ver cuál es el CONTAINER ID. Una vez localizado el identificador ejecutamos el comando docker stop y le pasamos como parámetro el identificador del contenedor que queremos detener.

Para el caso anterior deberíamos ejecutar:
    
    sudo docker stop (CONTAINER ID) 
