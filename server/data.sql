-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `Blogs`
--

DROP TABLE IF EXISTS `Blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blogs` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(19) DEFAULT NULL,
  `thumbnail` varchar(8) DEFAULT NULL,
  `pictures` varchar(8) DEFAULT NULL,
  `content` varchar(11) DEFAULT NULL,
  `category` varchar(12) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdAt` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blogs`
--

LOCK TABLES `Blogs` WRITE;
/*!40000 ALTER TABLE `Blogs` DISABLE KEYS */;
INSERT INTO `Blogs` VALUES (4,'blog title pictures','null put','null put','content put','category put','status put','2020-08-13','2020-08-13');
/*!40000 ALTER TABLE `Blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comments` (
  `id` tinyint(4) DEFAULT NULL,
  `blogId` tinyint(4) DEFAULT NULL,
  `comment` varchar(22) DEFAULT NULL,
  `userId` varchar(0) DEFAULT NULL,
  `createdAt` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (1,20,'comment testing update','','2020-08-13','2020-08-13');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(31) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `name` varchar(9) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `createdAt` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'korn.chayapon@gmail.com','123456','chayapon','chandra_x','active','Owner','2020-07-22','2020-07-23'),(10,'ratch.nomtan@gmail.com','1234567','ratchtewi','nomtan','active','','2020-07-23','2020-07-23'),(11,'caltex_petrol@gmail.com','$2a$08$Kri9ybg6jTyrM4tU1cUD0uL08hR.EVQF8URIAtPPTlKXve0I0Kdhe','Caltex','Petrol','active','','2020-08-03','2020-08-03'),(12,'ratah.chinkhachangkit@gmail.com','$2a$08$FEb8tHDnt4jqHl32EpWIau4rrYu8GZzl1AAjXr9jrWCII3uDjsrrO','ratah','chinkhachangkit','active','','2020-08-06','2020-08-06'),(13,'testr.test@gmail.com','$2a$08$IgK2M9XYRKv8./7obUy20O4C28G1s4Rr2fo9dOfss217z5bD8FLjm','test','test','active','','2020-08-10','2020-08-10'),(14,'test.test@gmail.com','$2a$08$e.YNta28xN.tyoDPTYNzZO.8qdJQs2dXIU2z.d/ZG9o0EenOwvtsy','test','test','active','','2020-08-10','2020-08-10');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(8) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('Users',14),('Blogs',4),('Comments',1);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:25
