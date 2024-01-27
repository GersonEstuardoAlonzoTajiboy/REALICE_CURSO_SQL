/*
Ejercicio 1.
Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono.
Selecciona los emails de la tabla usuarios con el alias email_upper. Todos los emails deben ser mostrados en mayúsculas.
*/
SELECT UPPER(email) AS email_upper FROM usuarios;

/*
Ejercicio 2.
Se tiene una tabla de usuarios con los campos id, nombre, e email. El campo email es de tipo texto y contiene algunas mayúsculas, 
lo que puede ocasionar errores en la base de datos.
Selecciona los emails de la tabla usuarios con el alias email_lower. Todos los emails deben ser mostrados en minúsculas.
*/
SELECT LOWER(email) AS email_lower FROM usuarios;

/*
Ejercicio 3.
Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono. Los nombres y correos poseen espacios en blanco 
tanto al inicio como al final de su valor. Utiliza la función TRIM() para seleccionar los nombres e emails y quitar los espacios en blanco.
*/
SELECT TRIM(nombre), TRIM(email) FROM usuarios;

/*
Ejercicio 4.
Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono. 
Los nombres, apellidos y correos poseen espacios en blanco tanto al inicio como al final y algunos de ellos tienen mayúsculas.
Utiliza lo aprendido para seleccionar los nombres, emails y apellidos, limpiando cada uno de estos campos. 
Para que el resultado sea correcto debes ocupar los alias nombre_limpio, apellido_limpio e email_limpio respectivamente.
*/
SELECT 
LOWER(TRIM(nombre)) AS nombre_limpio, 
LOWER(TRIM(apellido)) AS apellido_limpio, 
LOWER(TRIM(email)) AS email_limpio 
FROM usuarios;

/*
Ejercicio 5.
Selecciona el largo del apellido de todos los usuarios en la tabla usuarios.
*/
SELECT LENGTH(apellido) FROM usuarios;

/*
Ejercicio 6.
Se tiene una tabla usuarios con las columnas nombre, apellido, email y teléfono.
Utiliza lo aprendido para seleccionar el largo de los 3 correos más largos de la tabla. 
La columna resultante debe mostrar sólo el largo (cantidad de caracteres) de estos correos.
*/
SELECT LENGTH(email) FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 3;

/*
Ejercicio 7.
Se tiene una tabla usuarios con las columnas nombre, apellido, email y teléfono.
Utiliza lo aprendido para seleccionar los 3 correos más largos de la tabla. 
El resultado debe mostrar dos columnas: una con los emails y otra con sus largos respectivos.
*/
SELECT email, LENGTH(email) FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 3;

/*
Ejercicio 8.
Supongamos que tienes una tabla llamada productos con los campos 'producto', 'marca' y 'precio'. 
Selecciona una lista de todos los productos con su nombre, seguido de un guion ("-"), y su marca. 
Asigna el alias 'marca_producto' a la columna creada.
*/
SELECT producto || '-' || marca AS marca_producto FROM productos;

/*
Ejercicio 9.
Se tiene una tabla usuarios con las columnas id, nombre, apellido, email y teléfono. 
Utiliza la función SUBSTR para seleccionar las tres primeras letras del apellido de cada usuario en la tabla 'usuarios'. 
Asigna el nombre 'primeras_letras' a la columna creada.
*/
SELECT SUBSTR(apellido, 1, 3) AS primeras_letras FROM usuarios;

/*
Ejercicio 10. 
Seleccionando caracteres
Se tiene una tabla de usuarios con las columnas nombre y apellido. 
Utilizando la función SUBSTR(), selecciona 3 caracteres del apellido de María, 
partiendo desde el segundo caracter. Asigna el alias 'tres_caracteres_del_apellido' a la columna creada.
*/
SELECT SUBSTR(apellido, 2, 3) AS tres_caracteres_del_apellido FROM usuarios LIMIT 1;
