# Guía de Instalación del Proyecto de Préstamo de Herramientas

Este documento proporciona las instrucciones detalladas para instalar y desplegar correctamente el sistema de préstamo de herramientas en un entorno local.

---

##  Requisitos Previos

Para ejecutar el proyecto, asegúrese de contar con las siguientes herramientas instaladas en su sistema:

- Un **servidor local**
- **PHP**
- **MySQL**
- Un **navegador web** moderno

### Recomendación

Se recomienda utilizar **XAMPP**, ya que incluye Apache, PHP y MySQL en un solo paquete fácil de configurar.

---

##  Descarga del Proyecto

1. Asegúrese de tener instalado **XAMPP**.
2. Ingrese al siguiente repositorio para descargar los archivos del sistema y la base de datos:

    [Repositorio del Proyecto](https://github.com/Julian2044/Entrega_Prueba_Fase_III)

3. Descargue y extraiga el archivo `.zip` que contiene el código fuente y la base de datos.
4. Una vez extraído, ubique el archivo `.sql` dentro de la carpeta correspondiente.

---

## ⚙️ Configuración del Entorno Local

### 1. Verificar Servicios de XAMPP

Abra XAMPP y asegúrese de que los servicios **Apache** y **MySQL** estén activos. Deberían verse en color verde como "Running".

### 2. Crear la Base de Datos

1. Abra su navegador y acceda a:  
   `http://localhost/phpmyadmin/`

2. Cree una nueva base de datos con el **mismo nombre** del archivo `.sql` que descargó.

### 3. Importar la Base de Datos

1. Dentro de phpMyAdmin, seleccione la base de datos recién creada.
2. Vaya al menú superior y haga clic en **Importar**.
3. Cargue el archivo `.sql` y haga clic en **Importar**.
4. Verifique que se hayan creado correctamente las siguientes tablas:

   - `usuarios`
   - `prestamos`
   - `herramientas`

---

##  Despliegue de la Aplicación

1. Extraiga la carpeta del proyecto (por ejemplo, `prestamo_herramientas`) en la siguiente ruta de su equipo:
