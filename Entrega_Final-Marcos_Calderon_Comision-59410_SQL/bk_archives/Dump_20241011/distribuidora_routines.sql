CREATE DATABASE  IF NOT EXISTS `distribuidora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `distribuidora`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: distribuidora
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_cantidad_envios_por_cliente`
--

DROP TABLE IF EXISTS `vw_cantidad_envios_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_envios_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_envios_por_cliente` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `cantidad_envios`,
 1 AS `fecha_primer_envio`,
 1 AS `fecha_ultimo_envio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cantidad_ventas_por_vendedor`
--

DROP TABLE IF EXISTS `vw_cantidad_ventas_por_vendedor`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_ventas_por_vendedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_ventas_por_vendedor` AS SELECT 
 1 AS `id_vendedor`,
 1 AS `nombre_vendedor`,
 1 AS `cantidad_ventas`,
 1 AS `fecha_primera_venta`,
 1 AS `fecha_ultima_venta`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_cantidad_envios_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_envios_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_envios_por_cliente` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre_cliente`,count(`te`.`id_trans_terrestre`) AS `cantidad_envios`,min(`te`.`fecha_envio_tt`) AS `fecha_primer_envio`,max(`te`.`fecha_envio_tt`) AS `fecha_ultimo_envio` from (`cliente_empresa` `c` left join `transporte_terrestre` `te` on((`c`.`id_cliente` = `te`.`cliente`))) group by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cantidad_ventas_por_vendedor`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_ventas_por_vendedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_ventas_por_vendedor` AS select `v`.`id_vendedor` AS `id_vendedor`,concat(`v`.`nombre`,' ',`v`.`apellido`) AS `nombre_vendedor`,count(`ve`.`id_venta`) AS `cantidad_ventas`,min(`ve`.`fecha_venta`) AS `fecha_primera_venta`,max(`ve`.`fecha_venta`) AS `fecha_ultima_venta`,sum(`ve`.`precio_venta`) AS `total_ventas` from (`vendedor` `v` left join `venta` `ve` on((`v`.`id_vendedor` = `ve`.`id_vendedor`))) group by `v`.`id_vendedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'distribuidora'
--

--
-- Dumping routines for database 'distribuidora'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_promedio_ventas_vendedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_promedio_ventas_vendedor`(vendedor_id INT) RETURNS float
    READS SQL DATA
BEGIN
    DECLARE promedio FLOAT;
    
    SELECT AVG(ve.precio_venta) INTO promedio
    FROM distribuidora.venta ve
    WHERE ve.id_vendedor = vendedor_id
    GROUP BY ve.id_vendedor;
    
    RETURN promedio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_stock_total_de_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_stock_total_de_productos`() RETURNS int
    READS SQL DATA
BEGIN
    DECLARE total_stock INT;
    SET total_stock = (SELECT SUM(stock_producto) FROM distribuidora.almacen);
    RETURN total_stock;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_precio_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_precio_proveedor`(
    IN p_id_facturacion_proveedor INT,
    IN p_nuevo_precio_final INT
)
BEGIN
    -- Actualizar el precio de compra del proveedor
    UPDATE distribuidora.factura_proveedor
    SET precio_final = p_nuevo_precio_final
    WHERE id_facturacion_proveedor = p_id_facturacion_proveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_venta`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 13:04:29
