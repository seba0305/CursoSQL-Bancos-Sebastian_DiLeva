DELIMITER //
CREATE PROCEDURE VisualizarTransaccionYFactura(
    IN p_Nro_Movimiento INT
)
BEGIN
    SELECT transacciones.Nro_Movimiento,transacciones.Fecha,transacciones.Importe,medios_de_pago.Medio_Pago,bancos.Nombre_Banco,transacciones.Codigo
    FROM Transacciones
    JOIN Medios_de_Pago ON transacciones.Medio_Pago = medios_de_pago.Codigo_Pago
    JOIN Bancos ON transacciones.Codigo_Banco = bancos.Cod_Banco
    WHERE transacciones.Nro_Movimiento = p_Nro_Movimiento;

    SELECT 
        facturas.Factura, 
        facturas.Codigo, 
        facturas.Importe_factura, 
        facturas.Producto, 
        facturas.Cantidad
    FROM Facturas
    WHERE facturas.Factura IN (
        SELECT Factura 
        FROM Enlace_Transacciones_Clientes_Facturas 
        WHERE Nro_Movimiento = p_Nro_Movimiento
        UNION
        SELECT Factura 
        FROM Enlace_Transacciones_Proveedores_Facturas 
        WHERE Nro_Movimiento = p_Nro_Movimiento
    );
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE VerificarAntiguedadEmpleado(
    IN 	p_Legajo INT,
    IN 	p_antiguedad_deseada INT,
    OUT p_Mensaje VARCHAR(50)
)
BEGIN
    DECLARE antiguedadEmpleado INT;
    SELECT Antiguedad INTO antiguedadEmpleado
    FROM Empleados
    WHERE Legajo = p_Legajo;
    IF antiguedadEmpleado < p_antiguedad_deseada THEN
        SET p_Mensaje = 'Menor antiguedad';
    ELSE
        SET p_Mensaje = 'Mayor antiguedad';
    END IF;
END //
DELIMITER ;
