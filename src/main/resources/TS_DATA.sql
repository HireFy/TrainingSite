-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: TS_DATA
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
  `course_cover_id` int(11) DEFAULT NULL COMMENT '课程封面图',
  `price` int(11) DEFAULT NULL,
  `course_info` varchar(500) DEFAULT NULL COMMENT '课程信息',
  `course_teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_type_id` (`course_type_id`),
  KEY `course_cover_id` (`course_cover_id`),
  KEY `course_teacher_id` (`course_teacher_id`),
  CONSTRAINT `Course_ibfk_1` FOREIGN KEY (`course_type_id`) REFERENCES `CourseType` (`course_type_id`),
  CONSTRAINT `Course_ibfk_2` FOREIGN KEY (`course_cover_id`) REFERENCES `Picture` (`pic_id`),
  CONSTRAINT `Course_ibfk_3` FOREIGN KEY (`course_teacher_id`) REFERENCES `Person` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'Python',1,NULL,200,'',5),(2,'MySQL',1,NULL,200,NULL,3);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CoursePic`
--

DROP TABLE IF EXISTS `CoursePic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CoursePic` (
  `course_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `pic_id` (`pic_id`),
  CONSTRAINT `CoursePic_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`course_id`),
  CONSTRAINT `CoursePic_ibfk_2` FOREIGN KEY (`pic_id`) REFERENCES `Picture` (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CoursePic`
--

LOCK TABLES `CoursePic` WRITE;
/*!40000 ALTER TABLE `CoursePic` DISABLE KEYS */;
/*!40000 ALTER TABLE `CoursePic` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseType`
--

LOCK TABLES `CourseType` WRITE;
/*!40000 ALTER TABLE `CourseType` DISABLE KEYS */;
INSERT INTO `CourseType` VALUES (1,'计算机',NULL),(3,'前端',NULL),(4,'后端',NULL);
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
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` text,
  `message_author_mail` varchar(100) NOT NULL,
  `message_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `message_target_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `message_target_id` (`message_target_id`),
  CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`message_target_id`) REFERENCES `Message` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
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
  `p_mail` varchar(20) DEFAULT NULL,
  `p_password` varchar(100) NOT NULL COMMENT '角色为教师时密码都是0000',
  `p_role_id` int(11) NOT NULL,
  `p_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `p_info` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `p_role_id` (`p_role_id`),
  CONSTRAINT `Person_ibfk_1` FOREIGN KEY (`p_role_id`) REFERENCES `Role` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (2,'007',12,'male','2824908821@qq.com','1212313',1,'2018-10-31 17:39:30','hit the send button to get a response.'),(3,'wyb',23,'male','994831361@qq.com','8769asdfasd',1,'2018-11-01 17:25:06','eployment of web application directory /opt/tomcat/webapps/ma'),(4,'003',NULL,'','994831363@qq.com','qweasd',4,'2018-11-02 16:33:50',''),(5,'阿斯蒂芬',NULL,'','764699107@qq.com','123',4,'2018-11-02 17:38:54',''),(10,'qing',NULL,'','1902408716@qq.com','123',4,'2018-11-04 00:21:26',''),(11,'qing23',NULL,'','234234@qq.com','123',4,'2018-11-04 08:40:50',''),(12,'qing232',NULL,'','23423423@qq.com','123123',4,'2018-11-04 08:43:09',''),(25,'SDFSDFSDF',NULL,'','93432123@qq.com','123',4,'2018-11-04 10:54:53',''),(26,'1234234',NULL,'','29834634@qq.com','qwe',4,'2018-11-04 23:06:25',''),(27,'wer',NULL,'','995831263@qq.com','qwe',4,'2018-11-05 12:38:56','');
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
  `pic_course_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `pic_course_type_id` (`pic_course_type_id`),
  CONSTRAINT `Picture_ibfk_1` FOREIGN KEY (`pic_course_type_id`) REFERENCES `CourseType` (`course_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Picture`
--

LOCK TABLES `Picture` WRITE;
/*!40000 ALTER TABLE `Picture` DISABLE KEYS */;
INSERT INTO `Picture` VALUES (2,'/images/404_3.jpg',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'super'),(2,'manager'),(3,'teacher'),(4,'normal');
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

-- Dump completed on 2018-11-07 17:41:34
