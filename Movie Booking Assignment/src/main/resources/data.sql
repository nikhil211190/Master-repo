-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_database
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('create_user_table','design90','db/changelog/db.changelog-1.0.yaml','2022-08-09 00:27:25',1,'EXECUTED','8:a9071fa850137ab27689630c7ca46a10','createTable tableName=user','',NULL,'3.8.9',NULL,NULL,'9985045834');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorydetail`
--

DROP TABLE IF EXISTS `inventorydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorydetail` (
  `inventory_detail_id` int NOT NULL AUTO_INCREMENT,
  `capacity` int DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `show_type` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `theater_id` int DEFAULT NULL,
  `availableseats` int DEFAULT NULL,
  PRIMARY KEY (`inventory_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorydetail`
--

LOCK TABLES `inventorydetail` WRITE;
/*!40000 ALTER TABLE `inventorydetail` DISABLE KEYS */;
INSERT INTO `inventorydetail` VALUES (1,240,'2022-08-23 00:00:00',1,'Morning','2022-08-05 00:00:00',1,100),(2,240,'2022-08-23 00:00:00',2,'Morning','2022-08-05 00:00:00',1,100),(3,240,'2022-08-23 00:00:00',3,'Afternoon','2022-08-05 00:00:00',1,123),(4,200,'2022-08-23 01:00:00',1,'Afternoon','2022-08-05 08:00:00',2,180),(5,200,'2022-08-23 01:00:00',4,'Afternoon','2022-08-05 08:00:00',3,160);
/*!40000 ALTER TABLE `inventorydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `director` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `starring` varchar(255) DEFAULT NULL,
  `movieId` int NOT NULL,
  `movieName` varchar(255) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Sanjay Leela','Romance','Hindi','Ram Leela','2022-08-25 11:00:00','Ranveer',0,NULL,NULL),(2,'Mahesh M','Action','Hindi ','Wanted','2022-08-25 11:00:00','Salman Khan',0,NULL,NULL),(3,'R.K Swaami','Sci Fi','English','Avengers','2022-08-25 11:00:00','RICHARDS',0,NULL,NULL),(4,'aR ','Comedy','Hindi','Raksha Bandhan','2022-08-25 11:00:00','Akshay Kumar',0,NULL,NULL),(5,'Amir khan','Comedy','Hindi','Rocket Singh Chadah','2022-08-25 11:00:00','Amir Khan',0,NULL,NULL);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `theater_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `theater_name` varchar(255) DEFAULT NULL,
  `theaterId` int NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'Kothrud Pune','Pune','filling fast','CityPride Kothrud',0,NULL),(2,'Katraj','Pune','filling fast','CityPride Katraj',0,NULL),(3,'SB road Pune','Pune','filling fast','E-Square',0,NULL),(4,'Kothrud Pune','Pune','fillingfast','Inox',0,NULL),(5,'Aaa Road Nasik','Nasik','fillingfast','Inox',0,NULL),(6,'AC colony nasik','Nasik','filling fast','CityPride',0,NULL),(7,'AA Colony','Mumbai','filling fast','Inox',0,NULL);
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movie_database'
--

--
-- Dumping routines for database 'movie_database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14  0:52:46
