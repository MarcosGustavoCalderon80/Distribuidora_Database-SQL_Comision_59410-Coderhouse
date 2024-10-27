USE distribuidora;

-- View cantidad de ventas por vendedor

CREATE VIEW distribuidora.vw_cantidad_ventas_por_vendedor AS
SELECT 
    v.id_vendedor,
    CONCAT(v.nombre, ' ', v.apellido) AS nombre_vendedor,
    COUNT(ve.id_venta) AS cantidad_ventas,
    MIN(ve.fecha_venta) AS fecha_primera_venta,
    MAX(ve.fecha_venta) AS fecha_ultima_venta,
	SUM(ve.precio_venta) AS total_ventas
FROM 
    distribuidora.vendedor v
LEFT JOIN 
    distribuidora.venta ve ON v.id_vendedor = ve.id_vendedor
GROUP BY 
    v.id_vendedor;

-- View cantidad de ventas por clientes

CREATE VIEW distribuidora.vw_cantidad_envios_por_cliente AS
SELECT 
    c.id_cliente,
    c.nombre AS nombre_cliente,
    COUNT(te.id_trans_terrestre) AS cantidad_envios,
    MIN(te.fecha_envio_tt) AS fecha_primer_envio,
    MAX(te.fecha_envio_tt) AS fecha_ultimo_envio
    FROM 
    distribuidora.cliente_empresa c
LEFT JOIN 
    distribuidora.transporte_terrestre te ON c.id_cliente = te.cliente
GROUP BY 
    c.id_cliente;