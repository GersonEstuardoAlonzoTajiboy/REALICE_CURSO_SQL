/*
Ejercicio 1

Dada las siguientes tablas:

tabla Vehículos
id	modelo
1	Toyota Corolla
2	Honda Civic
3	Ford Focus

tabla: Matrículas
id	vehiculo_id	matricula
1	1	ABC-123
2	2	XYZ-456
3	3	DEF-789

Se pide crear una consulta que muestre toda la información de las matrículas de los vehículos junto a su matrícula correspondiente.
*/
SELECT * FROM Vehiculos v
INNER JOIN Matriculas m
ON v.id = m.vehiculo_id

/*
Ejercicio 2

Dada las siguientes tablas:

Tabla continentes
continente_id	nombre
1	África
2	América
3	Asia
4	Europa
5	Oceanía

Tabla paises
pais_id	  nombre	  continente_id
1	        Nigeria	        1
2	        Brasil	        2
3	        China	          3
4	        Alemania	      4
5	        Australia	      5
6	        Argentina	      2
7	        Japón	          3
8	        Francia	        4
9	        Egipto	        1
10      	Nueva Zelanda	  5

Se pide crear una consulta que muestre toda la información de los países junto a su continente correspondiente. 
Observa dentro de los resultados que un país pertenece a un único continente, pero un continente puede tener varios países.
*/
SELECT p.pais_id, p.nombre, p.continente_id, c.continente_id, c.nombre
FROM continentes c
INNER JOIN paises p 
ON c.continente_id = p.continente_id

/*
Ejercicio 3

Se tiene una base de datos con un catálogo de objetos y colores. Cada objeto puede tener varios colores y cada color puede estar asociado a varios objetos.

Tabla objetos
objeto_id	  objeto
1	          Mesa
2	          Silla
3	          Cama

Tabla colores
color_id	color
1	        Rojo
2	        Azul
3	        Verde

Tabla objetos_colores
objetos_colores_id	objeto_id	color_id
1                 	1	        1
2	                  1	        2
3	                  2	        1
4	                  3	        3

Se pide hacer una consulta que muestre los objetos y sus colores correspondientes.
*/
SELECT *
FROM objetos o
JOIN objetos_colores o_c
ON o.objeto_id = o_c.objeto_id
JOIN colores c
ON o_c.color_id = c.color_id;

/*
Ejercicio 4

Se tiene un sistema que guarda información de profesores y alumnos. Cada profesor puede tener varios alumnos y cada alumno puede tener varios profesores. 
Para lograr esto se tiene una tabla profesores, una tabla alumnos y una tabla profesores_alumnos que relaciona a los profesores con los alumnos.

Tabla profesores
profesor_id	nombre
1	          Julia
2	          Pedro
3	          Luis

Tabla alumno
alumno_id	nombre
1	        Marta
2	        Elena
3	        Juan

Tabla profesores_alumnos
profesor_id	alumno_id
1	          1
Se pide agregar registros a la tabla profesores_alumnos para que Julia tenga a Elena como alumna y Pedro tenga a Juan como alumno. 
Luego mostrar los profesores con sus respectivos alumnos.

Ingresa los datos en el mismo orden pedido
*/
INSERT INTO profesores_alumnos (profesor_id, alumno_id) VALUES (1, 2), (2, 3);
SELECT *
FROM profesores p 
JOIN profesores_alumnos p_a 
ON p.profesor_id = p_a.profesor_id
JOIN alumnos a 
ON a.alumno_id = p_a.alumno_id;

/*
Ejercicio 5

Dada las siguientes tablas:

Tabla libros
libro_id	titulo
1	        El Quijote
2	        Don Juan
3	        Rayuela

Tabla usuarios
usuario_id	nombre
1	          Ana
2	          Pedro
3	          Luis

Tabla pedidos
libro_id	usuario_id
1	        1
1	        1
2	        2
2	        2
3	        1

Selecciona a todos los usuarios que han pedido el mismo libro más de una vez. 
Las columnas a mostrar son usuario_id, libro_id y veces donde veceses el número de veces que el usuario ha pedido el libro.

Pista: Agrupa por libro_id y usuario_id y cuenta cuantos registros hay por cada grupo. Reflexiona si debes ocupar where o having para filtrar los resultados.
*/
SELECT 
usuario_id, 
libro_id, 
COUNT(*) AS veces
FROM pedidos
GROUP BY usuario_id, libro_id
HAVING COUNT(*) > 1;

/*
Ejercicio

Dada las siguientes tablas:

Tabla Empleados
id	nombre	      puesto
1	  Juan Pérez	  Desarrollador
2	  María García	Analista
3	  Carlos López	Gerente

Tabla Proyectos
id	nombre	            departamento
1	  Sistema de Gestión	TI
2	  Desarrollo Web	    TI
3	  Análisis de Datos	  Data Science

Tabla Empleados_Proyectos
empleado_id	proyecto_id
1	          1
1	          2
2	          1
2	          3
3	          1
3	          2
3	          3

Crea una consulta que seleccione todos los empleados junto con la cantidad de proyectos asignados a cada uno, 
demostrando que no hay registros duplicados en la tabla intermedia. Las columnas de la consulta deben ser nombre, puesto y cantidad_proyectos.
*/
SELECT 
'Juan Pérez' AS nombre, 
'Desarrollador' AS puesto, 
COUNT(*) AS cantidad_proyectos
FROM 
Empleados_Proyectos;