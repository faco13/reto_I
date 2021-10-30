-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prueba_imc
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin` bit(1) DEFAULT NULL,
  `apellido` varchar(25) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `nombre` varchar(25) NOT NULL,
  `numero_documento` bigint NOT NULL,
  `peso` bigint DEFAULT NULL,
  `tipo_documento` varchar(2) NOT NULL,
  `fecha_registro` datetime(6) DEFAULT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `imc` float GENERATED ALWAYS AS ((`peso` / (`altura` * `altura`))) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mptusfc12gk0vh8usvj9fy8rx` (`numero_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id`, `admin`, `apellido`, `email`, `altura`, `nombre`, `numero_documento`, `peso`, `tipo_documento`, `fecha_registro`, `presentacion`) VALUES (1,NULL,'guzman',NULL,NULL,'fausto',10958000666,NULL,'cc',NULL,NULL),(2,NULL,'aceros',NULL,NULL,'victor',109866677,NULL,'cc',NULL,NULL),(3,NULL,'espinosa',NULL,1.5,'wendy',10958088666,51,'cc',NULL,NULL),(4,NULL,'pepo',NULL,1.87,'perez',10968088666,111,'cc',NULL,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 18:14:11
