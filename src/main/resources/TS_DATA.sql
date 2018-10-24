-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: TS_DATA
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) NOT NULL,
  `course_type_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `course_info` varchar(500) DEFAULT NULL,
  `course_teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_type_id` (`course_type_id`),
  KEY `course_teacher_id` (`course_teacher_id`),
  CONSTRAINT `Course_ibfk_1` FOREIGN KEY (`course_type_id`) REFERENCES `CourseType` (`course_type_id`),
  CONSTRAINT `Course_ibfk_2` FOREIGN KEY (`course_teacher_id`) REFERENCES `Person` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseTeacher`
--

DROP TABLE IF EXISTS `CourseTeacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseTeacher` (
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `CourseTeacher_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`course_id`),
  CONSTRAINT `CourseTeacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `Person` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseTeacher`
--

LOCK TABLES `CourseTeacher` WRITE;
/*!40000 ALTER TABLE `CourseTeacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `CourseTeacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseType`
--

DROP TABLE IF EXISTS `CourseType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseType` (
  `course_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_type_name` varchar(20) NOT NULL,
  `course_type_father_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_type_id`),
  KEY `course_type_father_id` (`course_type_father_id`),
  CONSTRAINT `CourseType_ibfk_1` FOREIGN KEY (`course_type_father_id`) REFERENCES `CourseType` (`course_type_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseType`
--

LOCK TABLES `CourseType` WRITE;
/*!40000 ALTER TABLE `CourseType` DISABLE KEYS */;
/*!40000 ALTER TABLE `CourseType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseVideo`
--

DROP TABLE IF EXISTS `CourseVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseVideo` (
  `course_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `v_id` (`v_id`),
  CONSTRAINT `CourseVideo_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`course_id`),
  CONSTRAINT `CourseVideo_ibfk_2` FOREIGN KEY (`v_id`) REFERENCES `Video` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseVideo`
--

LOCK TABLES `CourseVideo` WRITE;
/*!40000 ALTER TABLE `CourseVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `CourseVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `News`
--

DROP TABLE IF EXISTS `News`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `News` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(200) NOT NULL,
  `news_author_id` int(11) NOT NULL,
  `news_content` text,
  `news_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `news_type_id` int(11) NOT NULL,
  `news_click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `news_type_id` (`news_type_id`),
  CONSTRAINT `News_ibfk_1` FOREIGN KEY (`news_type_id`) REFERENCES `NewsType` (`news_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `News`
--

LOCK TABLES `News` WRITE;
/*!40000 ALTER TABLE `News` DISABLE KEYS */;
/*!40000 ALTER TABLE `News` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPic`
--

DROP TABLE IF EXISTS `NewsPic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPic` (
  `news_id` int(11) NOT NULL,
  `news_pic_id` int(11) NOT NULL,
  KEY `news_id` (`news_id`),
  KEY `news_pic_id` (`news_pic_id`),
  CONSTRAINT `NewsPic_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `News` (`news_id`),
  CONSTRAINT `NewsPic_ibfk_2` FOREIGN KEY (`news_pic_id`) REFERENCES `Picture` (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPic`
--

LOCK TABLES `NewsPic` WRITE;
/*!40000 ALTER TABLE `NewsPic` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsType`
--

DROP TABLE IF EXISTS `NewsType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsType` (
  `news_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_type_name` varchar(20) NOT NULL,
  `news_type_father_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`news_type_id`),
  KEY `news_type_father_id` (`news_type_father_id`),
  CONSTRAINT `NewsType_ibfk_1` FOREIGN KEY (`news_type_father_id`) REFERENCES `NewsType` (`news_type_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsType`
--

LOCK TABLES `NewsType` WRITE;
/*!40000 ALTER TABLE `NewsType` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) NOT NULL,
  `p_age` int(11) DEFAULT NULL,
  `p_gender` varchar(10) DEFAULT NULL,
  `p_password` varchar(100) NOT NULL,
  `p_role_id` int(11) NOT NULL,
  `p_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `p_info` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `p_role_id` (`p_role_id`),
  CONSTRAINT `Person_ibfk_1` FOREIGN KEY (`p_role_id`) REFERENCES `Role` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Picture`
--

DROP TABLE IF EXISTS `Picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Picture` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_href` varchar(100) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Picture`
--

LOCK TABLES `Picture` WRITE;
/*!40000 ALTER TABLE `Picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `Picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type` varchar(20) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'super'),(2,'manager'),(3,'teacher');
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Video`
--

DROP TABLE IF EXISTS `Video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Video` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_href` varchar(100) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Video`
--

LOCK TABLES `Video` WRITE;
/*!40000 ALTER TABLE `Video` DISABLE KEYS */;
/*!40000 ALTER TABLE `Video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-24 16:52:11
