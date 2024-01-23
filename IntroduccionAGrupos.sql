/*
Ejercicio 1.
Dada la siguiente tabla de usuarios

CORREO
juan.perez@empresa.com
maria.gonzalez@empresa.com
carlos.rodriguez@empresa.com
ana.martinez@empresa.com
luis.garcia@empresa.com
carmen.lopez@empresa.com
jose.hernandez@empresa.com
francisco.martin@empresa.com
laura.sanchez@empresa.com
antonio.diaz@empresa.com
juan.perez@empresa.com
maria.gonzalez@empresa.com

Crea una consulta que nos muestre cada correo una única vez. La columa mostrada debe llamarse correo_unico
*/
SELECT correo as correo_unico FROM usuarios GROUP BY correo;

/*
Ejercicio 2.
Dada la siguiente tabla de usuarios

CORREO
juan.perez@empresa.com
maria.gonzalez@empresa.com
carlos.rodriguez@empresa.com
ana.martinez@empresa.com
luis.garcia@empresa.com
carmen.lopez@empresa.com
jose.hernandez@empresa.com
francisco.martin@empresa.com
laura.sanchez@empresa.com
antonio.diaz@empresa.com
juan.perez@empresa.com
maria.gonzalez@empresa.com

Crea una consulta que nos muestre cada correo una única vez junto a la cantidad de repeticiones. Las columnas deben llamarse correo y repeticiones.
*/
SELECT correo, COUNT(correo) AS repeticiones FROM usuarios GROUP BY correo;

/*
Ejercicio 3.
Dada la siguiente tabla empleados

NOMBRE	    APELLIDO	  SUELDO	  DEPARTAMENTO
Juan	      Pérez	      3000	    Ventas
María	      González	  3500	    Marketing
Carlos	    Rodríguez	  4000	    Tecnología
Ana	        Martínez	  2800	    Recursos Humanos
Luis	      García	    3200	    Finanzas
Carmen	    López	      3100	    Administración
José	      Hernández	  2900	    Operaciones
Francisco	  Martín	    3400	    Legal
Laura	      Sánchez	    3300	    Compras
Antonio	    Díaz	      3600	    Producción
Sofía	      Ruiz	      2750	    Ventas
Jorge 	    Vargas	    3900	    Tecnología
Elena	      Castro	    3050	    Marketing
Pedro	      Ortega	    3150	    Finanzas

Se pide contar cuantas personas trabajan en cada departamento. Las columnas resultantes deben llamarse departamento y cantidad_empleados
*/
SELECT departamento, COUNT(departamento) AS cantidad_empleados FROM empleados GROUP BY departamento;

/*
Ejercicio 4.
Utilizando la siguiente tabla ventas de una empresa, crea una consulta que muestre cuanto se vendió en total por cada cateogría. Las columnas de la consulta deben llamarse categoria y monto_total

PRODUCTO	        MONTO	  CATEGORIA
Laptop Pro	      1200	  Electrónicos
Smartphone X	    800	    Electrónicos
Silla Ergo	      150	    Mobiliario
Mesa de Café	    90	    Mobiliario
Reloj Elegante	  250	    Accesorios
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa
Camisa Casual 	  40	    Ropa
Licuadora Max	    60	    Electrodomésticos
Horno Compacto	  110	    Electrodomésticos
Libro de Cocina	  20	    Libros
Novela Misterio	  15	    Libros
Audífonos Plus	  50	    Electrónicos
Lámpara Moderna	  45	    Mobiliario
Laptop Pro	      1200	  Electrónicos
Silla Ergo	      150	    Mobiliario
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa
*/
SELECT categoria, SUM(monto) AS monto_total FROM ventas GROUP BY categoria;

/*
Ejercicio 5.
Dada la siguiente tabla de estudiantes

NOMBRE_COMPLETO	  NOTA
Juan Pérez	      7
Juan Pérez	      8
Juan Pérez	      6
María Rodríguez	  9
María Rodríguez	  7
María Rodríguez	  8
Carlos García	    6
Carlos García	    5
Carlos García	    7
Ana Fernández	    8
Ana Fernández	    9
Ana Fernández	    8
Luis Morales	    7
Luis Morales	    6
Luis Morales	    5

Encuentra el promedio de notas de cada estudiante. 
Las columnas deben tener el nombre de Nombre_Completo y Promedio_Notas respectivamente.
Este ejercicio tiene un supuesto importante: 
que no hay dos estudiantes con el mismo nombre y apellido. 
Discutiremos este tipo de supuestos más adelante cuando revisemos el concepto de integridad.
*/
SELECT nombre_completo, AVG(nota) AS promedio_notas FROM estudiantes GROUP BY nombre_completo;

/*
Ejercicio 6.
Dada la siguiente tabla de ventas:

PRODUCTO	        MONTO	  CATEGORIA
Laptop Pro	      1200	  Electrónicos
Smartphone X	    800	    Electrónicos
Silla Ergo	      150	    Mobiliario
Mesa de Café	    90	    Mobiliario
Reloj Elegante	  250	    Accesorios
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa
Camisa Casual	    40	    Ropa
Licuadora Max	    60	    Electrodomésticos
Horno Compacto	  110	    Electrodomésticos
Libro de Cocina	  20	    Libros
Novela Misterio	  15	    Libros
Audífonos Plus	  50	    Electrónicos
Lámpara Moderna	  45	    Mobiliario
Laptop Pro	      1200	  Electrónicos
Silla Ergo	      150	    Mobiliario
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa

Crea una consulta para calcular el monto mas alto por cada categoría. La tabla resultante debe tener dos columnas: categoria y monto_mas_alto.
*/
SELECT categoria, MAX(monto) AS monto_mas_alto FROM ventas GROUP BY categoria;

/*
Ejercicio 7.
Dada la tabla ventas:

PRODUCTO	        MONTO	  CATEGORIA
Laptop Pro	      1200	  Electrónicos
Smartphone X	    800	    Electrónicos
Silla Ergo	      150	    Mobiliario
Mesa de Café	    90	    Mobiliario
Reloj Elegante	  250	    Accesorios
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa
Camisa Casual	    40	    Ropa
Licuadora Max	    60	    Electrodomésticos
Horno Compacto	  110	    Electrodomésticos
Libro de Cocina	  20	    Libros
Novela Misterio	  15	    Libros
Audífonos Plus	  50	    Electrónicos
Lámpara Moderna	  45	    Mobiliario
Laptop Pro	      1200	  Electrónicos
Silla Ergo	      150	    Mobiliario
Bolso de Viaje	  70	    Accesorios
Zapatillas Run	  100	    Ropa

Crea una consulta para calcular el monto más bajo por cada categoría. La tabla resultante debe tener dos columnas: categoria y monto_mas_bajo.
*/
SELECT categoria, MIN(monto) AS monto_mas_bajo FROM ventas GROUP BY categoria;

/*
Ejercicio 8.
Utilizando esta nueva tabla de ventas.

ID_VENTA	  MONTO	  FECHA_VENTA
1	          200	    2010-01-15
2	          150	    2010-02-20
3	          300	    2010-02-10
4	          250	    2010-04-05
5	          100	    2010-04-25
6	          350	    2010-04-18
7	          400	    2010-06-22
8	          180	    2010-06-09
9	          220	    2010-09-30
10	        275	    2010-10-11

Calcula el total de ventas por mes. El nombre de las columnas resultantes será "suma_ventas" y "mes" respectivamente.
*/
SELECT 
SUM(monto) AS suma_ventas, 
STRFTIME('%m', fecha_venta) AS mes 
FROM ventas 
GROUP BY STRFTIME('%m', fecha_venta);

/*
Ejercicio 9.
Se tiene una tabla llamada inscripciones con distintas fechas de inscripciones de un usuario a un sitio web.

FECHA_INSCRIPCION
2022-01-15
2022-01-20
2022-02-10
2022-02-05
2022-03-25
2022-03-18
2022-04-22
2022-04-09
2022-05-30
2022-05-11
2022-06-19
2022-06-29
2022-07-12
2022-07-21
2022-08-08
2022-08-17
2022-09-13
2022-09-26
2022-10-14
2022-10-28

Cuenta cuántos usuarios se registraron cada mes. Las columnas resultantes deben llamarse "mes" y "cantidad_usuarios".
*/
SELECT 
STRFTIME('%m', fecha_inscripcion) AS mes,
COUNT(*) AS cantidad_usuarios
FROM inscripciones 
GROUP BY STRFTIME('%m', fecha_inscripcion);

/*
Ejercicio 10.
Dada la siguiente tabla de usuarios

CORREO
juan.perez@empresa.com
maria.gonzalez@empresa.com
carlos.rodriguez@empresa.com
ana.martinez@empresa.com
luis.garcia@empresa.com
carmen.lopez@empresa.com
jose.hernandez@empresa.com
juan.perez@empresa.com
carmen.lopez@empresa.com
maria.gonzalez@empresa.com
juan.perez@empresa.com
maria.gonzalez@empresa.com

Crea una consulta que nos muestre cada correo una única vez acompañado del número de veces que se repite. 
Las columnas deben llevar los nombres "correo" y "repeticiones", respectivamente, y deben estar ordenadas alfabéticamente.
*/
SELECT correo, COUNT(correo) AS repeticiones FROM usuarios GROUP BY correo ORDER BY correo ASC;

/*
Ejercicio 11.
Tenemos la siguiente tabla estudiantes

CORREO	                  MATERIA	      NOTA
estudiante1@ejemplo.com	  Matemáticas	  8.5
estudiante2@ejemplo.com	  Matemáticas	  9.0
estudiante3@ejemplo.com	  Matemáticas	  7.5
estudiante1@ejemplo.com	  Ciencias	    8.0
estudiante2@ejemplo.com	  Ciencias	    9.5
estudiante3@ejemplo.com	  Ciencias	    7.0
estudiante1@ejemplo.com	  Historia	    8.7
estudiante2@ejemplo.com	  Historia	    9.2
estudiante3@ejemplo.com	  Historia	    7.8

Calcula el promedio de cada estudiante en cada materia. Las columnas deben llamarse correo, materia y promedio_notas
*/
SELECT correo, materia, AVG(nota) AS promedio_notas FROM estudiantes GROUP BY correo, materia;
