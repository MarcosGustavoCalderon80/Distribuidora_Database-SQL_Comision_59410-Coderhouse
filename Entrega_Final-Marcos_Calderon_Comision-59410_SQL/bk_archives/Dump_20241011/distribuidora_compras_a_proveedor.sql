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
-- Table structure for table `compras_a_proveedor`
--

DROP TABLE IF EXISTS `compras_a_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_a_proveedor` (
  `id_compra_proveedor` int NOT NULL AUTO_INCREMENT,
  `id_envio` int NOT NULL,
  `id_producto` int NOT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `sector_almacen` int DEFAULT NULL,
  `cantidad_bultos` int NOT NULL,
  `peso_envio` int NOT NULL,
  `valor_declarado` int DEFAULT NULL,
  PRIMARY KEY (`id_compra_proveedor`),
  KEY `id_envio` (`id_envio`),
  KEY `sector_almacen` (`sector_almacen`),
  CONSTRAINT `compras_a_proveedor_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`envio_id`),
  CONSTRAINT `compras_a_proveedor_ibfk_2` FOREIGN KEY (`sector_almacen`) REFERENCES `almacen` (`id_almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_a_proveedor`
--

LOCK TABLES `compras_a_proveedor` WRITE;
/*!40000 ALTER TABLE `compras_a_proveedor` DISABLE KEYS */;
INSERT INTO `compras_a_proveedor` VALUES (1,1,122,'2023-01-11 09:00:00',1,10,100,1500),(2,2,233,'2023-01-13 10:30:00',2,15,150,2000),(3,3,344,'2023-01-16 11:00:00',3,20,200,2500),(4,4,455,'2023-01-21 12:00:00',4,25,250,3000),(5,5,566,'2023-01-26 08:30:00',5,30,300,3500),(6,6,677,'2023-02-02 14:00:00',6,35,350,4000),(7,7,788,'2023-02-06 15:30:00',7,40,400,4500),(8,8,899,'2023-02-11 10:15:00',8,45,450,5000),(9,9,900,'2023-02-16 12:45:00',9,50,500,5500),(10,10,1010,'2023-02-21 11:00:00',10,55,550,6000),(11,11,1111,'2023-02-26 09:45:00',11,60,600,6500),(12,12,1212,'2023-03-02 13:30:00',12,65,650,7000),(13,13,1313,'2023-03-06 16:00:00',13,70,700,7500),(14,14,1414,'2023-03-11 14:15:00',14,75,750,8000),(15,15,1515,'2023-03-16 11:30:00',15,80,800,8500);
/*!40000 ALTER TABLE `compras_a_proveedor` ENABLE KEYS */;
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
