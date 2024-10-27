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
-- Table structure for table `proveedores_fabricantes`
--

DROP TABLE IF EXISTS `proveedores_fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_fabricantes` (
  `id_proveedores_f` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `telefono` bigint NOT NULL,
  `cuit` bigint NOT NULL,
  PRIMARY KEY (`id_proveedores_f`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_fabricantes`
--

LOCK TABLES `proveedores_fabricantes` WRITE;
/*!40000 ALTER TABLE `proveedores_fabricantes` DISABLE KEYS */;
INSERT INTO `proveedores_fabricantes` VALUES (1,'Proveedor A','proveedorA@domain.com',1234567890,20123456789),(2,'Proveedor B','proveedorB@domain.com',2345678901,30234567890),(3,'Proveedor C','proveedorC@domain.com',3456789012,40345678901),(4,'Proveedor D','proveedorD@domain.com',4567890123,50456789012),(5,'Proveedor E','proveedorE@domain.com',5678901234,60567890123),(6,'Proveedor F','proveedorF@domain.com',6789012345,70678901234),(7,'Proveedor G','proveedorG@domain.com',7890123456,80789012345),(8,'Proveedor H','proveedorH@domain.com',8901234567,90890123456),(9,'Proveedor I','proveedorI@domain.com',9012345678,10901234567),(10,'Proveedor J','proveedorJ@domain.com',1234567891,21012345678),(11,'Proveedor K','proveedorK@domain.com',2345678902,32123456789),(12,'Proveedor L','proveedorL@domain.com',3456789013,43234567890),(13,'Proveedor M','proveedorM@domain.com',4567890124,54345678901),(14,'Proveedor N','proveedorN@domain.com',5678901235,65456789012),(15,'Proveedor O','proveedorO@domain.com',6789012346,76567890123);
/*!40000 ALTER TABLE `proveedores_fabricantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 13:04:26
