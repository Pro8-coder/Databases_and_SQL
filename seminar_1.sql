-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: seminar_1
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `mobile_phone`
--

DROP TABLE IF EXISTS `mobile_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_phone` (
  `idmobile phone` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`idmobile phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_phone`
--

LOCK TABLES `mobile_phone` WRITE;
/*!40000 ALTER TABLE `mobile_phone` DISABLE KEYS */;
INSERT INTO `mobile_phone` VALUES (1,'Samsung','G7',0,NULL),(2,'Nokia','9 PureView',5,39000),(3,'Samsung','S21',18,79000),(4,'Apple','iPhone 12',8,99000),(5,'OnePlus','9 Pro',15,62000),(6,'Google','Pixel 5',8,59000),(7,'Xiaomi','Mi 11',12,49000),(8,'Sony','Xperia 1 II',6,89000),(9,'Oppo','Find X3 Pro',7,72000),(10,'Huawei','Mate 40 Pro',10,76000),(11,'LG','Velvet',18,42000);
/*!40000 ALTER TABLE `mobile_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'seminar_1'
--

--
-- Dumping routines for database 'seminar_1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11  6:06:49
