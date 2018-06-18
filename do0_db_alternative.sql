-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: do0_db
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `alternative`
--

DROP TABLE IF EXISTS `alternative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternative` (
  `idalternative` int(11) NOT NULL AUTO_INCREMENT,
  `alternativedesc` varchar(250) DEFAULT NULL,
  `idquestion` int(11) DEFAULT NULL,
  `flagcorrect` char(1) DEFAULT NULL,
  PRIMARY KEY (`idalternative`),
  KEY `fk_alternative_idx` (`idquestion`),
  CONSTRAINT `fk_alternative` FOREIGN KEY (`idquestion`) REFERENCES `question` (`idquestion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternative`
--

LOCK TABLES `alternative` WRITE;
/*!40000 ALTER TABLE `alternative` DISABLE KEYS */;
INSERT INTO `alternative` VALUES (9,'alternativedesc1',13,'c'),(10,'alternativedesc2',13,'c'),(11,'alternativedesc3',13,'c'),(12,'alternativedesc4',13,'c'),(13,'alternativedesc5',14,'c'),(14,'alternativedesc6',14,'c'),(15,'alternativedesc7',14,'c'),(16,'alternativedesc',14,'c'),(17,'Resposta 2.0',15,'s'),(18,'Resposta 2.1',15,'n'),(19,'Resposta 2.2',15,'n'),(20,'Resposta 2.3',15,'n'),(21,'Resposta 2.1.0',16,'s'),(22,'Resposta 2.1.1',16,'n'),(23,'Resposta 2.1.2',16,'n'),(24,'Resposta 2.1.3',16,'n'),(25,'Resposta 3.0',17,'n'),(26,'Resposta 3.1',17,'s'),(27,'Resposta 3.2',17,'n'),(28,'Resposta 3.3',17,'n'),(29,'Resposta 3.1.0',18,'s'),(30,'Resposta 3.1.1',18,'n'),(31,'Resposta 3.1.2',18,'n'),(32,'Resposta 3.1.3',18,'n'),(33,'alternative1',19,'a'),(34,'alternative2',19,'a'),(35,'alternative3',19,'a'),(36,'alternative4',19,'a'),(37,'alternative5',20,'a'),(38,'alternative6',20,'a'),(39,'alternative7',20,'a'),(40,'alternative8',20,'a'),(41,'Resposta 3.0',21,'n'),(42,'Resposta 3.1',21,'s'),(43,'Resposta 3.2',21,'n'),(44,'Resposta 3.3',21,'n'),(45,'Resposta 3.1.0',22,'s'),(46,'Resposta 3.1.1',22,'n'),(47,'Resposta 3.1.2',22,'n'),(48,'Resposta 3.1.3',22,'n'),(49,'Resposta 3.0',23,'n'),(50,'Resposta 3.1',23,'s'),(51,'Resposta 3.2',23,'n'),(52,'Resposta 3.3',23,'n'),(53,'Resposta 3.1.0',24,'s'),(54,'Resposta 3.1.1',24,'n'),(55,'Resposta 3.1.2',24,'n'),(56,'Resposta 3.1.3',24,'n'),(57,'Resposta 3.0',25,'n'),(58,'Resposta 3.1',25,'s'),(59,'Resposta 3.2',25,'n'),(60,'Resposta 3.3',25,'n'),(61,'Resposta 3.1.0',26,'s'),(62,'Resposta 3.1.1',26,'n'),(63,'Resposta 3.1.2',26,'n'),(64,'Resposta 3.1.3',26,'n'),(65,'Resposta 4.0',27,'s'),(66,'Resposta 4.1',27,'n'),(67,'Resposta 4.2',27,'n'),(68,'Resposta 4.3',27,'n'),(69,'Resposta 4.1.0',28,'s'),(70,'Resposta 4.1.1',28,'n'),(71,'Resposta 4.1.2',28,'n'),(72,'Resposta 4.1.3',28,'n'),(73,'Resposta 4.0',29,'s'),(74,'Resposta 4.1',29,'n'),(75,'Resposta 4.2',29,'n'),(76,'Resposta 4.3',29,'n'),(77,'Resposta 4.1.0',30,'s'),(78,'Resposta 4.1.1',30,'n'),(79,'Resposta 4.1.2',30,'n'),(80,'Resposta 4.1.3',30,'n'),(81,'Resposta 4.0',31,'s'),(82,'Resposta 4.1',31,'s'),(83,'Resposta 4.2',31,'s'),(84,'Resposta 4.3',31,'s'),(85,'Resposta 4.1.0',32,'s'),(86,'Resposta 4.1.1',32,'s'),(87,'Resposta 4.1.2',32,'s'),(88,'Resposta 4.1.3',32,'s'),(89,'Resposta 4.0',33,'s'),(90,'Resposta 4.1',33,'n'),(91,'Resposta 4.2',33,'n'),(92,'Resposta 4.3',33,'n'),(93,'Resposta 4.1.0',34,'s'),(94,'Resposta 4.1.1',34,'n'),(95,'Resposta 4.1.2',34,'n'),(96,'Resposta 4.1.3',34,'n'),(97,'resposta 5.1',35,'s'),(98,'resposta 5.2',35,'n'),(99,'resposta 5.3',35,'n'),(100,'resposta 5.4',35,'n'),(101,'resposta 5.2.1',36,'s'),(102,'resposta 5.2.2',36,'n'),(103,'resposta 5.2.3',36,'n'),(104,'resposta 5.2.4',36,'n'),(105,'',37,'s'),(106,'',37,'s'),(107,'',37,'s'),(108,'',37,'s'),(109,'',38,'s'),(110,'',38,'s'),(111,'',38,'s'),(112,'',38,'s'),(113,'Resposta1.1',39,'s'),(114,'Resposta1.2',39,'s'),(115,'Resposta1.3',39,'s'),(116,'Resposta1.4',39,'s'),(117,'Resposta2.2',40,'s'),(118,'Resposta2.3',40,'s'),(119,'Resposta2.4',40,'s'),(120,'Resposta2.5',40,'s');
/*!40000 ALTER TABLE `alternative` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-21 22:21:59
