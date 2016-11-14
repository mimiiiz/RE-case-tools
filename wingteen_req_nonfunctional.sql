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
-- Table structure for table `nonfunctional`
--

DROP TABLE IF EXISTS `nonfunctional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nonfunctional` (
  `idnonfunctional` int(11) NOT NULL AUTO_INCREMENT,
  `non_func` varchar(200) NOT NULL,
  `non_func_des` varchar(300) DEFAULT NULL,
  `difficult` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `cus_priority` int(11) NOT NULL,
  PRIMARY KEY (`idnonfunctional`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonfunctional`
--

LOCK TABLES `nonfunctional` WRITE;
/*!40000 ALTER TABLE `nonfunctional` DISABLE KEYS */;
INSERT INTO `nonfunctional` VALUES (1,'มีรูปตัวอย่างอาหาร','แสดงรูปอาหารในรายการ',1,2,3),(2,'มีเลขราคาที่ชัดเจน ขนาด 16 pt','เลขราคาเห็นชัดเจนเพื่อช่วยในการตัดสินใจและความสะดวกของลูกค้า',2,1,2),(3,'รองรับการใช้งานพร้อมกัน\r\nได้สูงสุด 100 คน พร้อมกัน','รองรับจำนวนลูกค้าในการสั่งอาหารล่วงหน้าได้ 100คนพร้อมกัน โดยไม่มีปัญหา',6,4,6),(4,'ใช้งานได้รวดเร็ว \r\nตอบสนองได้ภายใน 5 ms','การตอบสนองของระบบต้องรวดเร็วเพื่อให้ผู้ใช้งานรู้สึกดีต่อระบบ',5,5,5),(5,'ผิดพลาดได้สูงสุด 0.001 %','ความผิดพลาดจากระบบที่จะเกิดขึ้นต้องน้อยกว่า0.001%',4,6,4),(6,'ใช้ No SQL','ฐานข้อมูลมีความยืดหยุ่น',3,3,1);
/*!40000 ALTER TABLE `nonfunctional` ENABLE KEYS */;
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
