-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: classroommanager
-- ------------------------------------------------------
-- Server version	5.6.31-log

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
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `group1` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`apply_id`),
  UNIQUE KEY `UK_i704rx2pk5lcmrj58pib5bfdu` (`class_id`),
  UNIQUE KEY `UK_a6vm53u333v1orjpwg9ljoqc6` (`student_id`),
  CONSTRAINT `FK_a6vm53u333v1orjpwg9ljoqc6` FOREIGN KEY (`student_id`) REFERENCES `user` (`student_id`),
  CONSTRAINT `FK_i704rx2pk5lcmrj58pib5bfdu` FOREIGN KEY (`class_id`) REFERENCES `classroom` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,'阿萨德','2016-11-30 16:32:49','大幅度',NULL,NULL,NULL),(2,'发士大夫','2016-11-30 17:05:07','大幅度',NULL,NULL,NULL),(3,'撒旦','2016-11-30 17:13:52','大幅度',NULL,NULL,NULL),(4,'撒旦','2016-11-30 17:22:58','电风扇',NULL,NULL,NULL),(5,'撒旦','2016-11-30 18:09:35','大幅度',NULL,NULL,NULL),(6,'撒旦','2016-11-30 18:11:26','电风扇',NULL,NULL,NULL),(7,'发士大夫','2016-11-30 18:12:11','电风扇',NULL,NULL,NULL),(8,'发士大夫','2016-11-30 18:14:53','大幅度',NULL,NULL,NULL),(9,'发士大夫','2016-11-30 18:15:55','大幅度',NULL,NULL,NULL),(10,'发士大夫','2016-11-30 18:17:29','电风扇','待审批',NULL,'09143564');
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-30 20:20:11
