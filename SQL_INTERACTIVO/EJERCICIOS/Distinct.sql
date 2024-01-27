/*
Ejercicio 1.
Prueba en el editor la misma instrucción aprendida para ver cual sería el resultado de la consulta.
*/
SELECT DISTINCT color AS color_unico FROM colores;

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

Crea una consulta que nos muestre cada correo una única vez. La columa mostrada debe llamarse correo_unico
*/
SELECT DISTINCT correo AS correo_unico FROM usuarios;

/*
Ejercicio 3.
Utilizando la misma tabla de ventas previamente utilizada, 
selecciona todos los meses distintos, 
asignándole a la columna el alias "mes_unico".
*/
SELECT DISTINCT STRFTIME('%m', fecha_venta) AS mes_unico FROM ventas;

/*
Ejercicio 4.
Se tiene la tabla usuarios con la siguiente información:

ID	NOMBRE	APELLIDO	EMAIL	                    TELEFONO
1	  Juan	  Pérez	    juanperez@gmail.com	      555-1234
2	  María	  García	  mariagarcia@hotmail.com	  555-5678
3	  Pedro	  López	    pedrolopez@yahoo.com	    555-5678
4	  Lucía	  Sánchez	  luciasanchez@outlook.com	555-5555
5	  Jorge	  Martínez	jorgemartinez@gmail.com	  555-5678

Crea una consulta que muestre los teléfonos únicos de la tabla. La columna mostrada debe llamarse telefonos_unicos
*/
SELECT COUNT(DISTINCT telefono) AS telefonos_unicos FROM usuarios;

/*
Ejercicio 5.
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

Crea una consulta para contestar cuantos correos únicos existen en la tabla. La columna resultante debe llamarse correos_cant
*/
SELECT COUNT(DISTINCT correo) AS correos_cant FROM usuarios;

/*
Ejercicio 6.
Para la siguiente tabla "productos" deseamos obtener todas las combinaciones únicas de "Categoria" y "Precio"

NOMBRE	      CATEGORIA	    PRECIO
Laptop	      Electrónica	  1000
Teléfono	    Electrónica	  500
Camiseta	    Ropa	        20
Pantalón	    Ropa	        40
Auriculares	  Electrónica	  50
Libro	        Libros	      15
Mochila	      Accesorios	  30
*/
SELECT DISTINCT categoria, precio FROM productos;
