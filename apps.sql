-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: 10.68.237.30    Database: uni_talkingsdk_production
-- ------------------------------------------------------
-- Server version	5.5.30-log

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
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pay_notice_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `os_type_id` int(11) NOT NULL,
  `app_type_id` int(11) NOT NULL,
  `language_type_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `summary` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `simple_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `login_url` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `send` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_apps_on_key` (`key`),
  UNIQUE KEY `index_apps_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1023342814 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
INSERT INTO `apps` VALUES (1,1,'4kpbfrb9ccpps3kmanauxapho0cvvvmj','补单专用','1',1,1,1,0,1,'1','补单专用','1',NULL,'2019-01-03 15:16:31','2019-01-03 15:16:31','',0),(3019,1,'t140j3bushc91vvnnjheirbymhiy9bu8','游界S1','http://uni.notice.zqgame.com',1,1,1,1,1,'379','游界S1','379',NULL,'2018-12-29 13:47:13','2018-12-29 13:49:54','',0),(8051,2,'f6fd5219d951b404225c93077db9f05d','街机捕鱼','http://uni.notice.zqgame.com',1,1,1,1,1,'','待机捕鱼','jjpy',7,'2018-09-28 16:56:42','2018-09-28 16:56:42','',0),(102334157,2,'68da6b46f8a2f90e698d2c28bb11fc63','lom','http://uni.notice.zqgame.com',1,1,1,1,1,'lom','lom','154',1,'2015-04-23 17:59:35','2015-05-11 13:17:09','',0),(102334162,2,'e92ee600bd4af6a5d3bb65213b9c166a','xz2','http://uni.notice.zqgame.com',1,1,1,1,1,'','仙战2','165',1,'2015-08-06 16:31:49','2015-08-11 14:26:05','',0),(102334173,2,'1436e39762ae0c995f6afff1f79532f9','龙之炫斗','http://uni.notice.zqgame.com',1,1,1,1,0,'lzxd','龙之炫斗-联运','177',1,'2016-01-15 18:32:47','2016-01-15 18:53:41','',0),(102334175,2,'bb9ff15d08a950637ead9f0856d6ab6c','春秋战雄','http://uni.notice.zqgame.com',1,1,1,1,0,'cqzx','春秋战雄-联运','184',1,'2016-01-15 18:32:47','2016-01-15 18:55:09','',0),(102334176,2,'0af8a9f4070dc9fb99fecb35e72307b3','大话仙缘','http://uni.notice.zqgame.com',1,1,1,1,0,'dhxy','大话仙缘-仙境情缘换皮版','99',1,'2016-01-15 18:32:47','2016-01-15 18:56:21','',0),(102334181,2,'74d9777e6c665ddb3b2760fcbb4e80b5','仙战2-百度','http://uni.notice.zqgame.com',1,1,1,1,1,'','仙战2-百度 买量包','165',1,'2016-03-10 15:25:58','2016-03-10 15:26:10','',0),(102334193,2,'1bbcf7f793731b4003e471b9187628b5','中青宝SDK','http://uni.notice.zqgame.com',1,1,1,1,1,'','中青宝-专用SDK','zqbsdk',1,'2016-10-28 11:14:53','2016-11-11 10:14:23','',0),(102334208,2,'421675017b03a5479d0a370102ee89b5','楚汉传奇','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-楚汉传奇','199',1,'2016-07-18 09:58:03','2016-07-18 09:58:16','',0),(102334209,2,'56704a06d2928d1bf73a2a82f1e9b5f0','冒险战记','http://uni.notice.zqgame.com',1,1,1,1,1,'','独代-冒险战记','194',1,'2016-09-22 11:32:50','2016-09-22 11:36:19','',0),(102334210,2,'00107f79a204773999c7ce3171b55572','五虎战将','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-五虎战将','202',1,'2016-07-22 14:12:35','2016-07-22 14:12:45','',0),(102334211,2,'a34dd447a2c6492c27371b21f2e6c0a4','修真界','http://uni.notice.zqgame.com',1,1,1,1,1,'','修真界-Only中青宝渠道','205',1,'2016-08-29 14:34:03','2016-09-27 16:38:53','',0),(102334212,2,'1c35d961389e73801970a762c7ec0456','裂天之刃','http://uni.notice.zqgame.com',1,1,1,1,1,'','裂天之刃-Only中青宝渠道','38',1,'2016-08-29 14:27:25','2016-08-29 14:29:48','',0),(102334213,2,'b639bf842e0e4d8b94cea5992e9ebb4d','烈火霸业','http://uni.notice.zqgame.com',1,1,1,1,1,'','烈火霸业-Only ios刷榜版','208',1,'2016-09-02 09:17:43','2016-09-02 09:27:28','',0),(102334214,2,'cd6af0516b811d5a984517a1f3d1af1d','剑舞','http://uni.notice.zqgame.com',1,1,1,1,1,'','剑舞-联运','212',1,'2016-10-18 16:48:46','2016-10-18 16:51:08','',0),(102334215,2,'f5a4703e60d283c3e5f5e8200078e6b1','有妖气三国','http://uni.notice.zqgame.com',1,1,1,1,1,'','代理游戏-有妖气三国','209',1,'2016-10-13 14:01:06','2016-10-13 14:02:46','',0),(102334216,2,'a43194ce889b2917c5f41de984176c29','天道','http://uni.notice.zqgame.com',1,1,1,1,1,'','天道','203',1,'2016-10-14 09:43:40','2016-10-14 09:45:32','',0),(102334220,2,'4c9422b707316abcf5414a91829960ef','修真世界','http://uni.notice.zqgame.com',1,1,1,1,1,'','修真世界—Only修真界备用包','219',1,'2016-09-27 16:50:34','2016-09-27 16:52:24','',0),(102334226,2,'577a0ff0fd912d8dea6a4dfd2bde1e2b','烈火怒斩','http://uni.notice.zqgame.com',1,1,1,1,1,'','楚汉传奇-烈火怒斩-ios马甲版','199',1,'2016-10-28 10:28:49','2016-10-28 10:30:11','',0),(102334227,2,'980e38d99b13f6275bfc6d37227ac51d','西游侠客行','http://uni.notice.zqgame.com',1,1,1,1,1,'','剑舞马甲-西游侠客行','212',1,'2016-11-25 10:09:48','2016-11-25 10:09:48','',0),(102334228,2,'c0e70632d6f9cd0fc8d69a0f754cb300','武当剑 ','http://uni.notice.zqgame.com',1,1,1,1,1,'','自研游戏-武当剑','223',1,'2016-12-01 13:42:28','2016-12-01 13:42:28','',0),(102334229,2,'dae7c232cca2401801091042462a1c12','冒险世界','http://uni.notice.zqgame.com',1,1,1,1,1,'','冒险世界','224',1,'2016-12-05 17:42:14','2016-12-05 17:42:14','',0),(102334230,2,'792ad628bcd9cad300071e99547d19e9','征途霸业','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-征途霸业','229',1,'2016-12-29 10:46:09','2016-12-29 10:46:09','',0),(102334237,1,'dcd8b81e86c3d5303001185690b86171','冒险传说','http://uni.notice.zqgame.com',1,1,1,1,1,'','冒险战记备用包','194',1,'2016-12-16 10:54:05','2016-12-16 10:54:05','',0),(102334238,2,'8a038d6c6e7827f883017f2be947bb24','冒险战记—送日本豪华7日游','http://uni.notice.zqgame.com',1,1,1,1,1,'','冒险战记—送日本豪华7日游','194',1,'2017-01-05 16:53:26','2017-01-05 16:53:26','',0),(102334239,2,'ce1ef329862532d22f2768ecbdd68e82','剑舞-梦幻降妖记','http://uni.notice.zqgame.com',1,1,1,1,1,'','剑舞-梦幻降妖记','212',1,'2017-01-17 18:10:32','2017-01-17 18:10:32','',0),(102334240,2,'8395cb4a609e62854ea733eb34b1ddc9','梦幻天子','http://uni.notice.zqgame.com',1,1,1,1,1,'','梦幻天子','236',1,'2017-01-22 14:53:28','2017-01-22 14:53:28','',0),(102334241,2,'bd0cf6fd41c3024a5ac72cda0adf7895','剑舞-梦幻天子幻境奇缘','http://uni.notice.zqgame.com',1,1,1,1,1,'','剑舞马甲包-梦幻天子','212',1,'2017-02-09 09:59:58','2017-02-09 09:59:58','',0),(102334242,2,'c7dec1c9b15540ee4465d2a9cf4b1e7c','我的江山','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-我的江山','240',1,'2017-02-27 14:01:16','2017-02-27 14:01:16','',0),(102334244,2,'366a915d36e5792020d1e9af8a1c4295','大话武林','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-大话武林','248',1,'2017-03-24 17:13:31','2017-03-24 17:13:31','',0),(102334249,2,'7edaaab9efbe3f5ba95258c017c2b177','火影大人','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-火影大人','103',1,'2017-04-20 16:55:42','2017-04-20 16:55:42','',0),(102334250,2,'64f6fdf677caefb62413d447b9fd57bc','九九八十一--剑舞换皮','http://uni.notice.zqgame.com',1,1,1,0,1,'','九九八十一--剑舞换皮','212',1,'2017-04-21 14:31:53','2017-04-21 14:31:53','',0),(102334252,2,'93b0eb11846c825d6d144504ce73f9a4','梦幻之翼','http://uni.notice.zqgame.com',1,1,1,1,1,'','联运游戏-梦幻之翼','259',1,'2017-07-14 10:38:58','2017-07-14 10:38:58','',0),(102334254,2,'cb96a3276ac1c821a4f5d4468ea3206f','神将三国ios（正版）','http://uni.notice.zqgame.com',1,1,1,1,1,'','神将三国ios（正版）','299',7,'2017-07-24 10:52:15','2017-07-24 10:52:15','',0),(102334258,2,'9a8146d4821d75fb65da9a324aa61152','武当剑-青云剑','http://uni.notice.zqgame.com',1,1,1,1,1,'','武当剑-青云剑','302',1,'2017-09-21 10:17:59','2017-09-21 10:17:59','',0),(102334259,2,'765029917c682f8deacad5a76e110162','武当剑-太极剑客','http://uni.notice.zqgame.com',1,1,1,1,1,'','武当剑-太极剑客','301',1,'2017-09-21 10:21:00','2017-09-21 10:21:00','',0),(102334265,2,'8af4e7c1498638669a3be13e4bae8fb5','主公请排队H5','http://uni.notice.zqgame.com',1,1,1,1,1,'','h5游戏-主公请排队H5','314',1,'2017-12-05 17:08:27','2017-12-05 17:08:27','https://uni.zqgame.com/h5sdkdemo.html',0),(102334267,2,'ad9c77615acd58f691a68eb54f89b2dc','五虎战将H5','http://uni.notice.zqgame.com',1,1,1,1,1,'','五虎战将H5-H5游戏','315',1,'2018-01-10 16:00:11','2018-01-10 16:00:11','https://uni.zqgame.com/h5sdkdemo.html',0),(102334268,2,'cf02984c1a43f18f569f01d696a91944','剑指武当','http://uni.notice.zqgame.com',1,1,1,1,1,'','武当剑BT','223',1,'2018-05-15 17:42:38','2018-05-15 17:42:38','',0),(102334269,2,'f3680bdcd357118846b00e25c7333d4b','武当张三丰','http://uni.notice.zqgame.com',1,1,1,1,1,'','武当剑BT','223',1,'2018-06-08 17:50:07','2018-06-08 17:50:07','',0),(102334270,2,'347cd69b8f11fba9c52739985c2b685b','裂天之刃_手游','http://uni.notice.zqgame.com',1,1,1,1,1,'','裂天之刃_手游','109',7,'2018-06-21 14:50:46','2018-06-21 14:50:46','',0),(102334271,2,'b74b2eed538d364aa04c60b2cb44eb41','古墓求生','http://uni.notice.zqgame.com',1,1,1,1,1,'','古墓求生','330',7,'2018-07-13 09:46:34','2018-07-13 09:46:34','',0),(102334272,2,'9e7c78c00bcfb43e2467a752677f217e','屠龙英雄','http://uni.notice.zqgame.com',1,1,1,1,1,'','屠龙英雄','338',7,'2018-08-02 14:56:12','2018-08-02 14:56:12','',0),(102334273,2,'8f65ff0a1ba72865e165931f51a237de','幻想西游','http://uni.notice.zqgame.com',1,1,1,1,1,'','幻想西游','331',7,'2018-08-03 10:21:18','2018-08-03 10:21:18','',0),(102334274,2,'8079b4afd2d8386a2473659650edc400','夺宝奇宫','http://uni.notice.zqgame.com',1,1,1,1,1,'','夺宝奇宫','340',7,'2018-08-20 18:34:08','2018-08-20 18:34:08','',0),(102334275,2,'d151fcada17a39c2d91648654e6a5b98','武炼乾坤','http://uni.notice.zqgame.com',1,1,1,1,1,'','武炼乾坤','wlqq',7,'2018-08-21 10:38:46','2018-08-21 10:38:46','',0),(102334276,2,'772233beee3194b73266e8d3136fdbba','青云传','http://uni.notice.zqgame.com',1,1,1,1,1,'','青云传','qyz',7,'2018-08-24 15:37:29','2018-08-24 15:37:29','',0),(102334277,2,'5bfc00f1fa6d48eb7646563c5ecd22c1','新天道','http://uni.notice.zqgame.com',1,1,1,1,1,'','新天道','349',7,'2018-08-30 11:51:16','2018-08-30 11:51:16','',0),(102334278,2,'6505a6e81b8c43ea4825489b61a1cddd','剑破苍穹','http://uni.notice.zqgame.com',1,1,1,1,1,'','剑破苍穹','348',7,'2018-09-05 13:53:09','2018-09-05 13:53:09','',0),(102334279,2,'aef4da214f8897eb1d88e9048fe8f41a','超次元大冒险','http://uni.notice.zqgame.com',1,1,1,1,1,'','超次元大冒险','347',7,'2018-09-07 14:49:36','2018-09-07 14:49:36','',0),(102334280,2,'8d1b8b9cd123131ac786ac57a18dea67','君王BT','http://uni.notice.zqgame.com',1,1,1,1,1,'','君王BT','354',7,'2018-09-26 14:13:23','2018-09-26 14:13:23','',0),(102334282,2,'c35c5336f8eb39feee17122198b75d04','君王2BT','http://uni.notice.zqgame.com',1,1,1,1,1,'','君王2BT','355',7,'2018-10-16 17:29:59','2018-10-16 17:29:59','',0),(102334284,2,'2604a67b7011700411d33bde0b582f48','君王3D','http://uni.notice.zqgame.com',1,1,1,1,1,'','君王3D','366',7,'2018-11-20 10:10:27','2018-11-20 10:10:27','',0),(102334285,2,'651341254c5ab0d88e43b9c1edd041cd','兵临三国','http://uni.notice.zqgame.com',1,1,1,1,1,'','兵临三国','367',7,'2018-11-20 10:11:56','2018-11-20 10:11:56','',0),(102334286,2,'da1da905d8d02fea1b01894c89acee9b','神圣契约','http://uni.notice.zqgame.com',1,1,1,1,1,'','神圣契约','369',7,'2018-11-20 17:57:36','2019-01-21 10:33:09','',0),(102334287,2,'51d5a96d1c658f7b1a12395d7383e7b2','超神争霸(wehero)','http://uni.notice.zqgame.com',1,1,1,1,1,'','超神争霸(wehero)','371',7,'2018-11-27 10:38:41','2018-11-27 10:38:41','',0),(102334288,1,'dgr4x5c1o44r71mftrta1x5lt4ub2r31','奇迹战魂','http://uni.notice.zqgame.com',1,1,1,0,1,'372','奇迹战魂','373',NULL,'2018-12-04 16:28:54','2018-12-04 16:48:04','',0),(102334289,1,'2cpo5yzjsu9rb3l81v4fhf75nwtydqud','疾风忍者传','http://uni.notice.zqgame.com',1,1,1,0,1,'276','疾风忍者传','381',NULL,'2019-01-03 16:38:34','2019-01-03 16:48:16','',0),(102334290,1,'cs63oehq3163p2r6soh1d5nut0pi0qam','全职猎手','http',1,1,1,0,1,'389','全职猎手','389',NULL,'2019-01-03 17:54:52','2019-01-03 17:54:52','',0),(102334291,1,'jb20fwesrc0y4pkrnd8mlvtmd5xe3ye1','口袋妖怪','http://uni.notice.zqgame.com',1,1,1,0,1,'384','口袋妖怪','384',NULL,'2019-01-14 11:04:11','2019-01-14 11:04:11','',0),(1023342813,2,'8644c9cafdcab990ba90413a5205f031','超神争霸','http://uni.notice.zqgame.com',1,1,1,1,1,'','超神争霸','356',7,'2018-10-19 13:42:05','2018-10-19 13:42:05','',0);
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 17:53:36
