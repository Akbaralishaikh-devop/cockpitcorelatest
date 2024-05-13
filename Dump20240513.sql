-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: automation4
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kusers`
--

DROP TABLE IF EXISTS `kusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kusers`
--

LOCK TABLES `kusers` WRITE;
/*!40000 ALTER TABLE `kusers` DISABLE KEYS */;
INSERT INTO `kusers` VALUES (1,'vaibhav','vaibhav.ansari@cloverinfotech.com');
/*!40000 ALTER TABLE `kusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` timestamp NULL DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `retry_pass` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'kiran','123',1,'2024-02-27 05:59:04','Kiran','2024-02-27 05:59:04','Kiran',NULL,NULL),(2,'clover','123',2,'2024-02-27 05:59:38','Clover','2024-02-27 05:59:38','Clover',NULL,NULL),(3,'vaibhav','123',1,'2024-02-27 06:00:06','Vaibhav','2024-02-27 06:00:06','Vaibhav',NULL,NULL),(8,'akshay','123',1,'2024-03-11 06:41:08','Kiran','2024-03-11 06:41:08','Aishwarya','123',NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bot_name`
--

DROP TABLE IF EXISTS `tbl_bot_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bot_name` (
  `bot_id` int NOT NULL AUTO_INCREMENT,
  `bot_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bot_name`
--

LOCK TABLES `tbl_bot_name` WRITE;
/*!40000 ALTER TABLE `tbl_bot_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bot_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_botname`
--

DROP TABLE IF EXISTS `tbl_botname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_botname` (
  `BotId` mediumint NOT NULL AUTO_INCREMENT,
  `BotName` varchar(100) DEFAULT NULL,
  `LocationId` mediumint NOT NULL,
  `DepartmentId` mediumint NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BotId`),
  KEY `FK_tbl_location` (`LocationId`),
  KEY `FK_tbl_department` (`DepartmentId`),
  CONSTRAINT `FK_tbl_department` FOREIGN KEY (`DepartmentId`) REFERENCES `tbl_department` (`DepartmentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_location` FOREIGN KEY (`LocationId`) REFERENCES `tbl_location` (`LocationId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_botname`
--

LOCK TABLES `tbl_botname` WRITE;
/*!40000 ALTER TABLE `tbl_botname` DISABLE KEYS */;
INSERT INTO `tbl_botname` VALUES (1,'Saving',101,1,'2024-03-07 16:11:40','Sakshi','2024-03-07 16:11:40','Priyanka',1,'2'),(2,'TradeQuery',102,2,'2024-03-11 10:12:08','Sakshi','2024-03-11 10:12:08','Priyanka',1,NULL),(3,'policyData',103,3,'2022-08-20 00:00:00','Rahul','2022-09-14 00:00:00','Nitin',1,NULL),(4,'FD',101,1,'2024-02-26 18:36:39','Sakshi','2024-02-26 18:36:39','Priyanka',1,NULL),(5,'FD',101,1,'2024-02-26 18:36:51','Sakshi','2024-02-26 18:36:51','Priyanka',1,NULL),(7,'BOT7',107,26,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(8,'BOT5',105,4,'2024-01-13 00:00:00','Monika','2024-01-18 00:00:00','Kiran',1,NULL),(9,'FD',103,1,'2024-03-11 14:39:39','Sakshi','2024-03-11 14:39:39','Priyanka',1,NULL),(10,'RD',103,1,'2024-03-12 20:52:58','Sakshi','2024-03-12 20:52:58','Priyanka',1,NULL),(11,'Bot3',109,2,'2024-03-13 12:48:03','Sakshi','2024-03-13 12:48:03','Priyanka',1,NULL),(12,'Saving',108,6,'2024-03-14 23:04:44','Sakshi','2024-03-14 23:04:44','Priyanka',0,'2'),(13,'RD',103,1,'2024-03-01 11:31:24','Sakshi','2024-03-01 11:31:24','Priyanka',1,NULL),(14,'BOT6',106,5,'2024-02-14 00:00:00','Vaibhav','2024-02-16 00:00:00','Kiran',0,NULL),(15,'Bot1',103,3,'2024-03-14 23:05:03','Sakshi','2024-03-14 23:05:03','Priyanka',0,'3'),(16,'Bot4',103,1,'2024-03-13 12:45:46','Sakshi','2024-03-13 12:45:46','Priyanka',1,NULL),(17,'Bot13',105,3,'2024-03-14 10:44:43','Sakshi','2024-03-14 10:44:43','Priyanka',1,NULL),(18,'Bot 4',101,1,'2024-03-14 10:45:18','Sakshi','2024-03-14 10:45:18','Priyanka',1,'2'),(19,'Bot5',101,2,'2024-03-14 10:46:37','Sakshi','2024-03-14 10:46:37','Priyanka',1,NULL),(20,'Bot4',103,2,'2024-03-17 20:59:04','Sakshi','2024-03-17 20:59:04','Priyanka',0,NULL),(21,'Bot8',103,5,'2024-03-14 23:00:38','Sakshi','2024-03-14 23:00:38','Priyanka',0,NULL),(22,'Saving',102,2,'2024-03-14 23:50:17','Sakshi','2024-03-14 23:50:17','Priyanka',0,NULL),(23,'BOT5',105,5,'2024-03-14 23:54:13','Sakshi','2024-03-14 23:54:13','Priyanka',0,NULL),(24,'BOT6',105,5,'2024-03-14 23:54:32','Sakshi','2024-03-14 23:54:32','Priyanka',0,NULL),(25,'BOT7',105,5,'2024-03-17 20:59:51','Sakshi','2024-03-17 20:59:51','Priyanka',0,NULL),(26,'BOT8',105,5,'2024-03-17 22:02:03','Sakshi','2024-03-17 22:02:03','Priyanka',1,NULL),(27,'BOT9',105,5,'2024-03-17 22:01:50','Sakshi','2024-03-17 22:01:50','Priyanka',1,NULL),(28,'BOT10',105,5,'2024-03-17 22:01:38','Sakshi','2024-03-17 22:01:38','Priyanka',1,'4'),(29,'BOT11',103,2,'2024-03-17 22:01:23','Sakshi','2024-03-17 22:01:23','Priyanka',1,NULL),(30,'BOT12',119,20,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(31,'BOT13',121,21,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(32,'BOT14',127,17,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(33,'BOT15',130,35,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(34,'BOT16',106,16,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(35,'BOT17',107,26,'2023-06-15 00:00:00','Deepak','2023-06-19 00:00:00','Kiran',1,NULL),(46,'bot18',102,2,'2024-04-10 15:31:54','Sakshi','2024-04-10 15:31:54','Priyanka',0,'2'),(47,'bot19',101,1,'2024-04-10 15:35:55','Sakshi','2024-04-10 15:35:55','Priyanka',0,'4'),(48,'Bot4',106,19,'2024-04-10 15:42:35','Sakshi','2024-04-10 15:42:35','Priyanka',0,'2');
/*!40000 ALTER TABLE `tbl_botname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_department` (
  `DepartmentId` mediumint NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `department_id` int NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'Coe','2022-10-01 00:00:00','Priyanka','2022-11-01 00:00:00','Sakshi',1,0,NULL),(2,'Sales','2022-09-17 00:00:00','Nitin','2022-08-05 00:00:00','Rahul',0,0,NULL),(3,'Finance','2022-08-15 00:00:00','Alisha','2022-09-20 00:00:00','Pooja',1,0,NULL),(4,'Hr','2022-08-15 00:00:00','Vaibhav','2022-09-20 00:00:00','Mangesh',1,0,NULL),(5,'Production','2022-08-15 00:00:00','Vaibhav','2022-09-20 00:00:00','Mangesh',1,0,NULL),(6,'Test','2024-03-13 07:24:43','Sakshi','2024-03-13 07:24:43','Sakshi',1,6,NULL),(7,'Bussines','2023-10-01 00:00:00','Monika','2023-11-01 00:00:00','Kiran',0,4,NULL),(8,'Thane','2024-02-26 10:24:10','Sakshi','2024-02-26 10:24:10','Sakshi',1,6,NULL),(9,'Development','2023-11-01 00:00:00','Megha','2023-11-01 00:00:00','Chinmay',1,4,NULL),(10,'Development','2024-02-01 00:00:00','Omkar','2024-02-01 00:00:00','Ritesh',1,1,NULL),(11,'Oracle','2023-11-01 00:00:00','Deepak','2023-11-01 00:00:00','Chinmay',0,2,NULL),(12,'HR','2023-10-01 00:00:00','Ankita','2023-10-01 00:00:00','Kiran',1,3,NULL),(13,'Middle-wear','2023-07-01 00:00:00','Vaibhav','2023-07-01 00:00:00','Amit',0,4,NULL),(14,'Backend','2023-05-01 00:00:00','Sayali','2023-05-01 00:00:00','Chinmay',1,5,NULL),(15,'Mechanical','2024-03-13 08:47:08','Sakshi','2024-03-13 08:47:08','Sakshi',1,6,NULL),(16,'SocialMedia','2024-03-13 11:26:25','Sakshi','2024-03-13 11:26:25','Sakshi',1,6,NULL),(17,'SocialMedia','2024-03-14 05:34:09','Sakshi','2024-03-14 05:34:09','Sakshi',1,6,NULL),(18,'Learning','2024-03-13 17:43:59','Sakshi','2024-03-13 17:43:59','Sakshi',1,6,NULL),(19,'Marketing','2023-11-01 00:00:00','Shiv','2023-11-01 00:00:00','Aishwarya',0,8,NULL),(20,'Electric','2024-03-14 14:50:03','Sakshi','2024-03-14 14:50:03','Sakshi',1,6,NULL),(21,'Computer','2024-03-17 16:27:42','Sakshi','2024-03-17 16:27:42','Sakshi',1,6,NULL),(22,'Instrument','2024-03-14 14:51:41','Sakshi','2024-03-14 14:51:41','Sakshi',1,6,NULL),(23,'Matching','2024-03-17 15:27:34','Sakshi','2024-03-17 15:27:34','Sakshi',0,6,NULL),(24,'Production','2023-11-01 00:00:00','Payal','2023-11-01 00:00:00','Chinmay',0,8,NULL),(25,'HR','2023-11-01 00:00:00','Kartik','2023-11-01 00:00:00','Kiran',0,8,NULL),(26,'Sales','2023-11-01 00:00:00','Dhruv','2023-11-01 00:00:00','Chinmay',0,8,NULL),(27,'Middleware','2023-11-01 00:00:00','Kiran','2023-11-01 00:00:00','Vaibhav',0,8,NULL),(28,'Oracle','2023-11-01 00:00:00','Aishwarya','2023-11-01 00:00:00','Chinmay',0,8,NULL),(29,'Sales','2023-11-01 00:00:00','Omakr','2023-11-01 00:00:00','Kiran',0,8,NULL),(30,'Packaging','2023-11-01 00:00:00','om','2023-11-01 00:00:00','Sakshi',0,8,NULL),(31,'Dispatch','2023-11-01 00:00:00','Parag','2023-11-01 00:00:00','Chinmay',0,8,NULL),(32,'Content','2023-11-01 00:00:00','Tushar','2023-11-01 00:00:00','khalid',0,8,NULL),(34,'Deveops','2023-11-01 00:00:00','Aishwarya','2023-11-01 00:00:00','khalid',0,8,NULL),(35,'Sales','2023-11-01 00:00:00','Amey','2023-11-01 00:00:00','khalid',0,8,NULL);
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_location`
--

DROP TABLE IF EXISTS `tbl_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_location` (
  `LocationId` mediumint NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `id` int NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `location_id` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_location`
--

LOCK TABLES `tbl_location` WRITE;
/*!40000 ALTER TABLE `tbl_location` DISABLE KEYS */;
INSERT INTO `tbl_location` VALUES (101,'Andheri','2021-11-11 00:00:00','Priyanka','2021-12-11 00:00:00','sakshi',1,0,NULL,0,NULL,NULL,NULL,NULL,NULL),(102,'Panvel','2021-10-05 00:00:00','Pooja','2021-11-15 00:00:00','Neha',1,0,NULL,0,NULL,NULL,NULL,NULL,NULL),(103,'Kurla','2022-08-10 00:00:00','Rahul','2022-09-15 00:00:00','Nitin',1,0,NULL,0,NULL,NULL,NULL,NULL,NULL),(105,'Kharghar','2022-11-11 05:00:00','Aditi','2022-11-25 11:15:00','Manali',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL),(106,'Latur','2024-03-11 16:28:51','Sakshi','2024-03-11 16:28:51','Sakshi',1,6,NULL,106,NULL,NULL,NULL,NULL,NULL),(107,'Aeroli','2024-02-22 10:23:34','Sakshi','2024-02-22 10:23:34','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(108,'Vashi','2024-02-26 04:27:18','Sakshi','2024-02-26 04:27:18','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(109,'Aeroli','2024-02-26 09:55:52','Sakshi','2024-02-26 09:55:52','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(110,'Solapur','2024-03-17 21:28:25','Sakshi','2024-03-17 21:28:25','Sakshi',1,6,NULL,110,NULL,NULL,NULL,NULL,NULL),(111,'solapur','2024-03-01 06:00:58','Sakshi','2024-03-01 06:00:58','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(112,'Nagpur','2023-04-11 00:00:00','Shivani','2023-04-12 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(113,'Chandrapur','2023-05-17 00:00:00','Megha','2023-05-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(114,'Belapur','2024-03-17 21:49:20','Sakshi','2024-03-17 21:49:20','Sakshi',0,6,NULL,114,NULL,NULL,NULL,NULL,NULL),(115,'Satara','2024-03-14 14:48:12','Sakshi','2024-03-14 14:48:12','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(116,'Parbhani','2024-03-17 13:57:18','Sakshi','2024-03-17 13:57:18','Sakshi',1,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(117,'Beed','2024-03-17 21:50:13','Sakshi','2024-03-17 21:50:13','Sakshi',1,6,NULL,117,NULL,NULL,NULL,NULL,NULL),(118,'Nanded','2024-03-17 21:50:26','Sakshi','2024-03-17 21:50:26','Sakshi',1,6,NULL,118,NULL,NULL,NULL,NULL,NULL),(119,'Badlapur','2023-08-17 00:00:00','Kajol','2023-08-22 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(120,'Bhandup','2023-05-17 00:00:00','Pratik','2023-05-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(121,'Malabar Hill','2024-01-17 00:00:00','Spandhan','2024-01-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(122,'Bhuleshwar','2024-01-19 00:00:00','Naya','0202-01-20 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(123,'Ambivali','2023-06-17 00:00:00','Ishaan','2023-06-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(124,'Byculla','2023-07-15 00:00:00','Kanan','2023-07-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(125,'Dharavi','2023-08-21 00:00:00','Atharv','2023-08-22 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(126,'Juhu','2023-09-13 00:00:00','Navi','2023-09-15 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(128,'Chembur','2023-11-14 00:00:00','Aarna','2023-11-16 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(129,'Behram Baug','2023-12-17 00:00:00','Amar','2023-12-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(130,'Bharam Nagar','2024-01-06 00:00:00','Agastya','2024-01-08 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(131,'Ambujwadi','2024-01-09 00:00:00','Nila','2024-01-11 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(132,'Seawoods','2024-02-03 00:00:00','Tenzin','2024-02-05 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(133,'Seven Bungalows','2024-02-07 00:00:00','Aditi','2024-02-09 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(134,'Taloja','2024-02-14 00:00:00','Ananya','2024-02-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL),(135,'Kamothe','2024-02-17 00:00:00','Ambar','2024-02-18 00:00:00','aishwarya',0,5,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_real_time_data`
--

DROP TABLE IF EXISTS `tbl_real_time_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_real_time_data` (
  `process_id` int NOT NULL AUTO_INCREMENT,
  `bot_id` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `department_id` int NOT NULL,
  `end_time` date DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `location_id` int NOT NULL,
  `process_name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` int NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_real_time_data`
--

LOCK TABLES `tbl_real_time_data` WRITE;
/*!40000 ALTER TABLE `tbl_real_time_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_real_time_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_realtimedata`
--

DROP TABLE IF EXISTS `tbl_realtimedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_realtimedata` (
  `ProcessId` mediumint NOT NULL AUTO_INCREMENT,
  `BotId` mediumint NOT NULL,
  `DepartmentId` mediumint NOT NULL,
  `LocationId` mediumint NOT NULL,
  `Process_Name` varchar(100) DEFAULT NULL,
  `Host_Name` varchar(100) DEFAULT NULL,
  `Transaction_ID` mediumint NOT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ProcessId`),
  KEY `FK_tbl_botname` (`BotId`),
  KEY `FK_tbl_department1` (`DepartmentId`),
  KEY `FK_tbl_location1` (`LocationId`),
  CONSTRAINT `FK_tbl_botname` FOREIGN KEY (`BotId`) REFERENCES `tbl_botname` (`BotId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_department1` FOREIGN KEY (`DepartmentId`) REFERENCES `tbl_department` (`DepartmentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_location1` FOREIGN KEY (`LocationId`) REFERENCES `tbl_location` (`LocationId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_realtimedata`
--

LOCK TABLES `tbl_realtimedata` WRITE;
/*!40000 ALTER TABLE `tbl_realtimedata` DISABLE KEYS */;
INSERT INTO `tbl_realtimedata` VALUES (1,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','processed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(2,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','Unprocessed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(3,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','processed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(4,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','processed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(5,3,3,103,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','processed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(6,1,4,103,'Account closure process','Aishwarya',211,'2023-10-15 11:30:00','2023-10-15 02:00:00','processed','success','2023-10-10 11:00:00','Kashmeera','2023-11-20 12:02:00','Admin',1),(7,4,5,105,'Bank Reconciliation','Shivani',211,'2024-01-15 11:30:00','2024-01-15 02:00:00','Unprocessed','success','2024-01-10 11:00:00','Kashmeera','2024-01-22 12:02:00','Admin',1),(8,2,2,102,'Accounts payable','Monika',211,'2023-10-15 11:30:00','2023-10-15 02:00:00','processed','success','2023-10-10 11:00:00','Kashmeera','2023-11-20 12:02:00','Admin',1),(9,2,2,102,'Mortgage processing','Akshay',211,'2024-02-15 11:30:00','2024-02-15 02:00:00','processed','Unprocessed','2024-02-10 11:00:00','Kashmeera','2024-02-21 12:02:00','Admin',1),(10,3,3,109,'Bank Reconciliation','Cinmay',211,'2023-10-15 11:30:00','2023-10-15 02:00:00','processed','Unprocessed','2023-10-10 11:00:00','Kashmeera','2023-11-21 12:02:00','Admin',1),(11,5,6,107,'Accounts payable','Monika',211,'2024-02-15 11:30:00','2024-02-15 02:00:00','processed','success','2023-10-10 11:00:00','Kashmeera','2023-11-20 12:02:00','Admin',1),(12,9,8,108,'Credit card application processing','Akshay',211,'2023-02-15 11:30:00','2023-02-15 02:00:00','processed','Unprocessed','2024-02-10 11:00:00','Kashmeera','2024-02-21 12:02:00','Admin',1),(13,10,5,109,'Bank Reconciliation','Cinmay',211,'2024-10-15 11:30:00','2024-10-15 02:00:00','processed','Unprocessed','2023-10-10 11:00:00','Kashmeera','2023-11-21 12:02:00','Admin',1),(15,9,9,109,'Motor ','Deepak',213,'2024-01-15 11:30:00','2024-01-15 02:00:00','Unprocessed','unsuccess','2024-01-15 11:00:00','Kashmira','2024-01-15 12:02:00','Admin',1),(16,21,21,121,'Motor fleet Process','PriyankaYadav',211,'2022-10-15 11:30:00','2022-10-15 02:00:00','processed','success','2022-10-10 11:00:00','Kashmeera','2022-11-20 12:02:00','Mansi',1),(17,10,10,110,'Debit-card ','Sandesh',213,'2024-02-15 11:30:00','2024-02-18 02:00:00','Unprocessed','unsuccess','2024-02-15 11:00:00','gayatri','2024-02-18 12:02:00','Admin',1),(18,2,2,102,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(19,21,21,121,'Motor ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(20,18,18,129,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(21,11,12,130,'Accounts payable ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(22,16,16,126,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(24,14,14,114,'Debit-card ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(25,35,35,135,'Bank Reconciliation ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(26,18,28,132,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(27,7,9,109,'Bank Reconciliation ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(28,18,28,132,'Bank Reconciliation ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(29,7,9,109,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(30,18,28,132,'Debit-card ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(31,11,12,130,'Motor ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(32,7,9,109,'Sales ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','processed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(33,20,20,120,'Bank Reconciliation ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(34,11,12,130,'Bank Reconciliation ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(35,35,35,135,'Debit-card ','Amit',213,'2023-06-15 11:30:00','2023-06-22 02:00:00','Unprocessed','unsuccess','2023-06-15 11:00:00','gayatri','2023-06-22 12:02:00','Admin',1),(198,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:49','2024-05-07 16:59:49','processed','success','2024-05-07 16:59:49','Kashmeera','2024-05-07 16:59:49','Mansi',1),(199,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:49','2024-05-07 16:59:49','Unprocessed','success','2024-05-07 16:59:49','Kashmeera','2024-05-07 16:59:49','Mansi',2),(200,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:49','2024-05-07 16:59:49','processed','success','2024-05-07 16:59:49','Kashmeera','2024-05-07 16:59:49','Mansi',3),(201,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Mansi',4),(202,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Mansi',5),(203,2,2,102,'Account closure process','Aishwarya',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',6),(204,2,2,102,'Bank Reconciliation','Shivani',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',7),(205,3,3,103,'Accounts payable','Monika',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',8),(206,3,3,103,'Mortgage processing','Akshay',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','Unprocessed','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',9),(207,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','Unprocessed','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',10),(208,3,3,103,'Accounts payable','Monika',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',11),(209,3,3,103,'Credit card application processing','Akshay',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','Unprocessed','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',12),(210,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','Unprocessed','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Admin',13),(211,3,3,103,'Motor','Deepak',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','Kashmira','2024-05-07 16:59:50','Admin',15),(212,10,10,110,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','success','2024-05-07 16:59:50','Kashmeera','2024-05-07 16:59:50','Mansi',16),(213,10,10,110,'Debit-card','Sandesh',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',17),(214,10,10,110,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',18),(215,10,10,110,'Motor','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',19),(216,10,10,110,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',20),(217,10,10,110,'Accounts payable','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',21),(218,10,10,110,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',22),(219,10,10,110,'Debit-card','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',24),(220,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',25),(221,10,10,110,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',26),(222,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',27),(223,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',28),(224,5,5,105,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',29),(225,5,5,105,'Debit-card','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',30),(226,5,5,105,'Motor','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',31),(227,5,5,105,'Sales','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','processed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',32),(228,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',33),(229,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',34),(230,15,15,115,'Debit-card','Amit',213,'2024-05-07 16:59:50','2024-05-07 16:59:50','Unprocessed','unsuccess','2024-05-07 16:59:50','gayatri','2024-05-07 16:59:50','Admin',35),(231,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',1),(232,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',2),(233,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',3),(234,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',4),(235,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',5),(236,2,2,102,'Account closure process','Aishwarya',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',6),(237,2,2,102,'Bank Reconciliation','Shivani',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',7),(238,3,3,103,'Accounts payable','Monika',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',8),(239,3,3,103,'Mortgage processing','Akshay',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','Unprocessed','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',9),(240,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','Unprocessed','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',10),(241,3,3,103,'Accounts payable','Monika',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',11),(242,3,3,103,'Credit card application processing','Akshay',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','Unprocessed','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',12),(243,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','Unprocessed','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Admin',13),(244,3,3,103,'Motor','Deepak',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','Kashmira','2024-05-07 17:13:40','Admin',15),(245,10,10,110,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','Kashmeera','2024-05-07 17:13:40','Mansi',16),(246,10,10,110,'Debit-card','Sandesh',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',17),(247,10,10,110,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',18),(248,10,10,110,'Motor','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',19),(249,10,10,110,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',20),(250,10,10,110,'Accounts payable','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',21),(251,10,10,110,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',22),(252,10,10,110,'Debit-card','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',24),(253,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',25),(254,10,10,110,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',26),(255,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',27),(256,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',28),(257,5,5,105,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',29),(258,5,5,105,'Debit-card','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',30),(259,5,5,105,'Motor','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',31),(260,5,5,105,'Sales','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',32),(261,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',33),(262,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',34),(263,15,15,115,'Debit-card','Amit',213,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',35),(264,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',36),(265,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',37),(266,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',38),(267,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',39),(268,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',40),(269,2,2,102,'Account closure process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',41),(270,2,2,102,'Bank Reconciliation','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',42),(271,2,2,102,'Accounts payable','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',43),(272,2,2,102,'Mortgage processing','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',44),(273,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',45),(274,3,3,103,'Accounts payable','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',46),(275,3,3,103,'Credit card application processing','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',47),(276,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',48),(277,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',49),(278,3,3,103,'Motor ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',50),(279,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',51),(280,10,10,110,'Debit-card ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',52),(281,10,10,110,'Sales ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',53),(282,10,10,110,'Motor ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',54),(283,10,10,110,'Sales ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',55),(284,10,10,110,'Accounts payable ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',56),(285,10,10,110,'Sales ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',57),(286,10,10,110,'Debit-card ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',58),(287,10,10,110,'Bank Reconciliation ','aiswarya',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',59),(288,10,10,110,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',60),(289,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',61),(290,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',62),(291,5,5,105,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',63),(292,5,5,105,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',64),(293,5,5,105,'Motor ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',65),(294,5,5,105,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',66),(295,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',67),(296,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',68),(297,5,5,105,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',69),(298,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',70),(299,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',71),(300,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',72),(301,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',73),(302,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',74),(303,15,15,115,'Account closure process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',75),(304,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',76),(305,12,12,112,'Accounts payable','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',77),(306,12,12,112,'Mortgage processing','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',78),(307,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',79),(308,12,12,112,'Accounts payable','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',80),(309,20,20,120,'Credit card application processing','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',81),(310,20,20,120,'Bank Reconciliation','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',82),(311,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',83),(312,20,20,120,'Motor ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',84),(313,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',85),(314,20,20,120,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',86),(315,20,20,120,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',87),(316,35,35,135,'Motor ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',88),(317,35,35,135,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',89),(318,35,35,135,'Accounts payable ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',90),(319,35,35,135,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',91),(320,35,35,135,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',92),(321,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',93),(322,35,35,135,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',94),(323,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',95),(324,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',96),(325,35,35,135,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',97),(326,35,35,135,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',98),(327,35,35,135,'Motor ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',99),(328,9,9,109,'Sales ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','processed','success','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',100),(329,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',101),(330,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',102),(331,9,9,109,'Debit-card ','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',103),(332,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',104),(333,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',105),(334,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',106),(335,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',107),(336,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',108),(337,9,9,109,'Account closure process','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',109),(338,9,9,109,'Bank Reconciliation','chinmay',214,'2024-05-07 17:13:40','2024-05-07 17:13:40','Unprocessed','unsuccess','2024-05-07 17:13:40','gayatri','2024-05-07 17:13:40','Admin',110),(339,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',1),(340,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',2),(341,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',3),(342,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',4),(343,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',5),(344,2,2,102,'Account closure process','Aishwarya',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',6),(345,2,2,102,'Bank Reconciliation','Shivani',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',7),(346,3,3,103,'Accounts payable','Monika',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',8),(347,3,3,103,'Mortgage processing','Akshay',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','Unprocessed','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',9),(348,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','Unprocessed','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',10),(349,3,3,103,'Accounts payable','Monika',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',11),(350,3,3,103,'Credit card application processing','Akshay',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','Unprocessed','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',12),(351,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','Unprocessed','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Admin',13),(352,3,3,103,'Motor','Deepak',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','Kashmira','2024-05-07 18:06:57','Admin',15),(353,10,10,110,'Motor fleet Process','PriyankaYadav',211,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','Kashmeera','2024-05-07 18:06:57','Mansi',16),(354,10,10,110,'Debit-card','Sandesh',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',17),(355,10,10,110,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',18),(356,10,10,110,'Motor','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',19),(357,10,10,110,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',20),(358,10,10,110,'Accounts payable','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',21),(359,10,10,110,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',22),(360,10,10,110,'Debit-card','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',24),(361,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',25),(362,10,10,110,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',26),(363,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',27),(364,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',28),(365,5,5,105,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',29),(366,5,5,105,'Debit-card','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',30),(367,5,5,105,'Motor','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',31),(368,5,5,105,'Sales','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',32),(369,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',33),(370,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',34),(371,15,15,115,'Debit-card','Amit',213,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',35),(372,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',36),(373,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',37),(374,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',38),(375,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',39),(376,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',40),(377,2,2,102,'Account closure process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',41),(378,2,2,102,'Bank Reconciliation','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',42),(379,2,2,102,'Accounts payable','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',43),(380,2,2,102,'Mortgage processing','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',44),(381,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',45),(382,3,3,103,'Accounts payable','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',46),(383,3,3,103,'Credit card application processing','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',47),(384,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',48),(385,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',49),(386,3,3,103,'Motor ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',50),(387,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',51),(388,10,10,110,'Debit-card ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',52),(389,10,10,110,'Sales ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',53),(390,10,10,110,'Motor ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',54),(391,10,10,110,'Sales ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',55),(392,10,10,110,'Accounts payable ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',56),(393,10,10,110,'Sales ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',57),(394,10,10,110,'Debit-card ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',58),(395,10,10,110,'Bank Reconciliation ','aiswarya',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',59),(396,10,10,110,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',60),(397,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',61),(398,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',62),(399,5,5,105,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',63),(400,5,5,105,'Debit-card ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',64),(401,5,5,105,'Motor ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',65),(402,5,5,105,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',66),(403,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',67),(404,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',68),(405,5,5,105,'Debit-card ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',69),(406,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',70),(407,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',71),(408,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',72),(409,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',73),(410,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',74),(411,15,15,115,'Account closure process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',75),(412,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',76),(413,12,12,112,'Accounts payable','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',77),(414,12,12,112,'Mortgage processing','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',78),(415,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',79),(416,12,12,112,'Accounts payable','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',80),(417,20,20,120,'Credit card application processing','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',81),(418,20,20,120,'Bank Reconciliation','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',82),(419,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',83),(420,20,20,120,'Motor ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',84),(421,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',85),(422,20,20,120,'Debit-card ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',86),(423,20,20,120,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',87),(424,35,35,135,'Motor ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',88),(425,35,35,135,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',89),(426,35,35,135,'Accounts payable ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',90),(427,35,35,135,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',91),(428,35,35,135,'Debit-card ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',92),(429,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',93),(430,35,35,135,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','Unprocessed','unsuccess','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',94),(431,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',95),(432,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',96),(433,35,35,135,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',97),(434,35,35,135,'Debit-card ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',98),(435,35,35,135,'Motor ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',99),(436,9,9,109,'Sales ','chinmay',214,'2024-05-07 18:06:57','2024-05-07 18:06:57','processed','success','2024-05-07 18:06:57','gayatri','2024-05-07 18:06:57','Admin',100),(437,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',101),(438,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',102),(439,9,9,109,'Debit-card ','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',103),(440,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',104),(441,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',105),(442,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',106),(443,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',107),(444,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',108),(445,9,9,109,'Account closure process','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',109),(446,9,9,109,'Bank Reconciliation','chinmay',214,'2024-05-07 18:06:58','2024-05-07 18:06:58','Unprocessed','unsuccess','2024-05-07 18:06:58','gayatri','2024-05-07 18:06:58','Admin',110),(447,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',1),(448,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',2),(449,1,1,101,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',3),(450,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',4),(451,2,2,102,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',5),(452,2,2,102,'Account closure process','Aishwarya',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',6),(453,2,2,102,'Bank Reconciliation','Shivani',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',7),(454,3,3,103,'Accounts payable','Monika',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',8),(455,3,3,103,'Mortgage processing','Akshay',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','Unprocessed','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',9),(456,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','Unprocessed','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',10),(457,3,3,103,'Accounts payable','Monika',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',11),(458,3,3,103,'Credit card application processing','Akshay',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','Unprocessed','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',12),(459,3,3,103,'Bank Reconciliation','Cinmay',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','Unprocessed','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Admin',13),(460,3,3,103,'Motor','Deepak',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','Kashmira','2024-05-13 12:23:47','Admin',15),(461,10,10,110,'Motor fleet Process','PriyankaYadav',211,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','Kashmeera','2024-05-13 12:23:47','Mansi',16),(462,10,10,110,'Debit-card','Sandesh',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',17),(463,10,10,110,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',18),(464,10,10,110,'Motor','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',19),(465,10,10,110,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',20),(466,10,10,110,'Accounts payable','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',21),(467,10,10,110,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',22),(468,10,10,110,'Debit-card','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',24),(469,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',25),(470,10,10,110,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',26),(471,10,10,110,'Bank Reconciliation','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',27),(472,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',28),(473,5,5,105,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',29),(474,5,5,105,'Debit-card','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',30),(475,5,5,105,'Motor','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',31),(476,5,5,105,'Sales','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',32),(477,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',33),(478,5,5,105,'Bank Reconciliation','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',34),(479,15,15,115,'Debit-card','Amit',213,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',35),(480,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',36),(481,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',37),(482,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',38),(483,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',39),(484,1,1,101,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',40),(485,2,2,102,'Account closure process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',41),(486,2,2,102,'Bank Reconciliation','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',42),(487,2,2,102,'Accounts payable','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',43),(488,2,2,102,'Mortgage processing','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',44),(489,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',45),(490,3,3,103,'Accounts payable','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',46),(491,3,3,103,'Credit card application processing','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',47),(492,3,3,103,'Bank Reconciliation','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',48),(493,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',49),(494,3,3,103,'Motor ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',50),(495,3,3,103,'Motor fleet Process','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',51),(496,10,10,110,'Debit-card ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',52),(497,10,10,110,'Sales ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',53),(498,10,10,110,'Motor ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',54),(499,10,10,110,'Sales ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',55),(500,10,10,110,'Accounts payable ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',56),(501,10,10,110,'Sales ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',57),(502,10,10,110,'Debit-card ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',58),(503,10,10,110,'Bank Reconciliation ','aiswarya',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',59),(504,10,10,110,'Sales ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',60),(505,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',61),(506,10,10,110,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',62),(507,5,5,105,'Sales ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',63),(508,5,5,105,'Debit-card ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',64),(509,5,5,105,'Motor ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',65),(510,5,5,105,'Sales ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',66),(511,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',67),(512,5,5,105,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',68),(513,5,5,105,'Debit-card ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',69),(514,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',70),(515,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',71),(516,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',72),(517,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',73),(518,15,15,115,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',74),(519,15,15,115,'Account closure process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',75),(520,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',76),(521,12,12,112,'Accounts payable','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',77),(522,12,12,112,'Mortgage processing','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',78),(523,12,12,112,'Bank Reconciliation','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',79),(524,12,12,112,'Accounts payable','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',80),(525,20,20,120,'Credit card application processing','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',81),(526,20,20,120,'Bank Reconciliation','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',82),(527,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',83),(528,20,20,120,'Motor ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',84),(529,20,20,120,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','processed','success','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',85),(530,20,20,120,'Debit-card ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',86),(531,20,20,120,'Sales ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',87),(532,35,35,135,'Motor ','chinmay',214,'2024-05-13 12:23:47','2024-05-13 12:23:47','Unprocessed','unsuccess','2024-05-13 12:23:47','gayatri','2024-05-13 12:23:47','Admin',88),(533,35,35,135,'Sales ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',89),(534,35,35,135,'Accounts payable ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',90),(535,35,35,135,'Sales ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',91),(536,35,35,135,'Debit-card ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',92),(537,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',93),(538,35,35,135,'Sales ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',94),(539,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',95),(540,35,35,135,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',96),(541,35,35,135,'Sales ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',97),(542,35,35,135,'Debit-card ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',98),(543,35,35,135,'Motor ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',99),(544,9,9,109,'Sales ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','processed','success','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',100),(545,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',101),(546,9,9,109,'Bank Reconciliation ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',102),(547,9,9,109,'Debit-card ','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',103),(548,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',104),(549,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',105),(550,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',106),(551,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',107),(552,9,9,109,'Motor fleet Process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',108),(553,9,9,109,'Account closure process','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',109),(554,9,9,109,'Bank Reconciliation','chinmay',214,'2024-05-13 12:23:48','2024-05-13 12:23:48','Unprocessed','unsuccess','2024-05-13 12:23:48','gayatri','2024-05-13 12:23:48','Admin',110);
/*!40000 ALTER TABLE `tbl_realtimedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rolemst`
--

DROP TABLE IF EXISTS `tbl_rolemst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rolemst` (
  `role_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedDate` timestamp NULL DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rolemst`
--

LOCK TABLES `tbl_rolemst` WRITE;
/*!40000 ALTER TABLE `tbl_rolemst` DISABLE KEYS */;
INSERT INTO `tbl_rolemst` VALUES (1,'USER','2024-02-27 06:02:22','Kiran','2024-02-27 06:02:22','Kiran'),(2,'ADMIN','2024-02-27 06:03:06','Clover','2024-02-27 06:03:06','Clover');
/*!40000 ALTER TABLE `tbl_rolemst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaibhav`
--

DROP TABLE IF EXISTS `vaibhav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaibhav` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaibhav`
--

LOCK TABLES `vaibhav` WRITE;
/*!40000 ALTER TABLE `vaibhav` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaibhav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaibhavdemo`
--

DROP TABLE IF EXISTS `vaibhavdemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaibhavdemo` (
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaibhavdemo`
--

LOCK TABLES `vaibhavdemo` WRITE;
/*!40000 ALTER TABLE `vaibhavdemo` DISABLE KEYS */;
INSERT INTO `vaibhavdemo` VALUES ('Asif'),('Farhan');
/*!40000 ALTER TABLE `vaibhavdemo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `values`
--

DROP TABLE IF EXISTS `values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `values` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `values`
--

LOCK TABLES `values` WRITE;
/*!40000 ALTER TABLE `values` DISABLE KEYS */;
/*!40000 ALTER TABLE `values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'automation4'
--
/*!50003 DROP PROCEDURE IF EXISTS `getlocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getlocation`()
BEGIN
  select * from tbl_location;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_BotDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_BotDetails`()
begin
select * from tbl_botname;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_ChartData_Tbl_RealTimeBind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_ChartData_Tbl_RealTimeBind`(In pLocationId int, In pDepartmentId int, In pBotId int)
begin
Select count(case when BotId=pBotId  and DepartmentId=pDepartmentId then 1 else null end) as total_Bot_count,
 count(case when Status='processed' and botid=pBotId and DepartmentId=pDepartmentId  then 1 else null end) as Processed,
 count(case when Status='Unprocessed' and botid=pBotId  and DepartmentId=pDepartmentId then 1 else null end) as Unprocessed
 /*count(case when product='B' and amount>200 then 1 else null end) as B_count*/
 from tbl_realtimedata;

 End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_TblBotName1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_TblBotName1`()
BEGIN
	Select  B.BotId,B.BotName,B.CreatedDate from tbl_botname B;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_TblDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_TblDepartment`()
BEGIN
	Select  D.DepartmentId,D.DepartmentName from tbl_department D;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Tbllocation1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_Tbllocation1`()
BEGIN

	Select  L.LocationId,L.LocationName from tbl_location L;	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_TblRolemst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_TblRolemst`()
BEGIN

	Select  R.role_id, R.name from tbl_rolemst R;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Tbl_RealTimeBind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_Tbl_RealTimeBind`(In pLocationId int, In pDepartmentId int, In pBotId int)
begin
select * from tbl_realtimedata where LocationId = pLocationId and DepartmentId= pDepartmentId and BotId= pBotId and status= 'process'; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Tbl_RealTimeBind1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_Tbl_RealTimeBind1`(In pLocationId int, In pDepartmentId int, In pBotId int)
BEGIN
	Select  ProcessId, B.BotName,L.LocationName,DepartmentName,Process_Name,R.Status,R.Remarks,R.CreatedBy from tbl_realtimedata R join tbl_location L
	on R.LocationId = L.LocationId join tbl_botname B on B.botId = R.BotId
	join tbl_department D on D.DepartmentId = R.DepartmentId
    where R.LocationId = pLocationId and R.DepartmentId= pDepartmentId and R.BotId= pBotId and status= 'process'; 
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Tbl_RealTimeBindData2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_Tbl_RealTimeBindData2`(In pLocationId int, In pDepartmentId int, In pBotId int, pType varchar(100), pSearch varchar(100))
BEGIN
	Select  ProcessId, B.BotName,L.LocationName,DepartmentName,Process_Name,R.Status,R.Remarks,R.CreatedBy,StartTime from tbl_realtimedata R join tbl_location L
	on R.LocationId = L.LocationId join tbl_botname B on B.botId = R.BotId
	join tbl_department D on D.DepartmentId = R.DepartmentId
    where   R.BotId= pBotId and R.DepartmentId= pDepartmentId;
    -- and status= 'process'; 
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Tbl_RealTimeBindData3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_Tbl_RealTimeBindData3`()
BEGIN
	Select  ProcessId, B.BotName,L.LocationName,DepartmentName,Process_Name,R.Status,R.Remarks,R.CreatedBy from tbl_realtimedata R join tbl_location L
	on R.LocationId = L.LocationId join tbl_botname B on B.botId = R.BotId
	join tbl_department D on D.DepartmentId = R.DepartmentId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_tbl_realtimedata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `get_tbl_realtimedata`(In pLocationId int, In pDepartmentId int, In pBotId int, OUT processcount int)
begin
select count(processId) from tbl_realtimedata where LocationId = pLocationId and DepartmentId= pDepartmentId and BotId= pBotId and status= 'process' into processcount;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDataFromJson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertDataFromJson`(json_data JSON)
BEGIN
  Select json_data;
  INSERT INTO Kusers (id, Nname, email) 
  SELECT id, Nname, email
  FROM JSON_TABLE(json_data, '$[*]' COLUMNS (
    id INT PATH '$.id',
    Nname VARCHAR(255) PATH '$.Nname',
    email VARCHAR(255) PATH '$.email'
  )) AS data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PrintHi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PrintHi`()
BEGIN
    SELECT 'hi' AS message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PrintHiii` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PrintHiii`()
BEGIN
    SELECT 'hi' AS message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_BotDuration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_BotDuration`( in Botname varchar(100))
BEGIN
	Select  BotId,Duration,BotName from tbl_botname where BotName=Botname limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Delete_BotName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Delete_BotName`(
    IN p_BotId INT
)
BEGIN
    DELETE FROM tbl_botname WHERE BotId = p_BotId LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Delete_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Delete_Location`(IN p_LocationId INT)
BEGIN
    DELETE FROM tbl_location WHERE LocationId = p_LocationId Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Delete_tbl_department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Delete_tbl_department`(IN p_DepartmentId INT)
BEGIN
    DELETE FROM tbl_department WHERE DepartmentId = p_DepartmentId  LIMIT 1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_DepartmentbtMst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_DepartmentbtMst`()
begin
select DepartmentId, DepartmentName, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, IsActive from tbl_department where isActive = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_EditDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_EditDepartment`( in iDepartmentId int)
Begin
Select DepartmentId,DepartmentName,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsActive from tbl_department where DepartmentId = iDepartmentId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_EditLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_EditLocation`( in iLocationId int)
Begin
Select LocationId,LocationName,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsActive from tbl_location where LocationId = iLocationId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_get_BotData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_get_BotData`(in iBotid int)
Begin
select BotId, BotName, LocationId, DepartmentId ,CreatedBy, UpdatedBy,IsActive from tbl_botname where BotId=iBotId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_InsertExcel_Bot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_InsertExcel_Bot`(
									in LocationId int, 
                                    in DepartmentId int,
									 in BotName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean)
begin
INSERT INTO tbl_botname
                        (
                        LocationId, 
                        DepartmentId,
						 BotName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (
						LocationId, 
                        DepartmentId,
						 BotName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_InsertExcel_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_InsertExcel_Department`(
									in department_id int, 
                                  
									 in DepartmentName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean)
begin
INSERT INTO tbl_department
                        (
                        department_id, 
                        
						 DepartmentName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (
						department_id, 
                       
						 DepartmentName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_InsertExcel_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_InsertExcel_Location`(in id int, 
									in location_id int, 
                                    in p_Location_Id int,
									 in LocationName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean)
begin
INSERT INTO tbl_location
                        (id,
                        location_id, 
                        
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (id,
						location_id, 
                       
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_InsertExcel_Realtimedata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_InsertExcel_Realtimedata`(
    IN p_ProcessId INT,
    IN p_BotId INT,
    IN p_DepartmentId INT,
    IN p_LocationId INT,
    IN p_Process_Name VARCHAR(255),
    IN p_Host_Name VARCHAR(255),
    IN p_Transaction_ID INT,
    IN p_Status VARCHAR(255),
    IN p_Remarks VARCHAR(255),
    IN p_CreatedBy VARCHAR(255),
    IN p_UpdatedBy VARCHAR(255),
    IN p_IsActive INT
)
BEGIN
    -- Insert logic with LIMIT clause
    INSERT INTO tbl_realtimedata (
       
        BotId,
        DepartmentId,
        LocationId,
        Process_Name,
        Host_Name,
        Transaction_ID,
        StartTime,
        EndTime,
        Status,
        Remarks,
        CreatedDate,
        CreatedBy,
        UpdatedDate,
        UpdatedBy,
        IsActive
    ) 
    SELECT 
       
        p_BotId,
        p_DepartmentId,
        p_LocationId,
        p_Process_Name,
        p_Host_Name,
        p_Transaction_ID,
        current_timestamp(),
        current_timestamp(),
        p_Status,
        p_Remarks,
        current_timestamp(),
        p_CreatedBy,
        current_timestamp(),
        p_UpdatedBy,
        p_IsActive
    FROM 
        dual  -- dual is a dummy table in MySQL, you can use it to insert a single row
    LIMIT 1;  -- Limit the number of rows inserted to 1
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_BotName1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_BotName1`(
                                    in BotName varchar(100),
									in LocationId  int, 
									in DepartmentId int, 								
									in CreatedBy varchar(100),
									
									in UpdatedBy varchar(100),

                                    IN IsActive BOOLEAN,
                                    IN ActionType NVARCHAR(20),
									IN DurationtId varchar(100),
                                    IN botType varchar(100)
									)
begin	
    START TRANSACTION;
	If ActionType = 'Insert' then
		INSERT INTO tbl_botname
								( 
								 BotName,
								 LocationId, 
								 DepartmentId, 
								 CreatedDate,
								 CreatedBy,
								 UpdatedDate,
								 UpdatedBy,
								 IsActive,
								 Duration,
                                 BotType)
					VALUES     (
								 BotName,
								 LocationId, 
								 DepartmentId, 
								 current_timestamp(),
								 CreatedBy,
								 current_timestamp(),
								 UpdatedBy,
								 IsActive,
								 DurationtId,
                                 botType);
		ElseIf  ActionType ='Update' then
			UPDATE  tbl_botname
					Set	 
					     BotName = BotName,
						 LocationId =LocationId, 
						 DepartmentId = DepartmentId, 
						 CreatedDate = current_timestamp(),
						 CreatedBy = CreatedBy,
						 UpdatedDate = current_timestamp(),
						 UpdatedBy = UpdatedBy,
						 IsActive = IsActive,
						 Duration = DurationtId,
                         BotType = botType
				where  BotId = BotId ;
		else
			Delete from tbl_botname where BotId = BotId;
		end if;
        commit;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_Department`(
                                       IN DepartmentName VARCHAR(100),
                                       IN CreatedDate DATETIME,
                                       IN CreatedBy VARCHAR(100),
                                       IN UpdatedDate DATETIME,
                                       IN UpdatedBy VARCHAR(100),
                                       IN IsActive BOOLEAN,
                                       IN typecal NVARCHAR(20))
BEGIN
    IF typecal = 'INSERT' THEN
        BEGIN
            INSERT INTO tbl_department
                        (
                         DepartmentName,
                         CreatedDate,
                         CreatedBy,
                         UpdatedDate,
                         UpdatedBy,
                         IsActive)
            VALUES      (
                          DepartmentName,
                          CreatedDate,
                          CreatedBy,
                          UpdatedDate,
                          UpdatedBy,
                          IsActive);
        END;
    END IF;

    IF typecal = 'UPDATE' THEN
        BEGIN
            UPDATE tbl_department
            SET    DepartmentName = DepartmentName,
                   CreatedDate = CreatedDate,
                   CreatedBy = CreatedBy,
                   UpdatedDate = UpdatedDate,
                   UpdatedBy = UpdatedBy,
                   IsActive = IsActive
            WHERE  DepartmentId = DepartmentId;
        END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_Department1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_Department1`(IN department_id int,
                                       IN DepartmentName VARCHAR(100),
                                       IN CreatedDate DATETIME,
                                       IN CreatedBy VARCHAR(100),
                                       IN UpdatedDate DATETIME,
                                       IN UpdatedBy VARCHAR(100),
                                       IN IsActive BOOLEAN,
                                       IN typecal NVARCHAR(20))
BEGIN
    IF typecal = 'INSERT' THEN
        BEGIN
            INSERT INTO tbl_department
                        (department_id,
                         DepartmentName,
                         CreatedDate,
                         CreatedBy,
                         UpdatedDate,
                         UpdatedBy,
                         IsActive)
            VALUES      (department_id,
                          DepartmentName,
                          CreatedDate,
                          CreatedBy,
                          UpdatedDate,
                          UpdatedBy,
                          IsActive);
        END;
    END IF;

    IF typecal = 'UPDATE' THEN
        BEGIN
            UPDATE tbl_department
            SET   department_id=department_id,
            DepartmentName = DepartmentName,
                   CreatedDate = CreatedDate,
                   CreatedBy = CreatedBy,
                   UpdatedDate = UpdatedDate,
                   UpdatedBy = UpdatedBy,
                   IsActive = IsActive
            WHERE  DepartmentId = DepartmentId;
        END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_Location`(in id int, 
									in location_id int, 
									 in LocationName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean)
begin
INSERT INTO tbl_location
                        (id,
                        location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (id,
						location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_Location1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_Location1`(in LocationId int,
                                    in id int, 
									in location_id int, 
									 in LocationName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean,
                                     in ActionType NVARCHAR(20))
begin	
    START TRANSACTION;
	If ActionType = 'Insert' then
		INSERT INTO tbl_location
                        (id,
                        location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (id,
						location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
else
			Delete from tbl_location where LocationId = LocationId;
		end if;
        commit;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_Location2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_Location2`(
                                    in id int, 
									in location_id int, 
									 in LocationName varchar(100),
									 in CreatedDate datetime,
									 in CreatedBy varchar(100),
									 in UpdatedDate datetime,
									 in	UpdatedBy varchar(100),
									 in IsActive boolean,
                                     in ActionType NVARCHAR(20))
begin	
    START TRANSACTION;
	If ActionType = 'Insert' then
		INSERT INTO tbl_location
                        (id,
                        location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive)
            VALUES     (id,
						location_id, 
						 LocationName,
						 CreatedDate,
						 CreatedBy,
						 UpdatedDate,
						 UpdatedBy,
						 IsActive);
else
			Delete from tbl_location where LocationName = LocationName;
		end if;
        commit;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_RealTimeData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_RealTimeData`(in ProcessId int,
                                         in BotId int,
                                         in DepartmentId int,
                                         LocationId int,
										 in Process_Name varchar(100),
										 in Host_Name varchar(100),
										 in Transaction_ID int,
										 in StartTime Datetime,
										 in EndTime Datetime ,
										 in Status varchar(100),
                                         in Remarks varchar(100),
                                         in CreatedDate Datetime,
                                         in CreatedBy varchar(100),
                                         in UpdatedDate datetime,
                                         in UpdatedBy varchar(100),
										 in IsActive Boolean )
begin
INSERT INTO tbl_realtimedata
                        ( ProcessId,
						  BotId,
						  DepartmentId,
                          LocationId,
						  Process_Name,
						  Host_Name,
						  Transaction_ID,
						  StartTime,
						  EndTime,
						  Status,
						  Remarks,
						  CreatedDate,
						  CreatedBy,
						  UpdatedDate,
						  UpdatedBy,
						  IsActive)
            VALUES     (ProcessId,
						  BotId,
						  DepartmentId,
                          LocationId,
						  Process_Name,
						  Host_Name,
						  Transaction_ID,
						  StartTime,
						  EndTime,
						  Status,
						  Remarks,
						  CreatedDate,
						  CreatedBy,
						  UpdatedDate,
						  UpdatedBy,
						  IsActive);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Insert_UserRegister` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Insert_UserRegister`( 
                                    in username varchar(100),
									in password varchar(100), 
									in role_id int, 
									in CreatedBy varchar(100),									
									in UpdatedBy varchar(100),
                                    in retry_pass varchar(100),
                                    in ActionType nvarchar(20))
begin	
    START TRANSACTION;
	If ActionType = 'Insert' then
		INSERT INTO login
								( 
								 username,
								 password, 
								 role_id, 
								 CreatedDate,
								 CreatedBy,
								 UpdatedDate,
								 UpdatedBy,
								 retry_pass)
					VALUES     (
								 username,
								 password, 
								 role_id, 
								 current_timestamp(),
								 CreatedBy,
								 current_timestamp(),
								 UpdatedBy,
								 retry_pass);
		end if;
        commit;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_LocationMst1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_LocationMst1`()
begin
select LocationId, LocationName, DATE_FORMAT(CreatedDate, "%M %d %Y") as CreatedDate, CreatedBy, DATE_FORMAT(UpdatedDate, "%M %d %Y") as UpdatedDate, UpdatedBy, IsActive from tbl_location;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_LoginD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_LoginD`(In pusername varchar(100), In ppassword varchar(100))
begin
 Select * from login where username=pusername and password=ppassword;
 End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_MstBotDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_MstBotDetail`()
Begin
Select BotId,BotName,L.LocationId,L.LocationName,D.DepartmentId,D.DepartmentName,DATE_FORMAT(B.CreatedDate, "%M %d %Y") as CreatedDate,
B.CreatedBy,DATE_FORMAT(B.UpdatedDate,"%M %d %Y") as UpdatedDate,B.UpdatedBy,B.IsActive from tbl_botname B join tbl_department D on B.DepartmentID = D.DepartmentId
join tbl_location L on B.LocationId = L.locationId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_MstDepartmentDetail1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_MstDepartmentDetail1`()
Begin
Select DepartmentId,DepartmentName,DATE_FORMAT(CreatedDate, "%M %d %Y") as CreatedDate,CreatedBy,DATE_FORMAT(UpdatedDate,"%M %d %Y") as UpdatedDate,UpdatedBy,IsActive from tbl_department;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_MstDepartment_Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_MstDepartment_Detail`()
Begin
Select DepartmentId,DepartmentName,DATE_FORMAT(CreatedDate, "%M %d %Y") as CreatedDate,CreatedBy,DATE_FORMAT(UpdatedDate,"%M %d %Y") as UpdatedDate,UpdatedBy,IsActive from tbl_department;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Update_BotName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Update_BotName`(
    IN p_BotId MEDIUMINT,
    IN p_BotName VARCHAR(100),
    IN p_LocationId MEDIUMINT,
     IN p_DepartmentId MEDIUMINT,
    IN p_CreatedBy VARCHAR(100),
    IN p_UpdatedBy VARCHAR(100),
    IN p_IsActive BOOLEAN,
    IN botType VARCHAR(100)
)
BEGIN
    UPDATE tbl_botname
    SET
        BotName = p_BotName,
        LocationId= p_LocationId,
        DepartmentId=p_DepartmentId,
        CreatedDate = current_timestamp(),
        CreatedBy = p_CreatedBy,
        UpdatedDate = current_timestamp(),
        UpdatedBy = p_UpdatedBy,
        IsActive = p_IsActive,
        BotType = botType
    WHERE
        BotId = p_BotId
    LIMIT 1;
    
    -- You can add additional logic or error handling here if needed
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Update_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Update_Department`(
    IN p_DepartmentId MEDIUMINT,
    IN p_DepartmentName VARCHAR(100),
    IN p_CreatedDate DATETIME,
    IN p_CreatedBy VARCHAR(100),
    IN p_UpdatedDate DATETIME,
    IN p_UpdatedBy VARCHAR(100),
    IN p_IsActive BOOLEAN
)
BEGIN
    UPDATE tbl_department
    SET
        DepartmentName = p_DepartmentName,
        CreatedDate = p_CreatedDate,
        CreatedBy = p_CreatedBy,
        UpdatedDate = p_UpdatedDate,
        UpdatedBy = p_UpdatedBy,
        IsActive = p_IsActive
    WHERE
        DepartmentId = p_DepartmentId
    LIMIT 1;
    
    -- You can add additional logic or error handling here if needed
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_Update_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_Update_Location`(
    IN p_LocationId INT,
    IN p_location_id INT,
    IN p_LocationName VARCHAR(255),
    IN p_CreatedBy VARCHAR(255),
    IN p_UpdatedBy VARCHAR(255),
    IN p_IsActive BOOLEAN
)
BEGIN
    UPDATE tbl_location
    SET
        location_id = p_LocationId,
        LocationName = p_LocationName,
        CreatedDate = current_timestamp(),
        CreatedBy = p_CreatedBy,
        UpdatedDate = current_timestamp(),
        UpdatedBy = p_UpdatedBy,
        IsActive = p_IsActive
    WHERE
        LocationId = p_LocationId
        LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usp_UserDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Usp_UserDetail`()
Begin

Select id,username,R.name,DATE_FORMAT(L.CreatedDate, "%M %d %Y") as CreatedDate,
L.CreatedBy,DATE_FORMAT(L.UpdatedDate,"%M %d %Y") as UpdatedDate,L.UpdatedBy from login L join tbl_rolemst R on L.role_id = R.role_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vaibhavStoredProcedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `vaibhavStoredProcedure`(IN ArrayDemo VARCHAR(100))
BEGIN
      SELECT * FROM vaibhavDemo  WHERE FIND_IN_SET(name, ArrayDemo);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 15:00:20
