

--Insertar 3 datos en la tabla clientes

INSERT INTO clientes (nombre, correo, telefono, direccion)
VALUES
('Manuel Perez', 'manuel@gmail.com', '6596 3254', 'Colonia Prados de la Costa'), 
('Jose Lopez', 'jose@gmail.com', '4235 9531', 'Colonia Hunapu'), 
('Karilin Gomez', 'karilin@gmail.com', '3524 4528', 'Colonia Vistas de Cecilia')
GO

--Insertar 5 datos en la tabla libros

INSERT INTO libros (titulo, autor, precio, stock)
VALUES
('Harry Potter y la piedra Filosofal', 'J.K. Rowling', 54.99, 15), 
('Don Quijote de la Mancha', 'Miguel de Cervantes', 30.00, 8), 
('Alicia en el país de las maravillas', 'Lewis Carroll', 40.99, 18), 
('El principito', 'Antoine de Saint-Exupéry', 35.99, 6), 
('Harry Potter y las reliquias de la muerte', 'J.K. Rowling', 59.99, 4);
GO
--Insertar 2 datos en la tabla pedidos

INSERT INTO pedidos (cliente_ID, fecha_pedido, total) 
VALUES 
(1, '2025-03-16 14:30:00', 136.97),  --pedido hecho por manuel perez
(2, '2025-03-17 13:35:00', 65.99)	--pedido hecho por karilin Gomez
GO

--Insertar datos en la tabla detalle_pedidos de los libros comprados

INSERT INTO detalle_pedidos (pedido_ID, libro_ID, cantidad, precio_unitario)  
VALUES  
(2, 1, 1, 54.99),  -- Pedido 1: 1 libro "Harry Potter y la piedra Filosofal"  
(2, 3, 2, 40.99),  -- Pedido 1: 2 libros "Alicia en el país de las maravillas"  
(3, 2, 1, 30.00),  -- Pedido 2: 1 libro "Don Quijote de la Mancha"  
(3, 4, 1, 35.99);  -- Pedido 2: 1 libro "El principito"  
GO