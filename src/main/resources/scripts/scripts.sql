-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: 111mil
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL,
  `idPais` int(11) DEFAULT NULL,
  UNIQUE KEY `Cliente_dni_uindex` (`dni`),
  KEY `Cliente_Direccion_idDireccion_fk` (`idDireccion`),
  CONSTRAINT `Cliente_Direccion_idDireccion_fk` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (11111111,'Diego','Miño',NULL,1),(22222222,'Jose','',NULL,1),(24855538,'Miguel','Miño',NULL,1),(33333333,'Erica','',NULL,1),(44444444,'Ezequiel','',NULL,1),(55555555,'Tomas','',NULL,1),(66666666,'Angel','',NULL,1),(77777777,'Julian','',NULL,1);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClienteRol`
--

DROP TABLE IF EXISTS `ClienteRol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClienteRol` (
  `idCliente` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  KEY `ClienteRol_Cliente_dni_fk` (`idCliente`),
  KEY `ClienteRol_Rol_idRol_fk` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClienteRol`
--

LOCK TABLES `ClienteRol` WRITE;
/*!40000 ALTER TABLE `ClienteRol` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClienteRol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorreoElectronico`
--

DROP TABLE IF EXISTS `CorreoElectronico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorreoElectronico` (
  `idCorreo` int(11) DEFAULT NULL,
  `direccionCorreo` varchar(200) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorreoElectronico`
--

LOCK TABLES `CorreoElectronico` WRITE;
/*!40000 ALTER TABLE `CorreoElectronico` DISABLE KEYS */;
INSERT INTO `CorreoElectronico` VALUES (1,'diego@gemail.com',11111111),(2,'diego10@hotmail.com',11111111);
/*!40000 ALTER TABLE `CorreoElectronico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DetalleOrden`
--

DROP TABLE IF EXISTS `DetalleOrden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DetalleOrden` (
  `idDetalleOrden` int(11) NOT NULL AUTO_INCREMENT,
  `precioUnitario` decimal(10,0) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `Notebook_idNotebook` int(11) DEFAULT NULL,
  `Orden_idOrden` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalleOrden`),
  UNIQUE KEY `DetalleOrden_idDetalleOrden_uindex` (`idDetalleOrden`),
  KEY `DetalleOrden_Notebook_fk` (`Notebook_idNotebook`),
  KEY `DetalleOrden_Orden_idOrder_fk` (`Orden_idOrden`),
  CONSTRAINT `DetalleOrden_Notebook_fk` FOREIGN KEY (`Notebook_idNotebook`) REFERENCES `Notebook` (`idNotebook`),
  CONSTRAINT `DetalleOrden_Orden_idOrder_fk` FOREIGN KEY (`Orden_idOrden`) REFERENCES `Orden` (`idOrden`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetalleOrden`
--

LOCK TABLES `DetalleOrden` WRITE;
/*!40000 ALTER TABLE `DetalleOrden` DISABLE KEYS */;
INSERT INTO `DetalleOrden` VALUES (1,1000,1,1,1),(2,1500,2,2,1),(3,900,1,4,2),(4,458,3,3,2),(5,1200,1,2,3),(6,2300,1,2,4),(7,1000,2,1,4),(8,600,3,3,4);
/*!40000 ALTER TABLE `DetalleOrden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(100) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`),
  UNIQUE KEY `Direccion_idDireccion_uindex` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=77777778 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
INSERT INTO `Direccion` VALUES (11111111,'Granada',1234),(22222222,'aaaa',2333),(24855538,'tttt',1000),(33333333,'bbbbb',3333),(44444444,'ccccc',4444),(55555555,'3333',125634),(66666666,'ffff',1000),(77777777,'ggggg',1000);
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notebook`
--

DROP TABLE IF EXISTS `Notebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notebook` (
  `idNotebook` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `procesador` varchar(45) DEFAULT NULL,
  `disco` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idNotebook`),
  UNIQUE KEY `Notebook_idNotebook_uindex` (`idNotebook`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notebook`
--

LOCK TABLES `Notebook` WRITE;
/*!40000 ALTER TABLE `Notebook` DISABLE KEYS */;
INSERT INTO `Notebook` VALUES (1,'DELL','MB001','I5',500),(2,'MAC','MacBookPro','I5',500),(3,'TOSHIBA','Z930','I7',720),(4,'DELL','LATITUD','I7',500),(5,'HP','GOL','I7',1000);
/*!40000 ALTER TABLE `Notebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orden`
--

DROP TABLE IF EXISTS `Orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orden` (
  `idOrden` int(11) NOT NULL AUTO_INCREMENT,
  `creacion` datetime DEFAULT NULL,
  `envio` datetime DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `Cliente_dni` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrden`),
  UNIQUE KEY `Order_idOrder_uindex` (`idOrden`),
  KEY `Orden_Cliente_fk` (`Cliente_dni`),
  CONSTRAINT `Orden_Cliente_fk` FOREIGN KEY (`Cliente_dni`) REFERENCES `Cliente` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orden`
--

LOCK TABLES `Orden` WRITE;
/*!40000 ALTER TABLE `Orden` DISABLE KEYS */;
INSERT INTO `Orden` VALUES (1,'2018-10-06 12:00:00','2018-10-06 12:00:00','ENVIADO',24855538),(2,'2018-10-06 13:01:03','2018-10-06 13:01:09','ENVIADO',11111111),(3,'2018-10-06 12:00:00','2018-10-06 12:00:00','ENVIADO',22222222),(4,'2018-10-07 12:00:00','2018-10-06 12:00:00','ENVIADO',24855538),(5,'2017-11-20 12:00:00','2018-10-06 12:00:00','ENVIADO',24855538);
/*!40000 ALTER TABLE `Orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Pais_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
INSERT INTO `Pais` VALUES (1,'Argentina');
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `Rol_idRol_uindex` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES (1,'Admin');
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perros`
--

DROP TABLE IF EXISTS `perros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perros` (
  `idperros` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perros`
--

LOCK TABLES `perros` WRITE;
/*!40000 ALTER TABLE `perros` DISABLE KEYS */;
/*!40000 ALTER TABLE `perros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-23  9:44:06
