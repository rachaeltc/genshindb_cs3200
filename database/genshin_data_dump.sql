CREATE DATABASE  IF NOT EXISTS `genshin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `genshin`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: genshin
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
-- Table structure for table `gs_character`
--

DROP TABLE IF EXISTS `gs_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_character` (
  `character_name` varchar(20) NOT NULL,
  `element` varchar(10) NOT NULL,
  `base_atk` int NOT NULL,
  `base_hp` int NOT NULL,
  `rarity` int NOT NULL,
  `weapon_type` varchar(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `constellation` varchar(30) NOT NULL,
  `vision` text NOT NULL,
  `story_profile` text NOT NULL,
  PRIMARY KEY (`character_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_character`
--

LOCK TABLES `gs_character` WRITE;
/*!40000 ALTER TABLE `gs_character` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_elemental_resonance`
--

DROP TABLE IF EXISTS `gs_elemental_resonance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_elemental_resonance` (
  `resonance_type` varchar(50) NOT NULL,
  `common_element` varchar(10) DEFAULT NULL,
  `resonance_buffs` varchar(250) NOT NULL,
  PRIMARY KEY (`resonance_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_elemental_resonance`
--

LOCK TABLES `gs_elemental_resonance` WRITE;
/*!40000 ALTER TABLE `gs_elemental_resonance` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_elemental_resonance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_recommended_party`
--

DROP TABLE IF EXISTS `gs_recommended_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_recommended_party` (
  `character1_name` varchar(20) NOT NULL,
  `character2_name` varchar(20) NOT NULL,
  PRIMARY KEY (`character1_name`,`character2_name`),
  KEY `character2_recommended` (`character2_name`),
  CONSTRAINT `character1_recommended` FOREIGN KEY (`character1_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `character2_recommended` FOREIGN KEY (`character2_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_recommended_party`
--

LOCK TABLES `gs_recommended_party` WRITE;
/*!40000 ALTER TABLE `gs_recommended_party` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_recommended_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_weapon`
--

DROP TABLE IF EXISTS `gs_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_weapon` (
  `weapon_name` varchar(50) NOT NULL,
  `base_atk` int NOT NULL,
  `weapon_type` varchar(10) NOT NULL,
  `rarity` int NOT NULL,
  `forge_materials` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`weapon_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_weapon`
--

LOCK TABLES `gs_weapon` WRITE;
/*!40000 ALTER TABLE `gs_weapon` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_resonance`
--

DROP TABLE IF EXISTS `team_resonance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_resonance` (
  `team_id` int NOT NULL,
  `resonance_type` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`,`resonance_type`),
  KEY `resonance_type` (`resonance_type`),
  CONSTRAINT `team_resonance_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_resonance_ibfk_2` FOREIGN KEY (`resonance_type`) REFERENCES `gs_elemental_resonance` (`resonance_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_resonance`
--

LOCK TABLES `team_resonance` WRITE;
/*!40000 ALTER TABLE `team_resonance` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_resonance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_character`
--

DROP TABLE IF EXISTS `user_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_character` (
  `character_name` varchar(20) NOT NULL,
  `constellation_lvl` int NOT NULL,
  `talent_lvl` int NOT NULL,
  `weapon_id` int DEFAULT NULL,
  PRIMARY KEY (`character_name`),
  KEY `character_equipped` (`weapon_id`),
  CONSTRAINT `character_equipped` FOREIGN KEY (`weapon_id`) REFERENCES `user_weapon` (`weapon_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `user_gs_character` FOREIGN KEY (`character_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_character`
--

LOCK TABLES `user_character` WRITE;
/*!40000 ALTER TABLE `user_character` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team`
--

DROP TABLE IF EXISTS `user_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) DEFAULT NULL,
  `character_name1` varchar(20) NOT NULL,
  `character_name2` varchar(20) NOT NULL,
  `character_name3` varchar(20) NOT NULL,
  `character_name4` varchar(20) NOT NULL,
  PRIMARY KEY (`team_id`),
  KEY `character_name1` (`character_name1`),
  KEY `character_name2` (`character_name2`),
  KEY `character_name3` (`character_name3`),
  KEY `character_name4` (`character_name4`),
  CONSTRAINT `user_team_ibfk_1` FOREIGN KEY (`character_name1`) REFERENCES `user_character` (`character_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_2` FOREIGN KEY (`character_name2`) REFERENCES `user_character` (`character_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_3` FOREIGN KEY (`character_name3`) REFERENCES `user_character` (`character_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_4` FOREIGN KEY (`character_name4`) REFERENCES `user_character` (`character_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team`
--

LOCK TABLES `user_team` WRITE;
/*!40000 ALTER TABLE `user_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `resonance_after_insert` AFTER INSERT ON `user_team` FOR EACH ROW BEGIN
INSERT INTO team_resonance(team_id, resonance_type) (
	SELECT team_id, er.resonance_type FROM gs_elemental_resonance AS er 
	JOIN (
		SELECT team_id, element, COUNT(element) AS elementNo FROM (
			SELECT * FROM user_character AS uc
			JOIN user_team AS ut
			WHERE team_id = NEW.team_id
				AND (ut.character_name1 = uc.character_name
					OR ut.character_name2 = uc.character_name
					OR ut.character_name3 = uc.character_name 
					OR ut.character_name4 = uc.character_name)
		) AS user_team_characters NATURAL JOIN gs_character
		GROUP BY element
	) AS user_team_elements ON er.common_element = user_team_elements.element
	WHERE user_team_elements.elementNo >= 2
	UNION ALL
	SELECT NEW.team_id AS team_id, "Protective Canopy" AS resonance_type
	WHERE NOT EXISTS (
		SELECT er.resonance_type FROM gs_elemental_resonance AS er 
		JOIN (
			SELECT team_id, element, COUNT(element) AS elementNo FROM (
				SELECT * FROM user_character AS uc
				JOIN user_team AS ut WHERE team_id = NEW.team_id
                   AND (ut.character_name1 = uc.character_name
					OR ut.character_name2 = uc.character_name
					OR ut.character_name3 = uc.character_name 
					OR ut.character_name4 = uc.character_name)
			) AS user_team_characters NATURAL JOIN gs_character
			GROUP BY element
		) AS user_team_elements ON er.common_element = user_team_elements.element
		WHERE user_team_elements.elementNo >= 2
	)
);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_weapon`
--

DROP TABLE IF EXISTS `user_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_weapon` (
  `weapon_id` int NOT NULL AUTO_INCREMENT,
  `weapon_name` varchar(50) NOT NULL,
  `refinement_lvl` int NOT NULL,
  PRIMARY KEY (`weapon_id`),
  KEY `user_gs_weapon` (`weapon_name`),
  CONSTRAINT `user_gs_weapon` FOREIGN KEY (`weapon_name`) REFERENCES `gs_weapon` (`weapon_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_weapon`
--

LOCK TABLES `user_weapon` WRITE;
/*!40000 ALTER TABLE `user_weapon` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'genshin'
--

--
-- Dumping routines for database 'genshin'
--
/*!50003 DROP FUNCTION IF EXISTS `resonance_concat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `resonance_concat`(
	entered_id		INT
) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE res VARCHAR(50);
SELECT GROUP_CONCAT(resonance_type SEPARATOR ', ') into res FROM user_team 
NATURAL JOIN team_resonance
WHERE team_id = entered_id;
RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `team_atk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `team_atk`(
	entered_id		INT
) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE total_atk INT;
SELECT SUM(gs.base_atk + IFNULL(weaps.base_atk, 0)) INTO total_atk FROM user_team 
JOIN gs_character AS gs
NATURAL JOIN user_character AS uc
LEFT JOIN (
	SELECT weapon_id, base_atk FROM user_weapon
	NATURAL JOIN gs_weapon) AS weaps
ON uc.weapon_id = weaps.weapon_id 
WHERE team_id = entered_id
	AND (character_name = character_name1 
    OR character_name = character_name2
    OR character_name = character_name3
    OR character_name = character_name4);
RETURN total_atk;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `valid_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `valid_team`(
    entered_c1		VARCHAR(20),
    entered_c2		VARCHAR(20),
    entered_c3		VARCHAR(20),
    entered_c4		VARCHAR(20)
) RETURNS bit(1)
    DETERMINISTIC
BEGIN
    IF ((entered_c1 = entered_c2) OR (entered_c1 = entered_c3) OR (entered_c1 = entered_c4)
		OR (entered_c2 = entered_c3) OR (entered_c2 = entered_c4) OR (entered_c3 = entered_c4))
    THEN RETURN FALSE;
    ELSE RETURN TRUE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_character`(
	entered_name		VARCHAR(20),
    entered_const			INT,
    entered_talent			INT,
    entered_weapon			INT
)
BEGIN
	INSERT INTO user_character(character_name, constellation_lvl, talent_lvl, weapon_id) 
    VALUES (entered_name, entered_const, entered_talent, entered_weapon);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_character_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_character_null`(
	entered_name		VARCHAR(20),
    entered_const			INT,
    entered_talent			INT
)
BEGIN
	INSERT INTO user_character(character_name, constellation_lvl, talent_lvl, weapon_id) 
    VALUES (entered_name, entered_const, entered_talent, NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_team`(
	entered_name	VARCHAR(50),
    entered_c1		VARCHAR(20),
    entered_c2		VARCHAR(20),
    entered_c3		VARCHAR(20),
    entered_c4		VARCHAR(20)
)
BEGIN
	INSERT INTO user_team(team_name, character_name1, character_name2, character_name3, character_name4) 
    VALUES (entered_name, entered_c1, entered_c2, entered_c3, entered_c4);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_weapon`(
	entered_name		VARCHAR(50),
    entered_lvl				INT
)
BEGIN
	INSERT INTO user_weapon(weapon_name, refinement_lvl) VALUES (entered_name, entered_lvl);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_user_character`(
	entered_name		VARCHAR(20)
)
BEGIN
	DELETE FROM user_character 
    WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_user_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_user_team`(
	entered_id		INT
)
BEGIN
	DELETE FROM user_team 
    WHERE team_id = entered_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_user_weapon`(
	entered_id			INT
)
BEGIN
	DELETE FROM user_weapon 
    WHERE weapon_id = entered_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_character`(
	entered_name		VARCHAR(20),
    entered_const			INT,
    entered_talent			INT,
    entered_weapon			INT
)
BEGIN
	UPDATE user_character
	SET constellation_lvl = entered_const, talent_lvl = entered_talent, weapon_id = entered_weapon
	WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_character_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_character_null`(
	entered_name		VARCHAR(20),
    entered_const			INT,
    entered_talent			INT
)
BEGIN
	UPDATE user_character
	SET constellation_lvl = entered_const, talent_lvl = entered_talent, weapon_id = NULL
	WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_weapon`(
	entered_id			INT,
	entered_name		VARCHAR(50),
    entered_lvl				INT
)
BEGIN
	UPDATE user_weapon
	SET weapon_name = entered_name, refinement_lvl = entered_lvl
	WHERE weapon_id = entered_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `weapons_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `weapons_list`(
	entered_name		VARCHAR(50)
)
BEGIN
SELECT weapon_id FROM user_weapon 
NATURAL JOIN gs_weapon 
WHERE weapon_type = (
	SELECT weapon_type FROM gs_character
	WHERE character_name =  entered_name);
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

-- Dump completed on 2021-04-17 23:20:23
