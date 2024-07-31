CREATE DATABASE TRANSACCIONES_BANCO;

USE TRANSACCIONES_BANCO;

CREATE TABLE Transacciones (
	Nro_Movimiento	INT AUTO_INCREMENT NOT NULL PRIMARY KEY UNIQUE
,   Fecha	DATE NOT NULL
,	Importe	DECIMAL(12,2) NOT NULL
,	Medio_Pago	INT	NOT NULL
,	Codigo_Banco	INT	NOT NULL
,	Codigo 	INT NOT NULL
);

CREATE TABLE Proveedores (
	Nro_Proveedor	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	Raz_soc_Prov	VARCHAR(50)	NOT NULL
,	Correo	VARCHAR(50)
);

CREATE TABLE Clientes (
	Nro_Cliente	INT NOT NULL PRIMARY KEY	AUTO_INCREMENT
,	Raz_soc_Cliente	VARCHAR(50)	NOT NULL
,	Correo	VARCHAR(50)
);

CREATE TABLE Empleados (
	Legajo	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	Nombre_Apellido	VARCHAR(50) NOT NULL
,	Antiguedad INT
,	Sector VARCHAR(50)
,	Correo 	VARCHAR(50)
);

CREATE TABLE Bancos (
	Cod_Banco	INT NOT NULL	PRIMARY KEY
,	Nombre_Banco	VARCHAR(50)	NOT NULL
,	Oficial	VARCHAR (50)
);

CREATE TABLE Medios_de_Pago (
	Codigo_Pago	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	MEdio_Pago	VARCHAR(50)	NOT NULL
);

CREATE TABLE Facturas(
	Factura	INT NOT NULL PRIMARY KEY
,	Codigo	INT NOT NULL
,	Importe_factura	DECIMAL(12,2) NOT NULL
,	Producto	VARCHAR(50) NOT NULL
,	Cantidad	INT NOT NULL
);

CREATE TABLE Enlace_Transacciones_Proveedores_Facturas (
	Nro_Movimiento INT NOT NULL
,	Nro_Proveedor INT NOT NULL
,	Factura	INT NOT NULL
,  PRIMARY KEY (Nro_Movimiento, Nro_Proveedor,Factura)
);

CREATE TABLE Enlace_Transacciones_Clientes_Facturas (
	Nro_Movimiento INT NOT NULL
,	Nro_Cliente INT NOT NULL
,	Factura	INT NOT NULL
,  PRIMARY KEY (Nro_Movimiento, Nro_Cliente,Factura)
);

CREATE TABLE Enlace_Transacciones_Empleados (
	Nro_Movimiento INT NOT NULL
,	Legajo INT NOT NULL
,  PRIMARY KEY (Nro_Movimiento, Legajo)
);

ALTER TABLE Enlace_Transacciones_Proveedores_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Proveedores_Facturas_Transacciones
FOREIGN KEY (Nro_Movimiento) REFERENCES Transacciones(Nro_Movimiento);

ALTER TABLE Enlace_Transacciones_Proveedores_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Proveedores_Facturas_Proveedores
FOREIGN KEY (Nro_Proveedor) REFERENCES Proveedores(Nro_Proveedor);

ALTER TABLE Enlace_Transacciones_Proveedores_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Proveedores_Facturas_Facturas
FOREIGN KEY (Factura) REFERENCES Facturas(factura);

ALTER TABLE Enlace_Transacciones_Clientes_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Clientes_Facturas_Transacciones
FOREIGN KEY (Nro_Movimiento) REFERENCES Transacciones(Nro_Movimiento);

ALTER TABLE Enlace_Transacciones_Clientes_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Clientes_Facturas_Clientes
FOREIGN KEY (Nro_Cliente) REFERENCES Clientes(Nro_Cliente);

ALTER TABLE Enlace_Transacciones_Clientes_Facturas
ADD CONSTRAINT fk_Enlace_Transacciones_Clientes_Facturas_Facturas
FOREIGN KEY (Factura) REFERENCES Facturas(Factura);

ALTER TABLE Enlace_Transacciones_Empleados
ADD CONSTRAINT fk_Enlace_Transacciones_Empleados_Transacciones
FOREIGN KEY (Nro_Movimiento) REFERENCES Transacciones(Nro_Movimiento);

ALTER TABLE Enlace_Transacciones_Empleados
ADD CONSTRAINT fk_Enlace_Transacciones_Empleados_Empleados
FOREIGN KEY (Legajo) REFERENCES Empleados(Legajo);

ALTER TABLE transacciones
ADD CONSTRAINT FK_TRANSACCIONES_MEDIODEPAGO
FOREIGN KEY (Medio_Pago) REFERENCES medios_de_pago(Codigo_Pago)
;

ALTER TABLE transacciones
ADD CONSTRAINT FK_TRANSACCIONES_BANCOS
FOREIGN KEY (Codigo_Banco) REFERENCES bancos(Cod_Banco)
;
