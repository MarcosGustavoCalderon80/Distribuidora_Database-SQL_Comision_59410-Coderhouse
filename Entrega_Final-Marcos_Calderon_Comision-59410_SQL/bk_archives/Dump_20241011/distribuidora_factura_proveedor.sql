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
-- Table structure for table `factura_proveedor`
--

DROP TABLE IF EXISTS `factura_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_proveedor` (
  `id_facturacion_proveedor` int NOT NULL AUTO_INCREMENT,
  `proveedor` int NOT NULL,
  `numero_factura` int NOT NULL,
  `numero_remito` int NOT NULL,
  `id_producto` int NOT NULL,
  `descuento_mayorista` int NOT NULL,
  `precio_final` int NOT NULL,
  `cantidad_bultos` int NOT NULL,
  `peso_envio` int NOT NULL,
  `valor_declarado` int NOT NULL,
  PRIMARY KEY (`id_facturacion_proveedor`),
  UNIQUE KEY `numero_factura` (`numero_factura`),
  UNIQUE KEY `numero_remito` (`numero_remito`),
  KEY `proveedor` (`proveedor`),
  CONSTRAINT `factura_proveedor_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `proveedores_fabricantes` (`id_proveedores_f`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_proveedor`
--

LOCK TABLES `factura_proveedor` WRITE;
/*!40000 ALTER TABLE `factura_proveedor` DISABLE KEYS */;
INSERT INTO `factura_proveedor` VALUES (1,1,1001,2001,122,10,1500,10,100,1500),(2,2,1002,2002,233,15,2000,15,150,2000),(3,3,1003,2003,344,20,2500,20,200,2500),(4,4,1004,2004,455,25,3000,25,250,3000),(5,5,1005,2005,566,30,3500,30,300,3500),(6,6,1006,2006,677,5,4000,35,350,4000),(7,7,1007,2007,788,10,4500,40,400,4500),(8,8,1008,2008,899,15,5000,45,450,5000),(9,9,1009,2009,900,20,5500,50,500,5500),(10,10,1010,2010,1010,25,6000,55,550,6000),(11,11,1011,2011,1111,30,6500,60,600,6500),(12,12,1012,2012,1212,5,7000,65,650,7000),(13,13,1013,2013,1313,10,7500,70,700,7500),(14,14,1014,2014,1414,15,8000,75,750,8000),(15,15,1015,2015,1515,20,8500,80,800,8500);
/*!40000 ALTER TABLE `factura_proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_trigger_precio_producto` AFTER UPDATE ON `factura_proveedor` FOR EACH ROW BEGIN
    IF NEW.precio_final <> OLD.precio_final THEN
        INSERT INTO distribuidora.historial_precios (id_producto, precio_anterior, precio_nuevo)
        VALUES (NEW.id_producto, OLD.precio_final, NEW.precio_final);
    END IF;
END */;;
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

-- Dump completed on 2024-10-11 13:04:28
