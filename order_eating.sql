-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2016 at 04:21 PM
-- Server version: 5.5.41-MariaDB
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wingteen_req`
--
CREATE DATABASE IF NOT EXISTS `wingteen_req` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wingteen_req`;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `idfeature` int(11) NOT NULL,
  `feature` varchar(200) NOT NULL,
  `feature_des` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`idfeature`, `feature`, `feature_des`) VALUES
(1, 'ระบุเวลาไปทานได้', 'สามารถระบุเวลาล่วงหน้าในการไปรัปทานอาหารได้'),
(2, 'ดูรายละเอียดรายการอาหารล่วงหน้าได้', 'สามารถดูรายละเอียดรายการอาหารล่วงหน้า เพื่อทำให้สะดวกในการสั่งอาหารล่วงหน้าได้'),
(3, 'สั่งล่วงหน้าได้', 'สามารถสั่งอาหารล่วงหน้าเพื่อไม่ให้เป็การเสียเวลาได้'),
(4, 'ลูกค้าทุกคนต้องได้รับอาหารที่ตัวเองสั่งอย่างถูกต้อง', 'อาหารที่ลูกได้รับจะต้องถูกต้องตรงตามรายการที่ลูกค้าสั่ง'),
(5, 'ให้พนักงานใช้งานได้หลายคน', 'อนุญาติให้พนักงานสามารถเข้าใช้งานได้หลายคน'),
(6, 'สามารถเพิ่มข้อมูลลงใน Database ได้แบบ Flexible', 'สามารถเพิ่มข้อมูลลงใน Database ได้แบบหยืดหยุ่น สะดวก และง่าย'),
(7, 'แยกราคาค่าอาหารรายบุคคล', 'คำนวณราคาค่าอาหารแยกเป็นรายบุคคล');

-- --------------------------------------------------------

--
-- Table structure for table `features_has_funtional`
--

