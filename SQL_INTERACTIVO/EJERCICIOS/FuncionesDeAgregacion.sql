/*
Ejercicio 1.
Utilizando los mismos datos previos selecciona la mayor edad de la tabla empleados
Tip: Aunque en SQL es válido escribir tanto MAX (columna) como MAX(columna), 
el corrector de ejercicios considerará la primera opción como incorrecta debido al espacio adicional. Por lo tanto, escribe la función sin espacios.
*/
SELECT MAX(edad) FROM empleados;

/*
Ejercicio 2.
Utilizando la tabla empleados, encuentra el menor sueldo presente.

EMAIL	                    NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González  25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT MIN(sueldo) FROM empleados;

/*
Ejercicio 3.
Utilizando la tabla empleados, encuentra la suma de todos los sueldos.

EMAIL	                    NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González	25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT SUM(sueldo) FROM empleados;

/*
Ejercicio 4.
Utilizando la tabla empleados, encuentra el promedio de todos los sueldos.

EMAIL	                    NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González	25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT AVG(sueldo) FROM empleados;

/*
Ejercicio 5.
Encuentra la cantidad de registros (cantidad de filas) que tiene la tabla empleados.

EMAIL 	                  NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González	25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT COUNT(*) FROM empleados;

/*
Ejercicio 6.
Utilizando la tabla empleados, calcula la suma de sueldos de todas las personas mayores a 27 años.

EMAIL	                    NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González	25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT SUM(sueldo) FROM empleados WHERE edad > 27;

/*
Ejercicio 7.
Utilizando la tabla empleados, calcula el promedio de los sueldos de todas las personas que ganan más de 50,000

EMAIL	                    NOMBRE	        EDAD	  SUELDO
juan.perez@workmail.com	  Juan Pérez	    30	    50,000
maria.gonzalez@corp.com	  Maria González	25	    55,000
john.doe@techplace.org	  John Doe	      40	    60,000
francisco@startup.io	    Francisco	      22	    45,000
*/
SELECT AVG(sueldo) FROM empleados WHERE sueldo > 50000;

/*
Ejercicio 8.
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

Calcula cuantas personas trabajan en el área de marketing
*/
SELECT COUNT(*) FROM empleados WHERE departamento = "Marketing";

/*
Ejercicio 9.
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

Calcula cuantas personas trabajan en total en las areas de finanzas y marketing
*/
SELECT COUNT(*) FROM empleados WHERE departamento = "Finanzas" OR departamento = "Marketing";

/*
Ejercicio 10.
Se tiene la tabla usuarios con la siguiente información:

ID	NOMBRE	APELLIDO	EMAIL	TELEFONO
1	Juan	Pérez	juanperez@gmail.com	555-1234
2	María	García	mariagarcia@hotmail.com	555-5678
3	Pedro	López	pedrolopez@yahoo.com	555-9876
4	Lucía	Sánchez	luciasanchez@outlook.com	555-5555
5	Jorge	Martínez	jorgemartinez@gmail.com	555-4321

Cuenta la cantidad de usuarios cuyo nombre termina con la letra 'a' en la tabla de usuarios.
*/
SELECT COUNT(*) FROM usuarios WHERE nombre LIKE('%a');
