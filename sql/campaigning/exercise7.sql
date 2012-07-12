-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: campaign
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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `email_id` varchar(30) NOT NULL DEFAULT '',
  `phn_no` int(11) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES ('53e1228@hotmail.com ',982958,' Lucknow'),('4e68a8c@hotmail.com ',9810776,' Chennai'),('7650b89@yahoo.com ',9832386,' Kolkatta'),('f9b1317@yahoo.com ',9815433,' Delhi'),('fd6515f@me.com ',9820667,' Delhi'),('b389f91@gmail.com ',983429,' Kolkatta'),('7b60d9f@me.com ',983392,' Mumbai'),('f415e11@yahoo.com ',9816538,' Lucknow'),('cfd4611@hotmail.com ',9819398,' Kolkatta'),('53ac4bc@yahoo.com ',989347,' Kolkatta'),('61f8cf9@me.com ',986701,' Kolkatta'),('c311d98@gmail.com ',9813477,' Chennai'),('18e7b58@hotmail.com ',985633,' Mumbai'),('53a8322@hotmail.com ',9819188,' Delhi'),('a5b1ab3@me.com ',9813820,' Chennai'),('49b623d@hotmail.com ',98334,' Kolkatta'),('0ad8472@me.com ',9817281,' Delhi'),('b80f399@yahoo.com ',9817148,' Chennai'),('50c510a@me.com ',981057,' Chennai'),('c3e1489@yahoo.com ',983638,' Kolkatta'),('80806d0@hotmail.com ',984888,' Chennai'),('b570c4f@gmail.com ',9826014,' Mumbai'),('d5f5f1b@yahoo.com ',9827342,' Chennai'),('31d1aa8@yahoo.com ',9829122,' Chennai'),('91ef43b@me.com ',987768,' Chennai'),('454be51@me.com ',9821149,' Mumbai'),('6d45dc4@hotmail.com ',9817143,' Kolkatta'),('b7d9d0d@gmail.com ',988468,' Lucknow'),('f29d15b@hotmail.com ',982454,' Mumbai'),('9444b0a@hotmail.com ',988315,' Chennai'),('93f8188@hotmail.com ',982126,' Delhi'),('842624b@yahoo.com ',988207,' Kolkatta'),('614d167@yahoo.com ',9813283,' Chennai'),('42797f2@hotmail.com ',983195,' Chennai'),('6cf38a4@me.com ',982374,' Delhi'),('6f0c016@gmail.com ',9812630,' Lucknow'),('e4dd79d@hotmail.com ',9826387,' Lucknow'),('7d0898a@me.com ',9810914,' Kolkatta'),('5aa54fb@hotmail.com ',985907,' Chennai'),('1ecee11@hotmail.com ',981613,' Chennai'),('0467a86@hotmail.com ',981977,' Chennai'),('c0af6df@me.com ',985553,' Delhi'),('e3ec1dc@hotmail.com ',9813735,' Mumbai'),('19fe475@yahoo.com ',9828437,' Delhi'),('424d6ba@me.com ',9817704,' Kolkatta'),('1b0f127@me.com ',987980,' Chennai'),('18be937@me.com ',9819382,' Lucknow'),('e0900ac@yahoo.com ',982707,' Kolkatta'),('0263273@gmail.com ',9818804,' Lucknow'),('87beea8@gmail.com ',9832597,' Lucknow'),('fe6368b@gmail.com ',9821170,' Mumbai'),('74ebfd9@me.com ',9830313,' Delhi'),('dee436e@gmail.com ',9826989,' Mumbai'),('6e58558@me.com ',981329,' Mumbai'),('d629b41@me.com ',981742,' Lucknow'),('ab25b4d@hotmail.com ',9832506,' Lucknow'),('10fae70@me.com ',9821673,' Chennai'),('70f7f38@yahoo.com ',9818048,' Kolkatta'),('8d8761e@gmail.com ',985886,' Lucknow'),('25a84c1@me.com ',9820330,' Kolkatta'),('de975af@hotmail.com ',9817786,' Delhi'),('4180926@hotmail.com ',9820424,' Mumbai'),('64cebcc@hotmail.com ',9821749,' Kolkatta'),('7d0898a@gmail.com ',988602,' Chennai'),('1092ab1@hotmail.com ',9812531,' Lucknow'),('a68c673@yahoo.com ',9821578,' Lucknow'),('7face0c@me.com ',9825893,' Mumbai'),('f9ac66a@yahoo.com ',9828207,' Mumbai'),('e5ccd60@gmail.com ',9830439,' Kolkatta'),('ee38dd9@gmail.com ',9824074,' Mumbai'),('8515168@me.com ',9828353,' Mumbai'),('83fba63@me.com ',987306,' Delhi'),('3f20fe7@yahoo.com ',984584,' Lucknow'),('b7a7b74@gmail.com ',9832202,' Mumbai'),('21b2cc5@gmail.com ',9819389,' Delhi'),('091b847@gmail.com ',9813008,' Lucknow'),('609d317@me.com ',9818251,' Delhi'),('ff1a552@me.com ',9831503,' Delhi'),('f156e42@hotmail.com ',9814539,' Kolkatta'),('1d8c00a@gmail.com ',981508,' Kolkatta'),('2ae0548@yahoo.com ',9822305,' Lucknow'),('9f5601b@me.com ',981050,' Delhi'),('4ca6549@gmail.com ',981374,' Mumbai'),('43da815@gmail.com ',9826983,' Chennai'),('fec38e7@hotmail.com ',9811326,' Chennai'),('fa4adf3@gmail.com ',9824046,' Delhi'),('8589d9b@gmail.com ',9817322,' Kolkatta'),('20618c4@hotmail.com ',9824509,' Chennai'),('87652ba@yahoo.com ',983126,' Delhi'),('10273e1@yahoo.com ',985199,' Kolkatta'),('133e15c@hotmail.com ',9830881,' Lucknow'),('7da4feb@hotmail.com ',9818954,' Chennai'),('a00f4a0@yahoo.com ',9818266,' Mumbai'),('c86052c@yahoo.com ',9810688,' Lucknow'),('fa54a21@yahoo.com ',9819447,' Lucknow'),('489cc21@yahoo.com ',986192,' Kolkatta'),('3f6f525@hotmail.com ',9826814,' Kolkatta'),('2947764@me.com ',9818308,' Chennai'),('01433ed@me.com ',9814366,' Chennai'),('7ac9ff1@hotmail.com ',9830930,' Chennai'),('3695bdd@yahoo.com ',9826165,' Kolkatta'),('b06e572@yahoo.com ',9828061,' Mumbai'),('f1f5881@me.com ',9814922,' Delhi'),('da1ccbf@hotmail.com ',982387,' Mumbai'),('5718b2b@me.com ',9820562,' Chennai'),('475db6e@gmail.com ',988911,' Delhi'),('a3afeab@hotmail.com ',98621,' Mumbai'),('886384b@hotmail.com ',981494,' Kolkatta'),('d04237a@hotmail.com ',98616,' Mumbai'),('8cc2414@yahoo.com ',989372,' Lucknow'),('7aaa062@yahoo.com ',989018,' Delhi'),('ad48df2@yahoo.com ',9831039,' Chennai'),('f9ca0f1@gmail.com ',9821130,' Chennai'),('ffbf1b1@gmail.com ',985961,' Chennai'),('b53d9cb@me.com ',9816933,' Kolkatta'),('c82c7aa@gmail.com ',9827952,' Lucknow'),('c37934e@hotmail.com ',9816778,' Delhi'),('979063b@gmail.com ',9813783,' Kolkatta'),('95dd4f0@gmail.com ',9818273,' Mumbai'),('254868a@yahoo.com ',986668,' Kolkatta'),('b214d6f@hotmail.com ',9811005,' Mumbai'),('3f29b6e@gmail.com ',98521,' Chennai'),('eefd9fa@me.com ',983551,' Chennai'),('0a9bca9@gmail.com ',985878,' Delhi'),('3824078@gmail.com ',9830004,' Kolkatta'),('0a09b8c@me.com ',9829795,' Lucknow'),('d93e272@hotmail.com ',984948,' Delhi'),('a575faa@hotmail.com ',982513,' Delhi'),('07f163e@yahoo.com ',9816708,' Chennai'),('32a1f08@gmail.com ',9811304,' Chennai'),('a35d6cf@yahoo.com ',9810291,' Lucknow'),('042460b@yahoo.com ',9822336,' Lucknow'),('2214ad5@yahoo.com ',986910,' Chennai'),('7c34635@yahoo.com ',988027,' Mumbai'),('b9e13d7@me.com ',988110,' Kolkatta'),('f8911a3@yahoo.com ',9821159,' Mumbai'),('bb08a3d@gmail.com ',9810487,' Delhi'),('651ab55@me.com ',9819134,' Lucknow'),('5434cad@hotmail.com ',9832696,' Delhi'),('5ab4b8a@me.com ',9828199,' Kolkatta'),('333554d@me.com ',9823680,' Lucknow'),('f1c2366@me.com ',9825045,' Mumbai'),('f3226c9@hotmail.com ',9812549,' Lucknow'),('0f1a82e@yahoo.com ',9827301,' Delhi'),('31b0b18@me.com ',988621,' Delhi'),('bd47ac0@yahoo.com ',9832483,' Mumbai'),('ede3111@yahoo.com ',9812040,' Lucknow'),('618accd@me.com ',981987,' Lucknow'),('3c5b18e@hotmail.com ',983921,' Delhi'),('2d6bd16@gmail.com ',9821226,' Chennai'),('8144038@me.com ',9814322,' Kolkatta'),('f2c3a10@hotmail.com ',9813285,' Lucknow'),('0279385@me.com ',985887,' Lucknow'),('e42bb89@me.com ',9821934,' Delhi'),('e7675fb@me.com ',9831928,' Mumbai'),('bb46c91@yahoo.com ',9815404,' Mumbai'),('55d157b@yahoo.com ',9813578,' Delhi'),('3b0db82@gmail.com ',9830130,' Delhi'),('4c1cef1@me.com ',9820749,' Kolkatta'),('02b9449@yahoo.com ',9831869,' Delhi'),('2eacbcd@me.com ',988325,' Mumbai'),('9c4567f@gmail.com ',9818488,' Mumbai'),('5e7bf7c@me.com ',9823395,' Mumbai'),('4c40cf0@gmail.com ',983961,' Lucknow'),('d9dd248@gmail.com ',9831555,' Chennai'),('18e4b46@gmail.com ',9814660,' Kolkatta'),('0156d61@yahoo.com ',9817645,' Delhi'),('e128f4b@hotmail.com ',9832389,' Lucknow'),('b017266@gmail.com ',98470,' Chennai'),('594f901@gmail.com ',9815256,' Chennai'),('e1bb991@yahoo.com ',9827039,' Mumbai'),('eae0543@gmail.com ',9829124,' Lucknow'),('eef0958@gmail.com ',9815251,' Mumbai'),('f7ada19@gmail.com ',9830905,' Lucknow'),('179e3ab@hotmail.com ',982091,' Lucknow'),('636acd2@gmail.com ',9824599,' Delhi'),('fc413aa@yahoo.com ',9810892,' Chennai'),('18cfc73@yahoo.com ',98232,' Delhi'),('750c9ef@hotmail.com ',9829189,' Mumbai'),('f646b44@yahoo.com ',9816162,' Lucknow'),('b26fb06@gmail.com ',9831635,' Mumbai'),('4fff331@hotmail.com ',9831528,' Chennai'),('2be6cbe@yahoo.com ',9815199,' Kolkatta'),('9108df0@me.com ',9813129,' Lucknow'),('6a78325@hotmail.com ',9813884,' Chennai'),('b99ca56@gmail.com ',9821822,' Mumbai'),('2c0d307@yahoo.com ',9827436,' Lucknow'),('ef8788a@gmail.com ',9816302,' Kolkatta'),('70b76ca@yahoo.com ',9827867,' Kolkatta'),('ac39f5c@yahoo.com ',9829611,' Mumbai'),('4b831d6@me.com ',9811040,' Mumbai'),('416c1dd@gmail.com ',9830260,' Delhi'),('fb7be5e@gmail.com ',9827777,' Kolkatta'),('8109dd7@me.com ',9825010,' Delhi'),('b4e3b90@me.com ',9830637,' Delhi'),('40f122c@yahoo.com ',9810110,' Chennai'),('8ba9a00@hotmail.com ',9827906,' Kolkatta'),('f661b02@hotmail.com ',98344,' Mumbai'),('0aeceac@me.com ',9820487,' Mumbai'),('fffc963@hotmail.com ',984847,' Delhi');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-12 12:32:59
