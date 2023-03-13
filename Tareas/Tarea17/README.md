# Creación de un contenedor Docker con MySQL Server

## ÍNDICE:
    - Instalación usando repositorios
    - Añadir el Docker oficial
    - Configuración del repositorio
    - Instalación de Docker Engine
    - Verificación del Docker

### Instalación usando repositorios
Primero deberemos actualizar nuestro repositorio local.

    sudo apt-get update

Obj:1 http://security.ubuntu.com/ubuntu focal-security InRelease
Obj:2 http://es.archive.ubuntu.com/ubuntu focal InRelease
Obj:3 http://es.archive.ubuntu.com/ubuntu focal-updates InRelease
Obj:4 http://es.archive.ubuntu.com/ubuntu focal-backports InRelease
Leyendo lista de paquetes... Hecho

Después usaremos el comando apt-get install para poder installar diferentes aplicaciones de la siguiente manera:

    sudo apt-get install \
    >     ca-certificates \
    >     curl \
    >     gnupg \
    >     lsb-release

Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
lsb-release ya está en su versión más reciente (11.1.0ubuntu2).
fijado lsb-release como instalado manualmente.
gnupg ya está en su versión más reciente (2.2.19-3ubuntu2.2).
fijado gnupg como instalado manualmente.
Se instalarán los siguientes paquetes adicionales:
  libcurl4
Se instalarán los siguientes paquetes NUEVOS:
  curl
Se actualizarán los siguientes paquetes:
  ca-certificates libcurl4
