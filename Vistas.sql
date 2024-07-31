CREATE VIEW View_Mejores_Clientes AS
SELECT clientes.Raz_soc_Cliente, SUM(facturas.Importe_factura) AS total_vendido
FROM clientes
LEFT JOIN facturas ON clientes.Nro_Cliente = facturas.codigo
GROUP BY clientes.Raz_soc_Cliente
ORDER BY total_vendido DESC
LIMIT 5;

CREATE VIEW View_Proveedores_Mayores_compras AS
SELECT proveedores.Raz_soc_Prov, Producto, SUM(facturas.Importe_factura) AS total_comprado
FROM proveedores
LEFT JOIN facturas ON proveedores.Nro_proveedor = facturas.codigo
GROUP BY proveedores.Raz_soc_Prov,producto
ORDER BY total_comprado DESC
LIMIT 5;

CREATE VIEW View_Bancos_mas_usados AS
SELECT bancos.Nombre_Banco, sum(transacciones.importe) AS Bancos_mas_usados
FROM Bancos
JOIN transacciones ON bancos.cod_Banco = transacciones.Codigo_banco
GROUP BY bancos.Nombre_Banco
ORDER BY bancos_mas_usados DESC;

CREATE VIEW View_top_medios_pago AS
SELECT medios_de_pago.Medio_pago, COUNT(transacciones.medio_Pago) AS top_medios_pago
FROM medios_de_pago
JOIN transacciones ON medios_de_pago.Codigo_pago = transacciones.Medio_pago
GROUP BY Medio_pago ;
