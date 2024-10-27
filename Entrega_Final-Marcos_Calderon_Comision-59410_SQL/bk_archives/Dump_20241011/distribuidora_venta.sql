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
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_productos` int NOT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio_venta` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `empl_almacen` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `empl_almacen` (`empl_almacen`),
  KEY `id_productos` (`id_productos`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`empl_almacen`) REFERENCES `empleado_almacen` (`id_emp_almacen`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,122,'2023-01-10 10:00:00','Venta A',1000,101,1),(2,233,'2023-01-12 11:00:00','Venta B',1500,102,2),(3,344,'2023-01-15 14:00:00','Venta C',2000,103,3),(4,455,'2023-01-20 09:30:00','Venta D',2500,104,4),(5,566,'2023-01-25 16:45:00','Venta E',3000,105,5),(6,677,'2023-02-01 13:15:00','Venta F',3500,101,6),(7,788,'2023-02-05 08:00:00','Venta G',4000,106,7),(8,899,'2023-02-10 10:30:00','Venta H',4500,103,8),(9,900,'2023-02-15 15:00:00','Venta I',5000,101,9),(10,1010,'2023-02-20 12:00:00','Venta J',5500,106,10),(11,1111,'2023-02-25 17:00:00','Venta K',6000,105,11),(12,1212,'2023-03-01 09:00:00','Venta L',6500,111,12),(13,1313,'2023-03-05 11:30:00','Venta M',7000,115,13),(14,1414,'2023-03-10 14:15:00','Venta N',7500,112,14),(15,1515,'2023-03-15 13:45:00','Venta O',8000,112,15);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_trigger_venta` AFTER INSERT ON `venta` FOR EACH ROW BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Aquí puedes manejar el error, por ejemplo, registrarlo en una tabla de errores
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error al registrar en venta_log';
    END;

    INSERT INTO distribuidora.venta_log (id_vendedor, id_producto, tipo, precio_venta, fecha_venta)
    VALUES (NEW.id_vendedor, NEW.id_productos, NEW.tipo, NEW.precio_venta, NEW.fecha_venta);
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

-- Dump completed on 2024-10-11 13:04:27
