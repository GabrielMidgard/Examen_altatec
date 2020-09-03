# Examen de programación ALTATEC de Occidente

## Base de datos

Toda la informacion acerca de la base de datos se puede encontrar en la carpeta '/database'
- Diagrama
- Diccionario de datos
- Codigo SQL
- Query para obtener las ventas totales mensuales


## Installar XAMPP

Descargar XAMPP del sitio oficial.  `https://www.apachefriends.org/es/index.html`.


## PhpMyAdmin - Configurar la base de datos

En este contenedor disponemos de PhpMyAdmin, en el cual debemos configurar nuestra base de datos.
Para acceder a la interfaz web de PhpMyAdmin, accedemos a la siguiente URL `http://localhost/phpmyadmin/server_import.php`
y buscar el codigo sql 'ventas_altatec.sql' y presionar el boton continuar en la parte inferior


## Cómo ejecutar este codigo 

Una vez instalado xampp ir a la carpeta `c:xammp/httdocs/` y crear una carpeta con el nombre que guste 'examen'
copiar y pegar el archivo index.php


## Apache

Abrir cualquier navegador y ejecutar esta direccion url `http://localhost/examen/`


## Nota

- El patron de diseño de software que usaria seria: MVC el motivo seria el siguente
- Podrás dividir la lógica de negocio del diseño, haciendo tu proyecto más escalable.
- Muchos frameworks MVC ya incluyen librerías de Javascript (vue, angular, etc).
-La mayoría de frameworks controlan el uso de la memoria Caché, hoy en día muy importante para el posicionamiento web, ya que buscadores como google dan prioridad a las webs que tengan menor tiempo de descarga.
- ayuda a controlar los recursos del servidor, evitando Bugs que puedan repercutir en el rendimiento, por ejemplo, muchas veces olvidamos cerrar conexiones a la base de datos, sobrecargando el servidor.