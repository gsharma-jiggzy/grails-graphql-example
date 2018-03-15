# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.9-MariaDB)
# Database: graphql
# Generation Time: 2018-03-15 15:22:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table card
# ------------------------------------------------------------

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(2) NOT NULL DEFAULT 1,
  `attack` int(5) unsigned DEFAULT NULL,
  `defense` int(5) unsigned DEFAULT NULL,
  `main_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `card_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `script` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;

INSERT INTO `card` (`id`, `code`, `name`, `element`, `level`, `attack`, `defense`, `main_type`, `card_type`, `type`, `script`, `version`)
VALUES
	(1,'DPKB-EN001','Blue Eyes White Dragon','light',8,3000,2500,'normal','monster','drake','',0),
	(2,'DPKB-EN036','Ring of Destruction','trap',0,NULL,NULL,'normal','trap','','',0),
	(3,'DPKB-EN007','X-Head Cannon','light',4,1800,1500,'normal','monster','machine','',0),
	(4,'BP01-EN085','Infected Mail','spell',0,NULL,NULL,'continue','magic','','',0),
	(5,'DPKB-EN002','Hitotsu-Me Giant','earth',4,1200,1000,'normal','beast','warrior','',0),
	(6,'DPKB-EN005','La Jinn the Mystical Genie of the Lamp','dark',4,1800,1000,'normal','fiend','','',0),
	(7,'DPYG-EN019','Monster Reborn','spell',0,NULL,NULL,'normal','','','',0),
	(8,'DP1-EN003','Elemental Hero Clayman','earth',4,800,2000,'normal','','warrior','',0),
	(9,'DP1-EN004','Elemental Hero Sparkman','light',4,1600,1400,'normal','','warrior','',0),
	(10,'DPYG-EN026','Spell Binding Circle','trap',0,NULL,NULL,'continue','trap','','',0),
	(11,'DPYG-EN027','Mirror Force','trap',0,NULL,NULL,'normal','trap','','',0),
	(12,'CP01-EN016','Final Countdown','spell',0,NULL,NULL,'normal','','','',0),
	(13,'MRD-EN050','Ancient Lizard Warrior','earth',4,1400,1100,'','reptile','','',0),
	(14,'DCR-EN057','Archfiend Soldier','dark',4,1900,1500,'','fiend','','',0),
	(15,'SKE-EN002','Battle Ox','earth',4,1700,1000,'beast','warrior','','',0),
	(16,'DCR-EN055','D. D. Trainer','dark',1,100,2000,'','fiend','','',0),
	(17,'LON-EN009','Shining Abyss','light',4,1600,1800,'','fairy','','',0),
	(18,'PHSW-EN000','Alexandrite Dragon','light',4,2000,100,'normal','monster','dragon','',0),
	(19,'TAEV-EN001','Alien Shocktrooper','earth',4,1900,800,'normal','monster','reptile','',0),
	(20,'TU08-EN006','Alligator\'s Sword','earth',4,1500,1200,'normal','monster','beast','',0),
	(21,'RP02-EN089','Alpha The Magnet Warrior','earth',4,1400,1700,'normal','monster','rock','',0),
	(22,'DB1-EN149','Armored Zombie','dark',3,1500,0,'normal','monster','zombie','',0),
	(23,'TP3-006','Axe Raider','earth',4,1700,1150,'normal','monster','warrior','',0),
	(24,'5DS3-EN001','Battle Footballer','fire',4,1000,2100,'normal','monster','machine','',0),
	(25,'RP02-EN090','Beta The Magnet Warrior','earth',4,1700,1600,'normal','monster','rock','',0),
	(26,'MRD-062','Blackland Fire Dragon','dark',4,1500,800,'normal','monster','dragon','',0),
	(27,'HA01-EN014','Ally of Justice Clausolas','dark',6,2300,1200,'normal','monster','machine','',0),
	(28,'DB1-EN211','Amphibian Beast','water',6,2400,2000,'normal','monster','fish','',0),
	(29,'SDY-016','Ansatsu','earth',5,1700,1200,'normal','monster','warrior','',0),
	(30,'SDY-008','Curse of Dragon','dark',5,2000,1500,'normal','monster','dragon','',0),
	(31,'MED-012','Crawling Dragon','earth',5,1600,1400,'normal','monster','dragon','',0),
	(32,'SDK-048','Remove Trap','spell',0,NULL,NULL,'normal','','','',0),
	(33,'SDK-049','Castle Walls','trap',0,NULL,NULL,'normal','','','',0),
	(34,'SYE-027','Dian Keto the Cure Master','spell',0,NULL,NULL,'normal','','','',0),
	(35,'SDK-014','Dark Titan of Terror','dark',4,1300,1100,'normal','monster','fiend','',0),
	(36,'SDK-027','Rude Kaiser','earth',5,1800,1600,'normal','beast','warrior','',0),
	(37,'SDK-024','Ryu-Kishin Powered','dark',4,1600,1200,'normal','monster','fiend','',0),
	(38,'SYE-007','Gaia the Fierce Knight','earth',7,2300,2100,'normal','monster','warrior','',0),
	(39,'PSV-060','Ovveride','earth',4,1600,1500,'normal','monster','machine','',0),
	(40,'SYE-010','Giant Soldier of Stone','earth',3,1300,2000,'normal','monster','rock','',0),
	(41,'SDY-014','Dragon Zombie','dark',3,1600,0,'normal','monster','zombie','',0),
	(42,'SDY-004','Summoned Skull','dark',6,2500,1200,'normal','monster','fiend','',0),
	(43,'SKE-003','Koumori Dragon','dark',4,1500,2000,'normal','monster','dragon','',0),
	(44,'LON-010','Gadget Soldier','fire',6,1800,2000,'normal','monster','machine','',0),
	(45,'MRD-040','Destroyer Golem','earth',4,1500,1000,'normal','monster','rock','',0),
	(46,'LON-012','Melchid the four-face beast','dark',4,1500,1200,'normal','monster','fiend','',0),
	(47,'SYE-001','Dark Magician','dark',7,2500,2100,'normal','monster','spellcaster','',0),
	(48,'LON-011','Grand Tiki Elder','dark',4,1500,800,'normal','monster','fiend','',0),
	(49,'LOB-072','Witty Phantom','dark',4,1400,1300,'normal','monster','fiend','',0),
	(50,'SDY-017','Man-Eating Treasure Chest','dark',4,1600,1000,'normal','monster','fiend','',0),
	(51,'SDK-015','Dark Assiliant','dark',4,1200,1200,'normal','monster','zombie','',0),
	(52,'SDY-012','Silver Fang','earth',3,1200,800,'normal','monster','beast','',0),
	(53,'SDY-019','Mystic Clown','dark',4,1500,1000,'normal','monster','fiend','',0),
	(54,'SDJ-050','Reverse Trap','trap',0,NULL,NULL,'normal','','','',0),
	(55,'SDJ-044','Reinforcements','trap',0,NULL,NULL,'normal','','','',0),
	(56,'MRD-133','Block Attack','spell',0,NULL,NULL,'normal','','','',0),
	(57,'SDY-022','Dark Hole','spell',0,NULL,NULL,'normal','','','',0),
	(58,'SDY-042','Card Destruction','spell',0,NULL,NULL,'normal','','','',0),
	(59,'SDY-050','Ultimate Offering','trap',0,NULL,NULL,'normal','','continue','',0),
	(60,'SKE-028','De-Spell','spell',0,NULL,NULL,'normal','','','',0),
	(61,'LCYW-EN055','Fissure','spell',0,NULL,NULL,'normal','','','',0),
	(62,'LCYW-EN177','Trap Hole','trap',0,NULL,NULL,'normal','','','',0),
	(63,'SDK-016','Master & Expert','earth',4,1200,1000,'normal','monster','beast','',0),
	(64,'SDK-007','Judge Man','earth',6,2200,1500,'normal','monster','warrior','',0),
	(65,'MIL1-EN027','Red Eyes Black Dragon','dark',7,2400,2000,'normal','monster','dragon','',0),
	(66,'LC01-EN002','Saint Dragon - The God of Osiris','divine',10,6000,6000,'divine','monster','divine-beast','',0);

/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
