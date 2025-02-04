-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: distribuidora
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `id_almacen` int NOT NULL AUTO_INCREMENT,
  `stock_producto` int NOT NULL,
  `proximo_ingreso` datetime DEFAULT NULL,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_empresa`
--

DROP TABLE IF EXISTS `cliente_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_empresa` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefono` bigint NOT NULL,
  `cuit` bigint NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_empresa`
--

LOCK TABLES `cliente_empresa` WRITE;
/*!40000 ALTER TABLE `cliente_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_empresa` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_a_proveedor`
--

LOCK TABLES `compras_a_proveedor` WRITE;
/*!40000 ALTER TABLE `compras_a_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras_a_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_almacen`
--

LOCK TABLES `empleado_almacen` WRITE;
/*!40000 ALTER TABLE `empleado_almacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_almacen` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_preparacion`
--

LOCK TABLES `empleado_preparacion` WRITE;
/*!40000 ALTER TABLE `empleado_preparacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_preparacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `envio_id` int NOT NULL AUTO_INCREMENT,
  `facturacion` int NOT NULL,
  `fecha_envio` datetime DEFAULT NULL,
  `cantidad_bultos` int NOT NULL,
  `peso_envio` int NOT NULL,
  `valor_declarado` int NOT NULL,
  PRIMARY KEY (`envio_id`),
  KEY `facturacion` (`facturacion`),
  CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`facturacion`) REFERENCES `facturacion_venta` (`id_facturacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_proveedor`
--

LOCK TABLES `factura_proveedor` WRITE;
/*!40000 ALTER TABLE `factura_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacion_venta`
--

DROP TABLE IF EXISTS `facturacion_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion_venta` (
  `id_facturacion` int NOT NULL AUTO_INCREMENT,
  `numero_factura` int NOT NULL,
  `numero_remito` int NOT NULL,
  `descuento_mayorista` int NOT NULL,
  `precio_final` int NOT NULL,
  PRIMARY KEY (`id_facturacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion_venta`
--

LOCK TABLES `facturacion_venta` WRITE;
/*!40000 ALTER TABLE `facturacion_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturacion_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_precios`
--

DROP TABLE IF EXISTS `historial_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_precios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `precio_anterior` int NOT NULL,
  `precio_nuevo` int NOT NULL,
  `fecha_cambio` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `historial_precios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_precios`
--

LOCK TABLES `historial_precios` WRITE;
/*!40000 ALTER TABLE `historial_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_precios` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_fabricantes`
--

LOCK TABLES `proveedores_fabricantes` WRITE;
/*!40000 ALTER TABLE `proveedores_fabricantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores_fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_aereo`
--

DROP TABLE IF EXISTS `transporte_aereo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte_aereo` (
  `id_trans_aereo` int NOT NULL AUTO_INCREMENT,
  `peso_envio` int DEFAULT NULL,
  `fecha_envio_ta` datetime DEFAULT NULL,
  `valor_declarado` int DEFAULT NULL,
  `id_envio` int NOT NULL,
  `facturacion` int NOT NULL,
  PRIMARY KEY (`id_trans_aereo`),
  KEY `id_envio` (`id_envio`),
  KEY `facturacion` (`facturacion`),
  CONSTRAINT `transporte_aereo_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`envio_id`),
  CONSTRAINT `transporte_aereo_ibfk_2` FOREIGN KEY (`facturacion`) REFERENCES `factura_proveedor` (`id_facturacion_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_aereo`
--

LOCK TABLES `transporte_aereo` WRITE;
/*!40000 ALTER TABLE `transporte_aereo` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporte_aereo` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_maritimo`
--

LOCK TABLES `transporte_maritimo` WRITE;
/*!40000 ALTER TABLE `transporte_maritimo` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporte_maritimo` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_terrestre`
--

LOCK TABLES `transporte_terrestre` WRITE;
/*!40000 ALTER TABLE `transporte_terrestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporte_terrestre` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_log`
--

DROP TABLE IF EXISTS `venta_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vendedor` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `precio_venta` int NOT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `venta_log_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_log`
--

LOCK TABLES `venta_log` WRITE;
/*!40000 ALTER TABLE `venta_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 15:02:06
