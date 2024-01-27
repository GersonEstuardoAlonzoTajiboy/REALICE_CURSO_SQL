/*
Problema 1.
Tenemos una tabla llamada asistentes.
Escribe la consulta SELECT * FROM asistentes; en el editor para responder el ejercicio y luego presiona el botón ejecutar consulta.
*/
SELECT * FROM asistentes;

/*
Ejercicio 2.
Selecciona todas las columnas de la tabla llamada productos
*/
SELECT * FROM productos;

/*
Ejercicio 3.
En este ejercicio se tiene una tabla llamado usuarios que tiene las columnas nombre, apellido, email y telefono.
Selecciona sólo los nombres de la tabla usuarios.
*/
SELECT nombre FROM usuarios;

/*
Ejercicio 4.
Supongamos que tenemos una tabla llamada productos con las columnas 'nombre', 'precio', 'cantidad' y 'proveedor'. Selecciona sólo el nombre, precio y el proveedor
*/
SELECT nombre, precio, proveedor FROM productos;

/*
Ejercicio 5.
Se tiene una tabla llamada usuarios con las columnas nombre, apellido, email y teléfono. Selecciona todos los nombres bajo el alias "cliente"
*/
SELECT nombre AS cliente FROM usuarios;

/*
Ejercicio 6.
Cambia el nombre de la columna 'nombre' a 'nombre_usuario' y el nombre de la columna 'apellido' a 'apellido_usuario' en la tabla usuarios.
*/
SELECT nombre AS nombre_usuario, apellido AS apellido_usuario FROM usuarios;

/*
Ejercicio 7.
Selecciona el nombre y el email de los usuarios de la tabla usuarios, y asigna el nombre 'Correo electrónico' a la columna 'email'.
*/
SELECT nombre, email AS "Correo electrónico" FROM usuarios;
