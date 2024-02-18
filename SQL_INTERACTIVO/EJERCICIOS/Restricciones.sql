/*
Ejercicio 1

Crea una nueva tabla llamada empleados con las siguientes columnas:

COLUMNA	    TIPO DE DATO	RESTRICCIONES
nombre	    TEXT	        NOT NULL
apellido	TEXT

Luego ingresa los siguientes datos

nombre: Pedro
apellido: Pérez

Puedes probar un insert sin un nombre para observar el error.
*/
CREATE TABLE empleados(
    nombre TEXT NOT NULL, 
    apellido TEXT
); 

INSERT INTO empleados (nombre, apellido) VALUES ('Pedro', 'Pérez'); 

/*
Ejercicio 2

Se tiene una tabla llamada patentes con las siguientes columnas:

COLUMNA	    TIPO DE DATO	RESTRICCIONES
patente	    TEXT	

Con la siguiente información:

PATENTE
ABC123
ABC124

Se pide agregar una restricción de not null a la columna patente.
*/
CREATE TABLE patentes_new (
    patente TEXT NOT NULL
);

INSERT INTO patentes_new (patente)
SELECT patente
FROM patentes;

DROP TABLE patentes;

ALTER TABLE patentes_new RENAME TO patentes;

/*
Ejercicio 3

Se tiene una tabla llamada personas con las siguientes columnas:

COLUMNA	    TIPO DE DATO	RESTRICCIONES
nombre	    TEXT	        NOT NULL
apellido	TEXT	        NOT NULL
edad	    INTEGER	

Se pide borrar la restricción de not null de las columnas nombre y apellido.
*/
CREATE TABLE personas_new (
    nombre TEXT,
    apellido TEXT,
    edad INTEGER
);

INSERT INTO personas_new (nombre, apellido, edad)
    SELECT nombre, apellido, edad
    FROM personas;

DROP TABLE personas;

ALTER TABLE personas_new RENAME TO personas;

/*
Ejercicio 4

En este ejercicio, vamos a crear una tabla llamada productos con las siguientes columnas:

COLUMNA	TIPO DE DATO	RESTRICCIONES
nombre	TEXT	        NOT NULL
codigo	TEXT	        UNIQUE
precio	REAL	        NOT NULL

Luego, vamos a insertar los siguientes registros:

NOMBRE	    PRECIO	    CODIGO
Camisa	    1000.00	    CAM-001
Pantalón	2000.00	    PAN-001
Camisa XL	1000.00	    CAM-002
*/
CREATE TABLE productos (
    nombre TEXT NOT NULL,
    precio REAL NOT NULL,
    codigo TEXT UNIQUE
);

INSERT INTO productos (nombre, precio, codigo) 
VALUES ('Camisa', 1000.00, 'CAM-001'), 
('Pantalón', 2000.00, 'PAN-001'), 
('Camisa XL', 1000.00, 'CAM-002'); 

/*
Ejercicio 5

En este ejercicio, vamos a crear una tabla llamada productos con las siguientes columnas:

COLUMNA	TIPO DE DATO	RESTRICCIONES
nombre	TEXT	        NOT NULL
precio	REAL	        NOT NULL
stock	INTEGER	        CHECK (stock >= 0)

Luego, vamos a insertar los siguientes registros:

NOMBRE	    PRECIO	    STOCK
Camisa	    1000.00	    10
Pantalón	2000.00	    5
Camisa XL	1000.00	    3
*/
CREATE TABLE productos(
    nombre TEXT NOT NULL, 
    precio REAL NOT NULL, 
    stock  INTEGER CHECK (stock >= 0)
); 

INSERT INTO productos (nombre, precio, stock) 
VALUES ('Camisa', 1000.00, 10), 
('Pantalón', 2000.00, 5), 
('Camisa XL', 1000.00, 3); 

/*
Ejercicio 6

Crea una tabla llamada posts con las siguientes columnas:

COLUMN NAME 	DATA TYPE	CONSTRAINTS
id	            INT	        PRIMARY KEY
title	        TEXT	
content	        TEXT	

inserta los siguientes registros:

ID	TITLE	        CONTENT
1	Introducción	¡Bienvenido al mundo de la programación!
2	Primeros Pasos	Sumérgete en los conceptos básicos de la programación.
3	Temas Avanzados	Explora conceptos y técnicas avanzadas en programación.
*/
CREATE TABLE posts(
    id INT PRIMARY KEY, 
    title TEXT, 
    content TEXT
); 

INSERT INTO posts (id, title, content) 
VALUES (1, 'Introducción', '¡Bienvenido al mundo de la programación!'), 
(2, 'Primeros Pasos', 'Sumérgete en los conceptos básicos de la programación.'), 
(3, 'Temas Avanzados', 'Explora conceptos y técnicas avanzadas en programación.');  

/*
Ejercicio 7

Crea una tabla llamada usuarios con las siguientes columnas:

COLUMNA	        TIPO DE DATO	    RESTRICCIONES
id	            INTEGER	            PRIMARY KEY
nombre	        TEXT	            NOT NULL
fecha_creacion	DATE

Luego, vamos a insertar los siguientes registros:

NOMBRE	FECHA_CREACION
Ana	    2024-01-01
Gonzalo	2024-01-02
Juan	2024-01-03
María	2024-01-04
*/
CREATE TABLE usuarios(
    id INTEGER PRIMARY KEY, 
    nombre TEXT NOT NULL,
    fecha_creacion DATE
); 

