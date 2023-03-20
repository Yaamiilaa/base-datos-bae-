# Creación de un contenedor Docker con PostgreSQL
## ÍNDICE:
- Requisitos
- Cómo crear un contenedor sin persistencia de datos
- Cómo conectarnos con el contenedor que está ejecutando PostgreSQL usando psql
- Cómo conectarnos con el contenedor que está ejecutando PostgreSQL usando adminer
- Cómo comprobar que los contenedores están en ejecución
- Cómo detener los contenedores

---

### Requisitos
Para poder ejecutar contenedores Docker es necesario tener instalado Docker Community Edition (CE) en nuestro equipo.

En la web oficial encontrará la información necesaria para realizar la instalación de Docker CE sobre Windows, macOS, Ubuntu, Debian, Fedora y CentOS.

---

### Cómo crear un contenedor sin persistencia de datos

El comando que podríamos usar para lanzar nuestro contenedor Docker con PostgreSQL sin persistencia de datos podría ser el siguiente:

    docker run -d --rm --name postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 postgres

--- 

### Cómo conectarnos con el contenedor que está ejecutando PostgreSQL usando psql

Una vez que hemos creado la instancia del contenedor que está ejecutando PostgrSQL, podemos conectarnos a él para utilizar la herramienta psql.

    docker run -it --rm --link postgres:postgres postgres psql -h postgres -U postgres

---

### Cómo conectarnos con el contenedor que está ejecutando PostgreSQL usando adminer

Podemos crear un contenedor con Adminer para utilizar una interfaz web que nos permite conectar con PostgreSQL.

Para crear un contenedor con Adminer podemos ejecutar el siguiente comando:

    docker run -d --rm  --link postgres:db -p 8080:8080 adminer

Una vez hecho esto, podríamos acceder a través de la URL http://127.0.0.1:8080 desde cualquier navegador web.

---

### Cómo comprobar que los contenedores están en ejecución

Una vez que hemos iniciado los contenedores podemos comprobar que se están ejecutando con el siguiente comando:

    docker ps

Deberíamos obtener una salida similar a esta.

    CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
    a1e321c26d33        adminer             "entrypoint.sh docke…"   2 seconds ago       Up 1 second         0.0.0.0:8080->8080/tcp   admiring_poitras
    4485390ebc31        postgres            "docker-entrypoint.s…"   59 seconds ago      Up 58 seconds       0.0.0.0:5432->5432/tcp   postgres

En la primera columna podemos ver cuál es el CONTAINER ID. Una vez localizado el identificador ejecutamos el comando docker stop y le pasamos como parámetro el identificador del contenedor que queremos detener.

Para el caso anterior deberíamos ejecutar:

    sudo docker stop (CONTAINER ID)