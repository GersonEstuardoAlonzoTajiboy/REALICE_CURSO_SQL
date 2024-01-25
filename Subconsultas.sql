/*
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
Jorge	      Vargas	    3900	    Tecnología
Elena	      Castro	    3050	    Marketing
Pedro	      Ortega	    3150	    Finanzas

Se nos pide seleccionar a todas las personas que ganan sobre el promedio.
Este tipo de preguntas podemos contestarlas utilizando subconsultas.

La idea para contestar esto es la siguiente.
Calculamos el promedio SELECT avg(sueldo) FROM empleados
Seleccionamos todos los empleados cuyo sueldo es mayor a la consulta anterior. SELECT * FROM empleados WHERE sueldo > (SELECT AVG(sueldo) FROM empleados)

Ejercicio 1.
Utilizando los mismos datos de la tabla empleados, selecciona todos los registros cuyo sueldo sea menor o igual al promedio.
*/
SELECT * FROM empleados 
WHERE sueldo <= (SELECT AVG(sueldo) FROM empleados);

/*
Ejercicio 2.

Dada la siguiente tabla empleados

NOMBRE	      APELLIDO	    SUELDO	    DEPARTAMENTO
Juan	        Pérez	        3000	      Ventas
María	        González	    3500	      Marketing
Carlos	      Rodríguez	    4000	      Tecnología
Ana	          Martínez	    2800	      Recursos Humanos
Luis	        García	      3200	      Finanzas
Carmen	      López	        3100	      Administración
José	        Hernández	    2900	      Operaciones
Francisco	    Martín	      3400	      Legal
Laura	        Sánchez	      3300	      Compras
Antonio	      Díaz	        3600	      Producción
Sofía	        Ruiz	        2750	      Ventas
Jorge	        Vargas	      3900	      Tecnología
Elena	        Castro	      3050	      Marketing
Pedro	        Ortega	      3150	      Finanzas

Selecciona toda la información de los registros que sean mayores al promedio del departamento de finanzas.
*/
SELECT * FROM empleados 
WHERE sueldo > (SELECT AVG(sueldo) FROM empleados WHERE departamento = "Finanzas");

/*
Ejercicio 3.

NOMBRE	      APELLIDO	    SUELDO	    DEPARTAMENTO
Juan	        Pérez	        3000	      Ventas
María	        González	    3500	      Marketing
Carlos	      Rodríguez	    4000	      Tecnología
Ana	          Martínez	    2800	      Recursos Humanos
Luis	        García	      3200	      Finanzas
Carmen	      López	        3100	      Administración
José	        Hernández	    2900	      Operaciones
Francisco	    Martín	      3400	      Legal
Laura	        Sánchez	      3300	      Compras
Antonio	      Díaz	        3600	      Producción
Sofía	        Ruiz	        2750	      Ventas
Jorge	        Vargas	      3900	      Tecnología
Elena	        Castro	      3050	      Marketing
Pedro	        Ortega	      3150	      Finanzas

Utilizando los datos de la tabla empleados, selecciona todos los empleados cuyo sueldo sea mayor al empleado que tiene el mayor sueldo del departamento de finanzas.
*/
SELECT * FROM empleados 
WHERE sueldo > (SELECT MAX(sueldo) FROM empleados WHERE departamento = "Finanzas")

/*
Ejercicio 4.

Se tiene la siguiente tabla notas:

EMAIL	                  NOTAS
Alumno1@ejemplo.com	    90
Alumno1@ejemplo.com	    50
Alumno1@ejemplo.com	    30
Alumno2@ejemplo.com	    90
Alumno2@ejemplo.com	    20
Alumno3@ejemplo.com	    80
Alumno2@ejemplo.com	    50
Alumno3@ejemplo.com	    30
Alumno3@ejemplo.com	    10

Selecciona todos los registros superiores al promedio de nota.
*/
SELECT * FROM notas 
WHERE notas > (SELECT AVG(notas) FROM notas);

/*
Ejercicio 5.

Se tiene una tabla estudiantes con un código y un nombre

ESTUDIANTE_ID	  NOMBRE
1	              Juan
2	              María
3	              Pedro
4	              Ana

Y se tiene una tabla promedios con el código del estudiante y su promedio de notas.

ESTUDIANTE_ID	  PROMEDIO_NOTAS
1	              85
2	              65
3	              49
4	              38

Muestra los nombres de todos los estudiantes que tengan un promedio de notas sobre 50
*/
SELECT nombre
FROM estudiantes
WHERE estudiante_id IN (SELECT estudiante_id FROM promedios WHERE promedio_notas > 50);

/*
Ejercicio 6.

Se tiene la tabla libros

LIBRO_ID	  NOMBRE
1	          La Odisea
2	          Cien Años de Soledad
3	          El Principito
4	          Moby Dick

Y se tiene la tabla valoraciones

LIBRO_ID	  VALORACION_PROMEDIO
1	          4.5
2	          4.7
3	          4.2
4       	  3.9

Crea una consulta que muestre todos los títulos con valoración_promedio > 4. La columna resultante debe llamarse nombres_seleccionados.
*/
SELECT nombre AS nombres_seleccionados 
FROM libros 
WHERE libro_id IN (SELECT libro_id FROM valoraciones WHERE valoracion_promedio > 4);

/*
Ejercicio 7.

Se tiene una tabla de pacientes

PACIENTE_ID	  NOMBRE
1	            Roberto
2	            Carmen
3	            Luisa
4	            Esteban

Se tiene una tabla de consultas

PACIENTE_ID	  FECHA_CONSULTA
1	            2023-05-10
2	            2023-05-15
3	            2023-05-20
4	            2023-05-25

Se pide obtener los nombres de todos los pacientes que tuvieron su última consulta antes del 16 de mayo de 2023. La columna se debe llamar nombres_pacientes.
*/
SELECT nombre AS nombres_pacientes
FROM pacientes
WHERE paciente_id IN (SELECT paciente_id FROM consultas WHERE fecha_consulta < '2023-05-16'
);

/*
Ejercicio 8.

Se tiene la tabla ventas que tiene el código de vendedor y el monto de la venta. 
Nos piden saber cuanto es el promedio total vendido. 
El resultado debe estar en la columna promedio_ventas
*/
SELECT AVG(total_venta) AS promedio_ventas
FROM (SELECT empleado_id, SUM(monto) AS total_venta FROM ventas GROUP BY empleado_id);

/*
Ejercicio 9.

Se tiene la tabla goles que registra los goles logrados por cada jugador en distintos partidos.

JUGADOR_ID	  NOMBRE	  GOLES
1	            Juan	    2
1	            Juan	    1
2	            María	    1
2	            María	    1
3	            Pedro	    3
4	            Ana	      1

Nos piden una consulta para calcular el promedio total de goles.
*/
SELECT AVG(total_goles) AS promedio_goles
FROM (SELECT JUGADOR_ID, SUM(GOLES) AS total_goles FROM goles GROUP BY JUGADOR_ID);
