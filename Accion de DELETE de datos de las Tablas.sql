
--ELiminar un cliente Especifico
DELETE FROM clientes WHERE cliente_ID = 2;

--ELiminar un libro del inventario
DELETE FROM libros WHERE libro_ID = 5;

--ELiminar un pedido (Eliminando los detalles asoiados

DELETE FROM detalle_pedidos WHERE pedido_ID = 3;

DELETE FROM pedidos WHERE pedido_ID = 3;
