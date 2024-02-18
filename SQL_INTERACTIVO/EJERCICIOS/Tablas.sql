/*
Ejercicio 1

Crea una tabla llamada alumnos que almacene una columan nombre de tipo texto

COLUMNA	TIPO DE DATO
nombre	text

Inserta un registro dentro de la tabla creada utilizado los siguientes datos:

nombre: Lucía
*/
CREATE TABLE alumnos(
    nombre TEXT
);

INSERT INTO alumnos (nombre) VALUES ('Lucía'); 

/*
Ejercicio 2

Crea una tabla llamada alumnos con las siguientes columnas:

COLUMNA	    TIPO DE DATO
nombre	    text
apellido	text
telefono	text

Inserta un registro dentro de la tabla creada utilizado los siguientes datos:

nombre:     Lucía
apellido:   Sánchez
telefono:   12345678
*/
CREATE TABLE alumnos(
    nombre TEXT, 
    apellido TEXT, 
    telefono TEXT
);

INSERT INTO alumnos (nombre, apellido, telefono) VALUES ('Lucía', 'Sánchez', '12345678'); 

/*
Ejercicio 3
Crea una tabla llamada usuarios con las siguientes columnas:

COLUMNA	    TIPO DE DATO
nombre	    text
apellido	text
edad	    integer
activo	    boolean
nacimiento	date

Luego inserta un registro dentro de la tabla creada utilizado los siguientes datos:

nombre:     Lucía
apellido:   Sánchez
edad:       25
activo:     true
nacimiento: 1996-01-01
*/
CREATE TABLE usuarios(
    nombre TEXT, 
    apellido TEXT, 
    edad INTEGER, 
    activo BOOLEAN,
    nacimiento DATE
); 

INSERT INTO usuarios (nombre, apellido, edad, activo, nacimiento) 
VALUES ('Lucía', 'Sánchez', 25, TRUE, '1996-01-01'); 

/*
Ejercicio 4

Crea una tabla llamada temperaturas con la columna temperatura_celsius:

COLUMNA	                TIPO DE DATO
temperatura_celsius	    real

Luego inserta los siguientes registros:

TEMPERATURA_CELSIUS
23.4
26.5
27.1

Importante. Para ingresar la parte decimal de los números, utiliza el punto (.) como separador decimal
*/
CREATE TABLE temperaturas(
    temperatura_celsius real
); 

INSERT INTO temperaturas (temperatura_celsius) 
VALUES (23.4), (26.5), (27.1);  

/*
Ejercicio 5

En este ejercicio tendremos una tabla con datos que no nos interesan, 
deberemos borrarla, crearla de nuevo y poblarla con los datos pedidos.

Borra la tabla temperaturas y vuelve a crearla con las siguientes columnas:

COLUMNA	        TIPO DE DATO
ciudad	        TEXT
temperatura	    REAL
fecha	        Date

Luego, inserta los siguientes registros:

CIUDAD	        TEMPERATURA	    FECHA
Buenos Aires	20.0	        2024-01-01
Buenos Aires	21.0	        2024-01-02
Santiago	    22.0	        2024-01-01
Santiago	    23.0	        2024-01-02

Importante: para poder ingresar las queries requeridas, recuerda añadir punto y coma al final de cada una.
*/
DROP TABLE temperaturas; 

CREATE TABLE temperaturas(
    ciudad TEXT, 
    temperatura REAL,
    fecha DATE
); 

INSERT INTO temperaturas (ciudad, temperatura, fecha)
VALUES ('Buenos Aires', 20.0, '2024-01-01'), ('Buenos Aires', 21.0, '2024-01-02'), 
('Santiago', 22.0, '2024-01-01'), ('Santiago', 23.0, '2024-01-02');

/*
Ejercicio 6

En este ejercicio, vamos a modificar la tabla productos para agregar la columna descripcion de tipo TEXT.

Actualmente la tabla productos tiene las siguientes columnas:

COLUMNA	    TIPO DE DATO
nombre	    TEXT
precio	    REAL

Luego de crearla deberás insertar los siguientes registros:

NOMBRE	    PRECIO	    DESCRIPCION
Camisa	    1000.00	    Camisa de manga corta
Pantalón	2000.00	    Pantalón de mezclilla
Camisa XL	1000.00	    Camisa de manga larga

Importante: para poder ingresar las queries requeridas, recuerda añadir punto y coma al final de cada una.
*/
ALTER TABLE productos ADD COLUMN descripcion TEXT;

INSERT INTO productos 
VALUES ('Camisa', 1000.00, 'Camisa de manga corta'), ('Pantalón', 2000.00, 'Pantalón de mezclilla'), 
('Camisa XL', 1000.00, 'Camisa de manga larga');
