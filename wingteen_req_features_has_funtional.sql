-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wingteen_req
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `features_has_funtional`
--

DROP TABLE IF EXISTS `features_has_funtional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_has_funtional` (
  `idfeature` int(11) NOT NULL,
  `idfuntional` int(11) NOT NULL,
  PRIMARY KEY (`idfeature`,`idfuntional`),
  KEY `fk_features_has_funtional_funtional1_idx` (`idfuntional`),
  KEY `fk_features_has_funtional_features1_idx` (`idfeature`),
  CONSTRAINT `fk_features_has_funtional_features1` FOREIGN KEY (`idfeature`) REFERENCES `features` (`idfeature`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_features_has_funtional_funtional1` FOREIGN KEY (`idfuntional`) REFERENCES `funtional` (`idfuntional`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_has_funtional`
--

LOCK TABLES `features_has_funtional` WRITE;
/*!40000 ALTER TABLE `features_has_funtional` DISABLE KEYS */;
INSERT INTO `features_has_funtional` VALUES (1,1),(2,2),(3,3),(4,3),(5,4),(7,5);
/*!40000 ALTER TABLE `features_has_funtional` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-14 19:31:11
