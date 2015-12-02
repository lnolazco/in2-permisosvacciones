--CREATE DATABASE
create database permisosvacacionesmysql;

--CREATE TABLE CONCEPTO
CREATE TABLE concepto
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
anyo int,
concepto varchar(200),
total int,
tipo varchar(10)
);
--CREATE TABLE CALENDARIO LABORAL
CREATE TABLE CALENDARIOLABORAL
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descripcion varchar(200),
fecha DATE
);
--CREATE TABLE SOLICITUD
CREATE TABLE SOLICITUD
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuarioid   varchar(50),
    conceptoid  int,
    fechainicio date,
    fechafin    date,
    estado      varchar(10)
);

--DATA INICIO: CONCEPTO

{
  "anyo": 2015,
  "concepto": "Vacaciones",
  "total": 23,
  "tipo": "L"
}

--DATA INICIO: CALENDARIO LABORAL

{
  "fecha": "2015-12-08",
  "descripcion": "Inmaculada Concepción"
}
{
  "fecha": "2015-12-25",
  "descripcion": "Natividad del Señor"
}
{
  "fecha": "2015-12-26",
  "descripcion": "San Esteve"
}

-- DATA INICIO: SOLICITUD

{
  "usuarioid": "luisn",
  "conceptoid": 1,
  "fechainicio": "2015-12-07T00:00:00.000Z",
  "fechafin": "2015-12-07T00:00:00.000Z",
  "estado": "P",
  "id": 1
}
