/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for osx10.20 (arm64)
--
-- Host: localhost    Database: likeherotozero
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES
('testuser','$2a$12$iMPC1FnaUwekLLzI/qQsHeGz0.g1jLRjtE3xe0a3ksxVO2vrYCbA2','Scientist');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emission`
--

DROP TABLE IF EXISTS `Emission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Emission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `land` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jahr` int NOT NULL,
  `wert` float DEFAULT NULL,
  `einheit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emission`
--

LOCK TABLES `Emission` WRITE;
/*!40000 ALTER TABLE `Emission` DISABLE KEYS */;
INSERT INTO `Emission` VALUES
(1,'Africa',2023,0.057,'t CO₂ pro Kopf'),
(2,'Albania',2023,0.467,'t CO₂ pro Kopf'),
(3,'Algeria',2023,0.207,'t CO₂ pro Kopf'),
(4,'Angola',2023,0.033,'t CO₂ pro Kopf'),
(5,'Argentina',2023,0.107,'t CO₂ pro Kopf'),
(6,'Armenia',2023,0.167,'t CO₂ pro Kopf'),
(9,'Australia',2023,0.107,'t CO₂ pro Kopf'),
(10,'Austria',2023,0.201,'t CO₂ pro Kopf'),
(11,'Azerbaijan',2023,0.105,'t CO₂ pro Kopf'),
(12,'Bahrain',2023,0.136,'t CO₂ pro Kopf'),
(13,'Bangladesh',2023,0.009,'t CO₂ pro Kopf'),
(14,'Barbados',2023,0.375,'t CO₂ pro Kopf'),
(15,'Belarus',2023,0.246,'t CO₂ pro Kopf'),
(16,'Belgium',2023,0.21,'t CO₂ pro Kopf'),
(17,'Benin',2023,0.026,'t CO₂ pro Kopf'),
(18,'Bhutan',2023,0.557,'t CO₂ pro Kopf'),
(19,'Bolivia',2023,0.128,'t CO₂ pro Kopf'),
(20,'Bosnia and Herzegovina',2023,0.132,'t CO₂ pro Kopf'),
(21,'Brazil',2023,0.118,'t CO₂ pro Kopf'),
(22,'Bulgaria',2023,0.157,'t CO₂ pro Kopf'),
(23,'Burkina Faso',2023,0.051,'t CO₂ pro Kopf'),
(24,'Cambodia',2023,0.338,'t CO₂ pro Kopf'),
(25,'Cameroon',2023,0.061,'t CO₂ pro Kopf'),
(26,'Canada',2023,0.172,'t CO₂ pro Kopf'),
(27,'Chad',2023,0.01,'t CO₂ pro Kopf'),
(28,'Chile',2023,0.05,'t CO₂ pro Kopf'),
(29,'China',2023,0.505,'t CO₂ pro Kopf'),
(30,'Colombia',2023,0.116,'t CO₂ pro Kopf'),
(31,'Congo',2023,0.05,'t CO₂ pro Kopf'),
(32,'Costa Rica',2023,0.074,'t CO₂ pro Kopf'),
(33,'Croatia',2023,0.309,'t CO₂ pro Kopf'),
(34,'Cuba',2023,0.033,'t CO₂ pro Kopf'),
(35,'Cyprus',2023,0.654,'t CO₂ pro Kopf'),
(36,'Czechia',2023,0.171,'t CO₂ pro Kopf'),
(37,'Democratic Republic of Congo',2023,0.006,'t CO₂ pro Kopf'),
(38,'Denmark',2023,0.18,'t CO₂ pro Kopf'),
(39,'Djibouti',2023,0.121,'t CO₂ pro Kopf'),
(40,'Dominican Republic',2023,0.222,'t CO₂ pro Kopf'),
(41,'Ecuador',2023,0.118,'t CO₂ pro Kopf'),
(42,'Egypt',2023,0.176,'t CO₂ pro Kopf'),
(43,'El Salvador',2023,0.066,'t CO₂ pro Kopf'),
(44,'Eritrea',2023,0.02,'t CO₂ pro Kopf'),
(45,'Ethiopia',2023,0.029,'t CO₂ pro Kopf'),
(51,'Finland',2023,0.107,'t CO₂ pro Kopf'),
(52,'France',2023,0.096,'t CO₂ pro Kopf'),
(53,'Gabon',2023,0.08,'t CO₂ pro Kopf'),
(54,'Georgia',2023,0.269,'t CO₂ pro Kopf'),
(55,'Germany',2023,0.125,'t CO₂ pro Kopf'),
(56,'Ghana',2023,0.001,'t CO₂ pro Kopf'),
(57,'Greece',2023,0.351,'t CO₂ pro Kopf'),
(58,'Guatemala',2023,0.072,'t CO₂ pro Kopf'),
(59,'Guyana',2023,0.191,'t CO₂ pro Kopf'),
(60,'Haiti',2023,0.01,'t CO₂ pro Kopf'),
(62,'Honduras',2023,0.066,'t CO₂ pro Kopf'),
(63,'Hong Kong',2023,0.077,'t CO₂ pro Kopf'),
(64,'Hungary',2023,0.084,'t CO₂ pro Kopf'),
(65,'India',2023,0.123,'t CO₂ pro Kopf'),
(66,'Indonesia',2023,0.092,'t CO₂ pro Kopf'),
(67,'Iran',2023,0.43,'t CO₂ pro Kopf'),
(68,'Iraq',2023,0.225,'t CO₂ pro Kopf'),
(69,'Ireland',2023,0.377,'t CO₂ pro Kopf'),
(70,'Israel',2023,0.187,'t CO₂ pro Kopf'),
(71,'Italy',2023,0.133,'t CO₂ pro Kopf'),
(72,'Jamaica',2023,0.139,'t CO₂ pro Kopf'),
(73,'Japan',2023,0.167,'t CO₂ pro Kopf'),
(74,'Jordan',2023,0.114,'t CO₂ pro Kopf'),
(75,'Kazakhstan',2023,0.189,'t CO₂ pro Kopf'),
(76,'Kenya',2023,0.086,'t CO₂ pro Kopf'),
(77,'Kosovo',2023,0.112,'t CO₂ pro Kopf'),
(78,'Kuwait',2023,0.253,'t CO₂ pro Kopf'),
(79,'Kyrgyzstan',2023,0.166,'t CO₂ pro Kopf'),
(80,'Laos',2023,0.718,'t CO₂ pro Kopf'),
(81,'Latvia',2023,0.287,'t CO₂ pro Kopf'),
(82,'Lebanon',2023,0.137,'t CO₂ pro Kopf'),
(83,'Liberia',2023,0.038,'t CO₂ pro Kopf'),
(84,'Libya',2023,0.217,'t CO₂ pro Kopf'),
(85,'Lithuania',2023,0.239,'t CO₂ pro Kopf'),
(88,'Luxembourg',2023,0.555,'t CO₂ pro Kopf'),
(89,'Madagascar',2023,0.002,'t CO₂ pro Kopf'),
(90,'Malawi',2023,0.015,'t CO₂ pro Kopf'),
(91,'Malaysia',2023,0.374,'t CO₂ pro Kopf'),
(92,'Mali',2023,0.029,'t CO₂ pro Kopf'),
(93,'Mexico',2023,0.145,'t CO₂ pro Kopf'),
(94,'Moldova',2023,0.195,'t CO₂ pro Kopf'),
(95,'Mongolia',2023,0.167,'t CO₂ pro Kopf'),
(96,'Morocco',2023,0.135,'t CO₂ pro Kopf'),
(97,'Mozambique',2023,0.035,'t CO₂ pro Kopf'),
(98,'Myanmar',2023,0.047,'t CO₂ pro Kopf'),
(99,'Namibia',2023,0.17,'t CO₂ pro Kopf'),
(100,'Nepal',2023,0.116,'t CO₂ pro Kopf'),
(101,'New Caledonia',2023,0.09,'t CO₂ pro Kopf'),
(102,'New Zealand',2023,0.079,'t CO₂ pro Kopf'),
(103,'Nicaragua',2023,0.029,'t CO₂ pro Kopf'),
(104,'Niger',2023,0.001,'t CO₂ pro Kopf'),
(105,'Nigeria',2023,0.049,'t CO₂ pro Kopf'),
(106,'North America',2023,0.12,'t CO₂ pro Kopf'),
(108,'North Korea',2023,0.095,'t CO₂ pro Kopf'),
(109,'Norway',2023,0.109,'t CO₂ pro Kopf'),
(110,'Oceania',2023,0.072,'t CO₂ pro Kopf'),
(111,'Oman',2023,0.446,'t CO₂ pro Kopf'),
(112,'Pakistan',2023,0.065,'t CO₂ pro Kopf'),
(113,'Panama',2023,0.071,'t CO₂ pro Kopf'),
(114,'Paraguay',2023,0.043,'t CO₂ pro Kopf'),
(115,'Peru',2023,0.163,'t CO₂ pro Kopf'),
(116,'Philippines',2023,0.09,'t CO₂ pro Kopf'),
(117,'Poland',2023,0.174,'t CO₂ pro Kopf'),
(118,'Portugal',2023,0.214,'t CO₂ pro Kopf'),
(119,'Qatar',2023,0.516,'t CO₂ pro Kopf'),
(120,'Romania',2023,0.192,'t CO₂ pro Kopf'),
(121,'Russia',2023,0.16,'t CO₂ pro Kopf'),
(122,'Rwanda',2023,0.016,'t CO₂ pro Kopf'),
(123,'Saudi Arabia',2023,0.898,'t CO₂ pro Kopf'),
(124,'Senegal',2023,0.16,'t CO₂ pro Kopf'),
(125,'Serbia',2023,0.16,'t CO₂ pro Kopf'),
(126,'Slovakia',2023,0.27,'t CO₂ pro Kopf'),
(127,'Slovenia',2023,0.231,'t CO₂ pro Kopf'),
(128,'South Africa',2023,0.084,'t CO₂ pro Kopf'),
(129,'South America',2023,0.111,'t CO₂ pro Kopf'),
(130,'South Korea',2023,0.443,'t CO₂ pro Kopf'),
(131,'Spain',2023,0.165,'t CO₂ pro Kopf'),
(132,'Sri Lanka',2023,0.065,'t CO₂ pro Kopf'),
(133,'Sudan',2023,0.031,'t CO₂ pro Kopf'),
(134,'Suriname',2023,0.031,'t CO₂ pro Kopf'),
(135,'Sweden',2023,0.119,'t CO₂ pro Kopf'),
(136,'Switzerland',2023,0.188,'t CO₂ pro Kopf'),
(137,'Syria',2023,0.037,'t CO₂ pro Kopf'),
(138,'Taiwan',2023,0.214,'t CO₂ pro Kopf'),
(139,'Tajikistan',2023,0.188,'t CO₂ pro Kopf'),
(140,'Tanzania',2023,0.038,'t CO₂ pro Kopf'),
(141,'Thailand',2023,0.268,'t CO₂ pro Kopf'),
(142,'Togo',2023,0.099,'t CO₂ pro Kopf'),
(143,'Trinidad and Tobago',2023,0.188,'t CO₂ pro Kopf'),
(144,'Tunisia',2023,0.348,'t CO₂ pro Kopf'),
(145,'Turkey',2023,0.439,'t CO₂ pro Kopf'),
(146,'Turkmenistan',2023,0.109,'t CO₂ pro Kopf'),
(147,'Uganda',2023,0.013,'t CO₂ pro Kopf'),
(148,'Ukraine',2023,0.115,'t CO₂ pro Kopf'),
(149,'United Arab Emirates',2023,0.492,'t CO₂ pro Kopf'),
(150,'United Kingdom',2023,0.053,'t CO₂ pro Kopf'),
(151,'United States',2023,0.116,'t CO₂ pro Kopf'),
(153,'Uruguay',2023,0.105,'t CO₂ pro Kopf'),
(154,'Uzbekistan',2023,0.173,'t CO₂ pro Kopf'),
(155,'Venezuela',2023,0.035,'t CO₂ pro Kopf'),
(156,'Vietnam',2023,0.511,'t CO₂ pro Kopf'),
(157,'World',2023,0.194,'t CO₂ pro Kopf'),
(158,'Yemen',2023,0.016,'t CO₂ pro Kopf'),
(159,'Zambia',2023,0.051,'t CO₂ pro Kopf'),
(160,'Zimbabwe',2023,0.032,'t CO₂ pro Kopf');
/*!40000 ALTER TABLE `Emission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-07-28 12:48:57
