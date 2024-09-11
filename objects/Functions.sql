DELIMITER //
CREATE FUNCTION sueldo_promedio_sector (sector VARCHAR(50))
RETURNS DECIMAL (12,2)
READS SQL DATA
BEGIN
	DECLARE sueldo_promedio DECIMAL (12,2);	
    SELECT AVG(facturas.importe_factura) INTO sueldo_promedio
    FROM facturas
    JOIN empleados ON facturas.codigo = empleados.legajo 
    WHERE empleados.sector = sector;
    RETURN sueldo_promedio;
END; //
DELIMITER ;	

DELIMITER //
CREATE FUNCTION ventas_por_fecha (fecha DATE)
RETURNS DECIMAL (12,2)
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE ventas DECIMAL (12,2);
    SELECT SUM(transacciones.importe) INTO ventas
    FROM transacciones
    Where transacciones.fecha = fecha;
    RETURN ventas;
END; //
DELIMITER ;
