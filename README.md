# Guía Técnica de Instalación y Despliegue del Sistema de Préstamo de Herramientas

Este documento proporciona una guía detallada para la correcta instalación, configuración y puesta en marcha del sistema de préstamo de herramientas en un entorno local.

---

## Requisitos Previos

Antes de comenzar, asegúrese de contar con las siguientes herramientas instaladas:

- Servidor local (recomendado: [XAMPP](https://www.apachefriends.org/es/index.html))
- PHP
- MySQL
- Navegador Web moderno

> **Nota:** Se recomienda utilizar **XAMPP**, ya que integra PHP, MySQL y Apache en un solo paquete.

---

## Descarga del Proyecto

1. Acceda al repositorio oficial del proyecto en GitHub:
   👉 [Repositorio GitHub](https://github.com/Julian2044/Entrega_Prueba_Fase_III)

2. Descargue los siguientes elementos:
   - Carpeta del proyecto (`.zip`)
   - Archivo `.sql` con la base de datos

<!-- Imagen 1: Vista del repositorio GitHub -->

3. Una vez descargado, descomprima el archivo `.zip`. Obtendrá una estructura de carpetas similar a la siguiente:

<!-- Imagen 2: Vista de las carpetas extraídas -->

---

## Configuración del Entorno

### Paso 1: Verificar Servicios en XAMPP

1. Inicie **XAMPP**.
2. Asegúrese de que los servicios de **Apache** y **MySQL** estén activos.

<!-- Imagen 3: Servicios activos en XAMPP -->

---

### Paso 2: Crear la Base de Datos

1. Abra su navegador y acceda a [http://localhost/phpmyadmin](http://localhost/phpmyadmin).
2. Cree una nueva base de datos con el mismo nombre que el archivo `.sql`.

<!-- Imagen 4: Creación de la base de datos -->

3. La base de datos recién creada aparecerá en la barra lateral de phpMyAdmin.

<!-- Imagen 5: Visualización de la base de datos -->

---

### Paso 3: Importar la Base de Datos

1. Seleccione la base de datos creada.
2. Haga clic en la pestaña **Importar**.
3. Seleccione el archivo `.sql` y presione **Importar**.

<!-- Imagen 6: Proceso de importación del archivo SQL -->

4. Verifique que se hayan creado correctamente las tablas:

#### Tablas esperadas:
- **Usuarios**
<!-- Imagen 7: Tabla Usuarios -->
- **Prestamos**
<!-- Imagen 8: Tabla Prestamos -->
- **Herramientas**
<!-- Imagen 9: Tabla Herramientas -->

---

## Despliegue de la Aplicación

1. Copie la carpeta del proyecto (por ejemplo: `prestamo_herramientas`) dentro del siguiente directorio:

   **`C:\xampp\htdocs\`**

<!-- Imagen 10: Proyecto ubicado en htdocs -->

2. La estructura del proyecto debe quedar como se muestra a continuación:

<!-- Imagen 11: Vista completa del proyecto extraído -->

---

## Acceso a la Aplicación

Una vez copiado el proyecto, abra su navegador y acceda al sistema mediante la siguiente URL:

