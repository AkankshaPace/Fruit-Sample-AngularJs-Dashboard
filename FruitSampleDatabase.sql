-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bloomberg
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mon` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'Jan'),(2,'Feb'),(3,'Mar'),(4,'Apr'),(5,'May'),(6,'Jun'),(7,'Jul'),(8,'Aug'),(9,'Sep'),(10,'Oct'),(11,'Nov'),(12,'Dec');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `continent` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `countryName` varchar(45) DEFAULT NULL,
  `capital` varchar(45) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `code3` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Asia','South Asia','Afghanistan','Kabul','AF','AFG'),(2,'Europe','South East Europe','Albania','Tirana','AL','ALB'),(3,'Africa','Northern Africa','Algeria','Algiers','AG','DZA'),(4,'Oceania','Pacific','American Samoa','Pago Pago','AQ','ASM'),(5,'Europe','South West Europe','orra','Andorra la Vella','AN','AND'),(6,'Africa','Southern Africa','Angola','Luanda','AO','AGO'),(7,'Americas','West Indies','Anguilla','The Valley','AV','AIA'),(8,'Americas','West Indies','Antigua  Barbuda','Saint Johns','AC','ATG'),(9,'Americas','South America','Argentina','Buenos Aires','AR','ARG'),(10,'Asia','South West Asia','Armenia','Yerevan','AM','ARM'),(11,'Americas','West Indies','Aruba','Oranjestad','AA','ABW'),(12,'Oceania','Pacific','Australia','Canberra','AS','AUS'),(13,'Europe','Central Europe','Austria','Vienna','AU','AUT'),(14,'Asia','South West Asia','Azerbaijan','Baku (Baki)','AJ','AZE'),(15,'Americas','West Indies','Bahamas The','Nassau','BF','BHS'),(16,'Asia','South West Asia','Bahrain','Manama','BA','BHR'),(17,'Asia','South Asia','Bangladesh','Dhaka','BG','BGD'),(18,'Americas','West Indies','Barbados','Bridgetown','BB','BRB'),(19,'Europe','Eastern Europe','Belarus','Minsk','BO','BLR'),(20,'Europe','Western Europe','Belgium','Brussels','BE','BEL'),(21,'Americas','Central America','Belize','Belmopan','BH','BLZ'),(22,'Africa','Western Africa','Benin','Porto-Novo','BN','BEN'),(23,'Americas','West Indies','Bermuda','Hamilton','BD','BMU'),(24,'Asia','South Asia','Bhutan','Thimphu','BT','BTN'),(25,'Americas','South America','Bolivia','La Paz / Sucre','BL','BOL'),(26,'Europe','South East Europe','Bosnia  Herzegovina','Sarajevo','BK','BIH'),(27,'Africa','Southern Africa','Botswana','Gaborone','BC','BWA'),(28,'Americas','South America','Brazil','Brasilia','BR','BRA'),(29,'Americas','West Indies','British Virgin Isls','Road Town','VI','VGB'),(30,'Asia','South East Asia','Brunei','Bandar Seri Begawan','BX','BRN'),(31,'Europe','South East Europe','Bulgaria','Sofia','BU','BGR'),(32,'Africa','Western Africa','Burkina Faso','Ouagadougou','UV','BFA'),(33,'Africa','Central Africa','Burundi','Bujumbura','BY','BDI'),(34,'Asia','South East Asia','Cambodia','Phnom Penh','CB','KHM'),(35,'Africa','Western Africa','Cameroon','Yaounde','CM','CMR'),(36,'Americas','North America','Canada','Ottawa','CA','CAN'),(37,'Africa','Western Africa','Cape Verde','Praia','CV','CPV'),(38,'Americas','West Indies','Cayman Isls','George Town','CJ','CYM'),(39,'Africa','Central Africa','Central African Republic','Bangui','CT','CAF'),(40,'Africa','Central Africa','Chad','NDjamena','CD','TCD'),(41,'Americas','South America','Chile','Santiago','CI','CHL'),(42,'Asia','East Asia','China','Beijing','CH','CHN'),(43,'Asia','South East Asia','Christmas Isl','The Settlement','KT','CXR'),(44,'Asia','South East Asia','Cocos (Keeling) Isls','West Island','CK','CCK'),(45,'Americas','South America','Colombia','Bogota','CO','COL'),(46,'Africa','Indian Ocean','Comoros','Moroni','CN','COM'),(47,'Africa','Central Africa','Congo Republic of the','Brazzaville','CF','COG'),(48,'Oceania','Pacific','Cook Isls','Avarua','CW','COK'),(49,'Americas','Central America','Costa Rica','San Jose','CS','CRI'),(50,'Africa','Western Africa','Cote dIvoire','Yamoussoukro','IV','CIV'),(51,'Europe','South East Europe','Croatia','Zagreb','HR','HRV'),(52,'Americas','West Indies','Cuba','Havana','CU','CUB'),(53,'Asia','South West Asia','Cyprus','Nicosia','CY','CYP'),(54,'Europe','Central Europe','Czech Republic','Prague','EZ','CZE'),(55,'Europe','Northern Europe','Denmark','Copenhagen','DA','DNK'),(56,'Africa','Eastern Africa','Djibouti','Djibouti','DJ','DJI'),(57,'Americas','West Indies','Dominica','Roseau','DO','DMA'),(58,'Americas','West Indies','Dominican Republic','Santo Domingo','DR','DOM'),(59,'Americas','South America','Ecuador','Quito','EC','ECU'),(60,'Africa','Northern Africa','Egypt','Cairo','EG','EGY'),(61,'Americas','Central America','El Salvador','San Salvador','ES','SLV'),(62,'Africa','Western Africa','Equatorial Guinea','Malabo','EK','GNQ'),(63,'Africa','Eastern Africa','Eritrea','Asmara','ER','ERI'),(64,'Europe','Eastern Europe','Estonia','Tallinn','EN','EST'),(65,'Africa','Eastern Africa','Ethiopia','Addis Ababa','ET','ETH'),(66,'Americas','South America','Falkl Isls (Islas Malvinas)','Stanley','FA','FLK'),(67,'Europe','Northern Europe','Faroe Isls','Torshavn','FO','FRO'),(68,'Oceania','Pacific','Fiji','Suva','FJ','FJI'),(69,'Europe','Northern Europe','Finl','Helsinki','FI','FIN'),(70,'Europe','Western Europe','France','Paris','FR','FRA'),(71,'Americas','South America','French Guiana','Cayenne','FG','GUF'),(72,'Oceania','Pacific','French Polynesia','Papeete','FP','PYF'),(73,'Africa','Western Africa','Gabon','Libreville','GB','GAB'),(74,'Africa','Western Africa','Gambia The','Banjul','GA','GMB'),(75,'Asia','South West Asia','Georgia','Tbilisi','GG','GEO'),(76,'Europe','Western Europe','Germany','Berlin','GM','DEU'),(77,'Africa','Western Africa','Ghana','Accra','GH','GHA'),(78,'Europe','South West Europe','Gibraltar','Gibraltar','GI','GIB'),(79,'Europe','South East Europe','Greece','Athens','GR','GRC'),(80,'Americas','North America','Greenl','Nuuk (Godthab)','GL','GRL'),(81,'Americas','West Indies','Grenada','Saint Georges','GJ','GRD'),(82,'Americas','West Indies','Guadeloupe','Basse-Terre','GP','GLP'),(83,'Oceania','Pacific','Guam','Hagatna (Agana)','GQ','GUM'),(84,'Americas','Central America','Guatemala','Guatemala','GT','GTM'),(85,'Europe','Western Europe','Guernsey','Saint Peter Port','--','--'),(86,'Africa','Western Africa','Guinea','Conakry','GV','GIN'),(87,'Africa','Western Africa','Guinea-Bissau','Bissau','PU','GNB'),(88,'Americas','South America','Guyana','Georgetown','GY','GUY'),(89,'Americas','West Indies','Haiti','Port-au-Prince','HA','HTI'),(90,'Europe','Southern Europe','Holy See (Vatican City)','Vatican City','VT','VAT'),(91,'Americas','Central America','Honduras','Tegucigalpa','HO','HND'),(92,'Europe','Central Europe','Hungary','Budapest','HU','HUN'),(93,'Europe','Northern Europe','Icel','Reykjavik','IC','ISL'),(94,'Asia','South Asia','India','New Delhi','IN','IND'),(95,'Asia','South East Asia','Indonesia','Jakarta','ID','IDN'),(96,'Asia','South West Asia','Iran','Tehran','IR','IRN'),(97,'Asia','South West Asia','Iraq','Baghdad','IZ','IRQ'),(98,'Europe','Western Europe','Irel','Dublin','EI','IRL'),(99,'Asia','South West Asia','Israel','Jerusalem','IS','ISR'),(100,'Europe','Southern Europe','Italy','Rome','IT','ITA'),(101,'Americas','West Indies','Jamaica','Kingston','JM','JAM'),(102,'Europe','Northern Europe','Jan Mayen','-','--','--'),(103,'Asia','East Asia','Japan','Tokyo','JA','JPN'),(104,'Europe','Western Europe','Jersey','Saint Helier','--','--'),(105,'Asia','South West Asia','Jordan','Amman','JO','JOR'),(106,'Asia','Central Asia','Kazakhstan','Astana (Akmola)','KZ','KAZ'),(107,'Africa','Eastern Africa','Kenya','Nairobi','KE','KEN'),(108,'Oceania','Pacific','Kiribati','Tarawa','KR','KIR'),(109,'Asia','East Asia','Korea North','Pyongyang','KN','PRK'),(110,'Asia','East Asia','Korea South','Seoul','KS','KOR'),(111,'Asia','South West Asia','Kuwait','Kuwait','KU','KWT'),(112,'Asia','Central Asia','Kyrgyzstan','Bishkek','KG','KGZ'),(113,'Asia','South East Asia','Laos','Vientiane','LA','LAO'),(114,'Europe','Eastern Europe','Latvia','Riga','LG','LVA'),(115,'Asia','South West Asia','Lebanon','Beirut','LE','LBN'),(116,'Africa','Southern Africa','Lesotho','Maseru','LT','LSO'),(117,'Africa','Western Africa','Liberia','Monrovia','LI','LBR'),(118,'Africa','Northern Africa','Libya','Tripoli','LY','LBY'),(119,'Europe','Central Europe','Liechtenstein','Vaduz','LS','LIE'),(120,'Europe','Eastern Europe','Lithuania','Vilnius','LH','LTU'),(121,'Europe','Western Europe','Luxembourg','Luxembourg','LU','LUX'),(122,'Europe','South East Europe','Macedonia','Skopje','MK','MKD'),(123,'Africa','Indian Ocean','Madagascar','Antananarivo','MA','MDG'),(124,'Africa','Southern Africa','Malawi','Lilongwe','MI','MWI'),(125,'Asia','South East Asia','Malaysia','Kuala Lumpur','MY','MYS'),(126,'Asia','South Asia','Maldives','Male (Maale)','MV','MDV'),(127,'Africa','Western Africa','Mali','Bamako','ML','MLI'),(128,'Europe','Southern Europe','Malta','Valletta','MT','MLT'),(129,'Europe','Western Europe','Man Isle of','Douglas','--','--'),(130,'Oceania','Pacific','Marshall Isls','Majuro','RM','MHL'),(131,'Americas','West Indies','Martinique','Fort-de-France','MB','MTQ'),(132,'Africa','Western Africa','Mauritania','Nouakchott','MR','MRT'),(133,'Africa','Indian Ocean','Mauritius','Port Louis','MP','MUS'),(134,'Africa','Indian Ocean','Mayotte','Mamoutzou','MF','MYT'),(135,'Americas','Central America','Mexico','Mexico','MX','MEX'),(136,'Oceania','Pacific','Micronesia Federated States of','Palikir','','FSM'),(137,'Europe','Eastern Europe','Moldova','Chisinau','MD','MDA'),(138,'Europe','Western Europe','Monaco','Monaco','MN','MCO'),(139,'Asia','Northern Asia','Mongolia','Ulaanbaatar','MG','MNG'),(140,'Americas','West Indies','Montserrat','Plymouth','MH','MSR'),(141,'Africa','Northern Africa','Morocco','Rabat','MO','MAR'),(142,'Africa','Southern Africa','Mozambique','Maputo','MZ','MOZ'),(143,'Asia','South East Asia','Myanmar (Burma)','Rangoon (Yangon)','BM','MMR'),(144,'Africa','Southern Africa','Namibia','Windhoek','WA','NAM'),(145,'Oceania','Pacific','Nauru','no official capital','NR','NRU'),(146,'Asia','South Asia','Nepal','Kathmandu','NP','NPL'),(147,'Europe','Western Europe','Netherls','Amsterdam','NL','NLD'),(148,'Americas','West Indies','Netherls Antilles','Willemstad','NT','ANT'),(149,'Oceania','Pacific','New Caledonia','Noumea','NC','NCL'),(150,'Oceania','Pacific','New Zeal','Wellington','NZ','NZL'),(151,'Americas','Central America','Nicaragua','Managua','NU','NIC'),(152,'Africa','Western Africa','Niger','Niamey','NG','NER'),(153,'Africa','Western Africa','Nigeria','Abuja','NI','NGA'),(154,'Oceania','Pacific','Niue','Alofi','NE','NIU'),(155,'Oceania','Pacific','Norfolk Isl','Kingston','NF','NFK'),(156,'Oceania','Pacific','Northern Mariana Isls','Saipan','CQ','MNP'),(157,'Europe','Northern Europe','Norway','Oslo','NO','NOR'),(158,'Asia','South West Asia','Oman','Muscat','MU','OMN'),(159,'Asia','South Asia','Pakistan','Islamabad','PK','PAK'),(160,'Oceania','Pacific','Palau','Koror','PS','PLW'),(161,'Asia','South West Asia','Palestine','','--','--'),(162,'Americas','Central America','Panama','Panama','PM','PAN'),(163,'Oceania','Pacific','Papua New Guinea','Port Moresby','PP','PNG'),(164,'Americas','South America','Paraguay','Asuncion','PA','PRY'),(165,'Americas','South America','Peru','Lima','PE','PER'),(166,'Asia','South East Asia','Philippines','Manila','RP','PHL'),(167,'Oceania','Pacific','Pitcairn Isls','Adamstown','PC','PCN'),(168,'Europe','Eastern Europe','Pol','Warsaw','PL','POL'),(169,'Europe','South West Europe','Portugal','Lisbon','PO','PRT'),(170,'Americas','West Indies','Puerto Rico','San Juan','RQ','PRI'),(171,'Asia','South West Asia','Qatar','Doha','QA','QAT'),(172,'Africa','Indian Ocean','Reunion','Saint-Denis','RE','REU'),(173,'Europe','South East Europe','Romania','Bucharest','RO','ROM'),(174,'Asia','Northern Asia','Russia','Moscow','RS','RUS'),(175,'Africa','Central Africa','Rwa','Kigali','RW','RWA'),(176,'Americas','West Indies','Saint Kitts  Nevis','Basseterre','SC','KNA'),(177,'Americas','West Indies','Saint Lucia','Castries','ST','LCA'),(178,'Americas','North America','Saint Pierre  Miquelon','Saint-Pierre','SB','SPM'),(179,'Americas','West Indies','Saint Vincent  the Grenadines','Kingstown','VC','VCT'),(180,'Europe','Southern Europe','San Marino','San Marino','SM','SMR'),(181,'Africa','Western Africa','Sao Tome  Principe','Sao Tome','TP','STP'),(182,'Asia','South West Asia','Saudi Arabia','Riyadh','SA','SAU'),(183,'Africa','Western Africa','Senegal','Dakar','SG','SEN'),(184,'Europe','South East Europe','Serbia  Montenegro','Belgrade / Podgorica','SR','--'),(185,'Africa','Indian Ocean','Seychelles','Victoria','SE','SYC'),(186,'Africa','Western Africa','Sierra Leone','Freetown','SL','SLE'),(187,'Asia','South East Asia','Singapore','Singapore','SN','SGP'),(188,'Europe','Central Europe','Slovakia','Bratislava','LO','SVK'),(189,'Europe','South East Europe','Slovenia','Ljubljana','SI','SVN'),(190,'Oceania','Pacific','Solomon Isls','Honiara','BP','SLB'),(191,'Africa','Eastern Africa','Somalia','Mogadishu','SO','SOM'),(192,'Africa','Southern Africa','South Africa','Pretoria','SF','ZAF'),(193,'Europe','South West Europe','Spain','Madrid','SP','ESP'),(194,'Asia','South Asia','Sri Lanka','Colombo','CE','LKA'),(195,'Africa','Northern Africa','Sudan','Khartoum','SU','SDN'),(196,'Americas','South America','Suriname','Paramaribo','NS','SUR'),(197,'Europe','Northern Europe','Svalbard','Longyearbyen','SV','SJM'),(198,'Africa','Southern Africa','Swazil','Mbabane','WZ','SWZ'),(199,'Europe','Northern Europe','Sweden','Stockholm','SW','SWE'),(200,'Europe','Central Europe','Switzerl','Bern','SZ','CHE'),(201,'Asia','South West Asia','Syria','Damascus','SY','SYR'),(202,'Asia','East Asia','Taiwan','Taipei','TW','TWN'),(203,'Asia','Central Asia','Tajikistan','Dushanbe','TI','TJK'),(204,'Africa','Eastern Africa','Tanzania','Dar es Salaam','TZ','TZA'),(205,'Asia','South East Asia','Thail','Bangkok','TH','THA'),(206,'Africa','Western Africa','Togo','Lome','TO','TGO'),(207,'Oceania','Pacific','Tokelau','none','TL','TKL'),(208,'Oceania','Pacific','Tonga','Nukualofa','TN','TON'),(209,'Americas','West Indies','Trinidad  Tobago','Port-of-Spain','TD','TTO'),(210,'Africa','Northern Africa','Tunisia','Tunis','TS','TUN'),(211,'Asia','South West Asia','Turkey','Ankara','TU','TUR'),(212,'Asia','Central Asia','Turkmenistan','Ashgabat','TX','TKM'),(213,'Americas','West Indies','Turks  Caicos Isls','Grand Turk','TK','TCA'),(214,'Oceania','Pacific','Tuvalu','Funafuti','TV','TUV'),(215,'Africa','Eastern Africa','Uga','Kampala','UG','UGA'),(216,'Europe','Eastern Europe','Ukraine','Kiev','UP','UKR'),(217,'Asia','South West Asia','United Arab Emirates','Abu Dhabi','TC','ARE'),(218,'Europe','Western Europe','United Kingdom','London','UK','GBR'),(219,'Americas','North America','United States','Washington DC','US','USA'),(220,'Americas','South America','Uruguay','Montevideo','UY','URY'),(221,'Asia','Central Asia','Uzbekistan','Tashkent (Toshkent)','UZ','UZB'),(222,'Oceania','Pacific','Vanuatu','Port-Vila','NH','VUT'),(223,'Americas','South America','Venezuela','Caracas','VE','VEN'),(224,'Asia','South East Asia','Vietnam','Hanoi','VM','VNM'),(225,'Americas','West Indies','Virgin Isls','Charlotte Amalie','VQ','VIR'),(226,'Oceania','Pacific','Wallis  Futuna','Mata-Utu (on Ile Uvea)','WF','WLF'),(227,'Africa','Northern Africa','Western Sahara','none','WI','ESH'),(228,'Oceania','Pacific','Western Samoa','Apia','WS','WSM'),(229,'Asia','South West Asia','Yemen','Sanaa','YM','YEM'),(230,'Africa','Central Africa','Zaire (Dem Rep of Congo)','Kinshasa','CG','ZAR'),(231,'Africa','Southern Africa','Zambia','Lusaka','ZA','ZWB'),(232,'Africa','Southern Africa','Zimbabwe','Harare','ZI','ZWE');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruits`
--

DROP TABLE IF EXISTS `fruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fruits` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fruitName` varchar(50) DEFAULT NULL,
  `fruitClassification` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruits`
--

LOCK TABLES `fruits` WRITE;
/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
INSERT INTO `fruits` VALUES (1,'blackberries','Berries'),(2,'cranberries','Berries'),(3,'blueberries','Berries'),(4,'red raspberries','Berries'),(5,'black raspberries','Berries'),(6,'strawberries','Berries'),(7,'grapes','Berries'),(8,'cherries','Pits'),(9,'apricots','Pits'),(10,'nectarines','Pits'),(11,'peaches','Pits'),(12,'plums','Pits'),(13,'Apple','Core'),(14,'Pears','Core'),(15,'oranges','Citrus'),(16,'tangerines','Citrus'),(17,'grapefruits','Citrus'),(18,'kumquats','Citrus'),(19,'lemons','Citrus'),(20,'limes','Citrus'),(21,'cantaloupe','Melons'),(22,'casaba','Melons'),(23,'honeydew','Melons'),(24,'watermelon','Melons'),(25,'avocados','Tropical'),(26,'coconut','Tropical'),(27,'bananas','Tropical'),(28,'figs','Tropical'),(29,'dates','Tropical'),(30,'guavas','Tropical'),(31,'mangoes','Tropical'),(32,'papayas','Tropical'),(33,'pineapples','Tropical'),(34,'pomegranates','Tropical'),(35,'kiwi','Tropical');
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fruitID` int(11) DEFAULT NULL,
  `countryOfCultivationID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fruitId_idx` (`fruitID`),
  KEY `countryId_idx` (`countryOfCultivationID`),
  CONSTRAINT `countryId` FOREIGN KEY (`countryOfCultivationID`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fruitId` FOREIGN KEY (`fruitID`) REFERENCES `fruits` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,2,10,100,10,1300,'2016-01-10 00:00:00'),(2,3,2,20,5,90,'2016-02-04 00:00:00'),(3,4,4,60,4,290,'2016-03-02 00:00:00'),(4,5,11,80,2,200,'2016-04-21 00:00:00'),(5,6,20,5,11,100,'2016-05-09 00:00:00'),(6,7,19,10,12,130,'2016-06-30 00:00:00'),(7,8,25,7,10,90,'2016-07-08 00:00:00'),(8,9,14,2,50,80,'2016-08-20 00:00:00'),(9,10,18,20,2,500,'2016-09-12 00:00:00'),(10,11,12,10,100,800,'2016-09-14 00:00:00'),(11,12,19,80,2,200,'2016-10-13 00:00:00'),(12,13,10,15,15,50,'2016-11-02 00:00:00'),(13,14,29,23,5,200,'2016-12-22 00:00:00');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-24 17:43:32
