# PERMISOS VACACIONES - BACKEND

Esta aplicación es la parte backend el cual construye las restapi.
Se utiliza lo siguiente:
- loopback (nodejs)
- mysql

Inicialmente se hizo con mongodb por lo que dejaremos la explicación para su implementación también.

##Pre Requisitos

Instalar nodejs
https://nodejs.org/en/

Instalar MySql
http://www.mysql.com/downloads/

Instalar mongodb
https://www.mongodb.org/

Instalar Loopback framework
npm install loopback -g
sudo npm install loopback -g

Instalar Mocha para los unit tests
npm install mocha -g

##Crear proyecto

Los pasos se encuentran en:
http://loopback.io/getting-started/

En este proyecto se hizo:
Ir al directorio raíz del proyecto y ejecutar:

'slc loopback'
Nombre de aplicación: permisosvacaciones

##Conexión a base de datos MySql
Instalar el conector:
`npm install loopback-connector-mysql --save`
Luego indicar el nombre del datasource:
`slc loopback:datasource permisosvacacionesmysql`

configurar el archivo: ./server/datasources.json

con los parámetros de conexión a la bbdd, por ejemplo en mi caso es:

```json
"permisosvacacionesmysql": {
  "name": "permisosvacacionesmysql",
  "connector": "mysql",
  "host": "127.0.0.1",
  "port": 3306,
  "database": "permisosvacacionesmysql",
  "username": "root",
  "password": "admin"
}
```

Mas información:
https://docs.strongloop.com/display/public/LB/MySQL+connector

##Conexión a base de datos mongodb
Instalar el conector a la base de datos mongodb:
`npm install loopback-connector-mongodb --save`
Luego indicar el nombre del datasource:
`slc loopback:datasource permisosvacaciones`

Luego añadir la configuración de la base de datos:
./server/datasources.json
```json
  "permisosvacaciones": {
    "host": "127.0.0.1",
    "port": 27017,
    "database": "permisosvacaciones",
    "name": "permisosvacaciones",
    "connector": "mongodb"
  }
}
```

##Añadir modelos
Para añadir cada modelo realizar lo siguiente:

`slc loopback:model`

y añadir los campos necesarios.

##Crear base de datos y tablas (MySql)
Para el caso de mysql se requiere la previa creación de la base de datos y tablas.
En el caso de mongodb al ser schemeless no es necesario este paso, lo irá creando sobre la marcha.
Los scripts se encuentran en:
./databasescript/permisosvacacionesmysql.sql

#Instalar proyecto
Descargar el fuente
git clone

Entrar al directorio
cd permisosvacaciones

Instalar dependencias
npm install

##Iniciar servidor web
Ejecutar comando:
node .

Por defecto se habrá iniciado el servidor en:
...:3000/

Para abrir el explorador de las apis creadas ir a:
...:3000/explorer

#TESTS
La implementación de tests unitarios se utilizó mocha.

Para ejecutar los tests utilizar el comando:
`mocha`

Para saber más sobre la configuración de este en un proyecto loopback ir a:
https://www.npmjs.com/package/loopback-testing
