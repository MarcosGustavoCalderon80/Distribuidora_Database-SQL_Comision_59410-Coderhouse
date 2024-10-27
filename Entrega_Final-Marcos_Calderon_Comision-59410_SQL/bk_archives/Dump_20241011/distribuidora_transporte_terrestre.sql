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
-- Table structure for table `transporte_terrestre`
--

DROP TABLE IF EXISTS `transporte_terrestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte_terrestre` (
  `id_trans_terrestre` int NOT NULL AUTO_INCREMENT,
  `id_envio` int NOT NULL,
  `fecha_envio_tt` datetime DEFAULT NULL,
  `peso_envio` int DEFAULT NULL,
  `valor_declarado` int DEFAULT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id_trans_terrestre`),
  KEY `id_envio` (`id_envio`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `transporte_terrestre_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`envio_id`),
  CONSTRAINT `transporte_terrestre_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente_empresa` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_terrestre`
--

LOCK TABLES `transporte_terrestre` WRITE;
/*!40000 ALTER TABLE `transporte_terrestre` DISABLE KEYS */;
INSERT INTO `transporte_terrestre` VALUES (1,1,'2023-01-11 09:00:00',100,1500,1),(2,2,'2023-01-13 10:30:00',150,2000,2),(3,3,'2023-01-16 11:00:00',200,2500,1),(4,4,'2023-01-21 12:00:00',250,3000,2),(5,5,'2023-01-26 08:30:00',300,3500,1),(6,6,'2023-02-02 14:00:00',350,4000,6),(7,7,'2023-02-06 15:30:00',400,4500,3),(8,8,'2023-02-11 10:15:00',450,5000,1),(9,9,'2023-02-16 12:45:00',500,5500,3),(10,10,'2023-02-21 11:00:00',550,6000,3),(11,11,'2023-02-26 09:45:00',600,6500,3),(12,12,'2023-03-02 13:30:00',650,7000,5),(13,13,'2023-03-06 16:00:00',700,7500,6),(14,14,'2023-03-11 14:15:00',750,8000,4),(15,15,'2023-03-16 11:30:00',800,8500,4);
/*!40000 ALTER TABLE `transporte_terrestre` ENABLE KEYS */;
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
