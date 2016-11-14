-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wingteen_req
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `idfeature` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(200) NOT NULL,
  `feature_des` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idfeature`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'ระบุเวลาไปทานได้','สามารถระบุเวลาล่วงหน้าในการไปรัปทานอาหารได้'),(2,'ดูรายละเอียดรายการอาหารล่วงหน้าได้','สามารถดูรายละเอียดรายการอาหารล่วงหน้า เพื่อทำให้สะดวกในการสั่งอาหารล่วงหน้าได้'),(3,'สั่งล่วงหน้าได้','สามารถสั่งอาหารล่วงหน้าเพื่อไม่ให้เป็การเสียเวลาได้'),(4,'ลูกค้าทุกคนต้องได้รับอาหารที่ตัวเองสั่งอย่างถูกต้อง','อาหารที่ลูกได้รับจะต้องถูกต้องตรงตามรายการที่ลูกค้าสั่ง'),(5,'ให้พนักงานใช้งานได้หลายคน','อนุญาติให้พนักงานสามารถเข้าใช้งานได้หลายคน'),(6,'สามารถเพิ่มข้อมูลลงใน Database ได้แบบ Flexible','สามารถเพิ่มข้อมูลลงใน Database ได้แบบหยืดหยุ่น สะดวก และง่าย'),(7,'แยกราคาค่าอาหารรายบุคคล','คำนวณราคาค่าอาหารแยกเป็นรายบุคคล');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-14 19:19:29
