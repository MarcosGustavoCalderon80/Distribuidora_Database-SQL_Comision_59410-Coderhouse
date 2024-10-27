USE distribuidora;

-- Trigger Este trigger se activará después de que se inserte una nueva venta y registrará el evento en la tabla de log llamada venta_log

DELIMITER //

CREATE TRIGGER distribuidora.after_insert_trigger_venta
AFTER INSERT ON distribuidora.venta
FOR EACH ROW
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Aquí puedes manejar el error, por ejemplo, registrarlo en una tabla de errores
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error al registrar en venta_log';
    END;

    INSERT INTO distribuidora.venta_log (id_vendedor, id_producto, tipo, precio_venta, fecha_venta)
    VALUES (NEW.id_vendedor, NEW.id_productos, NEW.tipo, NEW.precio_venta, NEW.fecha_venta);
END //

DELIMITER ;

-- Trigger se genera un registro nuevo en la tabla historial_precios cuando cambia el precio de un producto en la tabla factura_proveedor.

DELIMITER //

CREATE TRIGGER distribuidora.after_update_trigger_precio_producto
AFTER UPDATE ON distribuidora.factura_proveedor
FOR EACH ROW
BEGIN
    IF NEW.precio_final <> OLD.precio_final THEN
        INSERT INTO distribuidora.historial_precios (id_producto, precio_anterior, precio_nuevo)
        VALUES (NEW.id_producto, OLD.precio_final, NEW.precio_final);
    END IF;
END;

//

DELIMITER ;