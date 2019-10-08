# U1-A2 ACCESO REMOTO SSH

## 2.2 Primera conexión SSH desde cliente GNU/Linux
* Nmap al servidor

![](img/img0.png)

* Primera conexión

![](img/img1.png)

* Segunda conexión

![](img/img2.png)


## 3.2 Comprobamos cambio de la identidad del servidor
* OpenSUSE

![](img/img3.png)

Vemos que nos aparece una advertencia porque ha cambiado la identidad del servidor. Para solucionarlo ejecutamos el siguiente comando:

![](img/img4.png)

* Windows

![](img/img5.png)

## 5 Autenticación mediante claves públicas

Añadir clave openSUSE

![](img/img6.png)

Acceso sin poner contraseña

![](img/img7.png)

Desde windows

![](img/img8.png)

## 6 Uso del SSH como túnel para x

Para poder acceder al servidor por ssh para usar una aplicación tenemos que descomentar la opción *X11Forwarding yes* que se encuentra en el fichero de configuración *sshd_config*.

![](img/img9.png)

Comprobamos que geany no está instalado en cliente.

![](img/img10.png)

Accedemos al servidor por ssh con el argumento -x para poder usar aplicaciones gráficas que se encuentran en el servidor.

![](img/img11.png)

![](img/img12.png)

## 8.1 Restricción sobre un usuario

Para restringir el acceso a un usuario debemos añadir una línea en el documento *sshd_config*.

![](img/img13.png)

Probamos a entrar desde el cliente openSUSE y observamos que prohibe el acceso:

![](img/img14.png)

## 9 Servidor SSH en windows

Creamos una máquina con Windows Server 2008 y ejecutamos el comando que aparece a continuación para instalar el servidor ssh:

``Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/teuton-software/teuton/master/bin/windows_s-node_install.ps1'))``

![](img/img15.png)

Tras estar instalado accedemos desde el cliente windows y el cliente openSUSE e introducimos el comando ``netstat -n`` para ver las conexiones activas en el servidor.

![](img/img16.png)
