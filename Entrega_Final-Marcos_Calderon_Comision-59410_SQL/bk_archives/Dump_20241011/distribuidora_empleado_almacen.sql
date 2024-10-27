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
-- Table structure for table `empleado_almacen`
--

DROP TABLE IF EXISTS `empleado_almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_almacen` (
  `id_emp_almacen` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` bigint DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `sector_almacen` int NOT NULL,
  PRIMARY KEY (`id_emp_almacen`),
  KEY `sector_almacen` (`sector_almacen`),
  CONSTRAINT `empleado_almacen_ibfk_1` FOREIGN KEY (`sector_almacen`) REFERENCES `almacen` (`id_almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_almacen`
--

LOCK TABLES `empleado_almacen` WRITE;
/*!40000 ALTER TABLE `empleado_almacen` DISABLE KEYS */;
INSERT INTO `empleado_almacen` VALUES (1,'Fernando','Méndez',1122334455,1,1),(2,'Claudia','García',2233445566,2,2),(3,'Oscar','López',3344556677,1,3),(4,'Marta','Hernández',4455667788,2,4),(5,'Ricardo','Pérez',5566778899,1,5),(6,'Patricia','Romero',6677889900,2,6),(7,'Alejandro','Mendoza',7788990011,1,7),(8,'Gabriela','Vargas',8899001122,2,8),(9,'Julio','Salazar',9900112233,1,9),(10,'Carolina','Reyes',1011122233,2,10),(11,'José','Rivas',1122334456,1,11),(12,'Lucía','Torres',2233445567,2,12),(13,'Javier','Castro',3344556678,1,13),(14,'Rosa','Paredes',4455667789,2,14),(15,'Héctor','Gómez',5566778890,1,15);
/*!40000 ALTER TABLE `empleado_almacen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 13:04:29