CREATE TABLE `features_has_funtional` (
  `idfeature` int(11) NOT NULL,
  `idfuntional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features_has_funtional`
--

INSERT INTO `features_has_funtional` (`idfeature`, `idfuntional`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `features_has_nonfunctional`
--

CREATE TABLE `features_has_nonfunctional` (
  `idfeature` int(11) NOT NULL,
  `idnonfunctional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features_has_nonfunctional`
--

INSERT INTO `features_has_nonfunctional` (`idfeature`, `idnonfunctional`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `funtional`
--

CREATE TABLE `funtional` (
  `idfuntional` int(11) NOT NULL,
  `func` varchar(200) NOT NULL,
  `func_des` varchar(300) DEFAULT NULL,
  `difficult` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `cus_priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funtional`
--

INSERT INTO `funtional` (`idfuntional`, `func`, `func_des`, `difficult`, `risk`, `cus_priority`) VALUES
(1, 'User สามารถติดตามลำดับคิวของตนเองได้', 'User สามารถรู้ลำดับคิวว่าเรียกไปแล้วกี่คิว เพื่อให้ง่ายต่อการตัดสินใจ', 5, 4, 4),
(2, 'แสดงรายละเอียดรายการอาหารในแอป', 'ผู้ใช้สามารถดูรายละเอียดรายการอาหารผ่านทางแอปบนโทรศัพท์ได้', 4, 2, 3),
(3, 'User สามารถเพิ่ม Order ได้ด้วยตัวเอง', 'ผู้ใช้สั่ง Order ได้ด้วยตัวเอง โดยไม่ต้องรอเรียกพนักงานเพื่อรับ Order', 3, 5, 5),
(4, 'แบ่งบทบาท (Role)', 'กำหนดขอบเขตการใช้ระบบของแต่ละบทบาท', 1, 1, 1),
(5, 'คำนวณและแจ้งราคาอาหารรายบุคคลได้', 'ผู้ใช้รู้ค่าอาหารและค่าใช้จ่ายแบบรายบุคคล', 2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nonfunctional`
--

CREATE TABLE `nonfunctional` (
  `idnonfunctional` int(11) NOT NULL,
  `non_func` varchar(200) NOT NULL,
  `non_func_des` varchar(300) DEFAULT NULL,
  `difficult` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `cus_priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nonfunctional`
--

INSERT INTO `nonfunctional` (`idnonfunctional`, `non_func`, `non_func_des`, `difficult`, `risk`, `cus_priority`) VALUES
(1, 'มีรูปตัวอย่างอาหาร', 'แสดงรูปอาหารในรายการ', 1, 2, 3),
(2, 'มีเลขราคาที่ชัดเจน ขนาด 16 pt', 'เลขราคาเห็นชัดเจนเพื่อช่วยในการตัดสินใจและความสะดวกของลูกค้า', 2, 1, 2),
(3, 'รองรับการใช้งานพร้อมกัน\r\nได้สูงสุด 100 คน พร้อมกัน', 'รองรับจำนวนลูกค้าในการสั่งอาหารล่วงหน้าได้ 100คนพร้อมกัน โดยไม่มีปัญหา', 6, 4, 6),
(4, 'ใช้งานได้รวดเร็ว \r\nตอบสนองได้ภายใน 5 ms', 'การตอบสนองของระบบต้องรวดเร็วเพื่อให้ผู้ใช้งานรู้สึกดีต่อระบบ', 5, 5, 5),
(5, 'ผิดพลาดได้สูงสุด 0.001 %', 'ความผิดพลาดจากระบบที่จะเกิดขึ้นต้องน้อยกว่า0.001%', 4, 6, 4),
(6, 'ใช้ No SQL', 'ฐานข้อมูลมีความยืดหยุ่น', 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `idproblem` int(11) NOT NULL,
  `problem` varchar(200) NOT NULL,
  `problem_des` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`idproblem`, `problem`, `problem_des`) VALUES
(1, 'รอคิวนาน', NULL),
(2, 'ในเวลาเร่งด่วนมักเกิดความผิดพลาดและล่าช้าในการสั่งอาหาร', NULL),
(3, 'ไม่รู้เมนูล่วงหน้า', NULL),
(4, 'มีเวลาทานอาหารน้อย', NULL),
(5, 'รับออร์เดอร์ผิด', NULL),
(6, 'ต้องให้พนักงานใช้งานได้หลายคน', NULL),
(7, 'Database ไม่รองรับการเพิ่มอาหารรูปแบบใหม่ๆ', NULL),
(8, 'ไม่รู้ราคารวมค่าอาหารรายบุคคล', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problems_has_features`
--

CREATE TABLE `problems_has_features` (
  `idproblem` int(11) NOT NULL,
  `idfeature` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problems_has_features`
--

INSERT INTO `problems_has_features` (`idproblem`, `idfeature`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(4, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 6),
(8, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`idfeature`);

--
-- Indexes for table `features_has_funtional`
--
ALTER TABLE `features_has_funtional`
  ADD PRIMARY KEY (`idfeature`,`idfuntional`),
  ADD KEY `fk_features_has_funtional_funtional1_idx` (`idfuntional`),
  ADD KEY `fk_features_has_funtional_features1_idx` (`idfeature`);

--
-- Indexes for table `features_has_nonfunctional`
--
ALTER TABLE `features_has_nonfunctional`
  ADD PRIMARY KEY (`idfeature`,`idnonfunctional`),
  ADD KEY `fk_features_has_nonfunctional_nonfunctional1_idx` (`idnonfunctional`),
  ADD KEY `fk_features_has_nonfunctional_features1_idx` (`idfeature`);

--
-- Indexes for table `funtional`
--
ALTER TABLE `funtional`
  ADD PRIMARY KEY (`idfuntional`);

--
-- Indexes for table `nonfunctional`
--
ALTER TABLE `nonfunctional`
  ADD PRIMARY KEY (`idnonfunctional`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`idproblem`);

--
-- Indexes for table `problems_has_features`
--
ALTER TABLE `problems_has_features`
  ADD PRIMARY KEY (`idproblem`,`idfeature`),
  ADD KEY `fk_problems_has_features_features1_idx` (`idfeature`),
  ADD KEY `fk_problems_has_features_problems_idx` (`idproblem`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `idfeature` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `funtional`
--
ALTER TABLE `funtional`
  MODIFY `idfuntional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nonfunctional`
--
ALTER TABLE `nonfunctional`
  MODIFY `idnonfunctional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `idproblem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `features_has_funtional`
--
ALTER TABLE `features_has_funtional`
  ADD CONSTRAINT `fk_features_has_funtional_features1` FOREIGN KEY (`idfeature`) REFERENCES `features` (`idfeature`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_features_has_funtional_funtional1` FOREIGN KEY (`idfuntional`) REFERENCES `funtional` (`idfuntional`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `features_has_nonfunctional`
--
ALTER TABLE `features_has_nonfunctional`
  ADD CONSTRAINT `fk_features_has_nonfunctional_features1` FOREIGN KEY (`idfeature`) REFERENCES `features` (`idfeature`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_features_has_nonfunctional_nonfunctional1` FOREIGN KEY (`idnonfunctional`) REFERENCES `nonfunctional` (`idnonfunctional`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `problems_has_features`
--
ALTER TABLE `problems_has_features`
  ADD CONSTRAINT `fk_problems_has_features_problems` FOREIGN KEY (`idproblem`) REFERENCES `problems` (`idproblem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_problems_has_features_features1` FOREIGN KEY (`idfeature`) REFERENCES `features` (`idfeature`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
