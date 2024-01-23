/*
Ejercicio 1.
Selecciona los primeros 3 usuarios de la tabla de usuarios.
*/
SELECT * FROM usuarios LIMIT 3;

/*
Ejercicio 2. 
Se tiene una tabla de puntajes con las columnas id y puntaje. 
Utiliza lo aprendido para obtener el puntaje más alto de la tabla utilizando ORDER BY y LIMIT
*/
SELECT puntaje FROM puntajes ORDER BY puntaje DESC LIMIT 1;

/*
Ejercicio 3. 
Obtener el nombre del concierto con más entradas vendidas
Se tiene una base de datos con la tabla conciertos en la cual se almacena información sobre cada concierto, 
incluyendo el nombre del concierto y la cantidad de entradas vendidas. 
Los datos dentro de la base de datos corresponden a la siguiente tabla.

NOMBRE_CONCIERTO	ENTRADAS_VENDIDAS
Concierto A	150
Concierto B	200
Concierto C	180
Concierto D	250

Encuentra el nombre del concierto que ha vendido la mayor cantidad de entradas (utiliza ORDER BY y LIMIT).
*/
SELECT nombre_concierto, entradas_vendidas FROM conciertos ORDER BY entradas_vendidas DESC LIMIT 1;
