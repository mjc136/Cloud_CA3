-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: swimmerapp
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `event_distance` varchar(255) DEFAULT NULL,
  `event_stroke` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES
(1,'100m','Back'),
(2,'100m','Breast'),
(3,'50m','Back'),
(4,'50m','Breast'),
(5,'50m','Free'),
(6,'100m','Free'),
(7,'200m','Back'),
(8,'100m','Fly'),
(9,'50m','Fly'),
(10,'200m','IM'),
(11,'200m','Breast'),
(12,'200m','Free'),
(13,'400m','Free'),
(14,'100m','IM');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swimmers`
--

DROP TABLE IF EXISTS `swimmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swimmers` (
  `swimmer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `swimmer_name` varchar(255) DEFAULT NULL,
  `swimmer_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`swimmer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swimmers`
--

LOCK TABLES `swimmers` WRITE;
/*!40000 ALTER TABLE `swimmers` DISABLE KEYS */;
INSERT INTO `swimmers` VALUES
(1,'Abi',10),
(2,'Ali',12),
(3,'Alison',14),
(4,'Aurora',13),
(5,'Bill',18),
(6,'Blake',15),
(7,'Calvin',9),
(8,'Carl',15),
(9,'Chris',17),
(10,'Darius',13),
(11,'Dave',17),
(12,'Elba',14),
(13,'Emma',13),
(14,'Erika',15),
(15,'Hannah',13),
(16,'Katie',9),
(17,'Lizzie',14),
(18,'Maria',9),
(19,'Mike',15),
(20,'Owen',15),
(21,'Ruth',13),
(22,'Tasmin',15),
(23,'Darius',8);
/*!40000 ALTER TABLE `swimmers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `times` (
  `swimmer_ID` int(11) NOT NULL,
  `event_ID` int(11) NOT NULL,
  `recorded_time` varchar(255) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES
(1,1,'1:31.59','2023-11-26 14:02:40'),
(1,1,'1:26.55','2023-11-26 14:02:40'),
(1,1,'1:28.75','2023-11-26 14:02:40'),
(1,1,'1:39.79','2023-11-26 14:02:40'),
(1,1,'1:32.37','2023-11-26 14:02:40'),
(1,2,'1:42.97','2023-11-26 14:02:40'),
(1,2,'1:43.31','2023-11-26 14:02:40'),
(1,2,'1:43.50','2023-11-26 14:02:40'),
(1,2,'1:40.34','2023-11-26 14:02:40'),
(1,3,'41.50','2023-11-26 14:02:40'),
(1,3,'43.58','2023-11-26 14:02:40'),
(1,3,'42.35','2023-11-26 14:02:40'),
(1,3,'43.35','2023-11-26 14:02:40'),
(1,3,'39.85','2023-11-26 14:02:40'),
(1,3,'40.53','2023-11-26 14:02:40'),
(1,3,'42.14','2023-11-26 14:02:40'),
(1,3,'39.18','2023-11-26 14:02:40'),
(1,3,'40.89','2023-11-26 14:02:40'),
(1,3,'40.89','2023-11-26 14:02:40'),
(1,4,'48.08','2023-11-26 14:02:40'),
(1,4,'53.17','2023-11-26 14:02:40'),
(1,4,'45.76','2023-11-26 14:02:40'),
(1,4,'49.28','2023-11-26 14:02:40'),
(1,4,'52.85','2023-11-26 14:02:40'),
(1,4,'46.19','2023-11-26 14:02:40'),
(1,4,'47.76','2023-11-26 14:02:40'),
(1,4,'48.83','2023-11-26 14:02:40'),
(1,4,'45.71','2023-11-26 14:02:40'),
(1,4,'47.76','2023-11-26 14:02:40'),
(1,5,'39.07','2023-11-26 14:02:40'),
(1,5,'37.66','2023-11-26 14:02:40'),
(1,5,'36.13','2023-11-26 14:02:40'),
(1,5,'39.42','2023-11-26 14:02:40'),
(2,1,'1:36.54','2023-11-26 14:02:40'),
(2,1,'1:39.10','2023-11-26 14:02:40'),
(2,1,'1:39.45','2023-11-26 14:02:40'),
(2,1,'1:42.87','2023-11-26 14:02:40'),
(2,6,'1:27.31','2023-11-26 14:02:40'),
(2,6,'1:27.00','2023-11-26 14:02:40'),
(2,6,'1:27.46','2023-11-26 14:02:40'),
(2,6,'1:22.50','2023-11-26 14:02:40'),
(2,6,'1:20.39','2023-11-26 14:02:40'),
(2,6,'1:26.04','2023-11-26 14:02:40'),
(2,6,'1:20.22','2023-11-26 14:02:40'),
(3,2,'1:34.71','2023-11-26 14:02:40'),
(3,2,'1:37.87','2023-11-26 14:02:40'),
(3,2,'1:35.15','2023-11-26 14:02:40'),
(3,2,'1:37.20','2023-11-26 14:02:40'),
(3,2,'1:36.29','2023-11-26 14:02:40'),
(3,2,'1:36.00','2023-11-26 14:02:40'),
(3,2,'1:35.63','2023-11-26 14:02:40'),
(3,2,'1:35.42','2023-11-26 14:02:40'),
(3,2,'1:42.01','2023-11-26 14:02:40'),
(3,6,'1:13.86','2023-11-26 14:02:40'),
(3,6,'1:12.00','2023-11-26 14:02:40'),
(3,6,'1:14.69','2023-11-26 14:02:40'),
(3,6,'1:10.01','2023-11-26 14:02:40'),
(3,6,'1:12.24','2023-11-26 14:02:40'),
(3,6,'1:11.00','2023-11-26 14:02:40'),
(3,6,'1:11.20','2023-11-26 14:02:40'),
(3,6,'1:12.28','2023-11-26 14:02:40'),
(3,6,'1:15.46','2023-11-26 14:02:40'),
(3,6,'1:16.03','2023-11-26 14:02:40'),
(4,5,'30.05','2023-11-26 14:02:40'),
(4,5,'30.21','2023-11-26 14:02:40'),
(4,5,'28.86','2023-11-26 14:02:40'),
(4,5,'30.65','2023-11-26 14:02:40'),
(4,5,'30.03','2023-11-26 14:02:40'),
(4,5,'29.64','2023-11-26 14:02:40'),
(4,5,'29.82','2023-11-26 14:02:40'),
(5,1,'1:11.34','2023-11-26 14:02:40'),
(5,1,'1:05.81','2023-11-26 14:02:40'),
(5,1,'1:05.75','2023-11-26 14:02:40'),
(5,1,'1:05.82','2023-11-26 14:02:40'),
(5,7,'2:29.06','2023-11-26 14:02:40'),
(5,7,'2:21.49','2023-11-26 14:02:40'),
(5,7,'2:24.13','2023-11-26 14:02:40'),
(5,7,'2:29.40','2023-11-26 14:02:40'),
(6,1,'1:12.71','2023-11-26 14:02:40'),
(6,1,'1:19.87','2023-11-26 14:02:40'),
(6,1,'1:14.94','2023-11-26 14:02:40'),
(6,1,'1:11.53','2023-11-26 14:02:40'),
(6,1,'1:14.94','2023-11-26 14:02:40'),
(6,8,'1:11.49','2023-11-26 14:02:40'),
(6,8,'1:10.16','2023-11-26 14:02:40'),
(6,8,'1:12.59','2023-11-26 14:02:40'),
(6,8,'1:11.63','2023-11-26 14:02:40'),
(6,8,'1:09.43','2023-11-26 14:02:40'),
(6,6,'1:02.13','2023-11-26 14:02:40'),
(6,6,'1:03.25','2023-11-26 14:02:40'),
(6,6,'1:04.16','2023-11-26 14:02:40'),
(6,6,'1:03.17','2023-11-26 14:02:40'),
(6,6,'1:04.84','2023-11-26 14:02:40'),
(6,6,'1:03.88','2023-11-26 14:02:40'),
(6,6,'1:04.87','2023-11-26 14:02:40'),
(7,3,'38.79','2023-11-26 14:02:40'),
(7,3,'39.03','2023-11-26 14:02:40'),
(7,3,'41.29','2023-11-26 14:02:40'),
(7,3,'39.66','2023-11-26 14:02:40'),
(7,3,'41.13','2023-11-26 14:02:40'),
(7,3,'38.57','2023-11-26 14:02:40'),
(7,3,'39.40','2023-11-26 14:02:40'),
(7,3,'41.06','2023-11-26 14:02:40'),
(7,3,'40.37','2023-11-26 14:02:40'),
(7,3,'43.05','2023-11-26 14:02:40'),
(7,3,'37.85','2023-11-26 14:02:40'),
(7,9,'39.47','2023-11-26 14:02:40'),
(7,9,'37.30','2023-11-26 14:02:40'),
(7,9,'41.90','2023-11-26 14:02:40'),
(7,9,'42.85','2023-11-26 14:02:40'),
(7,9,'39.90','2023-11-26 14:02:40'),
(7,9,'38.66','2023-11-26 14:02:40'),
(7,9,'38.84','2023-11-26 14:02:40'),
(7,9,'37.65','2023-11-26 14:02:40'),
(7,9,'39.68','2023-11-26 14:02:40'),
(7,9,'37.18','2023-11-26 14:02:40'),
(7,9,'43.61','2023-11-26 14:02:40'),
(7,5,'35.78','2023-11-26 14:02:40'),
(7,5,'36.19','2023-11-26 14:02:40'),
(7,5,'36.89','2023-11-26 14:02:40'),
(7,5,'34.29','2023-11-26 14:02:40'),
(7,5,'34.18','2023-11-26 14:02:40'),
(7,5,'35.94','2023-11-26 14:02:40'),
(8,1,'1:29.78','2023-11-26 14:02:40'),
(8,1,'1:28.38','2023-11-26 14:02:40'),
(8,1,'1:25.03','2023-11-26 14:02:40'),
(8,1,'1:25.66','2023-11-26 14:02:40'),
(9,1,'1:21.76','2023-11-26 14:02:40'),
(9,1,'1:23.32','2023-11-26 14:02:40'),
(9,1,'1:24.09','2023-11-26 14:02:40'),
(9,1,'1:21.51','2023-11-26 14:02:40'),
(9,2,'1:28.86','2023-11-26 14:02:40'),
(9,2,'1:29.90','2023-11-26 14:02:40'),
(9,2,'1:28.12','2023-11-26 14:02:40'),
(9,2,'1:28.67','2023-11-26 14:02:40'),
(10,1,'1:22.57','2023-11-26 14:02:40'),
(10,1,'1:29.64','2023-11-26 14:02:40'),
(10,1,'1:20.39','2023-11-26 14:02:40'),
(10,1,'1:23.83','2023-11-26 14:02:40'),
(10,2,'1:30.24','2023-11-26 14:02:40'),
(10,2,'1:33.18','2023-11-26 14:02:40'),
(10,2,'1:32.73','2023-11-26 14:02:40'),
(10,2,'1:33.05','2023-11-26 14:02:40'),
(10,2,'1:30.81','2023-11-26 14:02:40'),
(10,2,'1:31.74','2023-11-26 14:02:40'),
(10,2,'1:31.53','2023-11-26 14:02:40'),
(10,2,'1:33.05','2023-11-26 14:02:40'),
(10,8,'1:27.95','2023-11-26 14:02:40'),
(10,8,'1:21.07','2023-11-26 14:02:40'),
(10,8,'1:30.96','2023-11-26 14:02:40'),
(10,8,'1:23.22','2023-11-26 14:02:40'),
(10,8,'1:27.95','2023-11-26 14:02:40'),
(10,8,'1:28.30','2023-11-26 14:02:40'),
(10,10,'3:03.84','2023-11-26 14:02:40'),
(10,10,'3:04.27','2023-11-26 14:02:40'),
(10,10,'3:01.49','2023-11-26 14:02:40'),
(10,10,'3:04.27','2023-11-26 14:02:40'),
(10,10,'2:52.44','2023-11-26 14:02:40'),
(11,6,'59.21','2023-11-26 14:02:40'),
(11,6,'59.27','2023-11-26 14:02:40'),
(11,6,'58.67','2023-11-26 14:02:40'),
(11,6,'59.72','2023-11-26 14:02:40'),
(11,6,'59.17','2023-11-26 14:02:40'),
(11,7,'2:35.46','2023-11-26 14:02:40'),
(11,7,'2:28.30','2023-11-26 14:02:40'),
(11,7,'2:35.35','2023-11-26 14:02:40'),
(11,7,'2:28.84','2023-11-26 14:02:40'),
(12,6,'1:06.01','2023-11-26 14:02:40'),
(12,6,'1:06.93','2023-11-26 14:02:40'),
(12,6,'1:05.34','2023-11-26 14:02:40'),
(12,6,'1:06.10','2023-11-26 14:02:40'),
(13,2,'2:01.15','2023-11-26 14:02:40'),
(13,2,'1:57.86','2023-11-26 14:02:40'),
(13,2,'1:59.38','2023-11-26 14:02:40'),
(13,2,'1:57.94','2023-11-26 14:02:40'),
(13,2,'1:56.97','2023-11-26 14:02:40'),
(13,6,'1:32.21','2023-11-26 14:02:40'),
(13,6,'1:33.68','2023-11-26 14:02:40'),
(13,6,'1:34.10','2023-11-26 14:02:40'),
(13,6,'1:28.57','2023-11-26 14:02:40'),
(14,2,'1:36.72','2023-11-26 14:02:41'),
(14,2,'1:34.78','2023-11-26 14:02:41'),
(14,2,'1:34.05','2023-11-26 14:02:41'),
(14,2,'1:32.78','2023-11-26 14:02:41'),
(14,2,'1:33.51','2023-11-26 14:02:41'),
(14,2,'1:33.29','2023-11-26 14:02:41'),
(14,2,'1:36.47','2023-11-26 14:02:41'),
(14,2,'1:31.82','2023-11-26 14:02:41'),
(14,6,'1:19.04','2023-11-26 14:02:41'),
(14,6,'1:15.88','2023-11-26 14:02:41'),
(14,6,'1:18.62','2023-11-26 14:02:41'),
(14,6,'1:21.74','2023-11-26 14:02:41'),
(14,11,'3:27.51','2023-11-26 14:02:41'),
(14,11,'3:34.70','2023-11-26 14:02:41'),
(14,11,'3:27.15','2023-11-26 14:02:41'),
(14,11,'3:28.45','2023-11-26 14:02:41'),
(14,11,'3:34.79','2023-11-26 14:02:41'),
(14,11,'3:30.21','2023-11-26 14:02:41'),
(14,11,'3:33.74','2023-11-26 14:02:41'),
(15,1,'1:35.75','2023-11-26 14:02:41'),
(15,1,'1:32.78','2023-11-26 14:02:41'),
(15,1,'1:34.01','2023-11-26 14:02:41'),
(15,1,'1:32.57','2023-11-26 14:02:41'),
(15,6,'1:21.43','2023-11-26 14:02:41'),
(15,6,'1:21.40','2023-11-26 14:02:41'),
(15,6,'1:21.62','2023-11-26 14:02:41'),
(15,6,'1:25.38','2023-11-26 14:02:41'),
(16,1,'1:33.36','2023-11-26 14:02:41'),
(16,1,'1:31.52','2023-11-26 14:02:41'),
(16,1,'1:28.10','2023-11-26 14:02:41'),
(16,1,'1:33.37','2023-11-26 14:02:41'),
(16,1,'1:32.89','2023-11-26 14:02:41'),
(16,1,'1:33.38','2023-11-26 14:02:41'),
(16,1,'1:32.03','2023-11-26 14:02:41'),
(16,1,'1:32.71','2023-11-26 14:02:41'),
(16,2,'1:50.10','2023-11-26 14:02:41'),
(16,2,'1:47.12','2023-11-26 14:02:41'),
(16,2,'1:54.65','2023-11-26 14:02:41'),
(16,2,'1:51.03','2023-11-26 14:02:41'),
(16,6,'1:20.81','2023-11-26 14:02:41'),
(16,6,'1:23.61','2023-11-26 14:02:41'),
(16,6,'1:24.80','2023-11-26 14:02:41'),
(16,6,'1:22.05','2023-11-26 14:02:41'),
(16,6,'1:22.58','2023-11-26 14:02:41'),
(16,6,'1:23.94','2023-11-26 14:02:41'),
(16,3,'43.25','2023-11-26 14:02:41'),
(16,3,'47.35','2023-11-26 14:02:41'),
(16,3,'46.12','2023-11-26 14:02:41'),
(16,3,'45.69','2023-11-26 14:02:41'),
(16,4,'47.44','2023-11-26 14:02:41'),
(16,4,'52.32','2023-11-26 14:02:41'),
(16,4,'57.16','2023-11-26 14:02:41'),
(16,4,'56.77','2023-11-26 14:02:41'),
(16,9,'40.11','2023-11-26 14:02:41'),
(16,9,'45.43','2023-11-26 14:02:41'),
(16,9,'50.17','2023-11-26 14:02:41'),
(16,9,'43.58','2023-11-26 14:02:41'),
(16,9,'52.61','2023-11-26 14:02:41'),
(16,5,'38.94','2023-11-26 14:02:41'),
(16,5,'37.76','2023-11-26 14:02:41'),
(16,5,'41.83','2023-11-26 14:02:41'),
(16,5,'42.81','2023-11-26 14:02:41'),
(17,1,'1:27.10','2023-11-26 14:02:41'),
(17,1,'1:26.21','2023-11-26 14:02:41'),
(17,1,'1:26.42','2023-11-26 14:02:41'),
(17,1,'1:35.79','2023-11-26 14:02:41'),
(17,1,'1:30.47','2023-11-26 14:02:41'),
(17,6,'1:21.08','2023-11-26 14:02:41'),
(17,6,'1:11.23','2023-11-26 14:02:41'),
(17,6,'1:12.46','2023-11-26 14:02:41'),
(17,6,'1:16.73','2023-11-26 14:02:41'),
(18,5,'45.75','2023-11-26 14:02:41'),
(18,5,'41.62','2023-11-26 14:02:41'),
(18,5,'40.49','2023-11-26 14:02:41'),
(18,5,'41.00','2023-11-26 14:02:41'),
(19,1,'1:19.23','2023-11-26 14:02:41'),
(19,1,'1:13.70','2023-11-26 14:02:41'),
(19,1,'1:13.96','2023-11-26 14:02:41'),
(19,1,'1:15.94','2023-11-26 14:02:41'),
(19,8,'1:14.55','2023-11-26 14:02:41'),
(19,8,'1:14.15','2023-11-26 14:02:41'),
(19,8,'1:08.38','2023-11-26 14:02:41'),
(19,8,'1:08.74','2023-11-26 14:02:41'),
(19,8,'1:10.89','2023-11-26 14:02:41'),
(19,8,'1:09.47','2023-11-26 14:02:41'),
(19,8,'1:09.52','2023-11-26 14:02:41'),
(19,8,'1:09.86','2023-11-26 14:02:41'),
(19,8,'1:09.83','2023-11-26 14:02:41'),
(19,6,'1:02.52','2023-11-26 14:02:41'),
(19,6,'1:02.56','2023-11-26 14:02:41'),
(19,6,'1:06.41','2023-11-26 14:02:41'),
(19,6,'1:07.08','2023-11-26 14:02:41'),
(19,6,'1:02.56','2023-11-26 14:02:41'),
(19,6,'1:03.23','2023-11-26 14:02:41'),
(19,6,'1:04.54','2023-11-26 14:02:41'),
(19,12,'2:19.77','2023-11-26 14:02:41'),
(19,12,'2:41.57','2023-11-26 14:02:41'),
(19,12,'2:27.88','2023-11-26 14:02:41'),
(19,12,'2:37.28','2023-11-26 14:02:41'),
(19,10,'2:48.05','2023-11-26 14:02:41'),
(19,10,'2:44.03','2023-11-26 14:02:41'),
(19,10,'2:38.93','2023-11-26 14:02:41'),
(19,10,'2:54.86','2023-11-26 14:02:41'),
(20,6,'1:15.57','2023-11-26 14:02:41'),
(20,6,'1:14.40','2023-11-26 14:02:41'),
(20,6,'1:19.82','2023-11-26 14:02:41'),
(20,6,'1:12.90','2023-11-26 14:02:41'),
(21,1,'1:17.16','2023-11-26 14:02:41'),
(21,1,'1:16.65','2023-11-26 14:02:41'),
(21,1,'1:23.11','2023-11-26 14:02:41'),
(21,1,'1:14.37','2023-11-26 14:02:41'),
(21,1,'1:18.16','2023-11-26 14:02:41'),
(21,1,'1:18.28','2023-11-26 14:02:41'),
(21,1,'1:16.87','2023-11-26 14:02:41'),
(21,1,'1:17.37','2023-11-26 14:02:41'),
(21,1,'1:20.46','2023-11-26 14:02:41'),
(21,6,'1:07.99','2023-11-26 14:02:41'),
(21,6,'1:11.87','2023-11-26 14:02:41'),
(21,6,'1:11.08','2023-11-26 14:02:41'),
(21,6,'1:09.75','2023-11-26 14:02:41'),
(21,7,'2:56.68','2023-11-26 14:02:41'),
(21,7,'2:42.63','2023-11-26 14:02:41'),
(21,7,'2:40.90','2023-11-26 14:02:41'),
(21,7,'2:42.88','2023-11-26 14:02:41'),
(21,7,'2:46.09','2023-11-26 14:02:41'),
(21,12,'2:22.64','2023-11-26 14:02:41'),
(21,12,'2:28.16','2023-11-26 14:02:41'),
(21,12,'2:28.38','2023-11-26 14:02:41'),
(21,12,'2:25.08','2023-11-26 14:02:41'),
(21,12,'2:25.64','2023-11-26 14:02:41'),
(21,12,'2:33.58','2023-11-26 14:02:41'),
(21,13,'5:11.32','2023-11-26 14:02:41'),
(21,13,'5:04.12','2023-11-26 14:02:41'),
(21,13,'5:20.67','2023-11-26 14:02:41'),
(21,13,'5:08.31','2023-11-26 14:02:41'),
(21,13,'5:04.32','2023-11-26 14:02:41'),
(21,13,'5:06.77','2023-11-26 14:02:41'),
(21,13,'5:13.01','2023-11-26 14:02:41'),
(22,1,'1:19.63','2023-11-26 14:02:41'),
(22,1,'1:16.69','2023-11-26 14:02:41'),
(22,1,'1:19.68','2023-11-26 14:02:41'),
(22,1,'1:16.56','2023-11-26 14:02:41'),
(22,2,'1:20.59','2023-11-26 14:02:41'),
(22,2,'1:26.48','2023-11-26 14:02:41'),
(22,2,'1:24.15','2023-11-26 14:02:41'),
(22,2,'1:21.96','2023-11-26 14:02:41'),
(22,6,'1:08.87','2023-11-26 14:02:41'),
(22,6,'1:07.34','2023-11-26 14:02:41'),
(22,6,'1:11.00','2023-11-26 14:02:41'),
(22,6,'1:08.62','2023-11-26 14:02:41'),
(22,6,'1:10.94','2023-11-26 14:02:41'),
(22,6,'1:09.52','2023-11-26 14:02:41'),
(22,6,'1:12.04','2023-11-26 14:02:41'),
(22,6,'1:10.91','2023-11-26 14:02:41'),
(22,11,'2:54.14','2023-11-26 14:02:41'),
(22,11,'3:03.58','2023-11-26 14:02:41'),
(22,11,'3:02.43','2023-11-26 14:02:41'),
(22,11,'2:57.99','2023-11-26 14:02:41'),
(1,1,'1:26.55','2023-11-27 14:03:10'),
(1,1,'1:39.79','2023-11-27 14:03:10'),
(1,1,'1:28.75','2023-11-27 14:03:10'),
(1,1,'1:32.37','2023-11-27 14:03:10'),
(1,1,'1:31.59','2023-11-27 14:03:10'),
(1,2,'1:42.97','2023-11-27 14:03:10'),
(1,2,'1:43.31','2023-11-27 14:03:10'),
(1,2,'1:40.34','2023-11-27 14:03:10'),
(1,2,'1:43.50','2023-11-27 14:03:10'),
(6,1,'1:19.87','2023-11-27 14:03:10'),
(6,1,'1:11.53','2023-11-27 14:03:10'),
(6,1,'1:14.94','2023-11-27 14:03:10'),
(6,1,'1:12.71','2023-11-27 14:03:10'),
(6,1,'1:14.94','2023-11-27 14:03:10'),
(6,8,'1:12.59','2023-11-27 14:03:10'),
(6,8,'1:11.63','2023-11-27 14:03:10'),
(6,8,'1:09.43','2023-11-27 14:03:10'),
(6,8,'1:10.16','2023-11-27 14:03:10'),
(6,8,'1:11.49','2023-11-27 14:03:10'),
(6,6,'1:02.13','2023-11-27 14:03:10'),
(6,6,'1:03.17','2023-11-27 14:03:10'),
(6,6,'1:04.84','2023-11-27 14:03:10'),
(6,6,'1:03.88','2023-11-27 14:03:10'),
(6,6,'1:04.87','2023-11-27 14:03:10'),
(6,6,'1:04.16','2023-11-27 14:03:10'),
(6,6,'1:03.25','2023-11-27 14:03:10'),
(10,1,'1:22.57','2023-11-27 14:03:10'),
(10,1,'1:29.64','2023-11-27 14:03:10'),
(10,1,'1:23.83','2023-11-27 14:03:10'),
(10,1,'1:20.39','2023-11-27 14:03:10'),
(10,2,'1:30.24','2023-11-27 14:03:10'),
(10,2,'1:33.05','2023-11-27 14:03:10'),
(10,2,'1:33.05','2023-11-27 14:03:10'),
(10,2,'1:32.73','2023-11-27 14:03:10'),
(10,2,'1:30.81','2023-11-27 14:03:10'),
(10,2,'1:33.18','2023-11-27 14:03:10'),
(10,2,'1:31.74','2023-11-27 14:03:10'),
(10,2,'1:31.53','2023-11-27 14:03:10'),
(10,8,'1:23.22','2023-11-27 14:03:10'),
(10,8,'1:21.07','2023-11-27 14:03:10'),
(10,8,'1:27.95','2023-11-27 14:03:10'),
(10,8,'1:27.95','2023-11-27 14:03:10'),
(10,8,'1:28.30','2023-11-27 14:03:10'),
(10,8,'1:30.96','2023-11-27 14:03:10'),
(10,10,'2:52.44','2023-11-27 14:03:10'),
(10,10,'3:01.49','2023-11-27 14:03:10'),
(10,10,'3:04.27','2023-11-27 14:03:10'),
(10,10,'3:04.27','2023-11-27 14:03:10'),
(10,10,'3:03.84','2023-11-27 14:03:10'),
(23,3,'40.89','2023-11-27 14:03:10'),
(23,3,'41.50','2023-11-27 14:03:10'),
(23,3,'42.35','2023-11-27 14:03:10'),
(23,3,'40.53','2023-11-27 14:03:10'),
(23,3,'40.89','2023-11-27 14:03:10'),
(23,3,'42.14','2023-11-27 14:03:10'),
(23,3,'43.58','2023-11-27 14:03:10'),
(23,3,'39.85','2023-11-27 14:03:10'),
(23,3,'43.35','2023-11-27 14:03:10'),
(23,3,'39.18','2023-11-27 14:03:10'),
(23,4,'47.76','2023-11-27 14:03:10'),
(23,4,'46.19','2023-11-27 14:03:10'),
(23,4,'49.28','2023-11-27 14:03:10'),
(23,4,'45.71','2023-11-27 14:03:10'),
(23,4,'48.08','2023-11-27 14:03:10'),
(23,4,'53.17','2023-11-27 14:03:10'),
(23,4,'48.83','2023-11-27 14:03:10'),
(23,4,'52.85','2023-11-27 14:03:10'),
(23,4,'47.76','2023-11-27 14:03:10'),
(23,4,'45.76','2023-11-27 14:03:10'),
(23,5,'39.42','2023-11-27 14:03:10'),
(23,5,'36.13','2023-11-27 14:03:10'),
(23,5,'37.66','2023-11-27 14:03:10'),
(23,5,'39.07','2023-11-27 14:03:10'),
(11,6,'58.67','2023-11-27 14:03:10'),
(11,6,'59.72','2023-11-27 14:03:10'),
(11,6,'59.21','2023-11-27 14:03:10'),
(11,6,'59.27','2023-11-27 14:03:10'),
(11,6,'59.17','2023-11-27 14:03:10'),
(11,7,'2:35.46','2023-11-27 14:03:10'),
(11,7,'2:28.30','2023-11-27 14:03:10'),
(11,7,'2:28.84','2023-11-27 14:03:10'),
(11,7,'2:35.35','2023-11-27 14:03:10'),
(16,1,'1:32.71','2023-11-27 14:03:10'),
(16,1,'1:28.10','2023-11-27 14:03:10'),
(16,1,'1:33.36','2023-11-27 14:03:10'),
(16,1,'1:32.89','2023-11-27 14:03:10'),
(16,1,'1:33.37','2023-11-27 14:03:10'),
(16,1,'1:31.52','2023-11-27 14:03:10'),
(16,1,'1:33.38','2023-11-27 14:03:10'),
(16,1,'1:32.03','2023-11-27 14:03:10'),
(16,2,'1:54.65','2023-11-27 14:03:10'),
(16,2,'1:51.03','2023-11-27 14:03:10'),
(16,2,'1:47.12','2023-11-27 14:03:10'),
(16,2,'1:50.10','2023-11-27 14:03:10'),
(16,6,'1:24.80','2023-11-27 14:03:10'),
(16,6,'1:20.81','2023-11-27 14:03:10'),
(16,6,'1:23.61','2023-11-27 14:03:10'),
(16,6,'1:23.94','2023-11-27 14:03:10'),
(16,6,'1:22.05','2023-11-27 14:03:10'),
(16,6,'1:22.58','2023-11-27 14:03:10'),
(16,14,'1:35.96','2023-11-27 14:03:10'),
(16,14,'1:31.58','2023-11-27 14:03:10'),
(16,14,'1:32.96','2023-11-27 14:03:10'),
(16,14,'1:35.82','2023-11-27 14:03:10'),
(16,3,'46.12','2023-11-27 14:03:10'),
(16,3,'47.35','2023-11-27 14:03:10'),
(16,3,'43.25','2023-11-27 14:03:10'),
(16,3,'45.69','2023-11-27 14:03:10'),
(16,4,'56.77','2023-11-27 14:03:10'),
(16,4,'57.16','2023-11-27 14:03:10'),
(16,4,'47.44','2023-11-27 14:03:10'),
(16,4,'52.32','2023-11-27 14:03:10'),
(16,9,'52.61','2023-11-27 14:03:10'),
(16,9,'40.11','2023-11-27 14:03:10'),
(16,9,'43.58','2023-11-27 14:03:10'),
(16,9,'50.17','2023-11-27 14:03:10'),
(16,9,'45.43','2023-11-27 14:03:10'),
(16,5,'37.76','2023-11-27 14:03:10'),
(16,5,'38.94','2023-11-27 14:03:10'),
(16,5,'41.83','2023-11-27 14:03:10'),
(16,5,'42.81','2023-11-27 14:03:10'),
(18,5,'41.62','2023-11-27 14:03:10'),
(18,5,'40.49','2023-11-27 14:03:10'),
(18,5,'41.00','2023-11-27 14:03:10'),
(18,5,'45.75','2023-11-27 14:03:10'),
(20,6,'1:14.40','2023-11-27 14:03:10'),
(20,6,'1:15.57','2023-11-27 14:03:10'),
(20,6,'1:19.82','2023-11-27 14:03:10'),
(20,6,'1:12.90','2023-11-27 14:03:10');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 13:37:24
