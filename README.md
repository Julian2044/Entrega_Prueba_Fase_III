Guía de instalación

Para que se pueda usar el proyecto con éxito, se debe contar con las siguientes herramientas.
Servidor local
Php
MySQL
Navegador web

Recomendamos usar la aplicación de Xammp, porque nos permite tener servidor local, php y MySQL en un mismo paquete.

Con Xammp instalado vamos a dirigirnos al siguiente enlace para hacer la descarga de los archivos correspondientes como lo son: la base de datos y el archivo fuente del programa.

Una vez hayamos ingresado al link anterior se debe ver lo siguiente:

Descargamos la información correspondiente para el despliegue de la aplicación.


Una vez se haya descargado la carpeta.zip la descomprimimos y nos deben aparecer las siguientes carpetas:

Aquí vamos a tomar el archivo .sql para subirlo a nuestra base de datos.

Antes debemos asegurarnos de que Xammp este prestando los servicios de MySQl y Apache, se debe ver así en la aplicación de Xammp:


Luego de validar de que estén funcionando los servicios, nos dirigimos a nuestro navegador web de preferencia, en la barra de búsqueda colocamos y nos debe cargar el siguiente entorno:

Creamos una nueva base de datos con el mismo nombre del archivo .sql que obtuvimos con anterioridad, debe quedar de la siguiente manera:


Una vez creada la base de datos, nos deber aparecer en la barra lateral que tiene el entorno de la siguiente manera:

Ya nos ubicamos en la base de datos que acabamos de crear, es allí donde vamos a importar nuestro archivo .sql, damos en el menú horizontal la opción de importar y nos tiene que mostrar lo siguiente:


Aquí es donde cargamos el archivo sql, luego le damos importar.


Para verificar si quedo bien subido el archivo, vamos a la barra lateral que nos debe mostrar las tablas y datos que exportamos, se debe ver de la siguiente manera:


Ya nos queda verificar datos, de las tablas, se tienen que ver de la siguiente manera:
Usuarios:

Prestamos:

Herramientas:


Con eso ya sabemos que la información quedo de manera correcta en cada tabla, ya con eso vamos, ahora a cargar nuestro proyecto para comenzar a usar nuestro programa.
Ahora para hacer el despliegue en nuestro servidor Xammp, de los archivos que descargamos al principio 

Vamos a descomprimir el archivo, prestamos herramientas en la ruta donde esta Xammp, debe quedar así:


Apenas se haya terminado de extraer, tiene que quedar así:



Con eso ya vamos a nuestro navegador y abrimos la siguiente URL: apenas cargue nos debe mostrar algo así:
