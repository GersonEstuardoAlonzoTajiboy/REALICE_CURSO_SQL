/*
Ejercicio 1.
Crea un reporte mostrando los meses y la cantidad de inscritos pero solo donde haya 1 inscrito. 
Las columnas deben llamarse mes y cantidad_usuarios respectivamente.
*/
SELECT 
STRFTIME('%m', fecha_inscripcion) AS mes, 
COUNT(*) AS cantidad_usuarios
FROM inscripciones 
GROUP BY STRFTIME('%m', fecha_inscripcion)
HAVING cantidad_usuarios = 1; 

/*
Ejercicio 2.
Se tiene la tabla correos_corporativos

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

Muestra los correos que aparezcan en más de una ocasión. 
La tabla resultante debe tener dos columnas: 
una llamada correo, y otra llamada cuenta_correos que muestra la cantidad de repeticiones correspondiente a cada correo.
*/
SELECT correo, COUNT(correo) AS cuenta_correos
FROM correos_corporativos
GROUP BY correo
HAVING COUNT(correo) > 1;

/*
Ejercicio 3.
Dada la siguiente tabla empleados

NOMBRE	      APELLIDO	    SUELDO	  DEPARTAMENTO
Juan	        Pérez	        3000	    Ventas
María	        González	    3500	    Marketing
Carlos	      Rodríguez	    4000	    Tecnología
Ana	          Martínez	    2800	    Recursos Humanos
Luis	        García	      3200	    Finanzas
Carmen	      López	        3100	    Administración
José	        Hernández	    2900	    Operaciones
Francisco	    Martín	      3400	    Legal
Laura	        Sánchez	      3300	    Compras
Antonio	      Díaz	        3600	    Producción
Sofía	        Ruiz	        2750	    Ventas
Jorge	        Vargas	      3900	    Tecnología
Elena	        Castro	      3050	    Marketing
Pedro	        Ortega	      3150	    Finanzas

Crea una consulta que muestre la cantidad de usuarios y el departamento en donde haya más de un empleado. 
Las columnas deben llamarse cantidad_de_usuarios y departamento, respectivamente.
*/
SELECT 
COUNT(*) AS cantidad_de_usuarios, departamento 
FROM empleados
GROUP BY departamento
HAVING COUNT(departamento) > 1;

/*
Ejercicio 4.
Se tiene la siguiente tabla notas:

EMAIL	                NOTAS
Alumno1@ejemplo.com	  90
Alumno1@ejemplo.com	  50
Alumno1@ejemplo.com	  30
Alumno2@ejemplo.com	  90
Alumno2@ejemplo.com	  20
Alumno3@ejemplo.com	  80
Alumno2@ejemplo.com	  50
Alumno3@ejemplo.com	  30
Alumno3@ejemplo.com	  10

Crea una consulta para determinar cuales son los estudiantes que aprobaron. El criterio de aprobación es promedio de notas >= 50.
Las columnas a mostrar deben ser email y promedio_notas.
*/
SELECT
email, AVG(notas) AS promedio_notas
FROM notas 
GROUP BY email
HAVING AVG(notas) >= 50;

/*
Ejercicio 5.
Dada la siguiente tabla ventas, escribe una consulta SQL para obtener los productos que se han vendido en una cantidad total mayor a 1000, ordenados en orden descendente de cantidad vendida.

PRODUCTO	CANTIDAD
A	        500
B	        2000
C	        300
D	        1500
E	        700
A	        600
B	        800
C	        1200
D	        400
E	        300
La tabla resultante debe tener dos columnas: 'producto' y 'cantidad_total'.
*/
SELECT 
producto, SUM(cantidad) AS cantidad_total
FROM ventas
GROUP BY producto
HAVING SUM(cantidad) > 1000
ORDER BY cantidad_total DESC;

/*
Ejercicio 6.
Supongamos que tienes una tabla de empleados con los siguientes datos:

ID_EMPLEADO	    NOMBRE	   DEPARTAMENTO	  SALARIO
1	              Juan	     Ventas	        3000
2	              Maria	     Marketing	    3500
3	              Carlos	   Ventas	        4000
4	              Ana	       Marketing	    2800
5	              Luis	     Ventas	        3200

Tu tarea es escribir una consulta SQL que devuelva los departamentos 
cuyo salario promedio es mayor a 3000, ordenados de mayor a menor salario promedio. 
Los resultados deben mostrar el nombre del departamento y el salario promedio, 
con los nombres de las columnas como Departamento y Salario_Promedio respectivamente.
*/
SELECT 
departamento, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento
HAVING AVG(salario) > 3000
ORDER BY salario_promedio DESC;
