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
-- Table structure for table `funtional`
--

DROP TABLE IF EXISTS `funtional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funtional` (
  `idfuntional` int(11) NOT NULL AUTO_INCREMENT,
  `func` varchar(200) NOT NULL,
  `func_des` varchar(300) DEFAULT NULL,
  `difficult` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `cus_priority` int(11) NOT NULL,
  `aaa` int(11) NOT NULL,
  PRIMARY KEY (`idfuntional`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funtional`
--

LOCK TABLES `funtional` WRITE;
/*!40000 ALTER TABLE `funtional` DISABLE KEYS */;
INSERT INTO `funtional` VALUES (1,'User สามารถติดตามลำดับคิวของตนเองได้','User สามารถรู้ลำดับคิวว่าเรียกไปแล้วกี่คิว เพื่อให้ง่ายต่อการตัดสินใจ',5,4,4,5),(2,'แสดงรายละเอียดรายการอาหารในแอป','ผู้ใช้สามารถดูรายละเอียดรายการอาหารผ่านทางแอปบนโทรศัพท์ได้',4,2,3,0),(3,'User สามารถเพิ่ม Order ได้ด้วยตัวเอง','ผู้ใช้สั่ง Order ได้ด้วยตัวเอง โดยไม่ต้องรอเรียกพนักงานเพื่อรับ Order',3,5,5,0),(4,'แบ่งบทบาท (Role)','กำหนดขอบเขตการใช้ระบบของแต่ละบทบาท',1,1,1,0),(5,'คำนวณและแจ้งราคาอาหารรายบุคคลได้','ผู้ใช้รู้ค่าอาหารและค่าใช้จ่ายแบบรายบุคคล',2,3,2,0),(6,'func1','func1',4,4,4,4);
/*!40000 ALTER TABLE `funtional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-15 11:51:26