2 actualizados, 1 nuevos se instalarán, 0 para eliminar y 163 no actualizados.
Se necesita descargar 396 kB/537 kB de archivos.
Se utilizarán 404 kB de espacio de disco adicional después de esta operación.
¿Desea continuar? [S/n] s
Des:1 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 libcurl4 amd64 7.68.0-1ubuntu2.16 [235 kB]
Des:2 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 curl amd64 7.68.0-1ubuntu2.16 [161 kB]
Descargados 396 kB en 1s (702 kB/s)
Preconfigurando paquetes ...
(Leyendo la base de datos ... 186906 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../ca-certificates_20211016ubuntu0.20.04.1_all.deb ...
Desempaquetando ca-certificates (20211016ubuntu0.20.04.1) sobre (20211016~20.04.1) ...
Preparando para desempaquetar .../libcurl4_7.68.0-1ubuntu2.16_amd64.deb ...
Desempaquetando libcurl4:amd64 (7.68.0-1ubuntu2.16) sobre (7.68.0-1ubuntu2.14) ...
Seleccionando el paquete curl previamente no seleccionado.
Preparando para desempaquetar .../curl_7.68.0-1ubuntu2.16_amd64.deb ...
Desempaquetando curl (7.68.0-1ubuntu2.16) ...
Configurando ca-certificates (20211016ubuntu0.20.04.1) ...
Updating certificates in /etc/ssl/certs...
rehash: warning: skipping ca-certificates.crt,it does not contain exactly one certificate or CRL
0 added, 3 removed; done.
Configurando libcurl4:amd64 (7.68.0-1ubuntu2.16) ...
Configurando curl (7.68.0-1ubuntu2.16) ...
Procesando disparadores para man-db (2.9.1-1) ...
Procesando disparadores para libc-bin (2.31-0ubuntu9.9) ...
Procesando disparadores para ca-certificates (20211016ubuntu0.20.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...

done.
done.

### Añadir el Docker oficial

Para añadirlo deberemos seguir los pasos a continuación:

1. Crear la carpeta que se indica en la siguinte línea

    sudo mkdir -m 0755 -p /etc/apt/keyrings

2. Realizar el siguiente comando:

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

### Configuración del repositorio
Para la configuración del repositorio deberemos usar el comando que se muestra a continuación:

    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

### Instalación de Docker Engine
Lo primero que deberemos de hacer es actualizar nuestro paquete con el comando 

    sudo apt-get update

Obj:1 http://es.archive.ubuntu.com/ubuntu focal InRelease
Des:2 https://download.docker.com/linux/ubuntu focal InRelease [57,7 kB]
Obj:3 http://security.ubuntu.com/ubuntu focal-security InRelease                        
Obj:4 http://es.archive.ubuntu.com/ubuntu focal-updates InRelease                       
Obj:5 http://es.archive.ubuntu.com/ubuntu focal-backports InRelease
Des:6 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages [24,7 kB]
Descargados 82,4 kB en 1s (121 kB/s)
Leyendo lista de paquetes... Hecho

Después deberemos usar el comando que se muestra a continuaación para instalar el última versión del Docker:

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
Se instalarán los siguientes paquetes adicionales:
  docker-ce-rootless-extras docker-scan-plugin git git-man liberror-perl pigz slirp4netns
Paquetes sugeridos:
  aufs-tools cgroupfs-mount | cgroup-lite git-daemon-run | git-daemon-sysvinit git-doc git-el
  git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
Se instalarán los siguientes paquetes NUEVOS:
  containerd.io docker-buildx-plugin docker-ce docker-ce-cli docker-ce-rootless-extras
  docker-compose-plugin docker-scan-plugin git git-man liberror-perl pigz slirp4netns
0 actualizados, 12 nuevos se instalarán, 0 para eliminar y 163 no actualizados.
Se necesita descargar 117 MB de archivos.
Se utilizarán 439 MB de espacio de disco adicional después de esta operación.
¿Desea continuar? [S/n] s
Des:1 http://es.archive.ubuntu.com/ubuntu focal/universe amd64 pigz amd64 2.4-1 [57,4 kB]
Des:2 https://download.docker.com/linux/ubuntu focal/stable amd64 containerd.io amd64 1.6.18-1 [28,2 MB]
Des:3 http://es.archive.ubuntu.com/ubuntu focal/main amd64 liberror-perl all 0.17029-1 [26,5 kB]
Des:4 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 git-man all 1:2.25.1-1ubuntu3.10 [887 kB]
Des:5 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 git amd64 1:2.25.1-1ubuntu3.10 [4.534 kB]
Des:6 http://es.archive.ubuntu.com/ubuntu focal/universe amd64 slirp4netns amd64 0.4.3-1 [74,3 kB]
Des:7 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-buildx-plugin amd64 0.10.2-1~ubuntu.20.04~focal [25,9 MB]
Des:8 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-cli amd64 5:23.0.1-1~ubuntu.20.04~focal [13,2 MB]
Des:9 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce amd64 5:23.0.1-1~ubuntu.20.04~focal [22,0 MB]
Des:10 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-rootless-extras amd64 5:23.0.1-1~ubuntu.20.04~focal [8.765 kB]
Des:11 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-compose-plugin amd64 2.16.0-1~ubuntu.20.04~focal [10,2 MB]
Des:11 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-compose-plugin amd64 2.16.0-1~ubuntu.20.04~focal [10,2 MB]
Des:12 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-scan-plugin amd64 0.23.0~ubuntu-focal [3.622 kB]
Descargados 117 MB en 36s (3.276 kB/s)     
Seleccionando el paquete pigz previamente no seleccionado.
(Leyendo la base de datos ... 186910 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../00-pigz_2.4-1_amd64.deb ...
Desempaquetando pigz (2.4-1) ...
Seleccionando el paquete containerd.io previamente no seleccionado.
Preparando para desempaquetar .../01-containerd.io_1.6.18-1_amd64.deb ...
Desempaquetando containerd.io (1.6.18-1) ...
Seleccionando el paquete docker-buildx-plugin previamente no seleccionado.
Preparando para desempaquetar .../02-docker-buildx-plugin_0.10.2-1~ubuntu.20.04~focal_amd64.deb ...
Desempaquetando docker-buildx-plugin (0.10.2-1~ubuntu.20.04~focal) ...
Seleccionando el paquete docker-ce-cli previamente no seleccionado.
Preparando para desempaquetar .../03-docker-ce-cli_5%3a23.0.1-1~ubuntu.20.04~focal_amd64.deb ...
Desempaquetando docker-ce-cli (5:23.0.1-1~ubuntu.20.04~focal) ...
Seleccionando el paquete docker-ce previamente no seleccionado.
Preparando para desempaquetar .../04-docker-ce_5%3a23.0.1-1~ubuntu.20.04~focal_amd64.deb ...
Desempaquetando docker-ce (5:23.0.1-1~ubuntu.20.04~focal) ...
Seleccionando el paquete docker-ce-rootless-extras previamente no seleccionado.
Preparando para desempaquetar .../05-docker-ce-rootless-extras_5%3a23.0.1-1~ubuntu.20.04~focal_amd64.deb ...
Desempaquetando docker-ce-rootless-extras (5:23.0.1-1~ubuntu.20.04~focal) ...
Seleccionando el paquete docker-compose-plugin previamente no seleccionado.
Preparando para desempaquetar .../06-docker-compose-plugin_2.16.0-1~ubuntu.20.04~focal_amd64.deb ...
Desempaquetando docker-compose-plugin (2.16.0-1~ubuntu.20.04~focal) ...
Seleccionando el paquete docker-scan-plugin previamente no seleccionado.
Preparando para desempaquetar .../07-docker-scan-plugin_0.23.0~ubuntu-focal_amd64.deb ...
Desempaquetando docker-scan-plugin (0.23.0~ubuntu-focal) ...
Seleccionando el paquete liberror-perl previamente no seleccionado.
Preparando para desempaquetar .../08-liberror-perl_0.17029-1_all.deb ...
Desempaquetando liberror-perl (0.17029-1) ...
Seleccionando el paquete git-man previamente no seleccionado.
Preparando para desempaquetar .../09-git-man_1%3a2.25.1-1ubuntu3.10_all.deb ...
Desempaquetando git-man (1:2.25.1-1ubuntu3.10) ...
Seleccionando el paquete git previamente no seleccionado.
Preparando para desempaquetar .../10-git_1%3a2.25.1-1ubuntu3.10_amd64.deb ...
Desempaquetando git (1:2.25.1-1ubuntu3.10) ...
Seleccionando el paquete slirp4netns previamente no seleccionado.
Preparando para desempaquetar .../11-slirp4netns_0.4.3-1_amd64.deb ...
Desempaquetando slirp4netns (0.4.3-1) ...
Configurando slirp4netns (0.4.3-1) ...
Configurando docker-scan-plugin (0.23.0~ubuntu-focal) ...
Configurando liberror-perl (0.17029-1) ...
Configurando docker-buildx-plugin (0.10.2-1~ubuntu.20.04~focal) ...
Configurando containerd.io (1.6.18-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Configurando docker-compose-plugin (2.16.0-1~ubuntu.20.04~focal) ...
Configurando docker-ce-cli (5:23.0.1-1~ubuntu.20.04~focal) ...
Configurando pigz (2.4-1) ...
Configurando git-man (1:2.25.1-1ubuntu3.10) ...
Configurando docker-ce-rootless-extras (5:23.0.1-1~ubuntu.20.04~focal) ...
Configurando docker-ce (5:23.0.1-1~ubuntu.20.04~focal) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Configurando git (1:2.25.1-1ubuntu3.10) ...
Procesando disparadores para man-db (2.9.1-1) ...
Procesando disparadores para systemd (245.4-4ubuntu3.17) ...

### Verificación del Docker
Para verificar que la instalación del Docker funcionó correctamente vamos a ejecutar la imagen llamada "hello-world" de la siguiente manera:

    sudo docker run hello-world

Si la instalación funcionó como debería, al ejecutar la imagen anterior nos debería de salir un resultado parecido al siguiente.

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
2db29710123e: Pull complete 
Digest: sha256:6e8b6f026e0b9c419ea0fd02d3905dd0952ad1feea67543f525c73a0a790fefb
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
