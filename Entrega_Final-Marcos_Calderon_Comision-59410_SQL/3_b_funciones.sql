USE distribuidora;

-- Function conteo de stock total de productos

DELIMITER //

CREATE FUNCTION distribuidora.fn_stock_total_de_productos() 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total_stock INT;
    SET total_stock = (SELECT SUM(stock_producto) FROM distribuidora.almacen);
    RETURN total_stock;
END //

DELIMITER ;
-- Ejecutar Function
SELECT fn_stock_total_de_productos();

-- Function calcular el promedio de ventas para un vendedor específico.

DELIMITER //

CREATE FUNCTION distribuidora.fn_calcular_promedio_ventas_vendedor(vendedor_id INT)
RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE promedio FLOAT;
    
    SELECT AVG(ve.precio_venta) INTO promedio
    FROM distribuidora.venta ve
    WHERE ve.id_vendedor = vendedor_id
    GROUP BY ve.id_vendedor;
    
    RETURN promedio;
END //

DELIMITER ;

-- Calcular el promedio para un vendedor específico
SELECT fn_calcular_promedio_ventas_vendedor(112);

-- Calcular el promedio para todos los vendedores
SELECT id_vendedor, fn_calcular_promedio_ventas_vendedor(id_vendedor) AS promedio
FROM vendedor;