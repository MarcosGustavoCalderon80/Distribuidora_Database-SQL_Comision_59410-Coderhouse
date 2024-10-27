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
-- Table structure for table `transporte_maritimo`
--

DROP TABLE IF EXISTS `transporte_maritimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte_maritimo` (
  `id_trans_maritimo` int NOT NULL AUTO_INCREMENT,
  `peso_envio` int DEFAULT NULL,
  `fecha_envio_tm` datetime DEFAULT NULL,
  `valor_declarado` int DEFAULT NULL,
  `id_envio` int NOT NULL,
  `facturacion` int NOT NULL,
  PRIMARY KEY (`id_trans_maritimo`),
  KEY `id_envio` (`id_envio`),
  KEY `facturacion` (`facturacion`),
  CONSTRAINT `transporte_maritimo_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`envio_id`),
  CONSTRAINT `transporte_maritimo_ibfk_2` FOREIGN KEY (`facturacion`) REFERENCES `factura_proveedor` (`id_facturacion_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_maritimo`
--

LOCK TABLES `transporte_maritimo` WRITE;
/*!40000 ALTER TABLE `transporte_maritimo` DISABLE KEYS */;
INSERT INTO `transporte_maritimo` VALUES (1,100,'2023-01-10 10:00:00',1500,1,1),(2,150,'2023-01-12 11:00:00',2000,2,2),(3,200,'2023-01-15 14:00:00',2500,3,3),(4,250,'2023-01-20 09:30:00',3000,4,4),(5,300,'2023-01-25 16:45:00',3500,5,5),(6,350,'2023-02-01 13:15:00',4000,6,6),(7,400,'2023-02-05 08:00:00',4500,7,7),(8,450,'2023-02-10 10:30:00',5000,8,8),(9,500,'2023-02-15 15:00:00',5500,9,9),(10,550,'2023-02-20 12:00:00',6000,10,10),(11,600,'2023-02-25 17:00:00',6500,11,11),(12,650,'2023-03-01 09:00:00',7000,12,12),(13,700,'2023-03-05 11:30:00',7500,13,13),(14,750,'2023-03-10 14:15:00',8000,14,14),(15,800,'2023-03-15 13:45:00',8500,15,15);
/*!40000 ALTER TABLE `transporte_maritimo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 13:04:27
