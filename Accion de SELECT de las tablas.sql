
--obtener los clientes registrados
select * from clientes


--listar los libros disponibles en la tienda
select * from libros WHERE stock > 0;

--consultar los pedidos de un cliente especifico
select * from pedidos where cliente_ID = 1

--mostrar los detalles de un pedido determinado
select * from detalle_pedidos where pedido_ID = 2;

