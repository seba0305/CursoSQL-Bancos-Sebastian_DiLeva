DELIMITER //
CREATE TRIGGER trigger_actualizar_tablas_enlace
AFTER INSERT ON transacciones
FOR EACH ROW
BEGIN
    INSERT INTO Enlace_Transacciones_Clientes (Nro_Movimiento, Nro_Cliente, Factura)
    VALUES (NEW.Nro_Movimiento, NEW.Codigo, (
        SELECT Factura
        FROM facturas
        WHERE codigo = NEW.Codigo
    ));

    INSERT INTO Enlace_Transacciones_Empleados (Nro_Movimiento, Legajo_Empleado)
    VALUES (NEW.Nro_Movimiento, (
        SELECT Legajo
        FROM empleados
        WHERE codigo = NEW.Codigo
    ));
    INSERT INTO Enlace_Transacciones_Productos (Nro_Movimiento, Codigo_Producto)
    VALUES (NEW.Nro_Movimiento, (
        SELECT Codigo_Producto
        FROM productos
        WHERE codigo = NEW.Codigo
    ));
END; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizar_total_vendido
AFTER INSERT ON facturas
FOR EACH ROW
BEGIN
    UPDATE clientes
    SET total_vendido = (
        SELECT SUM(facturas.Importe_factura)
        FROM facturas
        WHERE facturas.codigo = clientes.Nro_Cliente
    )
    WHERE Nro_Cliente = NEW.codigo;
END; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trigger_actualizar_sueldo_promedio
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
    UPDATE sectores
    SET sueldo_promedio = (
        SELECT AVG(facturas.importe_factura)
        FROM facturas
        JOIN empleados ON facturas.codigo = empleados.legajo
        WHERE empleados.sector = sectores.sector
    )
    WHERE sector = NEW.sector;
END; //
DELIMITER ;
