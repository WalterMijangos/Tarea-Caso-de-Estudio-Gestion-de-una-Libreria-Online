
--Modificar la direccion de un cliente
UPDATE clientes SET direccion = 'Colonia La Dignidad' WHERE cliente_ID=2;

--Cambiar el precio de un libro
UPDATE libros SET precio = 40.00 WHERE libro_ID=2;


--Actualizar la cantidad de un libro en un pedido.
UPDATE detalle_pedidos SET cantidad = 3 WHERE pedido_ID=2 AND libro_ID=1;