INSERT INTO usuarios (nombre, fecha_creacion) 
VALUES ('Ana', '2024-01-01'),
('Gonzalo', '2024-01-02'),
('Juan', '2024-01-03'),
('María', '2024-01-04');  

/*
Ejercicio 8

Crea una tabla llamada transacciones con las siguientes columnas:

COLUMNA	    TIPO DE DATO	RESTRICCIONES
id	        INTEGER	        PRIMARY KEY
monto	    REAL	        NOT NULL
fecha	    DATE	

Luego, vamos a insertar los siguientes registros:

ID	    MONTO	FECHA
        1000.00	2024-01-01
        2000.00	2024-01-02
        3000.00	2024-01-03
10	    4000.00	2024-01-04
        5000.00	2024-01-05

Importante: Al único campo que vamos a agregar un id de forma personalizada va a ser al cuarto registro, 
esto con el fin de observar la relación que se genera entre el campo incremental 
y como aumenta según el valor que insertemos.
*/
CREATE TABLE transacciones(
    id INTEGER PRIMARY KEY, 
    monto REAL NOT NULL, 
    fecha DATE
); 

INSERT INTO transacciones (id, monto, fecha) 
VALUES (NULL, 1000.00, '2024-01-01'),
(NULL, 2000.00, '2024-01-02'), 
(NULL, 3000.00, '2024-01-03'), 
(10, 4000.00, '2024-01-04'), 
(NULL, 5000.00, '2024-01-05');  

/*
Ejercicio 9

Crea una tabla llamada personas con las siguientes columnas:

COLUMN NAME	    DATA TYPE	CONSTRAINTS
email	        TEXT	    PRIMARY KEY NOT NULL
nombre	        TEXT	
apellido	    TEXT	

Inserta los siguientes registros:

EMAIL	                NOMBRE	APELLIDO
example1@example.com	John	Doe
example2@example.com	Jane	Smith
example3@example.com	Mike	Johnson
*/
CREATE TABLE personas(
    email TEXT PRIMARY KEY NOT NULL,
    nombre TEXT, 
    apellido TEXT
);

INSERT INTO personas (email, nombre, apellido)
VALUES ('example1@example.com', 'John', 'Doe'), 
('example2@example.com', 'Jane', 'Smith'), 
('example3@example.com', 'Mike', 'Johnson'); 

/*
Ejercicio 10

Se tienen las tablas articulos y categorias con la siguiente estructura:

articulos

COLUMNA	    TIPO DE DATO	RESTRICCIONES
id	        INTEGER	        PRIMARY KEY
nombre	    TEXT	
precio	    REAL	

categorias

COLUMNA	    TIPO DE DATO	RESTRICCIONES
id	        INTEGER	        PRIMARY KEY
nombre	    TEXT

Se pide agregar una clave foránea a la tabla articulos para que la columna categoria_id 
haga referencia a la columna id de la tabla categorias.
*/
ALTER TABLE articulos ADD COLUMN categoria_id INTEGER REFERENCES categorias(id);

/*
Ejercicio 11

Se tiene la tabla transacciones y la tabla usuarios con la siguiente estructuras:

transacciones

COLUMNA	    TIPO DE DATO	RESTRICCIONES
id	        INTEGER	        PRIMARY KEY
monto	    REAL	
usuario_id	INTEGER	        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)

usuarios

COLUMNA	    TIPO DE DATO	RESTRICCIONES
id	        INTEGER	        PRIMARY KEY
nombre	    TEXT	
apellido	TEXT	

Con los siguientes datos:

transacciones

ID	MONTO	USUARIO_ID
1	100	    1
2	200	    2
3	300	    1

usuarios

ID	NOMBRE	APELLIDO
1	John	Doe
2	Jane	Smith

En este ejercicio primero intentaremos crear una transacción con un usuario que no existe para observar el error.

Intentaremos borrar un usuario que tiene transacciones asociadas para observar el error.

Luego eliminaremos nuestras consultas anteriores y modificaremos la tabla de transacciones
para eliminar la clave foránea. Solo se debe eliminar la clave foránea, no la columna.

TIP: Esto requiere crear una tabla temporal, copiar los datos de la tabla original a la tabla temporal,
 borrar la tabla original, y renombrar la tabla temporal con el nombre de la tabla original.

Finalmente se deben asociar las transacciones al usuario con id 3. El cual no existe y la idea es demostrar 
que sin la FK podemos insertar transacciones sin usuarios asociados.

Los puntos 1 y 2 son para observar que sucede. Para lograr la respuesta correcta tienes 
que realizar los puntos 3 y 4 en el editor.
*/
CREATE TABLE transacciones_temp AS SELECT * FROM transacciones;
DROP TABLE transacciones;
ALTER TABLE transacciones_temp RENAME TO transacciones;

DELETE FROM usuarios WHERE id = 1;

UPDATE transacciones SET usuario_id = 3;

SELECT * FROM transacciones;
