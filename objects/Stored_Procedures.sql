DELIMITER //
CREATE PROCEDURE visualizar_transaccion_factura(
    IN p_nro_movimiento INT
)
BEGIN
    SELECT transacciones.nro_movimiento,transacciones.fecha,transacciones.importe,medios_de_pago.medio_pago,bancos.nombre_banco,transacciones.codigo
    FROM transacciones
    JOIN medios_de_pago ON transacciones.medio_pago = medios_de_pago.codigo_pago
    JOIN bancos ON transacciones.codigo_banco = bancos.cod_banco
    WHERE transacciones.nro_movimiento = p_nro_movimiento;

    SELECT 
        facturas.factura, 
        facturas.codigo, 
        facturas.importe_factura, 
        facturas.producto, 
        facturas.cantidad
    FROM facturas
    WHERE facturas.factura IN (
        SELECT factura 
        FROM enlace_transacciones_clientes_facturas 
        WHERE nro_movimiento = p_nro_movimiento
        UNION
        SELECT factura 
        FROM enlace_transacciones_proveedores_facturas 
        WHERE nro_movimiento = p_nro_movimiento
    );
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE verificar_antiguedad_empleado(
    IN 	p_legajo INT,
    IN 	p_antiguedad_deseada INT,
    OUT p_mensaje VARCHAR(50)
)
BEGIN
    DECLARE antiguedad_empleado INT;
    SELECT antiguedad INTO antiguedad_empleado
    FROM empleados
    WHERE legajo = p_legajo;
    IF antiguedad_empleado < p_antiguedad_deseada THEN
        SET p_mensaje = 'Menor antiguedad';
    ELSE
        SET p_mensaje = 'Mayor antiguedad';
    END IF;
END //
DELIMITER ;
