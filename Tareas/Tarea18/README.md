# Creación de un contenedor Docker con MariaDB
## ÍNDICE:
- Requisitos 
- ¿Cómo crear un contenedor con persistencia de datos?
- ¿Cómo comprobar que el contenedor está en ejecución?
- ¿Cómo concetar con MariaDB?
- ¿Cómo detener el contenedor?

### Requisitos

Para poder ejecutar contenedores Docker es necesario tener instalado Docker Community Edition (CE) en nuestro equipo.

En la web oficial encontrará la información necesaria para realizar la instalación de Docker CE sobre Windows, macOS, Ubuntu, Debian, Fedora y CentOS.

### ¿Cómo crear un contenedor con persistencia de datos?

Un contenedor Docker que no tiene persistencia de datos quiere decir que cuando finalice la ejecución perderá todo el contenido que hayamos creado durante la ejecución. Es decir, si durante la ejecución del contenedor hemos creado varias bases de datos en Maria DB, éstas se perderán cuando el contenedor se detenga.

El comando que podríamos usar para lanzar nuestro contenedor Docker con MariaDB sin persistencia de datos podría ser el siguiente:

    docker run -d --rm --name mariadb -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mariadb

La salida que te tiene que salir es la siguiente:

Unable to find image 'mysql:8.0' locally
8.0: Pulling from library/mysql
767a87c58327: Pull complete 
cbd6d17e71a0: Pull complete 
9b17ad003fbc: Pull complete 
410b54c19b6b: Pull complete 
c6192cec9415: Pull complete 
f7be351756ff: Pull complete 
ae2d1ab519ee: Pull complete 
119cfaa7dea0: Pull complete 
7176b3cc6ba1: Pull complete 
2eb39e909e2b: Pull complete 
e935886e1025: Pull complete 
Digest: sha256:2596158f73606ba571e1af29a9c32bec5dc021a2495e4a70d194a9b49664f4d9
Status: Downloaded newer image for mysql:8.0
2726df09e7edfda545c2cd985f01cbb8e4543f4d860bd5d9cab5c003857814d7

El comando que podríamos usar para lanzar nuestro contenedor Docker con Maria DB con persistencia de datos en un volumen podría ser el siguiente:

    docker run -d --rm --name mariabd -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -v mariadb_data:/var/lib/mysql mariadb

Donde la salida sería la siguiente:

PASSWORD=root -p 3306:3306 -v mariadb_data:/var/lib/mysql mariadb
Password:: no se encontró la orden

### ¿Cómo comprobar que el contenedor está en ejecución?

Una vez que hemos iniciado el contenedor podemos comprobar que se está ejecutando con el siguiente comando:

    docker ps

Deberíamos obtener una salida similar a esta.

    CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
52bcaee9a157        mariadb             "docker-entrypoint.s…"   4 seconds ago       Up 2 seconds        0.0.0.0:3306->3306/tcp   mariadb

### ¿Cómo concetar con MariaDB?

Una vez que MariaBD está en ejecución podemos conectarnos con cualquier cliente: PHPMyAdmin, Adminer, etc.

Los datos de conexión serán:

    Host: 127.0.0.1
    Puerto: 3306
    Usuario: root
    Password: root

### ¿Cómo detener el contenedor?

Para detener el contenedor en primer lugar tenemos que conocer cuál es su ID. Para obtenerlo podemos hacer uso del comando docker ps.

    docker ps

Con una salida similar a la siguiente:

    CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
52bcaee9a157        mariadb             "docker-entrypoint.s…"   4 seconds ago       Up 2 seconds        0.0.0.0:3306->3306/tcp   mariadb



En la primera columna podemos ver cuál es el CONTAINER ID. Una vez localizado el identificador ejecutamos el comando docker stop y le pasamos como parámetro el identificador del contenedor que queremos detener.

Para el caso anterior deberíamos ejecutar:

    docker stop (CONTAINER ID)