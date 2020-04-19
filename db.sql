-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: minor2
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Table structure for table `serviceDetails`
--

DROP TABLE IF EXISTS `serviceDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceDetails` (
  `emailID` varchar(30) NOT NULL,
  `vlcService` varchar(50) DEFAULT NULL,
  `splunkService` varchar(50) DEFAULT NULL,
  `caas` varchar(100) DEFAULT NULL,
  `paas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emailID`),
  CONSTRAINT `serviceDetails_ibfk_1` FOREIGN KEY (`emailID`) REFERENCES `userDetails` (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceDetails`
--

LOCK TABLES `serviceDetails` WRITE;
/*!40000 ALTER TABLE `serviceDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userDetails`
--

DROP TABLE IF EXISTS `userDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userDetails` (
  `name` varchar(30) DEFAULT NULL,
  `emailId` varchar(30) NOT NULL,
  `phoneNo` varchar(13) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `lastLoginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userDetails`
--

LOCK TABLES `userDetails` WRITE;
/*!40000 ALTER TABLE `userDetails` DISABLE KEYS */;
INSERT INTO `userDetails` VALUES ('Shivam','shivam@gmail.com','9414046948','12345678','2019-05-17 06:37:33'),('tarun','tkhandelwal32@gmail.com','7023040429','12345678','2019-04-29 08:29:35');
/*!40000 ALTER TABLE `userDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 14:08:59
