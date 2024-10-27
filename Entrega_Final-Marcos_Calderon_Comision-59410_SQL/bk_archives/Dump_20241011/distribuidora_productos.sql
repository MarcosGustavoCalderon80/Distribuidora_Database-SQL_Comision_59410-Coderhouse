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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `detalles` varchar(200) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio_venta` int NOT NULL,
  `almacen` int NOT NULL,
  `empl_preparacion` int NOT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `almacen` (`almacen`),
  KEY `empl_preparacion` (`empl_preparacion`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id_almacen`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`empl_preparacion`) REFERENCES `empleado_preparacion` (`id_emp_prepa`)
) ENGINE=InnoDB AUTO_INCREMENT=1516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (122,'Producto A - Descripción','Tipo A',100,1,1),(233,'Producto B - Descripción','Tipo B',150,2,2),(344,'Producto C - Descripción','Tipo C',200,3,3),(455,'Producto D - Descripción','Tipo D',250,4,4),(566,'Producto E - Descripción','Tipo E',300,5,5),(677,'Producto F - Descripción','Tipo F',350,6,6),(788,'Producto G - Descripción','Tipo G',400,7,7),(899,'Producto H - Descripción','Tipo H',450,8,8),(900,'Producto I - Descripción','Tipo I',500,9,9),(1010,'Producto J - Descripción','Tipo J',550,10,10),(1111,'Producto K - Descripción','Tipo K',600,11,11),(1212,'Producto L - Descripción','Tipo L',650,12,12),(1313,'Producto M - Descripción','Tipo M',700,13,13),(1414,'Producto N - Descripción','Tipo N',750,14,14),(1515,'Producto O - Descripción','Tipo O',800,15,15);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 13:04:28
