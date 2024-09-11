CREATE DATABASE TRANSACCIONES_BANCO;

USE TRANSACCIONES_BANCO;

CREATE TABLE transacciones (
	nro_movimiento	INT AUTO_INCREMENT NOT NULL PRIMARY KEY UNIQUE
,   	fecha	DATE NOT NULL
,	importe	DECIMAL(12,2) NOT NULL
,	medio_pago	INT	NOT NULL
,	codigo_banco	INT	NOT NULL
,	codigo 	INT NOT NULL
);

CREATE TABLE proveedores (
	nro_proveedor	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	raz_soc_prov	VARCHAR(50)	NOT NULL
,	correo	VARCHAR(50)
);

CREATE TABLE clientes (
	nro_cliente	INT NOT NULL PRIMARY KEY	AUTO_INCREMENT
,	raz_soc_cliente	VARCHAR(50)	NOT NULL
,	correo	VARCHAR(50)
);

CREATE TABLE empleados (
	legajo	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	nombre_apellido	VARCHAR(50) NOT NULL
,	antiguedad INT
,	sector VARCHAR(50)
,	correo 	VARCHAR(50)
);

CREATE TABLE bancos (
	cod_banco	INT NOT NULL	PRIMARY KEY
,	nombre_banco	VARCHAR(50)	NOT NULL
,	oficial	VARCHAR (50)
);

CREATE TABLE medios_de_pago (
	codigo_pago	INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,	medio_pago	VARCHAR(50)	NOT NULL
);

CREATE TABLE facturas(
	factura	INT NOT NULL PRIMARY KEY
,	codigo	INT NOT NULL
,	importe_factura	DECIMAL(12,2) NOT NULL
,	producto	VARCHAR(50) NOT NULL
,	cantidad	INT NOT NULL
);

CREATE TABLE enlace_transacciones_proveedores_facturas (
	nro_movimiento INT NOT NULL
,	nro_proveedor INT NOT NULL
,	factura	INT NOT NULL
,  PRIMARY KEY (nro_movimiento, nro_proveedor,factura)
);

CREATE TABLE enlace_transacciones_clientes_facturas (
	nro_movimiento INT NOT NULL
,	nro_cliente INT NOT NULL
,	factura	INT NOT NULL
,  PRIMARY KEY (nro_movimiento, nro_cliente,factura)
);

CREATE TABLE enlace_transacciones_empleados (
	nro_movimiento INT NOT NULL
,	legajo INT NOT NULL
,  PRIMARY KEY (nro_movimiento, legajo)
);

ALTER TABLE enlace_transacciones_proveedores_facturas
ADD CONSTRAINT fk_enlace_transacciones_proveedores_facturas_transacciones
FOREIGN KEY (nro_movimiento) REFERENCES transacciones(nro_movimiento);

ALTER TABLE enlace_transacciones_proveedores_facturas
ADD CONSTRAINT fk_enlace_transacciones_proveedores_facturas_proveedores
FOREIGN KEY (nro_proveedor) REFERENCES proveedores(nro_proveedor);

ALTER TABLE enlace_transacciones_proveedores_facturas
ADD CONSTRAINT fk_enlace_transacciones_proveedores_facturas_facturas
FOREIGN KEY (factura) REFERENCES facturas(factura);

ALTER TABLE enlace_transacciones_clientes_facturas
ADD CONSTRAINT fk_enlace_transacciones_clientes_facturas_transacciones
FOREIGN KEY (nro_movimiento) REFERENCES transacciones(nro_movimiento);

ALTER TABLE enlace_transacciones_clientes_facturas
ADD CONSTRAINT fk_enlace_transacciones_clientes_facturas_clientes
FOREIGN KEY (nro_cliente) REFERENCES clientes(nro_cliente);

ALTER TABLE enlace_transacciones_clientes_facturas
ADD CONSTRAINT fk_enlace_transacciones_clientes_facturas_facturas
FOREIGN KEY (factura) REFERENCES facturas(factura);

ALTER TABLE enlace_transacciones_empleados
ADD CONSTRAINT fk_enlace_transacciones_empleados_transacciones
FOREIGN KEY (nro_movimiento) REFERENCES transacciones(nro_movimiento);

ALTER TABLE enlace_transacciones_empleados
ADD CONSTRAINT fk_enlace_transacciones_empleados_empleados
FOREIGN KEY (legajo) REFERENCES empleados(legajo);

ALTER TABLE transacciones
ADD CONSTRAINT fk_transacciones_mediodepago
FOREIGN KEY (medio_pago) REFERENCES medios_de_pago(codigo_pago)
;

ALTER TABLE transacciones
ADD CONSTRAINT fk_transacciones_bancos
FOREIGN KEY (codigo_banco) REFERENCES bancos(cod_banco)
;
