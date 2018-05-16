-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: sql7.freemysqlhosting.net    Database: sql7233307
-- ------------------------------------------------------
-- Server version	5.5.58-0ubuntu0.14.04.1

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
-- Table structure for table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ville` varchar(30) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `liens` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_logo` (`logo`(11),`ville`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipes`
--

LOCK TABLES `equipes` WRITE;
/*!40000 ALTER TABLE `equipes` DISABLE KEYS */;
INSERT INTO `equipes` VALUES (1,'amiens','images/equipes/amiens.png','http://www.lesgothiques.com/'),(2,'angers','images/equipes/angers.png','http://www.lesducsdangers.fr'),(3,'bordeaux','images/equipes/bordeaux.png','http://www.hockey-boxers-de-bordeaux.fr'),(4,'epinal','images/equipes/epinal.png','http://gamyoepinal.com'),(5,'gap','images/equipes/gap.png','localhost:3000/'),(6,'grenoble','images/equipes/grenoble.png','http://www.bruleursdeloups.fr'),(7,'lyon','images/equipes/lyon.gif','http://www.lhcleslions.com/index.php'),(8,'nice','images/equipes/nice.png','http://elite.nicehockey.fr'),(9,'rouen','images/equipes/rouen.png','https://www.rhe76.com'),(10,'chamonix','images/equipes/chamonix.png','http://www.pionniers-chamonix.com'),(11,'strasbourg','images/equipes/strasbourg.png','http://www.etoile-noire.fr/accueil/');
/*!40000 ALTER TABLE `equipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joueurs`
--

DROP TABLE IF EXISTS `joueurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joueurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `shoot` varchar(50) NOT NULL,
  `naissance` date NOT NULL,
  `age` int(2) NOT NULL,
  `flag` varchar(50) DEFAULT NULL,
  `poids` int(3) NOT NULL,
  `taille` int(3) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `media` varchar(50) DEFAULT NULL,
  `pays` varchar(30) NOT NULL,
  `played_matchs` int(11) NOT NULL,
  `goals` int(11) NOT NULL,
  `assists` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `penalty` int(11) NOT NULL,
  `shoots` int(11) NOT NULL,
  `efficiency` float NOT NULL,
  `shutouts` int(11) NOT NULL,
  `saves` int(11) NOT NULL,
  `saves_percent` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joueurs`
--

LOCK TABLES `joueurs` WRITE;
/*!40000 ALTER TABLE `joueurs` DISABLE KEYS */;
INSERT INTO `joueurs` VALUES (1,'Lerg','Jeff','Gardien','Gaucher','1986-03-27',42,'images/flags/usa.png',46,168,'images/joueurs/jeff_lerg.png','images/medias/01-lerg.mp4','USA',36,0,0,0,0,1,0.16,1,947,0.901),(2,'Ritz','Maxime','Défenseur','Droitier','1998-03-03',20,'images/flags/france.png',73,172,'images/joueurs/maxime_ritz.png','images/medias/25-ritz.mp4','France',20,0,1,1,2,2,0,0,0,0),(3,'Crinon','Pierre','Défenseur','Gaucher','1995-08-02',23,'images/flags/france.png',100,195,'images/joueurs/pierre_crinon.png','images/medias/07-crinon.mp4','France',42,1,6,7,88,53,0.019,0,0,0),(4,'Di Dio Balsamo','Cédric ','Attaquant','Gaucher','1994-03-27',24,'images/flags/france.png',75,179,'images/joueurs/cedric_didiobalsamo.png','images/medias/27-di-dio-balsamo.mp4','France',44,6,13,19,20,65,0.092,0,0,0),(5,'McDonald','Chad','Attaquant','Droitier','1993-02-25',25,'images/flags/usa.png',78,178,'images/joueurs/chad_mcdonald.png','images/medias/09-macdonald.mp4','USA',41,13,16,29,38,96,0.135,0,0,0),(6,'Rama','Joris','Attaquant','Gaucher','1999-02-17',19,'images/flags/usa.png',70,179,'images/joueurs/joris_rama.png','images/medias/24-rama.mp4','USA',5,0,0,0,0,3,0,0,0,0),(7,'Gautero','Théo','Gardien','Gaucher','1998-03-04',20,'images/flags/france.png',74,174,'images/joueurs/theo_gautero.png','images/medias/30-gauthero.mp4','France',0,0,0,0,0,0,0,0,0,0),(8,'Bertrand','Aurélien','Gardien','Gaucher','1987-02-06',31,'images/flags/france.png',90,187,'images/joueurs/aurelien_bertrand.png','images/medias/39-bertrand.mp4','France',7,0,0,0,0,0,4,0,144,0.862),(9,'Ross','Maxwell','Défenseur','Gaucher','1991-07-02',28,'images/flags/canada.png',100,186,'images/joueurs/max_ross.png','images/medias/04-ross.mp4','Canada',36,5,12,17,39,86,0.058,0,0,0),(10,'Faure ','Arnaud','Défenseur','Gaucher','1995-12-15',23,'images/flags/france.png',90,183,'images/joueurs/arnaud_faure.png','images/medias/06-faure.mp4','France',33,1,1,2,33,16,0.063,0,0,0),(11,'McCormac','Graeme','Défenseur','Droitier','1991-04-22',27,'images/flags/canada.png',93,185,'images/joueurs/graeme_mccormack.png','','Canada',44,9,21,30,8,127,0.071,0,0,0),(12,'Lacheny','Yoanne','Défenseur','Droitier','1991-06-05',26,'images/flags/france.png',85,184,'images/joueurs/yoanne_lacheny.png','images/medias/21-lacheny.mp4','France',34,0,1,1,22,18,0,0,0,0),(13,'Raux','Damien','Défenseur','Gaucher','1984-11-03',34,'images/flags/france.png',85,178,'images/joueurs/damien_raux.png','images/medias/28-raux.mp4','France',35,6,10,16,10,43,0.14,0,0,0),(14,'Campbell','Tim','Défenseur','Droitier','1991-02-15',27,'images/flags/canada.png',86,185,'images/joueurs/tim_campbell.png','images/medias/51-campbell.mp4','Canada',43,14,24,38,44,149,0.094,0,0,0),(15,'Faure','Raphaël','Défenseur','Gaucher','1993-04-01',25,'images/flags/france.png',88,181,'images/joueurs/raphael_faure.png','images/medias/59-faure.mp4','France',43,3,9,12,40,44,0.068,0,0,0);
/*!40000 ALTER TABLE `joueurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchs`
--

DROP TABLE IF EXISTS `matchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_domicile` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `heure` datetime DEFAULT NULL,
  `id_exterieur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_Exterieur` (`id_exterieur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchs`
--

LOCK TABLES `matchs` WRITE;
/*!40000 ALTER TABLE `matchs` DISABLE KEYS */;
INSERT INTO `matchs` VALUES (1,5,'2018-04-27','2018-04-25 19:00:00',10),(2,9,NULL,'2018-05-26 21:00:00',5);
/*!40000 ALTER TABLE `matchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (1,'alex','wcsbordeaux'),(2,'ben','bendo'),(3,'jeremy','bendo');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `nationnalité` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Aurore Grandvoinet','Préparatrice Physique ','images/flags/france.png','images/Staff/grandvoinet_aurore.png'),(2,'Eric Blais','Assistant Coach','images/flags/france.png','images/Staff/blais_assistant.png'),(3,'Luciano Basile','Head Coach','images/flags/canada.png','images/Staff/basile_coach.png'),(4,'Jerôme Escallier','Président','images/flags/france.png','images/Staff/escallier_president.png'),(5,'Sébastien Oprandi','Manager','images/flags/france.png','images/Staff/oprandu_manager.png');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 11:00:13
