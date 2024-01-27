/*
Ejercicio 1.
Se tiene una tabla llamada tareas con las siguientes columnas: 
"id" (identificador único), "descripcion" (descripción de la tarea) y "fecha_limite" (fecha límite para completar la tarea).
Obtén la descripción de todas las tareas que tengan fecha_limite igual a la fecha actual .
*/
SELECT descripcion FROM tareas WHERE fecha_limite = DATE();

/*
Ejercicio 2.
Se tiene una tabla de tareas con los campos id, descripcion y fecha_limite. 
Se pide seleccionar todos los campos de las tareas que tienen como fecha límite el día de mañana.
*/
SELECT * FROM tareas WHERE fecha_limite = DATE('now', '1 day');

/*
Ejercicio 3.
Supongamos que tenemos una tabla llamada ganancias con las columnas 
"id" (identificador único), "fecha" (fecha de registro) y "monto" (ganancia del día).
Muestra el monto correspondiente al día de ayer.
*/
SELECT monto FROM ganancias WHERE fecha = DATE('now', '-1 day');

/*
Ejercicio 4.
Dada una tabla ventas con las columnas monto y fecha_venta, 
crea una consulta que muestre únicamente el monto y el año de la venta. 
La columna que muestre el año de la venta debe llamarse año_venta
*/
SELECT monto, STRFTIME('%Y', fecha_venta) AS año_venta FROM ventas;

/*
Ejercicio 5.
Dada la tabla ventas previamente presentada con las columnas monto y fecha_venta, 
crea una consulta que muestre una tabla con el monto, el mes de la venta y el año de la venta, en ese mismo orden. 
La columna para el mes de la venta debe llamarse mes_venta y aquella para el año de la venta debe llamarse año_venta
*/
SELECT monto, STRFTIME('%m', fecha_venta) AS mes_venta, STRFTIME('%Y', fecha_venta) AS año_venta FROM ventas;

/*
Ejercicio 6.
Dada la tabla ventas con las columnas monto y fecha_venta, crea una consulta que muestre las siguientes dos columnas:
Monto
El mes y año de la fecha de venta. Esta columna debe llamarse año_mes

ID_VENTA	MONTO	FECHA_VENTA
1	         200	2010-01-15
2	         150	2011-02-20
3	         300	2012-03-10
4	         250	2013-04-05
5	         100	2014-05-25
6	         350	2015-06-18
7	         400	2015-07-22
8	         180	2015-08-09
9	         220	2018-09-30
10	       275	2019-10-11
*/
SELECT monto, STRFTIME('%Y-%m', fecha_venta) AS año_mes FROM ventas;

/*
Ejercicio 7.
Dada una tabla ventas con las columnas monto y fecha_venta, selecciona toda la información de las ventas del 2015
*/
SELECT * FROM ventas WHERE STRFTIME('%Y', fecha_venta) = '2015';
