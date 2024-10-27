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
-- Table structure for table `empleado_preparacion`
--

DROP TABLE IF EXISTS `empleado_preparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_preparacion` (
  `id_emp_prepa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` bigint DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `sector` varchar(50) DEFAULT NULL,
  `facturacion` int NOT NULL,
  PRIMARY KEY (`id_emp_prepa`),
  KEY `facturacion` (`facturacion`),
  CONSTRAINT `empleado_preparacion_ibfk_1` FOREIGN KEY (`facturacion`) REFERENCES `facturacion_venta` (`id_facturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_preparacion`
--

LOCK TABLES `empleado_preparacion` WRITE;
/*!40000 ALTER TABLE `empleado_preparacion` DISABLE KEYS */;
INSERT INTO `empleado_preparacion` VALUES (1,'Luis','García',1122334455,1,'Preparación',1),(2,'Ana','Martínez',2233445566,2,'Preparación',2),(3,'Pedro','Hernández',3344556677,3,'Preparación',3),(4,'Isabel','López',4455667788,1,'Preparación',4),(5,'Sergio','Romero',5566778899,2,'Preparación',5),(6,'María','Torres',6677889900,3,'Preparación',6),(7,'Carlos','Reyes',7788990011,1,'Preparación',7),(8,'Laura','Vargas',8899001122,2,'Preparación',8),(9,'Jorge','Paredes',9900112233,3,'Preparación',9),(10,'Natalia','Gómez',1011122233,1,'Preparación',10),(11,'Miguel','Castro',1122334456,2,'Preparación',11),(12,'Paola','Rivas',2233445567,3,'Preparación',12),(13,'Fernando','Salazar',3344556678,1,'Preparación',13),(14,'Carmen','Mendoza',4455667789,2,'Preparación',14),(15,'Eduardo','Figueroa',5566778890,3,'Preparación',15);
/*!40000 ALTER TABLE `empleado_preparacion` ENABLE KEYS */;
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
