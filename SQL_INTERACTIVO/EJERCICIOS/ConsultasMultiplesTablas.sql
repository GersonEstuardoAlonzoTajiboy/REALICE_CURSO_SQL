/*
Ejercicio 1

Utilizando lo aprendido selecciona todos los usuarios junto a sus notas. Observa los resultados antes de avanzar.

tabla usuarios

EMAIL1	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
test.user@example.com	    Test User	    22

tabla notas

EMAIL2	                        NOTAS
juan.perez@example.com	        90
maria.gonzalez@example.com	    100
john.doe@example.com	        80
test.user@example.com	        0
juan.perez@example.com	        100
maria.gonzalez@example.com	    100
*/
SELECT * FROM usuarios 
JOIN notas ON email1 = email2;

/*
Ejercicio 2

Utilizando lo aprendido, selecciona todos los usuarios junto a sus notas. 
Recuerda que para especificar la clave de unión debes utilizar el nombre de la tabla para evitar ambiguedad. 
Observa los resultados antes de avanzar.

Tabla usuarios

EMAIL	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
test.user@example.com	    Test User	    22

Tabla notas

EMAIL	                    NOTAS
juan.perez@example.com	    90
maria.gonzalez@example.com	100
john.doe@example.com	    80
test.user@example.com	    0
juan.perez@example.com	    100
maria.gonzalez@example.com	100
*/
SELECT * FROM usuarios 
JOIN notas ON usuarios.email = notas.email

/*
Ejercicio 3

Dada las siguientes tablas:

usuarios

EMAIL	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
test.user@example.com	    Test User	    22

notas

EMAIL	                    NOTAS
juan.perez@example.com	    90
maria.gonzalez@example.com	100
john.doe@example.com	    80
test.user@example.com	    0
juan.perez@example.com	    100
maria.gonzalez@example.com	100

Selecciona de la tabla usuarios el email, nombre y edad y de la tabla notas sólo las notas. 
Une los registros de ambas tablas utilizando el email.
*/
SELECT u.email, u.nombre, u.edad, n.notas
FROM usuarios AS u
JOIN notas AS n
ON u.email = n.email

/* 
Ejercicio 4

¿Qué sucedería si los emails presentes en una tabla no se encuentran en la otra tabla al momento de unir los datos?

tabla usuarios

EMAIL	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
test.user@example.com	    Test User	    22

tabla datos_contacto

EMAIL	                        TELÉFONO
alvaro.sanchez@example.com	    555-123-4567
maria.fernandez@example.com	    444-987-6543
francisca.medina@example.com	777-555-8888

La respuesta es bien sencilla: si no hay ningún dato común entre ambas tablas, no obtendremos resultados.

Utilizando lo aprendido previamente, selecciona todos los registros de la unión de las tablas usuarios y 
datos_contacto. Observa el resultado.
*/
SELECT * FROM usuarios 
JOIN datos_contacto 
ON usuarios.email = datos_contacto.email

/*
Ejercicio 5

Dadas las siguientes tablas, selecciona toda la información del usuario juan.perez@example.com

Tabla usuarios

EMAIL	                    NOMBRE	        EDAD
juan.perez@example.com	    Juan Pérez	    30
maria.gonzalez@example.com	Maria González	25
john.doe@example.com	    John Doe	    40
test.user@example.com	    Test User	    22

Tabla notas

EMAIL	                    NOTAS
juan.perez@example.com	    90
maria.gonzalez@example.com	100
john.doe@example.com	    80
test.user@example.com	    0
juan.perez@example.com	    100
maria.gonzalez@example.com	100

Pista: debes seleccionar todo, unir las tablas y filtrar por el email respectivo.
*/
SELECT * FROM usuarios
JOIN notas 
ON usuarios.email = notas.email 
WHERE usuarios.email = 'juan.perez@example.com' AND notas.email = 'juan.perez@example.com'
 
/*
Ejercicio 6

Tenemos dos tablas: Productos y Ventas. Realiza una consulta que nos muestre el producto más vendido 
y la cantidad total de unidades vendidas de ese producto. La columna que muestre el total de unidades vendidas 
debe llamarse "total_vendido"

Pista: recuerda el uso de order by y limit

Tabla Productos

NOMBRE	        PRECIO	    PRODUCTOID
Producto A	    10	        1
Producto B	    15	        2
Producto C	    20	        3

Tabla Ventas

CANTIDAD	FECHAVENTA	    PRODUCTOID
20	        '2023-09-01'	1
15	        '2023-09-02'	1
10	        '2023-09-03'	2
25	        '2023-09-04'	3
30	        '2023-09-05'	3
*/
SELECT p.NOMBRE, SUM(v.CANTIDAD) AS total_vendido
FROM Productos p
JOIN Ventas v ON p.PRODUCTOID = v.PRODUCTOID
GROUP BY p.PRODUCTOID
ORDER BY total_vendido DESC
LIMIT 1;
