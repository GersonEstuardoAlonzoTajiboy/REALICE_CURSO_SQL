/*
Ejercicio 01.
Se tiene una tabla llamada productos, con las columnas id, nombre, precio y descuento. 
Selecciona todos los registros cuyo descuento sea mayor a 10.
*/
SELECT * FROM productos WHERE descuento > 10;

/*
Ejercico 02.
Se tiene una tabla llamada productos, con las columnas id, nombre, precio y descuento.
Selecciona todos los registros cuyo precio sea mayor a 200.
*/
SELECT * FROM productos WHERE precio > 200;

/*
Ejercicio 03.
Selecciona todos los registros de la tabla productos en los que el valor de la columna 'precio' sea mayor o igual a 50.
Si mostraras sólo los productos con precio a mayor a 50, se mostaría la Lámpara de escritorio?
*/
SELECT * FROM productos WHERE precio >= 50;

/*
Ejercicio 04.
Se tiene una tabla usuarios con las columnas id, nombre, apellido, email y telefono. 
Selecciona todas los registros de la tabla usuarios donde el valor de la columna id sea menor a 3.
*/
SELECT * FROM usuarios WHERE id < 3;

/*
Ejercicio 05.
Selecciona todos los registros de la tabla productos en los que el valor de la columna 'precio' sea menor o igual a 100.
*/
SELECT * FROM productos WHERE precio <= 100;

/*
Ejercicio 06.
Selecciona el nombre, precio y cantidad de la tabla productos cuya cantidad sea mayor a 6.
*/
SELECT nombre, precio, cantidad FROM productos WHERE cantidad > 6;

/*
Ejercicio 07.
Selecciona el nombre del usuario de la tabla usuarios con id igual a 2
*/
SELECT nombre FROM usuarios WHERE id = 2;

/*
Ejercicio 08.
Selecciona todas las filas de la tabla productos donde el nombre del producto sea 'Pantalón'.
*/
SELECT * FROM productos WHERE nombre = "Pantalón";

/*
Ejercicio 09.
Selecciona todos los productos de la tabla productos que tengan el nombre 'Silla de Oficina'.
Puedes probar con 'c' y observar que no obtendrás ningún resultado.
*/
SELECT * FROM productos WHERE nombre = "Silla de Oficina";

/*
Ejercicio 10.
Se tiene una tabla de usuarios con los campos id, nombre, apellido, email, teléfono y status. La columna status es de tipo booleano.
Selecciona todos los usuarios de la tabla usuarios cuyo status es activo.
*/
SELECT * FROM usuarios WHERE status = true;

/*
Ejercicio 11.
Selecciona todos los productos de la tabla productos que no están destacados.
*/
SELECT * FROM productos WHERE destacado = false;

/*
Ejercicio 12.
Se tiene una tabla de usuarios con los campos id, nombre, apellido, email y teléfono.
Selecciona todos los usuarios cuyo nombre es 'María' y su email es 'mariagarcia@hotmail.com' de la tabla de usuarios.
*/
SELECT * FROM usuarios WHERE nombre = "María" AND email = "mariagarcia@hotmail.com";

/*
Ejercicio 13.
Se tiene una tabla llamada productos que tiene los campos id, nombre, agotado y precio. La columna precio es de tipo Integer mientras que la columna agotado es de tipo Boolean.
Selecciona los productos de la tabla productos que estén agotados y tengan un precio mayor a 100.
*/
SELECT * FROM productos WHERE agotado = true AND precio > 100;

/*
Ejercicio 14.
Se tiene una tabla productos con los campos id, nombre, precio y descuento. El campo precio y el campo descuento son de tipo integer.
Selecciona todos los productos cuyo precio sea mayor a 1000 o su descuento sea igual a 20.
*/
SELECT * FROM productos WHERE precio > 100 OR descuento = 20;

/*
Ejercicio 15.
Se tiene una tabla clientes con los campos id, nombre, ciudad y saldo. La ciudad es de tipo texto, el saldo es número entero.
Selecciona aquellos clientes de la tabla clientes que sean de la ciudad 'Madrid' o que su saldo sea negativo.
*/
SELECT * FROM clientes WHERE ciudad = "Madrid" OR saldo < 0;

/*
Ejercicio 16.
Se tiene una tabla de productos con los campos id, nombre, precio y fecha_de_creación. El campo fecha_de_creacion es de tipo Date.
Selecciona todos los productos de la tabla productos que fueron creados después de '2021-05-01'.
*/
SELECT * FROM productos WHERE fecha_de_creación > '2021-05-01';

/*
Ejercicio 17.
Se tiene la tabla productos con los campos id, nombre y stock. Dentro de los registros hay 5 productos con distintos stocks como se muestra a continuación:

ID	NOMBRE	STOCK
1	Producto A	10
2	Producto B	25
3	Producto C	30
4	Producto D	40
5	Producto E	50
Selecciona todos los productos cuyo stock se encuentre entre 20 y 30.
*/
SELECT * FROM productos WHERE stock = 20 OR stock = 30;

/*
Ejercicio 18.
Se tiene una tabla usuarios con los campos id, nombre, apellido, email y teléfono. El campo nombre es de tipo texto.
Se pide seleccionar todos los usuarios cuyo apellido empiece con 'Ma'
*/
SELECT * FROM usuarios WHERE apellido LIKE 'Ma%';


/*
Ejercicio 19.
Selecciona todos los usuarios de la tabla usuarios cuyo nombre termine con la letra 'o'
*/
SELECT * FROM usuarios WHERE nombre LIKE '%O';

/* 
Ejercicio 20. 
Se tiene una tabla productos con id, nombre, precio y descuento, siendo descuento de tipo integer.
Selecciona todos los registros de la tabla productos cuyo campo descuento no sea nulo.
*/
SELECT * FROM productos WHERE descuento IS NOT NULL;

/*
Ejercicio
Se tiene una tabla usuarios con id, nombre, apellido, email y teléfono
Selecciona todos los usuarios que no tengan un email registrado en la tabla de usuarios.
*/
SELECT * FROM usuarios WHERE email IS NULL;
