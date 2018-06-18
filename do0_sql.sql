-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: do0_db
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `do0_answer`
--

DROP TABLE IF EXISTS `do0_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_answer` (
  `do0_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_answer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`do0_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_answer`
--

LOCK TABLES `do0_answer` WRITE;
/*!40000 ALTER TABLE `do0_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `do0_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_lesson`
--

DROP TABLE IF EXISTS `do0_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_lesson` (
  `do0_lesson_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_lesson_name` varchar(255) NOT NULL,
  PRIMARY KEY (`do0_lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_lesson`
--

LOCK TABLES `do0_lesson` WRITE;
/*!40000 ALTER TABLE `do0_lesson` DISABLE KEYS */;
INSERT INTO `do0_lesson` VALUES (1,'sdfsdfsdf'),(2,'asdasdasd'),(3,'asdasdasd'),(4,'asdasdasd'),(5,''),(6,''),(7,'asdasd'),(8,'asdasd'),(9,'sdfsdf'),(10,'asdasd'),(11,'asdasd'),(12,'sdfsdf'),(13,'asdasd');
/*!40000 ALTER TABLE `do0_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_questions`
--

DROP TABLE IF EXISTS `do0_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_questions` (
  `do0_questions_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_questions_name` varchar(255) NOT NULL,
  `do0_question_lesson_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`do0_questions_id`),
  KEY `do0_question_lesson_id` (`do0_question_lesson_id`),
  CONSTRAINT `do0_questions_ibfk_1` FOREIGN KEY (`do0_question_lesson_id`) REFERENCES `do0_lesson` (`do0_lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_questions`
--

LOCK TABLES `do0_questions` WRITE;
/*!40000 ALTER TABLE `do0_questions` DISABLE KEYS */;
INSERT INTO `do0_questions` VALUES (1,'asdasd',13),(2,'asdasd',13);
/*!40000 ALTER TABLE `do0_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_questions_answer`
--

DROP TABLE IF EXISTS `do0_questions_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_questions_answer` (
  `do0_questios_id` int(11) NOT NULL,
  `do0_questions_answer` varchar(45) NOT NULL,
  `do0_questions_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`do0_questios_id`),
  KEY `do0_questions_ID` (`do0_questions_ID`),
  CONSTRAINT `do0_questions_answer_ibfk_1` FOREIGN KEY (`do0_questions_ID`) REFERENCES `do0_questions` (`do0_questions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_questions_answer`
--

LOCK TABLES `do0_questions_answer` WRITE;
/*!40000 ALTER TABLE `do0_questions_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `do0_questions_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_quiz`
--

DROP TABLE IF EXISTS `do0_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_quiz` (
  `do0_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_quiz_lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`do0_quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_quiz`
--

LOCK TABLES `do0_quiz` WRITE;
/*!40000 ALTER TABLE `do0_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `do0_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_user_session`
--

DROP TABLE IF EXISTS `do0_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_user_session` (
  `do0_user_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_user_id` int(11) NOT NULL,
  PRIMARY KEY (`do0_user_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_user_session`
--

LOCK TABLES `do0_user_session` WRITE;
/*!40000 ALTER TABLE `do0_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `do0_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_users`
--

DROP TABLE IF EXISTS `do0_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_users` (
  `do0_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `do0_user_name` varchar(255) NOT NULL,
  `do0_user_dt_birthday` date NOT NULL,
  `do0_user_password` int(11) NOT NULL,
  `do0_user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`do0_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_users`
--

LOCK TABLES `do0_users` WRITE;
/*!40000 ALTER TABLE `do0_users` DISABLE KEYS */;
INSERT INTO `do0_users` VALUES (1,'Bruno','1989-04-09',9041989,'bferreiracosta@uol.com.br');
/*!40000 ALTER TABLE `do0_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do0_users_questions`
--

DROP TABLE IF EXISTS `do0_users_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do0_users_questions` (
  `do0_user_id` int(11) NOT NULL,
  `do0_question_id` int(11) NOT NULL,
  `do0_user_answer` varchar(255) NOT NULL,
  PRIMARY KEY (`do0_user_id`),
  KEY `do0_users_questions_fk1` (`do0_question_id`),
  CONSTRAINT `do0_users_questions_fk1` FOREIGN KEY (`do0_question_id`) REFERENCES `do0_questions_answer` (`do0_questios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do0_users_questions`
--

LOCK TABLES `do0_users_questions` WRITE;
/*!40000 ALTER TABLE `do0_users_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `do0_users_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-27 11:09:09
