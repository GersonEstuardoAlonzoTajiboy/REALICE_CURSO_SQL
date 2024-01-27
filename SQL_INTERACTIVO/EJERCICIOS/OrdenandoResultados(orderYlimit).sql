/*
Ejercicio 1.
Ordena los registros de la tabla usuarios por el campo 'nombre'
*/
SELECT * FROM usuarios ORDER BY nombre;

/*
Ejercicio 2.
En este ejercicio se tiene una tabla usuarios con los campos id, nombre, apellido, email y teléfono. 
Se te pide ordenar los registros de la tabla 'usuarios' por el campo 'nombre' en orden ascendente.
*/
SELECT * FROM usuarios ORDER BY nombre ASC;

/*
Ejercicio 3.
Se tiene una tabla productos con los campos id, nombre, precio y stock. Selecciona sólo los precios de la tabla 'productos' ordenados de forma descendente.
*/
SELECT precio FROM productos ORDER BY precio DESC;

/*
Ejercicio 4.
Ordena la tabla empleados por la columna 'salario' de manera ascendente.
*/
SELECT * FROM empleados ORDER BY salario ASC;

/*
Ejercicio 5.
Dada una tabla productos con las columnas 'id', 'nombre' y 'precio' con los siguientes registos.

ID	NOMBRE	PRECIO
1	Producto 1	100
2	Producto 2	NULL
3	Producto 3	50
4	Producto 4	NULL
5	Producto 5	200
Ordena las filas de la tabla en función del precio de forma ascendente. 
Asegúrate de que las filas con valores nulos en la columna 'precio' aparezcan al final de la lista ordenada.
*/
SELECT * FROM productos ORDER BY precio ASC NULLS LAST;

/*
Ejercicio 6.
Se tiene la tabla empleados con la siguiente información:

ID	NOMBRE	SALARIO
1	Juan Pérez	4800
2	María López	5500
3	Pedro García	5500
4	Ana Martínez	5500
5	Luis Rodríguez	4800
Selecciona una lista de todos los empleados ordenados por su salario y por su nombre.
*/
SELECT * FROM empleados ORDER BY salario, nombre;

/*
Ejercicio 7.
Se tiene la tabla productos con la siguiente información:

ID	NOMBRE	STOCK	COLOR
1	Silla	10	Rojo
2	Mesa	5	Verde
3	Lámpara	15	Azul
4	Escritorio	8	Blanco
5	Estantería	12	Negro
Selecciona todos los registros de la tabla 'productos' y ordénalos primero por 'stock' de forma descendente y luego por 'color' de forma ascendente.
*/
SELECT * FROM productos ORDER BY stock DESC, color ASC;

