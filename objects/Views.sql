CREATE VIEW view_mejores_clientes AS
SELECT clientes.raz_soc_cliente, SUM(facturas.importe_factura) AS total_vendido
FROM clientes
LEFT JOIN facturas ON clientes.nro_cliente = facturas.codigo
GROUP BY clientes.raz_soc_cliente
ORDER BY total_vendido DESC
LIMIT 5;

CREATE VIEW view_proveedores_mayores_compras AS
SELECT proveedores.raz_soc_prov, producto, SUM(facturas.importe_factura) AS total_comprado
FROM proveedores
LEFT JOIN facturas ON proveedores.nro_proveedor = facturas.codigo
GROUP BY proveedores.raz_soc_prov,producto
ORDER BY total_comprado DESC
LIMIT 5;

CREATE VIEW view_bancos_mas_usados AS
SELECT bancos.nombre_banco, sum(transacciones.importe) AS bancos_mas_usados
FROM bancos
JOIN transacciones ON bancos.cod_banco = transacciones.codigo_banco
GROUP BY bancos.nombre_banco
ORDER BY bancos_mas_usados DESC;

CREATE VIEW view_top_medios_pago AS
SELECT medios_de_pago.medio_pago, COUNT(transacciones.medio_Pago) AS top_medios_pago
FROM medios_de_pago
JOIN transacciones ON medios_de_pago.codigo_pago = transacciones.medio_pago
GROUP BY medio_pago ;
