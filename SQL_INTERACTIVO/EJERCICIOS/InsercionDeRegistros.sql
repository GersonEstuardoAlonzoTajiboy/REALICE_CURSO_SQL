/*
Ejercicio 1

Dada la tabla usuarios con las columnas id, nombre, apellido, email y telefono:

COLUMNA	    TIPO DE DATO
id	        INTEGER
nombre	    TEXT
apellido	TEXT
email	    TEXT
telefono	TEXT

Crea un nuevo usuario con los siguientes datos:

id:         7
nombre:     Lucía
apellido:   Sánchez
email:      luciasanchez@outlook.com
telefono:   555-5555
*/
INSERT INTO usuarios (id, nombre, apellido, email, telefono) VALUES (7, 'Lucía', 'Sánchez', 'luciasanchez@outlook.com', '555-5555'); 

/*
Ejercicio 2

Se tiene la tabla productos:

COLUMNA	    TIPO
id	        INT
nombre	    VARCHAR
precio	    INT
stock	    INT

Inserta un nuevo producto con los siguientes datos:

id:     7
nombre: Bolso
Precio: 1000
Stock:  10
*/
INSERT INTO productos (id, nombre, precio, stock) VALUES (7, 'Bolso', 1000, 10); 

/*
Ejercicio 3

Se tiene la tabla productos:

COLUMNA	    TIPO
id	        INT
nombre	    VARCHAR
precio	    INT
stock	    INT

Inserta un nuevo producto con los siguientes datos:

id:     7
nombre: Bolso
Precio: 1000
*/
INSERT INTO productos (id, nombre, precio, stock) VALUES (7, 'Bolso', 1000, NULL); 

/*
Ejercicio 4

Se tiene la tabla usuarios:

COLUMNA	    TIPO DE DATO
id	        INTEGER
nombre	    TEXT
apellido	TEXT
email	    TEXT
telefono	TEXT

Prueba agregando los siguientes datos a la tabla usuarios, puedes notar que tienen el orden alterado en relación a la tabla.

id:         7
apellido:   Sánchez
nombre:     Lucía
telefono:   333-3333
email:      luciasanchez@outlook.com
*/
INSERT INTO usuarios (id, apellido, nombre, telefono, email) VALUES (7, 'Sánchez', 'Lucía', '333-3333', 'luciasanchez@outlook.com');

/*
Ejercicio 5

Inserta un nuevo item en la tabla productos con los siguientes datos:

nombre: Bolso
stock:  10
*/
INSERT INTO productos (nombre, stock) VALUES ('Bolso', 10); 

/*
Ejercicio 6

COLUMNA	    TIPO
nombre	    TEXT
precio	    INT
stock	    INT
fecha	    DATE

Si tenemos la tabla productos, inserta un nuevo producto con los siguientes datos:

nombre:     Bolso
stock:      10
fecha:      CURRENT_DATE
*/
INSERT INTO productos (nombre, stock, fecha) VALUES ('Bolso', 10, CURRENT_DATE); 

/*
Ejercicio 7

Se tiene la tabla productos:

COLUMNA	    TIPO
nombre	    TEXT
precio	    INT
stock	    INT
fecha	    DATE

Inserta un nuevo producto con los siguientes datos:

nombre:     Bolso
stock:      10
fecha:      fecha_con_formato

La fecha del producto debe ser del primero de enero del 2023.
*/
INSERT INTO productos (nombre, stock, fecha) VALUES('Bolso', 10, '2023-01-01'); 

/*
Ejercicio 8

Inserta los siguientes registros en la tabla ventas:

PRODUCTO	CANTIDAD	PRECIO
Gorro	    5	        1000
Camiseta	10	        500
Pantalón	8	        1500
*/
INSERT INTO ventas (producto, cantidad, precio) 
VALUES ('Gorro', 5, 1000), ('Camiseta', 10, 500), ('Pantalón', 8, 1500);

/*
Ejercicio 9

Dada la tabla empleados con las columnas id, nombre y apellido, crea un nuevo empleado con el nombre "Jane" y el apellido "Smith".
*/
INSERT INTO empleados (nombre, apellido) VALUES ('Jane', 'Smith'); 

/*
Ejercicio 10

Dada la tabla usuarios con las columnas id, nombre, apellido, email y telefono, crea un nuevo usuario con los valores:

nombre:     Lucía
apellido:   Sánchez
email:      luciasanchez@outlook.com

La columna telefono tendrá el valor por defecto 111-1111
*/
INSERT INTO usuarios (nombre, apellido, email) VALUES ('Lucía', 'Sánchez', 'luciasanchez@outlook.com'); 
