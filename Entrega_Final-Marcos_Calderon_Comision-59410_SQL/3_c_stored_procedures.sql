USE distribuidora;

-- Procedure: Registrar una nueva venta en la tabla de "venta"

DELIMITER //

CREATE PROCEDURE distribuidora.sp_registrar_venta(
    IN p_tipo VARCHAR(50),
    IN p_precio_venta INT,
    IN p_id_vendedor INT,
    IN p_empl_almacen INT,
    IN p_fecha_venta DATETIME,
    IN p_id_producto INT
)
BEGIN
    DECLARE v_stock_actual INT;

    -- Verificar el stock actual del producto
    SELECT stock_producto INTO v_stock_actual
    FROM distribuidora.almacen
    WHERE id_almacen = (SELECT almacen FROM productos WHERE id_productos = p_id_producto);

    -- Si hay stock disponible, registrar la venta
    IF v_stock_actual > 0 THEN
        -- Insertar la nueva venta
        INSERT INTO distribuidora.venta (tipo, id_productos, precio_venta, id_vendedor, empl_almacen, fecha_venta)
        VALUES (p_tipo, p_id_producto, p_precio_venta, p_id_vendedor, p_empl_almacen, p_fecha_venta);

        -- Actualizar el stock del producto
        UPDATE distribuidora.almacen
        SET stock_producto = stock_producto - 1
        WHERE id_almacen = (SELECT almacen FROM productos WHERE id_productos = p_id_producto);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock insuficiente para realizar la venta';
    END IF;
END //

DELIMITER ;

-- Procedure: Actualizar el precio de compra de un producto de un proveedor
-- Obs. Necesitamos ingresar el id de factura_proveedor y el nuevo valor (Ejemplo del 1 al 15 y un monto nuevo).

DELIMITER //

CREATE PROCEDURE distribuidora.sp_actualizar_precio_proveedor(
    IN p_id_facturacion_proveedor INT,
    IN p_nuevo_precio_final INT
)
BEGIN
    -- Actualizar el precio de compra del proveedor
    UPDATE distribuidora.factura_proveedor
    SET precio_final = p_nuevo_precio_final
    WHERE id_facturacion_proveedor = p_id_facturacion_proveedor;
END //

DELIMITER ;


