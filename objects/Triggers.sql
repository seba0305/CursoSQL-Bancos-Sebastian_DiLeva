DELIMITER //
CREATE TRIGGER trigger_actualizar_tablas_enlace
AFTER INSERT ON transacciones
FOR EACH ROW
BEGIN
    INSERT INTO enlace_transacciones_clientes (nro_movimiento, nro_cliente, factura)
    VALUES (new.nro_movimiento, new.codigo, (
        SELECT factura
        FROM facturas
        WHERE codigo = new.codigo
    ));

    INSERT INTO enlace_transacciones_empleados (nro_movimiento, legajo_empleado)
    VALUES (new.nro_movimiento, (
        SELECT legajo
        FROM empleados
        WHERE codigo = new.codigo
    ));
    INSERT INTO enlace_transacciones_productos (nro_movimiento, codigo_producto)
    VALUES (new.nro_movimiento, (
        SELECT codigo_producto
        FROM productos
        WHERE codigo = new.codigo
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
        SELECT SUM(facturas.importe_factura)
        FROM facturas
        WHERE facturas.codigo = clientes.nro_cliente
    )
    WHERE nro_cliente = new.codigo;
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
    WHERE sector = new.sector;
END; //
DELIMITER ;
