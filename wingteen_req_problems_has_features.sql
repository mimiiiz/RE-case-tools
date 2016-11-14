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
-- Table structure for table `problems_has_features`
--

DROP TABLE IF EXISTS `problems_has_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problems_has_features` (
  `idproblem` int(11) NOT NULL,
  `idfeature` int(11) NOT NULL,
  PRIMARY KEY (`idproblem`,`idfeature`),
  KEY `fk_problems_has_features_features1_idx` (`idfeature`),
  KEY `fk_problems_has_features_problems_idx` (`idproblem`),
  CONSTRAINT `fk_problems_has_features_features1` FOREIGN KEY (`idfeature`) REFERENCES `features` (`idfeature`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_problems_has_features_problems` FOREIGN KEY (`idproblem`) REFERENCES `problems` (`idproblem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems_has_features`
--

LOCK TABLES `problems_has_features` WRITE;
/*!40000 ALTER TABLE `problems_has_features` DISABLE KEYS */;
INSERT INTO `problems_has_features` VALUES (1,1),(2,1),(2,2),(3,2),(2,3),(4,3),(4,4),(5,4),(6,5),(7,6),(8,7);
/*!40000 ALTER TABLE `problems_has_features` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-14 19:31:11
