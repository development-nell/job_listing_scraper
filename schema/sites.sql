-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `subsite`
--

DROP TABLE IF EXISTS `subsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsite` (
  `subsite_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned DEFAULT NULL,
  `url` text,
  `search_url` text,
  PRIMARY KEY (`subsite_id`),
  KEY `site_id` (`site_id`),
  CONSTRAINT `subsite_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsite`
--

LOCK TABLES `subsite` WRITE;
/*!40000 ALTER TABLE `subsite` DISABLE KEYS */;
INSERT INTO `subsite` VALUES (1,3,'http://stackoverflow.com','/jobs?sort=i&q=%sl=United+States&d=20&u=Miles'),(2,4,'https://www.indeed.com','/jobs?q=%s&l=United+States&sort=date'),(3,95,'https://losangeles.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=43&nearbyArea=709&nearbyArea=455&nearbyArea=104&nearbyArea=26&nearbyArea=285&nearbyArea=96&nearbyArea=565&nearbyArea=102&nearbyArea=103&nearbyArea=209&nearbyArea=8&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=181&nearbyArea=208&nearbyArea=346&nearbyArea=370'),(4,95,'https://atlanta.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=637&nearbyArea=171&nearbyArea=258&nearbyArea=372&nearbyArea=256&nearbyArea=127&nearbyArea=446&nearbyArea=342&nearbyArea=570&nearbyArea=128&nearbyArea=41&nearbyArea=220&nearbyArea=465&nearbyArea=101&nearbyArea=343&nearbyArea=670&nearbyArea=467&nearbyArea=674&nearbyArea=560&nearbyArea=464&nearbyArea=559&nearbyArea=219&nearbyArea=61&nearbyArea=253&nearbyArea=462&nearbyArea=353&nearbyArea=231&nearbyArea=558&nearbyArea=80&nearbyArea=202&nearbyArea=133&nearbyArea=257&nearbyArea=641&nearbyArea=200&nearbyArea=207&nearbyArea=32&nearbyArea=638&nearbyArea=375&nearbyArea=636&nearbyArea=640&nearbyArea=562&nearbyArea=203&nearbyArea=205&nearbyArea=712&nearbyArea=635&nearbyArea=186&nearbyArea=323&nearbyArea=371&nearbyArea=427&nearbyArea=377&nearbyArea=272'),(5,95,'https://austin.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=364&nearbyArea=264&nearbyArea=266&nearbyArea=326&nearbyArea=265&nearbyArea=21&nearbyArea=645&nearbyArea=647&nearbyArea=470&nearbyArea=23&nearbyArea=327&nearbyArea=284&nearbyArea=271&nearbyArea=422&nearbyArea=263&nearbyArea=268&nearbyArea=646&nearbyArea=53&nearbyArea=449&nearbyArea=206&nearbyArea=359&nearbyArea=649&nearbyArea=308&nearbyArea=564&nearbyArea=270&nearbyArea=365'),(6,95,'https://boston.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=59&nearbyArea=248&nearbyArea=239&nearbyArea=451&nearbyArea=349&nearbyArea=481&nearbyArea=281&nearbyArea=453&nearbyArea=685&nearbyArea=686&nearbyArea=44&nearbyArea=249&nearbyArea=201&nearbyArea=561&nearbyArea=385&nearbyArea=167&nearbyArea=250&nearbyArea=169&nearbyArea=49&nearbyArea=198&nearbyArea=168&nearbyArea=3&nearbyArea=170&nearbyArea=354&nearbyArea=684&nearbyArea=17&nearbyArea=338&nearbyArea=356&nearbyArea=683&nearbyArea=278&nearbyArea=38&nearbyArea=276&nearbyArea=390&nearbyArea=378&nearbyArea=286&nearbyArea=130&nearbyArea=479&nearbyArea=247&nearbyArea=93&nearbyArea=337&nearbyArea=173&nearbyArea=240'),(7,95,'https://chicago.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=445&nearbyArea=172&nearbyArea=243&nearbyArea=628&nearbyArea=229&nearbyArea=344&nearbyArea=340&nearbyArea=434&nearbyArea=190&nearbyArea=484&nearbyArea=701&nearbyArea=35&nearbyArea=27&nearbyArea=42&nearbyArea=131&nearbyArea=569&nearbyArea=98&nearbyArea=22&nearbyArea=362&nearbyArea=242&nearbyArea=227&nearbyArea=259&nearbyArea=226&nearbyArea=129&nearbyArea=241&nearbyArea=630&nearbyArea=45&nearbyArea=339&nearbyArea=426&nearbyArea=553&nearbyArea=261&nearbyArea=552&nearbyArea=696&nearbyArea=672&nearbyArea=363&nearbyArea=698&nearbyArea=360&nearbyArea=212&nearbyArea=437&nearbyArea=58&nearbyArea=165&nearbyArea=436&nearbyArea=692&nearbyArea=699&nearbyArea=47&nearbyArea=629&nearbyArea=361&nearbyArea=554&nearbyArea=309&nearbyArea=631&nearbyArea=673&nearbyArea=224&nearbyArea=555&nearbyArea=307&nearbyArea=671&nearbyArea=316&nearbyArea=223&nearbyArea=260&nearbyArea=573&nearbyArea=486&nearbyArea=571&nearbyArea=228&nearbyArea=691&nearbyArea=345&nearbyArea=572&nearbyArea=225&nearbyArea=29&nearbyArea=348&nearbyArea=627&nearbyArea=204&nearbyArea=567&nearbyArea=458&nearbyArea=697&nearbyArea=235'),(8,95,'https://dallas.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=364&nearbyArea=15&nearbyArea=264&nearbyArea=644&nearbyArea=326&nearbyArea=645&nearbyArea=293&nearbyArea=358&nearbyArea=470&nearbyArea=23&nearbyArea=327&nearbyArea=284&nearbyArea=422&nearbyArea=100&nearbyArea=267&nearbyArea=563&nearbyArea=650&nearbyArea=54&nearbyArea=646&nearbyArea=53&nearbyArea=449&nearbyArea=206&nearbyArea=433&nearbyArea=359&nearbyArea=649&nearbyArea=70&nearbyArea=308&nearbyArea=564&nearbyArea=270&nearbyArea=365'),(9,95,'https://denver.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=319&nearbyArea=210&nearbyArea=713&nearbyArea=568&nearbyArea=287&nearbyArea=288&nearbyArea=668&nearbyArea=688&nearbyArea=315&nearbyArea=218&nearbyArea=669&nearbyArea=687&nearbyArea=320&nearbyArea=197'),(10,95,'https://detroit.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=251&nearbyArea=355&nearbyArea=172&nearbyArea=243&nearbyArea=700&nearbyArea=438&nearbyArea=389&nearbyArea=628&nearbyArea=229&nearbyArea=626&nearbyArea=40&nearbyArea=434&nearbyArea=439&nearbyArea=484&nearbyArea=452&nearbyArea=11&nearbyArea=701&nearbyArea=35&nearbyArea=27&nearbyArea=42&nearbyArea=131&nearbyArea=275&nearbyArea=259&nearbyArea=226&nearbyArea=129&nearbyArea=241&nearbyArea=482&nearbyArea=213&nearbyArea=630&nearbyArea=442&nearbyArea=45&nearbyArea=426&nearbyArea=553&nearbyArea=261&nearbyArea=552&nearbyArea=214&nearbyArea=672&nearbyArea=360&nearbyArea=212&nearbyArea=133&nearbyArea=437&nearbyArea=234&nearbyArea=436&nearbyArea=706&nearbyArea=47&nearbyArea=629&nearbyArea=440&nearbyArea=361&nearbyArea=554&nearbyArea=386&nearbyArea=309&nearbyArea=443&nearbyArea=487&nearbyArea=441&nearbyArea=388&nearbyArea=33&nearbyArea=555&nearbyArea=671&nearbyArea=126&nearbyArea=223&nearbyArea=260&nearbyArea=573&nearbyArea=486&nearbyArea=485&nearbyArea=571&nearbyArea=228&nearbyArea=572&nearbyArea=277&nearbyArea=384&nearbyArea=348&nearbyArea=627&nearbyArea=204&nearbyArea=25&nearbyArea=703&nearbyArea=704&nearbyArea=194&nearbyArea=329&nearbyArea=235&nearbyArea=252&nearbyArea=702'),(11,95,'https://houston.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=15&nearbyArea=199&nearbyArea=264&nearbyArea=266&nearbyArea=644&nearbyArea=326&nearbyArea=265&nearbyArea=21&nearbyArea=645&nearbyArea=470&nearbyArea=643&nearbyArea=327&nearbyArea=283&nearbyArea=284&nearbyArea=271&nearbyArea=263&nearbyArea=563&nearbyArea=53&nearbyArea=449&nearbyArea=206&nearbyArea=642&nearbyArea=359&nearbyArea=649&nearbyArea=308&nearbyArea=564&nearbyArea=270'),(12,95,'https://lasvegas.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=244&nearbyArea=43&nearbyArea=709&nearbyArea=455&nearbyArea=104&nearbyArea=7&nearbyArea=285&nearbyArea=565&nearbyArea=103&nearbyArea=209&nearbyArea=18&nearbyArea=419&nearbyArea=8&nearbyArea=62&nearbyArea=710&nearbyArea=352&nearbyArea=181&nearbyArea=208&nearbyArea=346&nearbyArea=370'),(13,95,'https://miami.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=238&nearbyArea=330&nearbyArea=125&nearbyArea=219&nearbyArea=639&nearbyArea=376&nearbyArea=333&nearbyArea=39&nearbyArea=237&nearbyArea=331&nearbyArea=557&nearbyArea=37&nearbyArea=332'),(14,95,'https://minneapolis.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=445&nearbyArea=243&nearbyArea=663&nearbyArea=664&nearbyArea=340&nearbyArea=98&nearbyArea=362&nearbyArea=255&nearbyArea=242&nearbyArea=435&nearbyArea=693&nearbyArea=667&nearbyArea=241&nearbyArea=339&nearbyArea=553&nearbyArea=363&nearbyArea=165&nearbyArea=421&nearbyArea=692&nearbyArea=47&nearbyArea=682&nearbyArea=631&nearbyArea=55&nearbyArea=307&nearbyArea=316&nearbyArea=223&nearbyArea=571&nearbyArea=341&nearbyArea=679&nearbyArea=195&nearbyArea=691&nearbyArea=665&nearbyArea=369&nearbyArea=387&nearbyArea=262&nearbyArea=567&nearbyArea=458'),(15,95,'https://newyork.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=59&nearbyArea=355&nearbyArea=460&nearbyArea=34&nearbyArea=483&nearbyArea=248&nearbyArea=4&nearbyArea=40&nearbyArea=239&nearbyArea=451&nearbyArea=349&nearbyArea=290&nearbyArea=452&nearbyArea=481&nearbyArea=705&nearbyArea=193&nearbyArea=281&nearbyArea=444&nearbyArea=328&nearbyArea=453&nearbyArea=685&nearbyArea=633&nearbyArea=457&nearbyArea=686&nearbyArea=48&nearbyArea=166&nearbyArea=447&nearbyArea=44&nearbyArea=249&nearbyArea=201&nearbyArea=561&nearbyArea=385&nearbyArea=279&nearbyArea=167&nearbyArea=250&nearbyArea=198&nearbyArea=168&nearbyArea=170&nearbyArea=354&nearbyArea=684&nearbyArea=17&nearbyArea=338&nearbyArea=356&nearbyArea=683&nearbyArea=278&nearbyArea=38&nearbyArea=60&nearbyArea=126&nearbyArea=276&nearbyArea=378&nearbyArea=286&nearbyArea=556&nearbyArea=277&nearbyArea=130&nearbyArea=704&nearbyArea=247&nearbyArea=93&nearbyArea=10&nearbyArea=337&nearbyArea=329&nearbyArea=173&nearbyArea=463&nearbyArea=711&nearbyArea=240&nearbyArea=357'),(16,95,'https://orangecounty.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=43&nearbyArea=709&nearbyArea=455&nearbyArea=104&nearbyArea=26&nearbyArea=7&nearbyArea=285&nearbyArea=565&nearbyArea=102&nearbyArea=209&nearbyArea=8&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=181&nearbyArea=208&nearbyArea=346&nearbyArea=370'),(17,95,'https://philadelphia.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=59&nearbyArea=355&nearbyArea=460&nearbyArea=34&nearbyArea=248&nearbyArea=4&nearbyArea=40&nearbyArea=239&nearbyArea=451&nearbyArea=349&nearbyArea=290&nearbyArea=452&nearbyArea=705&nearbyArea=193&nearbyArea=281&nearbyArea=444&nearbyArea=328&nearbyArea=453&nearbyArea=275&nearbyArea=685&nearbyArea=633&nearbyArea=457&nearbyArea=686&nearbyArea=48&nearbyArea=166&nearbyArea=447&nearbyArea=44&nearbyArea=249&nearbyArea=201&nearbyArea=561&nearbyArea=385&nearbyArea=279&nearbyArea=167&nearbyArea=250&nearbyArea=366&nearbyArea=706&nearbyArea=440&nearbyArea=168&nearbyArea=3&nearbyArea=386&nearbyArea=170&nearbyArea=443&nearbyArea=354&nearbyArea=684&nearbyArea=336&nearbyArea=33&nearbyArea=356&nearbyArea=278&nearbyArea=38&nearbyArea=60&nearbyArea=126&nearbyArea=276&nearbyArea=378&nearbyArea=286&nearbyArea=556&nearbyArea=277&nearbyArea=130&nearbyArea=704&nearbyArea=247&nearbyArea=10&nearbyArea=337&nearbyArea=194&nearbyArea=329&nearbyArea=173&nearbyArea=463&nearbyArea=711&nearbyArea=240&nearbyArea=357&nearbyArea=252'),(18,95,'https://phoenix.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=244&nearbyArea=506&nearbyArea=455&nearbyArea=26&nearbyArea=565&nearbyArea=209&nearbyArea=419&nearbyArea=8&nearbyArea=651&nearbyArea=468&nearbyArea=352&nearbyArea=181&nearbyArea=57&nearbyArea=370'),(19,95,'https://portland.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=217&nearbyArea=233&nearbyArea=473&nearbyArea=350&nearbyArea=322&nearbyArea=94&nearbyArea=471&nearbyArea=324&nearbyArea=675&nearbyArea=654&nearbyArea=216&nearbyArea=655&nearbyArea=382&nearbyArea=466&nearbyArea=321&nearbyArea=368&nearbyArea=459&nearbyArea=232&nearbyArea=2&nearbyArea=708&nearbyArea=461&nearbyArea=95&nearbyArea=16&nearbyArea=177&nearbyArea=325&nearbyArea=246'),(20,95,'https://raleigh.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=460&nearbyArea=171&nearbyArea=258&nearbyArea=438&nearbyArea=256&nearbyArea=34&nearbyArea=446&nearbyArea=128&nearbyArea=439&nearbyArea=41&nearbyArea=290&nearbyArea=101&nearbyArea=705&nearbyArea=367&nearbyArea=193&nearbyArea=674&nearbyArea=335&nearbyArea=444&nearbyArea=328&nearbyArea=273&nearbyArea=464&nearbyArea=633&nearbyArea=457&nearbyArea=61&nearbyArea=253&nearbyArea=48&nearbyArea=447&nearbyArea=462&nearbyArea=353&nearbyArea=442&nearbyArea=634&nearbyArea=202&nearbyArea=366&nearbyArea=440&nearbyArea=254&nearbyArea=291&nearbyArea=336&nearbyArea=441&nearbyArea=60&nearbyArea=289&nearbyArea=205&nearbyArea=556&nearbyArea=632&nearbyArea=712&nearbyArea=635&nearbyArea=323&nearbyArea=10&nearbyArea=194&nearbyArea=329&nearbyArea=274&nearbyArea=711&nearbyArea=272&nearbyArea=357'),(21,95,'https://sacramento.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=187&nearbyArea=43&nearbyArea=373&nearbyArea=709&nearbyArea=189&nearbyArea=675&nearbyArea=216&nearbyArea=454&nearbyArea=285&nearbyArea=96&nearbyArea=102&nearbyArea=188&nearbyArea=92&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=1&nearbyArea=708&nearbyArea=97&nearbyArea=707&nearbyArea=346&nearbyArea=456'),(22,95,'https://sandiego.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=709&nearbyArea=455&nearbyArea=104&nearbyArea=26&nearbyArea=7&nearbyArea=565&nearbyArea=103&nearbyArea=209&nearbyArea=18&nearbyArea=419&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=181&nearbyArea=208&nearbyArea=346&nearbyArea=370'),(23,95,'https://seattle.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=217&nearbyArea=233&nearbyArea=473&nearbyArea=350&nearbyArea=322&nearbyArea=94&nearbyArea=471&nearbyArea=381&nearbyArea=380&nearbyArea=324&nearbyArea=654&nearbyArea=655&nearbyArea=382&nearbyArea=466&nearbyArea=321&nearbyArea=9&nearbyArea=368&nearbyArea=459&nearbyArea=232&nearbyArea=461&nearbyArea=95&nearbyArea=622&nearbyArea=16&nearbyArea=177&nearbyArea=325&nearbyArea=472&nearbyArea=246'),(24,95,'https://sfbay.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=187&nearbyArea=43&nearbyArea=373&nearbyArea=709&nearbyArea=189&nearbyArea=454&nearbyArea=285&nearbyArea=96&nearbyArea=102&nearbyArea=188&nearbyArea=92&nearbyArea=12&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=708&nearbyArea=97&nearbyArea=707&nearbyArea=208&nearbyArea=346&nearbyArea=456'),(25,95,'https://washingtondc.craigslist.org','/search/jjj?searchNearby=2&query=%s&nearbyArea=251&nearbyArea=355&nearbyArea=460&nearbyArea=700&nearbyArea=438&nearbyArea=34&nearbyArea=248&nearbyArea=40&nearbyArea=451&nearbyArea=349&nearbyArea=439&nearbyArea=290&nearbyArea=452&nearbyArea=27&nearbyArea=705&nearbyArea=367&nearbyArea=193&nearbyArea=281&nearbyArea=335&nearbyArea=444&nearbyArea=328&nearbyArea=453&nearbyArea=275&nearbyArea=273&nearbyArea=685&nearbyArea=633&nearbyArea=457&nearbyArea=61&nearbyArea=48&nearbyArea=166&nearbyArea=447&nearbyArea=44&nearbyArea=249&nearbyArea=442&nearbyArea=201&nearbyArea=634&nearbyArea=561&nearbyArea=279&nearbyArea=167&nearbyArea=250&nearbyArea=366&nearbyArea=706&nearbyArea=440&nearbyArea=168&nearbyArea=291&nearbyArea=3&nearbyArea=170&nearbyArea=443&nearbyArea=354&nearbyArea=684&nearbyArea=336&nearbyArea=441&nearbyArea=17&nearbyArea=33&nearbyArea=356&nearbyArea=36&nearbyArea=278&nearbyArea=60&nearbyArea=289&nearbyArea=126&nearbyArea=276&nearbyArea=286&nearbyArea=556&nearbyArea=632&nearbyArea=712&nearbyArea=277&nearbyArea=130&nearbyArea=703&nearbyArea=704&nearbyArea=247&nearbyArea=194&nearbyArea=329&nearbyArea=463&nearbyArea=711&nearbyArea=272&nearbyArea=357&nearbyArea=252&nearbyArea=702'),(26,118,'http://jobs.perl.org',''),(32,119,'https://www.monster.com','/jobs/search/?q=%s&where=united-states&sort=rv.dt.di');
/*!40000 ALTER TABLE `subsite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `url` text,
  `active` tinyint(1) DEFAULT NULL,
  `search_url` text,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `requires_login` tinyint(1) DEFAULT NULL,
  `class_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (3,'Stack Overflow','http://stackoverflow.com',1,'/jobs?sort=i&q=%s&l=United+States&d=20&u=Miles',NULL,NULL,0,'StackOverflow'),(4,'Indeed','https://www.indeed.com',1,'/jobs?q=%s&l=United+States&sort=date',NULL,NULL,0,'Indeed'),(95,'Craigslist','https://losangeles.craigslist.org',1,'/search/jjj?searchNearby=2&query=%s&nearbyArea=63&nearbyArea=43&nearbyArea=709&nearbyArea=455&nearbyArea=104&nearbyArea=26&nearbyArea=285&nearbyArea=96&nearbyArea=565&nearbyArea=102&nearbyArea=103&nearbyArea=209&nearbyArea=8&nearbyArea=191&nearbyArea=62&nearbyArea=710&nearbyArea=181&nearbyArea=208&nearbyArea=346&nearbyArea=370',NULL,NULL,NULL,'Craigslist'),(118,'Perl Jobs','http://jobs.perl.org',1,'','','',0,'PerlJobs'),(119,'Monster','https://moster.com',1,'','','',0,'Monster');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_listing_crit`
--

DROP TABLE IF EXISTS `site_listing_crit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_listing_crit` (
  `site_listing_crit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pattern` text,
  `aor` enum('ACCEPT','REJECT') DEFAULT NULL,
  `type` enum('TITLE','BODY') DEFAULT NULL,
  PRIMARY KEY (`site_listing_crit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_listing_crit`
--

LOCK TABLES `site_listing_crit` WRITE;
/*!40000 ALTER TABLE `site_listing_crit` DISABLE KEYS */;
INSERT INTO `site_listing_crit` VALUES (1,'DevOps','REJECT','TITLE'),(2,'perl','ACCEPT','BODY'),(3,'Front[- ]End','REJECT','TITLE'),(4,'FrontEnd','REJECT','TITLE'),(5,'meanstack','REJECT','TITLE'),(6,'Intern','REJECT','TITLE'),(7,'Technical Support','REJECT','TITLE'),(8,'Administrator','REJECT','TITLE'),(9,'PHP','REJECT','TITLE'),(10,'Javascript','REJECT','TITLE'),(11,'Administration','REJECT','TITLE'),(12,'security','REJECT','TITLE'),(13,'scientist','REJECT','TITLE'),(14,'system admin','REJECT','TITLE');
/*!40000 ALTER TABLE `site_listing_crit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-22 11:32:24
