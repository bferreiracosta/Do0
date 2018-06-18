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
-- Dumping routines for database 'do0_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `inserirAulas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserirAulas`(
IN lessonName varchar(250),
IN questionName varchar(250),
IN alternativedesc1 varchar(250),
in flagcorrect1 char(1),
IN alternativedesc2 varchar(250),
in flagcorrect2 char(1),
IN alternativedesc3 varchar(250),
in flagcorrect3 char(1),
IN alternativedesc4 varchar(250),
in flagcorrect4 char(1),
IN questionName2 varchar(250),
IN alternativedesc5 varchar(250),
in flagcorrect5 char(1),
IN alternativedesc6 varchar(250),
in flagcorrect6 char(1),
IN alternativedesc7 varchar(250),
in flagcorrect7 char(1),
IN alternativedesc8 varchar(250),
in flagcorrect8 char(1))
BEGIN

declare idlesson int;
declare idquestion int;
declare idquestion2 int;

insert into lesson (lessonName) values(lessonName);
set idlesson = LAST_INSERT_ID();

insert into question (questionName, idlesson) values (questionName, idlesson);
set idquestion = LAST_INSERT_ID();

insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc1, idquestion, flagcorrect1);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc2, idquestion, flagcorrect2);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc3, idquestion, flagcorrect3);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc4, idquestion, flagcorrect4);

insert into question (questionName, idlesson) values (questionName2, idlesson);
set idquestion2 = LAST_INSERT_ID();

insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc5, idquestion2, flagcorrect5);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc6, idquestion2, flagcorrect6);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc7, idquestion2, flagcorrect7);
insert into alternative(alternativedesc, idquestion, flagcorrect) values (alternativedesc8, idquestion2, flagcorrect8);


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatelesson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatelesson`(
in idlesson1 int,
IN lessonName varchar(250),
in idquestion1 int,
IN questionName1 varchar(250),
in idalternative1 int,
IN alternativedesc1 varchar(250),
in flagcorrect1 char(1),
in idalternative2 int,
IN alternativedesc2 varchar(250),
in flagcorrect2 char(1),
in idalternative3 int,
IN alternativedesc3 varchar(250),
in flagcorrect3 char(1),
in idalternative4 int,
IN alternativedesc4 varchar(250),
in flagcorrect4 char(1),
in idquestion2 int,
IN questionName2 varchar(250),
in idalternative5 int,
IN alternativedesc5 varchar(250),
in flagcorrect5 char(1),
in idalternative6 int,
IN alternativedesc6 varchar(250),
in flagcorrect6 char(1),
in idalternative7 int,
IN alternativedesc7 varchar(250),
in flagcorrect7 char(1),
in idalternative8 int,
IN alternativedesc8 varchar(250),
in flagcorrect8 char(1))
BEGIN

update lesson set lessonName = lessonName where idlesson = idlesson1;
update question set questionName = questionName1 where idquestion=idquestion1;
update alternative set alternativedesc = alternativedesc1, flagcorrect = flagcorrect1 where idalternative = idalternative1;
update alternative set alternativedesc = alternativedesc2, flagcorrect = flagcorrect2 where idalternative = idalternative2;
update alternative set alternativedesc = alternativedesc3, flagcorrect = flagcorrect3 where idalternative = idalternative3;
update alternative set alternativedesc = alternativedesc4, flagcorrect = flagcorrect4 where idalternative = idalternative4;
update question set questionName = questionName2 where idquestion=idquestion2;
update alternative set alternativedesc = alternativedesc5, flagcorrect = flagcorrect5 where idalternative = idalternative5;
update alternative set alternativedesc = alternativedesc6, flagcorrect = flagcorrect6 where idalternative = idalternative6;
update alternative set alternativedesc = alternativedesc7, flagcorrect = flagcorrect7 where idalternative = idalternative7;
update alternative set alternativedesc = alternativedesc8, flagcorrect = flagcorrect8 where idalternative = idalternative8;

end ;;
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

-- Dump completed on 2018-05-21 22:22:00
