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
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id_vendedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `documento` bigint DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefono` bigint NOT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  UNIQUE KEY `email` (`email`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente_empresa` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (101,'Juan','Pérez',1122338455,'juan.perez@empresaA.com',1234567890,1),(102,'Ana','Gómez',2233445566,'ana.gomez@empresaB.com',2345678901,2),(103,'Luis','Martínez',3344556677,'luis.martinez@empresaC.com',3456789012,3),(104,'María','Rodríguez',4455667788,'maria.rodriguez@empresaD.com',4567890123,4),(105,'Pedro','Sánchez',5566778899,'pedro.sanchez@empresaE.com',5678901234,5),(106,'Laura','López',6677889900,'laura.lopez@empresaF.com',6789012345,6),(107,'Carlos','Torres',7788990011,'carlos.torres@empresaG.com',7890123456,7),(108,'Sofía','García',8899001122,'sofia.garcia@empresaH.com',8901234567,8),(109,'Mario','Fernández',9900112233,'mario.fernandez@empresaI.com',9012345678,9),(110,'Isabel','Mendoza',1011122233,'isabel.mendoza@empresaJ.com',1234567891,10),(111,'Ricardo','Jiménez',1122334456,'ricardo.jimenez@empresaK.com',2345678902,11),(112,'Natalia','Castro',2233445567,'natalia.castro@empresaL.com',3456789013,12),(113,'Gabriel','Ponce',3344556678,'gabriel.ponce@empresaM.com',4567890124,13),(114,'Elena','Rivas',4455667789,'elena.rivas@empresaN.com',5678901235,14),(115,'Felipe','Vega',5566778890,'felipe.vega@empresaO.com',6789012346,15);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
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
