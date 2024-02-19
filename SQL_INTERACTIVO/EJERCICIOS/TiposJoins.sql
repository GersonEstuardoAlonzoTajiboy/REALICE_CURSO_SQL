/*
Ejercicio 1

Une las tablas utilizando JOIN (o INNER JOIN) para obtener todos los registros de ambas tablas. 
Mira las tablas antes de realizar el ejercicio y pon especial atención en Francisco 
quien no tiene ninguna nota en el sistema.

Tabla usuarios

EMAIL	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
francisco@example.com	    Test User	    22

Tabla notas

EMAIL	                    NOTAS
juan.perez@example.com	    90
maria.gonzalez@example.com	100
john.doe@example.com	    80
juan.perez@example.com	    100
maria.gonzalez@example.com	100
*/
SELECT * FROM usuarios
INNER JOIN notas 
ON usuarios.email = notas.email

/*
Ejercicio 2

Se tiene una tabla de empleados y otra de departamentos. 

Utilizando lo aprendido selecciona a todos los empleados junto a sus departamentos correspondientes, 
incluyendo a los empleados que aún no han sido asignados a ningún departamento. 

En ambas tablas existe la columna email.
*/
SELECT * FROM empleados
LEFT JOIN departamentos
ON empleados.email = departamentos.email

/*
Ejercicio 3

Dadas las tablas empleados y departamentos, se pide todos los registros de los departamentos de una oficina 
y sus correspondientes empleados, incluso si hay departamentos sin empleados asociados. 

En ambas tablas existe la columna email.
*/
SELECT * FROM empleados
RIGHT JOIN departamentos
ON empleados.email = departamentos.email

/*
Ejercicio 4

Selecciona todos los registros de todos los productos (tabla productos) junto a sus precios (tabla precios), 
incluyendo a los productos que no tienen precio asignado. 

Las tablas se relacionan entre si por la columna producto_id.
*/
SELECT * FROM productos
LEFT JOIN precios
ON productos.producto_id = precios.producto_id
