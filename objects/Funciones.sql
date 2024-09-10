DELIMITER //
CREATE FUNCTION Sueldo_Promedio_sector (Sector VARCHAR(50))
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
CREATE FUNCTION Ventas_por_fecha (fecha DATE)
RETURNS DECIMAL (12,2)
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE Ventas DECIMAL (12,2);
    SELECT SUM(transacciones.importe) INTO Ventas
    FROM transacciones
    Where transacciones.fecha = Fecha;
    RETURN Ventas;
END; //
DELIMITER ;
