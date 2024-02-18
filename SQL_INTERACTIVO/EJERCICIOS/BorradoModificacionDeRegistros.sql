/*
Ejercicios 1

Borra todos los datos de la tabla 'productos'.
*/
DELETE FROM productos; 

/*
Ejercicio 2

Dada la tabla usuarios con los siguientes datos:

ID	NOMBRE	APELLIDO	EMAIL	                    TELEFONO
1	Juan	Pérez	    juanperez@gmail.com	        555-1234
2	María	García	    mariagarcia@hotmail.com	    555-5678
3	Pedro	López	    pedrolopez@yahoo.com	    555-9876
4	Lucía	Sánchez	    luciasanchez@outlook.com	555-5555
5	Jorge	Martínez	jorgemartinez@gmail.com	    555-4321

Borra el usuario cuyo id sea igual a 2.
*/
DELETE FROM usuarios WHERE id = 2; 

/*
Ejercicio 3

Se tiene una tabla usuarios con los siguientes datos:

ID	NOMBRE	APELLIDO	EMAIL	                    REGISTRADO
1	Juan	Pérez	    juanperez@gmail.com	        FALSE
2	María	García	    mariagarcia@hotmail.com	    FALSE
3	Pedro	López	    pedrolopez@yahoo.com	    FALSE
4	Lucía	Sánchez	    luciasanchez@outlook.com	FALSE
5	Jorge	Martínez	jorgemartinez@gmail.com	    FALSE

Edita la columna "registrado" para que todos los usuarios tengan el valor TRUE
*/
UPDATE usuarios SET registrado = TRUE;

/*
Ejercicio 4

Se tiene una tabla usuarios con los siguientes datos:

ID	NOMBRE	APELLIDO	EMAIL	                    TELEFONO
1	Juan	Pérez	    juanperez@gmail.com	        555-1234
2	María	García	    mariagarcia@hotmail.com	    555-5678
3	Pedro	López	    pedrolopez@yahoo.com	    555-9876
4	Lucía	López	    luciasanchez@outlook.com	555-5555
5	Jorge	Martínez	jorgemartinez@gmail.com	    555-4321

Asignales el telefono 123-456 al usuario con id 4.
*/
UPDATE usuarios SET telefono = '123-456' WHERE id = 4; 

/*
Ejercicio 5

Se tiene una tabla de posts con las siguientes columnas:

COLUMNA	    TIPO DE DATO
id	        INTEGER
titulo	    TEXT
contenido	TEXT
autor	    TEXT
fecha	    TEXT

Edita el post con id 1 para que tenga el título "Aprendiendo SQL" y el contenido "SQL es un lenguaje de programación para gestionar bases de datos relacionales".
*/
UPDATE posts 
SET titulo = 'Aprendiendo SQL', contenido = 'SQL es un lenguaje de programación para gestionar bases de datos relacionales'
WHERE id = 1; 
