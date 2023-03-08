# INSTALACIÓN DE MYSQL-SERVER EN LA MÁQUINA VIRTUAL
---
## ÍNDICE:
### - Actualizar los paquetes del servidor 
### - Instalar el paquete de mysql-server
### - ¿Cómo acceder a MySQL Server desde consola con el usuario root?
### - Configurar MySQL
### - Probar MySQL Server
---
# Actualizar los paquetes del servidor 
Para poder actualizar los paquetes del servidor deberemos utilizar el comando apt. Como vemos a continuación nos pide la contraseña de nuestra máquina virtual para que el paquete se instale correctamente.
  
    sudo apt update

[sudo] contraseña para urano08: 
Obj:1 http://es.archive.ubuntu.com/ubuntu focal InRelease
Des:2 http://es.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Des:3 http://es.archive.ubuntu.com/ubuntu focal-backports InRelease [108 kB]
Des:4 http://es.archive.ubuntu.com/ubuntu focal-updates/main i386 Packages [793 kB]
Des:5 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [2.420 kB]
Des:6 http://es.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [413 kB]
Des:7 http://es.archive.ubuntu.com/ubuntu focal-updates/main amd64 DEP-11 Metadata [275 kB]
Des:8 http://es.archive.ubuntu.com/ubuntu focal-updates/main DEP-11 48x48 Icons [60,8 kB]
Des:9 http://es.archive.ubuntu.com/ubuntu focal-updates/main DEP-11 64x64 Icons [98,3 kB]
...                                                        
Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
Se pueden actualizar 150 paquetes. Ejecute «apt list --upgradable» para verlos.

---
# Instalar el paquete de mysql-server
En el paso anterior actualizamos nuestro paquete con el comando apt y para instalar el paquete de MySQL Server deberemos utilizar el mismo comando como vemos posteriormente.

    sudo apt install mysql-server

Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
...
done!
update-alternatives: utilizando /var/lib/mecab/dic/ipadic para proveer /var/lib/mecab/dic/debian (mec
ab-dictionary) en modo automático
Configurando libcgi-fast-perl (1:2.15-1) ...
Configurando mysql-server-core-8.0 (8.0.32-0ubuntu0.20.04.2) ...
Configurando mecab-ipadic-utf8 (2.7.0-20070801+main-2.1) ...
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!

update-alternatives: utilizando /var/lib/mecab/dic/ipadic-utf8 para proveer /var/lib/mecab/dic/debian
 (mecab-dictionary) en modo automático
Configurando mysql-server-8.0 (8.0.32-0ubuntu0.20.04.2) ...
update-alternatives: utilizando /etc/mysql/mysql.cnf para proveer /etc/mysql/my.cnf (my.cnf) en modo 
automático
Renaming removed key_buffer and myisam-recover options (if present)
mysqld will log errors to /var/log/mysql/error.log
mysqld is running as pid 3437
Created symlink /etc/systemd/system/multi-user.target.wants/mysql.service → /lib/systemd/system/mysql
.service.
Configurando mysql-server (8.0.32-0ubuntu0.20.04.2) ...
Procesando disparadores para systemd (245.4-4ubuntu3.17) ...
Procesando disparadores para man-db (2.9.1-1) ...
Procesando disparadores para libc-bin (2.31-0ubuntu9.9) ...

---
# ¿Cómo acceder a MySQL Server desde consola con el usuario root?
Una vez que hemos instalado MySQL Server en nuestro sistema vamos a acceder a la consola de MySQL. En primer lugar vamos a iniciar una sesión como root:

    sudo su

root@urano08-VirtualBox:/home/urano08# mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.32-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit;
Bye
root@urano08-VirtualBox:/home/urano08# exit;
exit

---
# Configurar MySQL
Una vez realizado el paso anterior, ahora vamos a configurar MySQL Server como se indica acontinuación:

    sudo mysql_secure_installation

[sudo] contraseña para urano08: 

Securing the MySQL server deployment.

Connecting to MySQL using a blank password.
The 'validate_password' component is installed on the server.
The subsequent steps will run with the existing configuration
of the component.
Please set the password for root here.

New password: 

Re-enter new password: 

Estimated strength of the password: 100 
Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) : y
By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) : y
Success.

By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.

All done! 

---
# Probar MySQL Server
Independientemente de cómo lo haya instalado, MySQL debería comenzar a ejecutarse automáticamente. Para probar esto, compruebe su estado. Para ello introducimos el siguiente comando:

    systemctl status mysql.service

El resultado debería ser similar a este:

● mysql.service - MySQL Community Server
     Loaded: loaded (/lib/systemd/system/mysql.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2020-04-21 12:56:48 UTC; 6min ago
   Main PID: 10382 (mysqld)
     Status: "Server is operational"
      Tasks: 39 (limit: 1137)
     Memory: 370.0M
     CGroup: /system.slice/mysql.service
             └─10382 /usr/sbin/mysqld

mar 07 15:18:47 urano08-VirtualBox systemd[1]: Starting MySQL Community Server...
mar 07 15:18:49 urano08-VirtualBox systemd[1]: Started MySQL Community Server.

Si MySQL no está ejecutándose, puede iniciarlo con sudo systemctl start mysql.

Como comprobación adicional, puede intentar establecer conexión con la base de datos usando la herramienta mysqladmin, que es un cliente que le permite ejecutar comandos administrativos. Por ejemplo, este comando dice conectar a MySQL como root (-u root), solicitud de contraseña (-p), y devolver la versión.

    sudo mysqladmin -p -u root versión

El resultado debería ser similar a este:

mysqladmin  Ver 8.0.19-0ubuntu5 for Linux on x86_64 ((Ubuntu))
Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Server version		8.0.19-0ubuntu5
Protocol version	10
Connection		Localhost via UNIX socket
UNIX socket		/var/run/mysqld/mysqld.sock
Uptime:			10 min 44 sec

Threads: 2  Questions: 25  Slow queries: 0  Opens: 149  Flush tables: 3  Open tables: 69  Queries per second avg: 0.038

Esto significa que MySQL está funcionando.
