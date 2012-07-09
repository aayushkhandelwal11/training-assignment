-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: assignments
-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.11.10.1

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
-- Table structure for table `Branch`
--

DROP TABLE IF EXISTS `Branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branch` (
  `Bcode` varchar(10) NOT NULL DEFAULT '',
  `Libararian` varchar(40) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Bcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branch`
--

LOCK TABLES `Branch` WRITE;
/*!40000 ALTER TABLE `Branch` DISABLE KEYS */;
INSERT INTO `Branch` VALUES ('B1','John Smith','2 angeles road'),('B2','Mary Jones','34 pears street'),('B3','Francis','Grange X');
/*!40000 ALTER TABLE `Branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Holdings`
--

DROP TABLE IF EXISTS `Holdings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Holdings` (
  `branch` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `copies` int(11) DEFAULT NULL,
  PRIMARY KEY (`branch`,`title`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Holdings`
--

LOCK TABLES `Holdings` WRITE;
/*!40000 ALTER TABLE `Holdings` DISABLE KEYS */;
INSERT INTO `Holdings` VALUES ('B1','Sussanah',3),('B1','How To Fish',2),('B1','A hist',1),('B2','Computers',2),('B2','The Wife',3),('B2','How To Fish',4),('B3','A Hist',1),('B3','Computers',4),('B3','Sussanah',3),('B3','The Wife',1);
/*!40000 ALTER TABLE `Holdings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `article_name` varchar(20) NOT NULL DEFAULT '',
  `user` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`article_name`),
  KEY `category` (`category`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('Samsung S3','Aayush','Gadgets'),('Iphone 5','Aayush','Gadgets'),('auto increment','Apoorv','tutorial'),('Stacks','Kuldeep','geeks'),('Queues','Nishant','Geeks');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`category_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Geeks','About coding'),('tutorials','Learn something new'),('Gadgets','About new gadgets');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `comment_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user` (`user`),
  KEY `article` (`article`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Samsung S3','Kuldeep','I want one'),(2,'Samsung S3','Apoorv','Me 2'),(3,'Iphone 5','Aayush','Comming Soon'),(4,'Iphone 5','Nishant','Apple:)'),(5,'Stacks','Aayush','Nice explanation'),(6,'Queues','Aayush','Nicely explained');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `Lname` varchar(50) NOT NULL DEFAULT '',
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Lname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('Lincoln',6834523,'Lincoln Place'),('O\'Neill\'s',9727518,'Pierse\'s street'),('Old Nag',6543216,'Dame st'),('Buttery',6796192,'college ST');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandwiches`
--

DROP TABLE IF EXISTS `sandwiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwiches` (
  `location` varchar(50) NOT NULL DEFAULT '',
  `bread` varchar(50) NOT NULL DEFAULT '',
  `filling` varchar(50) NOT NULL DEFAULT '',
  `price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`location`,`bread`,`filling`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandwiches`
--

LOCK TABLES `sandwiches` WRITE;
/*!40000 ALTER TABLE `sandwiches` DISABLE KEYS */;
INSERT INTO `sandwiches` VALUES ('Lincoln','rye','ham','1.25'),('O\'Neill\'s','white','cheese','1.20'),('O\'Neill\'s','whole','ham','1.25'),('Old Nag','rye','beef','1.35'),('Buttery','white','cheese','1.00'),('O\'Neill\'s','white','turkey','1.35'),('Buttery','white','ham','1.10'),('Lincoln','rye','beef','1.35'),('Lincoln','white','ham','1.30'),('Old Nag','rye','ham','1.40');
/*!40000 ALTER TABLE `sandwiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastes`
--

DROP TABLE IF EXISTS `tastes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastes` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `taste` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`taste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastes`
--

LOCK TABLES `tastes` WRITE;
/*!40000 ALTER TABLE `tastes` DISABLE KEYS */;
INSERT INTO `tastes` VALUES ('brown','beef'),('brown','ham'),('brown','turkey'),('green','beef'),('green','cheese'),('green','turkey'),('john','cheese');
/*!40000 ALTER TABLE `tastes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `title` varchar(20) NOT NULL DEFAULT '',
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES ('Sussanah','Ann Brown','Macmillan'),('How To Fish','Amy Fly','Stop Press'),('A Hist','David little','Wiley'),('Computers','Blaise Pascal','Applewoods'),('The Wife','Ann Brown','Macmillan');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Aayush','Admin'),('Apoorv','Normal'),('Kuldeep','Admin'),('Nishant','Normal');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-09 15:23:14
