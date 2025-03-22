CREATE DATABASE Libreria;

USE Libreria;

--Crear tabla de Clientes
CREATE TABLE clientes (
	cliente_ID INT IDENTITY NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	telefono VARCHAR(15) NOT NULL,
	direccion VARCHAR(255) NOT NULL
)
GO

--Asignacion de llave primaria de tabla clientes
ALTER TABLE clientes
ADD CONSTRAINT PK_clientes PRIMARY KEY(cliente_ID)
GO

--Crear tabla de Libros
CREATE TABLE libros (
	libro_ID INT IDENTITY NOT NULL,
	titulo VARCHAR(150) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	precio DECIMAL(10,2) NOT NULL,
	stock INT NOT NULL
)
GO

--Asignacion de llave primaria de tabla libros
ALTER TABLE libros
ADD CONSTRAINT PK_libros PRIMARY KEY(libro_ID)
GO

--Crear tabla de pedidos
CREATE TABLE pedidos (
	pedido_ID INT IDENTITY NOT NULL,
	cliente_ID INT NOT NULL,
	fecha_pedido DATETIME NOT NULL,
	total DECIMAL(10,2) NOT NULL
)
GO

--Asignacion de llave primaria de tabla pedidos
ALTER TABLE pedidos
ADD CONSTRAINT PK_pedidos PRIMARY KEY(pedido_ID)
GO

--asignar la llave Foranea de la tabla clientes a la tabla pedidos
ALTER TABLE pedidos
ADD CONSTRAINT FK_pedidos_clientes FOREIGN KEY (cliente_ID) REFERENCES clientes(cliente_ID)
GO

--Crear tabla de detalle pedidos
CREATE TABLE detalle_pedidos (
	detalle_ID INT IDENTITY NOT NULL,
	pedido_ID INT NOT NULL,
	libro_ID INT NOT NULL,
	cantidad INT NOT NULL,
	precio_unitario DECIMAL(10,2) NOT NULL
)
GO

--Asignacion de llave primaria de tabla detalle pedidos
ALTER TABLE detalle_pedidos
ADD CONSTRAINT PK_detalle_pedidos PRIMARY KEY(detalle_ID)
GO

--asignar la llave Foranea de la tabla pedido a la tabla detalle pedido
ALTER TABLE detalle_pedidos
ADD CONSTRAINT FK_detalle_pedidos_pedido FOREIGN KEY (pedido_ID) REFERENCES pedidos(pedido_ID)
GO

--asignar la llave Foranea de la tabla libros a la tabla detalle pedido
ALTER TABLE detalle_pedidos
ADD CONSTRAINT FK_detalle_pedidos_libros FOREIGN KEY (libro_ID) REFERENCES libros(libro_ID)
GO
