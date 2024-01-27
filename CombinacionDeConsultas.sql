/*
Ejercicio 1. 

Dadas las tablas estudiantes

NOMBRE
Juan
Maria
Pedro

y profesores

NOMBRE
Carlos
Ana
Luis

Escribe una consulta SQL que use UNION para combinar los nombres de ambas tablas. La columna resultante debe llamarse 'nombres'.
*/
SELECT nombre AS nombres FROM estudiantes 
UNION SELECT nombre AS nombres FROM profesores;

/*
Ejercicio 2.

Se tiene la tabla usuarios con la siguiente información:

ID	NOMBRE	    APELLIDO	EMAIL	                    TELEFONO
1	Juan	    Pérez	    juanperez@gmail.com	        555-1234
2	María	    García	    mariagarcia@hotmail.com	    555-5678
3	Pedro	    López	    pedrolopez@yahoo.com	    555-5678
4	Lucía	    Sánchez	    luciasanchez@outlook.com	555-5555
5	Jorge	    Martínez	jorgemartinez@gmail.com	    555-5678

Y la tabla clientes con la siguiente información:

ID	NOMBRE	    APELLIDO	EMAIL	                    TELEFONO
1	Juan	    Pérez	    juanperez@gmail.com	        555-1234
2	María	    García	    mariagarcia@hotmail.com	    555-5678
3	Pedro	    López	    pedrolopez@yahoo.com	    555-5678
4	Lucía	    Sánchez	    luciasanchez@outlook.com	555-5555
5	Jorge   	Martínez	jorgemartinez@gmail.com	    555-4321

Crea una consulta que nos muestre cada correo una única vez. La columna mostrada debe llamarse correos_unicos
*/
SELECT email AS correos_unicos FROM usuarios 
UNION SELECT email AS correos_unicos FROM clientes;

/*
Ejercicio 3.

Dadas las siguientes tablas empleados1 y empleados2

empleados1

NOMBRE	APELLIDO	EDAD
Juan	Pérez	    30
María	González	25
Carlos	Rodríguez	40

empleados2

NOMBRE	APELLIDO	EDAD
Ana	    Martínez	22
María	González	25
Carmen	López	    25

Crea una consulta que combine ambas tablas incluyendo las filas duplicadas.
*/
SELECT * FROM empleados1
UNION ALL SELECT * FROM empleados2;

/*
Ejercicio 4.

Dadas las siguientes tablas, lista1 y lista2, encuentra los clientes que están en ambas listas.

Lista1:

CLIENTE
Juan
Maria
Carlos
Ana
Luis
Pedro
Carmen

Lista2:

CLIENTE
Ana
Luis
Pedro
Carmen
Juan
Maria
Sofia
*/
SELECT cliente FROM lista1
INTERSECT SELECT cliente FROM lista2;

/*
Ejercicio 5.

Dadas las siguientes tablas, 'empleados' y 'gerentes', que contienen los siguientes datos:

empleados

ID	NOMBRE
1	Juan
2	María
3	Carlos
4	Ana
5	Luis

gerentes

ID	NOMBRE
1	Juan
2	María

Crea una consulta que muestre los nombres de los empleados que no son gerentes.
*/
SELECT nombre FROM empleados 
EXCEPT SELECT nombre FROM gerentes;
