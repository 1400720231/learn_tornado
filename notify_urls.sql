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
-- Table structure for table `notify_urls`
--

DROP TABLE IF EXISTS `notify_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notify_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_notify_urls_on_app_id_and_md5` (`app_id`,`md5`)
) ENGINE=InnoDB AUTO_INCREMENT=1360238 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notify_urls`
--

LOCK TABLES `notify_urls` WRITE;
/*!40000 ALTER TABLE `notify_urls` DISABLE KEYS */;
INSERT INTO `notify_urls` VALUES (1,102334176,2,'c15410507e7b57a384503f0e5de65b29','http://203.195.175.71:8897/all','2016-01-18 10:50:14','2016-01-18 10:50:14',748),(391,102334173,2,'90873439bb88045406dbe877abc677b1','http://172.16.1.210:9994/HeroicServer/rechargenotice','2016-03-15 14:27:57','2016-03-15 14:27:57',10),(401,102334173,2,'fde4e860c50ead71dba6c8139337c803','http://127.0.0.1:9990/HeroicServer/rechargenotice','2016-03-15 16:28:44','2016-03-15 16:28:44',25),(402,102334173,2,'1ba8d70ff005fa8e7390221377ca9374','http://124.205.251.22:9990/HeroicServer/rechargenotice','2016-03-15 16:54:12','2016-03-15 16:54:12',1),(403,102334173,2,'73f67c7016b6e77a10967e1e91c2383b','http://124.205.251.22:9992/HeroicServer/rechargenotice','2016-03-15 17:04:47','2016-03-15 17:04:47',148),(408,102334173,2,'a0e06261e6f19825d9af957f953dd9e8','http://124.205.251.23:9990/rechargenotice','2016-03-16 12:33:28','2016-03-16 12:33:28',244),(416,102334173,2,'333a1b8db3803defdebd0dc9c731f320','http://124.205.251.23:9990/HeroicServer/rechargenotice','2016-03-18 12:04:29','2016-03-18 12:04:29',38),(484,102334173,2,'f37ae64282a5cf67a6b327831e994ba6','http://127.0.0.1:9990/rechargenotice','2016-03-30 09:39:24','2016-03-30 09:39:24',30),(502,102334175,2,'249f9216f907a5da0a090a329a2595f8','http://223.202.11.4:9090/result','2016-03-31 11:17:37','2016-03-31 11:17:37',2126),(679,102334173,2,'64d3afeeb5d842f8410c2f0b01f1b78d','http://223.202.11.6:9990/HeroicServer/rechargenotice','2016-04-05 18:42:33','2016-04-05 18:42:33',4519),(2521,102334173,2,'6fc48c2f54936b32a01d04e4ad8c0c86','http://58.67.219.23:9990/HeroicServer/rechargenotice','2016-04-12 13:08:04','2016-04-12 13:08:04',1268),(6518,102334173,2,'b6dcbb021571f2703e4283f138a5433d','http://58.67.202.179:9990/HeroicServer/rechargenotice','2016-04-21 17:57:04','2016-04-21 17:57:04',3),(6820,102334175,2,'503aa88fbfc8a0d7e70efd6a2f2a0fbf','http://120.25.205.96:9100/result','2016-05-06 18:59:11','2016-05-06 18:59:11',48),(6897,102334175,2,'7abc50cb7f1745fdb1cf9eada06df904','http://127.0.0.1:9090/result','2016-05-11 18:52:03','2016-05-11 18:52:03',2),(7504,102334173,2,'11d1e4d2930d5d86e45dd382ed363180','http://223.202.11.7:9990/HeroicServer/rechargenotice','2016-05-18 10:24:41','2016-05-18 10:24:41',386),(7896,102334175,2,'7052323ea793b9d1e6b1793024fd0a18','http://120.25.205.96:9090/result','2016-06-02 16:26:09','2016-06-02 16:26:09',30),(7935,102334175,2,'9f44135a3173eec3597ae982e034eccb','http://120.25.205.96:9091/result','2016-06-07 15:34:25','2016-06-07 15:34:25',20),(7960,102334175,2,'43c0835b142896d73201df4a63aa12f0','http://120.25.205.96:2020/result','2016-06-15 19:06:20','2016-06-15 19:06:20',3),(8703,102334157,2,'df7ec9f10b84ee7b12ebcfcbf8da428f','http://114.119.6.53/lom/user/charge/hw','2016-06-27 12:43:45','2016-06-27 12:43:45',1194),(8725,102334157,2,'b7f70ebf7a250db2853f47793e48918f','http://114.119.6.53/lom/user/charge/lenovo','2016-06-27 13:44:12','2016-06-27 13:44:12',179),(8729,102334157,2,'3665ac7d7f0629a36402bec25704c167','http://114.119.6.53/lom/user/charge/amigo','2016-06-27 14:02:03','2016-06-27 14:02:03',14660),(8737,102334157,2,'c062a75d4b853d52c2bc32195839b0d3','http://114.119.6.53/lom/user/charge/vivo','2016-06-27 14:30:47','2016-06-27 14:30:47',2131),(8745,102334157,2,'fa077a66d93a3f064f590758cd06abd2','http://114.119.6.53/lom/user/charge/uc','2016-06-27 14:46:49','2016-06-27 14:46:49',4115),(8759,102334157,2,'72711c3f934f9abfbf8fd6bc18845071','http://114.119.6.53/lom/user/charge/coolpad','2016-06-27 15:53:26','2016-06-27 15:53:26',60),(8763,102334157,2,'2cc357a802beee16743aaff113073f4e','http://114.119.6.53/lom/user/charge/mi','2016-06-27 15:55:20','2016-06-27 15:55:20',838),(8764,102334157,2,'0e0169576141ceb44393c38f2047867a','http://114.119.6.53/lom/user/charge/zqb','2016-06-27 15:56:03','2016-06-27 15:56:03',353),(8766,102334157,2,'0c78570c8c464df4a4a78454eb2f3f87','http://114.119.6.53/lom/user/charge/qihoo','2016-06-27 15:59:21','2016-06-27 15:59:21',841),(8776,102334157,2,'00d752e153ebc8c11b5a05f9e5ead75b','http://114.119.6.53/lom/user/charge/nd','2016-06-27 16:27:35','2016-06-27 16:27:35',55),(9195,102334157,2,'b77a8c0b35c32607eab5dd61494b995f','http://114.119.6.53/lom/user/charge/qq','2016-06-27 19:08:07','2016-06-27 19:08:07',601),(9240,102334157,2,'a2109604e79ed9f59e4864f5c6faee3f','http://114.119.6.53/lom/user/charge/oppo','2016-06-27 19:16:38','2016-06-27 19:16:38',3578),(9338,102334157,2,'dc585c2ad6e6a61fee23f7e2489f0e62','http://114.119.6.53/lom/user/charge/mz','2016-06-27 19:40:14','2016-06-27 19:40:14',117),(11865,102334173,2,'1af749eda1a77c9d8791c8196d3de7bb','http://106.75.17.88:9990/HeroicServer/rechargenotice','2016-06-28 10:37:58','2016-06-28 10:37:58',1820),(11888,102334173,2,'48f0d84731eb59b2d4085cb4d79da0b2','http://106.75.17.90:9990/HeroicServer/rechargenotice','2016-06-28 10:44:36','2016-06-28 10:44:36',3751),(22460,102334173,2,'e7d0237648e1096e936b0d973f99a301','http://106.75.3.213:9990/HeroicServer/rechargenotice','2016-06-30 10:45:18','2016-06-30 10:45:18',617),(22519,102334173,2,'0e038ca9c26232031b9d3060a5ba9a13','http://106.75.17.89:9990/HeroicServer/rechargenotice','2016-06-30 10:55:33','2016-06-30 10:55:33',694),(27904,102334173,2,'98677c942b8d974751696b81dbc1b20a','http://106.75.3.212:9990/HeroicServer/rechargenotice','2016-07-02 10:51:14','2016-07-02 10:51:14',597),(27916,102334173,2,'caef625b02afee6c629fc081774d19a1','http://106.75.3.215:9990/HeroicServer/rechargenotice','2016-07-02 10:56:56','2016-07-02 10:56:56',349),(27995,102334175,2,'fb9a85f8034770d053d4f3672e51a72a','http://223.202.11.8:9090/result','2016-07-02 11:37:01','2016-07-02 11:37:01',1),(32889,102334173,2,'8a757cd8c13d509c4f2e90dcfb89ec05','http://106.75.3.215:9991/HeroicServer/rechargenotice','2016-07-06 10:51:19','2016-07-06 10:51:19',93),(32899,102334173,2,'71655751a63ebcd8c210e239c12cba47','http://106.75.3.212:9991/HeroicServer/rechargenotice','2016-07-06 11:04:12','2016-07-06 11:04:12',439),(33605,102334173,2,'0762812f98996278c4812465dca38663','http://106.75.17.89:9991/HeroicServer/rechargenotice','2016-07-09 11:07:13','2016-07-09 11:07:13',253),(33801,102334173,2,'02c46d2c476b73facdc6c5e80e306020','http://106.75.3.213:9991/HeroicServer/rechargenotice','2016-07-11 00:57:17','2016-07-11 00:57:17',9),(33978,102334173,2,'f31e015be9feaa7d8f6fa5b5ac224bab','http://106.75.17.90:9991/HeroicServer/rechargenotice','2016-07-13 10:57:23','2016-07-13 10:57:23',254),(33981,102334173,2,'a1fc328f65bd8366edcc54cdebfe0ac5','http://106.75.17.88:9991/HeroicServer/rechargenotice','2016-07-13 11:09:21','2016-07-13 11:09:21',44),(34329,102334173,2,'709cb0f17408409cd110ea51c9f31853','http://106.75.17.90:9992/HeroicServer/rechargenotice','2016-07-16 10:45:09','2016-07-16 10:45:09',112),(34347,102334173,2,'15fde83e14a08a0e921d84e5ba1c80c5','http://106.75.3.213:9992/HeroicServer/rechargenotice','2016-07-16 14:31:16','2016-07-16 14:31:16',80),(34585,102334208,2,'baa9abd9a5b7b60dfad5cc064de45145','http://callback.fssdk.kkuu.com/pay/zqgame/2108','2016-07-19 14:45:26','2016-07-19 14:45:26',49920),(34814,102334173,2,'25b299be11d14c689f058ca621ebb038','http://106.75.17.89:9992/HeroicServer/rechargenotice','2016-07-20 13:24:01','2016-07-20 13:24:01',93),(34869,102334157,2,'15903af0158c685a91df101358b10615','http://114.119.6.53/lom/user/charge/zqb_17','2016-07-20 15:43:23','2016-07-20 15:43:23',292),(35266,102334157,2,'7e35f1c1cf9aed55e165bd3a183ae48c','http://114.119.6.53/lom/user/charge/pp','2016-07-21 19:15:32','2016-07-21 19:15:32',108),(35271,102334157,2,'08a10611d8e977514af4074cbad1eb68','http://114.119.6.10:900/lom/user/charge/zqb_17','2016-07-21 20:06:29','2016-07-21 20:06:29',23),(35286,102334157,2,'5a4b1cbafe5b3d075b2e6e965fb5adc5','http://114.119.6.10:900/lom/user/charge/dlios','2016-07-21 21:48:03','2016-07-21 21:48:03',1),(35349,102334173,2,'39415a3613126ac9dbb83b5c3b02e93d','http://106.75.3.215:9992/HeroicServer/rechargenotice','2016-07-22 14:15:09','2016-07-22 14:15:09',30),(35351,102334157,2,'54431c01be6d3f430e6991ecb56a8dd5','http://114.119.6.10:900/lom/user/charge/pp','2016-07-22 14:37:12','2016-07-22 14:37:12',4),(35441,102334157,2,'4289a89e28e9e3d6cf11e3a51c920f13','http://114.119.6.10:900/lom/user/charge/i4','2016-07-23 13:52:23','2016-07-23 13:52:23',13),(35607,102334208,2,'b4c2c094c6a2a83214fdce28507b25ea','http://callback.fssdk.kkuu.com/pay/ioszqgame/2108','2016-07-25 19:13:52','2016-07-25 19:13:52',5839),(35686,102334157,2,'1d6d8c661727091373ec396f664f0c5e','http://58.67.194.146:900/lom/user/charge/zqb','2016-07-26 17:50:50','2016-07-26 17:50:50',7),(35687,102334157,2,'b72b29c8e8f4a92db4f4f8937cfd75b7','http://58.67.194.146:900/lom/user/charge/zqb_17','2016-07-26 17:53:11','2016-07-26 17:53:11',3),(35694,102334157,2,'ed02270ca6f725918a487e9b520d54fa','http://58.67.194.146:900/lom/user/charge/i4','2016-07-26 18:38:42','2016-07-26 18:38:42',13),(35731,102334173,2,'e1a848da0c312779b8030de780e9d9ec','http://106.75.3.215:9993/HeroicServer/rechargenotice','2016-07-27 12:09:46','2016-07-27 12:09:46',13),(35733,102334175,2,'70f8901dd901c8d72d88032823f81442','http://120.25.205.96:9096/result','2016-07-27 12:15:34','2016-07-27 12:15:34',16),(35738,102334173,2,'31077afe656c9cbfc2553cf23d616feb','http://106.75.3.212:9992/HeroicServer/rechargenotice','2016-07-27 13:16:24','2016-07-27 13:16:24',143),(35771,102334157,2,'f5ef61806b3e670a0c9d058c78413503','http://58.67.194.146:900/lom/user/charge/qq','2016-07-27 16:04:17','2016-07-27 16:04:17',4),(35777,102334157,2,'f526c9ded951c6898e9aa46e0f3f2ef7','http://58.67.194.146:900/lom/user/charge/amigo','2016-07-27 16:30:28','2016-07-27 16:30:28',5),(35781,102334157,2,'3d4e966d91fef5c6f572999aaa78689b','http://58.67.194.146:900/lom/user/charge/lenovo','2016-07-27 17:13:30','2016-07-27 17:13:30',20),(35785,102334157,2,'33b69d9ce512fe5b6d808561ceaefa28','http://58.67.194.146:900/lom/user/charge/vivo','2016-07-27 17:50:18','2016-07-27 17:50:18',3),(35788,102334157,2,'9d5a34855640750a4ea1433c2515b40f','http://58.67.194.146:900/lom/user/charge/oppo','2016-07-27 17:52:33','2016-07-27 17:52:33',2),(35793,102334157,2,'56136ca2c3a5701807926bcff23a57ef','http://58.67.194.146:900/lom/user/charge/nd','2016-07-27 17:57:02','2016-07-27 17:57:02',6),(35795,102334157,2,'c23a92d9c64e03f7450fe805691ea3c9','http://58.67.194.146:900/lom/user/charge/mi','2016-07-27 18:00:07','2016-07-27 18:00:07',5),(35800,102334157,2,'4fbfab8d3174dfbfd172ff68b1c4398c','http://58.67.194.146:900/lom/user/charge/uc','2016-07-27 18:15:02','2016-07-27 18:15:02',8),(35809,102334157,2,'be4b64f85a19c4e5dfefc4a08418ab66','http://58.67.194.146:900/lom/user/charge/coolpad','2016-07-27 18:25:14','2016-07-27 18:25:14',2),(35822,102334157,2,'48a4b834f34e9be148a2dbd36baeafba','http://58.67.194.146:900/lom/user/charge/hw','2016-07-27 18:52:11','2016-07-27 18:52:11',6),(35828,102334157,2,'9cec9d5c9d41ca52589c21a095490ee4','http://58.67.194.146:900/lom/user/charge/wdj','2016-07-27 19:02:53','2016-07-27 19:02:53',20),(35829,102334157,2,'41415923da1a286122751b8cb7ec58cb','http://58.67.194.146:900/lom/user/charge/qihoo','2016-07-27 19:15:53','2016-07-27 19:15:53',4),(35832,102334157,2,'7e65cf3137be69238453b42fbd42d7dc','http://58.67.194.146:900/lom/user/charge/mz','2016-07-27 19:19:56','2016-07-27 19:19:56',9),(35877,102334157,2,'34fb04ef249fe21f7ca512c7ef6c5f0f','http://58.67.194.146:900/lom/user/charge/kugou','2016-07-28 11:31:42','2016-07-28 11:31:42',15),(35902,102334157,2,'3fca13975d4fe2d0d16173bcf1d755ac','http://58.67.194.146:900/lom/user/charge/leshi','2016-07-28 20:15:52','2016-07-28 20:15:52',27),(35916,102334157,2,'754edc5631e001501b99c91f3556de37','http://58.67.194.146:900/lom/user/charge/jugame','2016-07-28 20:20:26','2016-07-28 20:20:26',20),(35918,102334157,2,'15e2412a5b8601127e8f03fd0c8391ba','http://58.67.194.146:900/lom/user/charge/fz','2016-07-28 20:21:50','2016-07-28 20:21:50',19),(35922,102334157,2,'a401ea6ccf86ddef58acb3bbc733d24e','http://58.67.194.146:900/lom/user/charge/mzw','2016-07-28 20:25:38','2016-07-28 20:25:38',8),(35940,102334157,2,'9bb4e760598d4026602c307550d8e5b3','http://58.67.194.146:900/lom/user/charge/pptv','2016-07-29 10:19:23','2016-07-29 10:19:23',17),(35996,102334157,2,'552e61f7841c1c1798300407fceaef5e','http://58.67.194.146:900/lom/user/charge/chongchong','2016-07-29 12:00:51','2016-07-29 12:00:51',61),(36009,102334157,2,'fc3e68ff8013a3661196221441e4117d','http://58.67.194.146:900/lom/user/charge/sogou','2016-07-29 14:05:36','2016-07-29 14:05:36',12),(36013,102334157,2,'56203326dcd9649a6a248da1827a8e28','http://58.67.194.146:900/lom/user/charge/ppyxt','2016-07-29 14:09:34','2016-07-29 14:09:34',27),(36128,102334157,2,'07a808fbba669d80b6f14ceef724da2d','http://58.67.194.146:900/lom/user/charge/hm','2016-07-29 19:00:28','2016-07-29 19:00:28',8),(36216,102334173,2,'4277c442b31aead4b149f8bd5a1fd537','http://106.75.3.212:9993/HeroicServer/rechargenotice','2016-07-31 12:02:54','2016-07-31 12:02:54',483),(36219,102334173,2,'33ac37a13f36433ae568d987f337dc44','http://106.75.3.213:9993/HeroicServer/rechargenotice','2016-07-31 12:05:35','2016-07-31 12:05:35',57),(36404,102334157,2,'7b773b67da22bac3a004dff2e501af0a','http://58.67.194.146:900/lom/user/charge/ky','2016-08-01 10:42:04','2016-08-01 10:42:04',21),(36407,102334157,2,'35f60cea7f5c0ff189508d658453f70e','http://58.67.194.146:900/lom/user/charge/dlios','2016-08-01 11:18:02','2016-08-01 11:18:02',6),(36416,102334157,2,'0a7031a00422dae99b11422c94c01678','http://58.67.194.146:900/lom/user/charge/nd91','2016-08-01 11:56:28','2016-08-01 11:56:28',7),(36467,102334157,2,'1147d669b46fd1d2e0a65df2970f6e5b','http://58.67.194.146:900/lom/user/charge/pp','2016-08-01 12:18:15','2016-08-01 12:18:15',5),(36481,102334157,2,'de7021e8f05a4d142e1d27c843180c8f','http://58.67.194.146:900/lom/user/charge/zqb_2','2016-08-01 12:36:54','2016-08-01 12:36:54',8),(36659,102334175,2,'52af9ce46cf88b3714d32ccaae715fd3','http://120.25.205.96:9093/result','2016-08-02 15:32:48','2016-08-02 15:32:48',3),(36684,102334157,2,'a0785ea7ecf6aaefb16bf51f9f1587fe','http://58.67.194.146:900/lom/user/charge/anzhi','2016-08-02 18:35:13','2016-08-02 18:35:13',18),(37402,102334157,2,'4687ce547f832c55173230fb9d6b7bb7','http://58.67.194.146:900/lom/user/charge/guopan','2016-08-05 12:07:17','2016-08-05 12:07:17',1),(37496,102334157,2,'041b7eb95f3d91a8065f619a9889618e','http://114.119.6.53/lom/user/charge/i4','2016-08-05 21:00:03','2016-08-05 21:00:03',35),(37511,102334157,2,'2ac4d870abf1010791e7fe04bc06a447','http://114.119.6.53/lom/user/charge/guopan','2016-08-05 22:00:07','2016-08-05 22:00:07',68),(37920,102334157,2,'9ea73cfa7090c2f06b71d3581cf0dc8c','http://114.119.6.53/lom/user/charge/sogou','2016-08-08 12:06:07','2016-08-08 12:06:07',70),(37976,102334157,2,'172f9e5e360f838c38b8ed83340d17cd','http://114.119.6.53/lom/user/charge/jugame','2016-08-08 16:36:17','2016-08-08 16:36:17',17),(38031,102334157,2,'b0e201bf687b5da5a0fcbd98f344ddd1','http://114.119.6.53/lom/user/charge/kugou','2016-08-08 19:45:52','2016-08-08 19:45:52',506),(38138,102334157,2,'ee5a0664d49b510e4d61783e832dffcf','http://114.119.6.53/lom/user/charge/tb','2016-08-09 11:01:38','2016-08-09 11:01:38',53),(38166,102334157,2,'9db97e24772cf914f8fc91dbb128fb5f','http://114.119.6.53/lom/user/charge/mzw','2016-08-09 11:15:21','2016-08-09 11:15:21',115),(38174,102334157,2,'2521519a76f0058caa1c7fe98b7702b8','http://114.119.6.53/lom/user/charge/chongchong','2016-08-09 11:18:39','2016-08-09 11:18:39',199),(38188,102334157,2,'8c65e8bc347bbd9cc19d60061d9aa195','http://114.119.6.53/lom/user/charge/pptv','2016-08-09 11:24:31','2016-08-09 11:24:31',254),(38200,102334157,2,'259b425fd147e3329723dcd4ed155f26','http://114.119.6.53/lom/user/charge/ppyxt','2016-08-09 11:30:12','2016-08-09 11:30:12',315),(38259,102334157,2,'5cf4a3538c03be63dc184c7165c3715d','http://114.119.6.53/lom/user/charge/leshi','2016-08-09 12:25:07','2016-08-09 12:25:07',195),(39017,102334157,2,'cf538a7b2971d595665a4f617795369b','http://114.119.6.53/lom/user/charge/anzhi','2016-08-09 23:52:56','2016-08-09 23:52:56',189),(39237,102334157,2,'4043993dacdf8ff696e4c2e3f77f76ca','http://114.119.6.53/lom/user/charge/downjoy','2016-08-10 09:57:25','2016-08-10 09:57:25',266),(39289,102334157,2,'92d6ac90a2fe02a168e6e9f9da0c9395','http://114.119.6.53/lom/user/charge/xy','2016-08-10 10:51:07','2016-08-10 10:51:07',416),(39656,102334157,2,'f15b15d81bc582fa9e61f8f49002982c','http://114.119.6.53/lom/user/charge/hm','2016-08-10 20:29:28','2016-08-10 20:29:28',120),(39865,102334157,2,'1b667a8066579ed2c181e93fab8c80e2','http://114.119.6.53/lom/user/charge/wdj','2016-08-11 06:28:08','2016-08-11 06:28:08',52),(40048,102334157,2,'e8fdb8f19a9e71feaa4052d0ffdae242','http://114.119.6.53/lom/user/charge/ky','2016-08-11 13:09:19','2016-08-11 13:09:19',21),(41997,102334157,2,'2820d2c3d6bf9ba960e0143bd80cae19','http://114.119.6.53/lom/user/charge/weixin','2016-08-15 16:34:00','2016-08-15 16:34:00',44),(42213,102334157,2,'ed3d91356e90653b030ea00d10261946','http://114.119.6.53/lom/user/charge/fz','2016-08-16 01:09:05','2016-08-16 01:09:05',25),(42464,102334157,2,'5e4590a0cdf708daa83fb7c7fc2da66f','http://114.119.6.10:900/lom/user/charge/zqb','2016-08-16 15:20:21','2016-08-16 15:20:21',1),(47299,102334157,2,'de9c0641cfab023e92d06fc9505840a3','http://114.119.6.53/lom/user/charge/haomeng','2016-08-24 09:40:21','2016-08-24 09:40:21',60),(47305,102334157,2,'87362819745affe0576fb1767638f8f5','http://114.119.6.53/lom/user/charge/dianyou','2016-08-24 10:07:44','2016-08-24 10:07:44',12),(47308,102334157,2,'b5c3f7ff52b81eeed9de3e5b81c10514','http://114.119.6.53/lom/user/charge/htc','2016-08-24 10:13:14','2016-08-24 10:13:14',88),(47316,102334157,2,'bf77e1a6fe412fb64a9d31db1f519820','http://114.119.6.53/lom/user/charge/siyuan','2016-08-24 10:20:20','2016-08-24 10:20:20',67),(51153,102334212,2,'94bbf5978afb4386d588b339daa07580','http://pay.allyplay.com:8881/zqb_ltzr/pay.php','2016-08-29 15:49:26','2016-08-29 15:49:26',37),(52662,102334211,2,'05b7f511f76bf2d83e78e290daa2b5c7','http://cls.mg05.youyannet.com/isy/pay.php','2016-08-31 18:19:57','2016-08-31 18:19:57',16),(53666,102334213,2,'1963a8dc5837c8b202e8e8d85390b1f2','http://callback.fssdk.kkuu.com/pay/ioszqgame/2125','2016-09-02 10:50:34','2016-09-02 10:50:34',4054),(56028,102334157,2,'a155e143bc0a8b43cadbfaf0633c86e1','http://114.119.6.53/lom/user/charge/ys','2016-09-06 16:21:04','2016-09-06 16:21:04',5),(57368,102334157,2,'c57444cc92d382439181cabe284d5db4','http://114.119.6.53/lom/user/charge/yyh','2016-09-09 11:22:01','2016-09-09 11:22:01',48),(61966,102334157,2,'d6cb3c0c88ad2aa679057921775e5561','http://114.119.6.53/lom/user/charge/egame','2016-09-19 10:36:21','2016-09-19 10:36:21',153),(65632,102334211,2,'b19c49c83bc8c1f2f94274b877da6c59','http://cls.mg05.youyannet.com/azq/pay.php','2016-09-27 17:17:37','2016-09-27 17:17:37',3548),(66047,102334220,2,'fe50320bedd670471f98b244ea0fcc02','http://cls.mg05.youyannet.com/is1/pay.php','2016-09-28 06:48:36','2016-09-28 06:48:36',388),(77806,102334214,2,'c75c3e99248c2b9e41e03eb7d3efa660','http://s1.zqb.xy.shiyuegame.com/api/pf/zqb/callback.php','2016-10-20 10:43:02','2016-10-20 10:43:02',273389),(87110,102334209,2,'4ff11210fee1b1eaf66089b59daa7a70','http://global.mxzj.zqgame.com:9988/payMXZJ','2016-10-24 11:20:31','2016-10-24 11:20:31',263610),(90494,102334157,2,'bf12f91b8d46c3b70d6faf7724bbcd26','http://114.119.6.10:900/lom/user/charge/hw','2016-10-25 18:36:34','2016-10-25 18:36:34',2),(91949,102334157,2,'a5a273261470c2c0fdb72be86047028e','http://114.119.6.10:900/lom/user/charge/leshi','2016-10-26 10:17:38','2016-10-26 10:17:38',1),(98047,102334226,2,'c9648127ef3192febf0abd8ebdd6d106','http://callback.fssdk.kkuu.com/pay/ioszqgame/2155','2016-10-28 11:22:53','2016-10-28 11:22:53',846),(155316,102334216,2,'177c3eced3cee91867f242c4bd47ede1','http://www.yixingame.com/website/voucher/vouchcallback.php?type=5','2016-11-23 11:31:57','2016-11-23 11:31:57',9695),(162326,102334215,2,'b951e0bde196d73f3d331a72d4809736','http://115.159.3.147:8098/pay_android/zqgame/index.php','2016-11-25 16:09:17','2016-11-25 16:09:17',1022),(169843,102334227,2,'c75c3e99248c2b9e41e03eb7d3efa660','http://s1.zqb.xy.shiyuegame.com/api/pf/zqb/callback.php','2016-11-28 10:35:59','2016-11-28 10:35:59',2058),(227011,102334237,1,'4ff11210fee1b1eaf66089b59daa7a70','http://global.mxzj.zqgame.com:9988/payMXZJ','2016-12-27 13:45:13','2016-12-27 13:45:13',1757),(240261,102334238,2,'4ff11210fee1b1eaf66089b59daa7a70','http://global.mxzj.zqgame.com:9988/payMXZJ','2017-01-06 14:13:53','2017-01-06 14:13:53',150),(315490,102334239,2,'c75c3e99248c2b9e41e03eb7d3efa660','http://s1.zqb.xy.shiyuegame.com/api/pf/zqb/callback.php','2017-01-19 17:44:29','2017-01-19 17:44:29',42),(392628,102334241,2,'c75c3e99248c2b9e41e03eb7d3efa660','http://s1.zqb.xy.shiyuegame.com/api/pf/zqb/callback.php','2017-02-09 11:13:46','2017-02-09 11:13:46',13457),(393242,102334228,2,'f9f8cecbc612a46ffb8d850f4ba1364f','http://114.119.6.68:26180/do=recharge_res','2017-02-09 16:06:43','2017-02-09 16:06:43',14),(393581,102334228,2,'8355b46d340d8864cee9605359a91632','http://114.119.6.68:26180/Recharge_Res','2017-02-09 19:03:52','2017-02-09 19:03:52',118),(418587,102334210,2,'b951e0bde196d73f3d331a72d4809736','http://115.159.3.147:8098/pay_android/zqgame/index.php','2017-02-24 13:59:52','2017-02-24 13:59:52',17),(419009,102334210,2,'bb3dd63266de485cbd95f610cc0d325d','http://115.159.3.147:8098/pay_android/zqgame_fivehero/index.php','2017-02-24 19:18:01','2017-02-24 19:18:01',10059),(428649,102334228,2,'3f17f4935a90c2c5c942f90f3d0dff55','http://10.68.237.34:8020/Recharge_Res','2017-03-02 14:46:21','2017-03-02 14:46:21',70413),(488854,102334244,2,'39a3c4c6ec7d8fa36dca1e8421034d9b','http://182.254.228.195:8080/payback/zhongqb/index','2017-04-17 12:58:04','2017-04-17 12:58:04',43),(491951,102334228,2,'b5bf9c5093f13a1654cc19cf99a695de','http://PSIP:8020/Recharge_Res','2017-04-20 19:30:22','2017-04-20 19:30:22',28),(492942,102334244,2,'eebd5cc91a235e761ced31fa910e0474','http://pay.windplay.cn/payback/zhongqb/index','2017-04-21 19:36:17','2017-04-21 19:36:17',4410),(510729,102334249,2,'ffd69a385298042311adf346e2b30916','http://114.119.37.94:8080/rl_w_notify_zqbnew','2017-05-05 22:14:59','2017-05-05 22:14:59',4),(510770,102334249,2,'8a3bdc5421aae409c676e25b236c768f','http://114.119.37.94:8080/rl_w_notify_newzqb','2017-05-05 22:30:07','2017-05-05 22:30:07',96),(512022,102334210,2,'d7953fd1b328bf9190f7e454076c149d','http://123.207.14.191:8098/pay_android/zqgame_fivehero/index.php','2017-05-06 18:05:01','2017-05-06 18:05:01',85),(514851,102334250,2,'c75c3e99248c2b9e41e03eb7d3efa660','http://s1.zqb.xy.shiyuegame.com/api/pf/zqb/callback.php','2017-05-09 10:48:16','2017-05-09 10:48:16',44),(521285,102334249,2,'02f3544e8ff013ba79569b4ca9fab5ca','http://114.119.37.38:8080/rl_w_notify_newzqb','2017-05-16 12:02:02','2017-05-16 12:02:02',10032),(533173,102334249,2,'79f8406f0546be6a92de9a285240221f','http://114.119.37.49:8080/rl_w_notify_newzqb','2017-06-02 11:27:34','2017-06-02 11:27:34',99358),(549853,102334228,2,'89cdd0d5f5d55bbee3631227de2fac48','http://10.119.4.96:26014/Recharge_Res','2017-06-13 22:10:34','2017-06-13 22:10:34',85),(593870,102334249,2,'6243e3f739aa183244c8eb6317102bd1','http://114.119.37.44:8080/rl_w_notify_newzqb','2017-07-05 18:26:49','2017-07-05 18:26:49',20025),(600781,102334228,2,'3552b3463f6ad7eb33626f3cb57f8e02','http://114.119.6.68:26014/Recharge_Res','2017-07-10 16:35:20','2017-07-10 16:35:20',267),(620360,102334252,2,'615f7088aed6e60da537def72b317dd4','http://cls.mg37.youyannet.com/aqb/pay.php','2017-07-24 16:19:14','2017-07-24 16:19:14',94),(623871,102334228,2,'247db67d6edfc9c4e7add2ed818f6f25','http://114.119.6.68:27014/Recharge_Res','2017-07-26 14:32:29','2017-07-26 14:32:29',755),(639513,102334254,2,'00bcc21157f05cd86d3a202525fdb18d','http://123.206.20.222/zhongqb/delivery.xl','2017-08-04 12:12:44','2017-08-04 12:12:44',450),(646626,102334249,2,'d381e303e722f04ba4870b3710a5f28e','http://114.119.37.104:8080/rl_w_notify_newzqb','2017-08-08 15:36:11','2017-08-08 15:36:11',5650),(647885,102334249,2,'3f932650e91c39cfeb072bff566a1bc9','省时间转换消耗元宝数','2017-08-09 11:39:42','2017-08-09 11:39:42',52),(705280,102334249,2,'d638908ef843221deb0d972cb65dc85b','http://123.184.33.84:8080/rl_w_notify_newzqb','2017-09-15 14:37:26','2017-09-15 14:37:26',1263),(713237,102334259,2,'ba6f033fc1e7ddefaa228e95afaa84d4','http://10.119.4.96:27014/Recharge_Res','2017-09-21 19:31:35','2017-09-21 19:31:35',1),(713721,102334259,2,'247db67d6edfc9c4e7add2ed818f6f25','http://114.119.6.68:27014/Recharge_Res','2017-09-22 10:14:43','2017-09-22 10:14:43',3),(742816,102334249,2,'3b7819570336454e2ad944ac28cfbe94','http://114.119.37.57:8080/rl_w_notify_newzqb','2017-10-16 15:45:01','2017-10-16 15:45:01',952),(813244,102334265,2,'bec9bacd7fe4d2f910814959e18fa4de','http://www.egreter.com:9888/channel20005','2017-12-27 15:30:26','2017-12-27 15:30:26',143),(818577,102334228,2,'ba6f033fc1e7ddefaa228e95afaa84d4','http://10.119.4.96:27014/Recharge_Res','2018-01-04 00:09:41','2018-01-04 00:09:41',11),(820965,102334265,2,'f965910128eec2a206f5e9f45f7f40b9','http://wanba.egreter.com:9888/channel20005','2018-01-08 18:36:42','2018-01-08 18:36:42',606),(854180,102334249,2,'836e58ced9195bec952b08f4eaeae807','http://120.79.156.199:8080/rl_w_notify_newzqb','2018-03-21 18:07:20','2018-03-21 18:07:20',27123),(859100,102334228,2,'a57f5d1ccd567021176dfb139db92797','http://172.18.180.120:8020/Recharge_Res','2018-05-04 23:57:23','2018-05-04 23:57:23',5),(860335,102334228,2,'9302e14f90aae27c8bcce632f54afc23','http://120.79.54.156:8020/Recharge_Res','2018-05-07 11:52:28','2018-05-07 11:52:28',169),(863916,102334228,2,'b13259523d0e4a7c17f2f49afd4dfa9c','http://58.68.243.24:8020/Recharge_Res','2018-05-14 16:03:09','2018-05-14 16:03:09',165),(864568,102334228,2,'054c767e4d410b443dfc722dc4d39816','http://114.116.54.64:8020/Recharge_Res','2018-05-15 17:06:26','2018-05-15 17:06:26',5328),(884697,102334269,2,'b3ed7fadeaec8f980ce5053cb2450227','http://10.141.139.154:8020/Recharge_Res','2018-06-25 10:02:52','2018-06-25 10:02:52',31),(887292,102334270,2,'ab42324471d320ec3737c37d18a9f501','http://yhtcs.morefuntek.com:18088/paycenter/notify/zqgameCallback.jsp','2018-07-04 10:55:34','2018-07-04 10:55:34',426),(889577,102334269,2,'045c44da83dcf07f1b44b17c44052eb3','http://140.143.2.231:8020/Recharge_Res','2018-07-12 17:25:24','2018-07-12 17:25:24',46),(891747,102334271,2,'e8fb29cc7a057a11dfe9450aa41b8133','https://mpay-api.37.com.cn/game/sppay/479/1003741/','2018-07-19 16:22:03','2018-07-19 16:22:03',41021),(895347,102334271,2,'2724bd1790afbfd4fb1c49012aeb7ae3','https://mpay-api.37.com.cn/game/sppay/482/1002737/','2018-07-25 16:40:55','2018-07-25 16:40:55',136),(896079,102334271,2,'5e056c500a1c4b6a7110b50d807bade5','https','2018-07-26 15:40:16','2018-07-26 15:40:16',17),(906016,102334271,2,'b57ce00a67e7b8318867af5d54085495','https://mpay-api.37.com.cn/game/sppay/479/1003850/','2018-08-02 23:16:31','2018-08-02 23:16:31',1),(907625,102334271,2,'d76f7608c3742c1e1c546cea54ed2fd5','https://mpay-api.37.com.cn/game/sppay/482/1003741/','2018-08-03 17:27:57','2018-08-03 17:27:57',25),(915727,102334273,2,'0b34145f266c835e26a6a2db7a348d06','http://h5sdk-xly.xileyougame.com/index.php/api/notify/zqingbaoweidaun/1355','2018-08-06 16:54:29','2018-08-06 16:54:29',381),(916731,102334273,2,'5e056c500a1c4b6a7110b50d807bade5','https','2018-08-07 10:27:35','2018-08-07 10:27:35',6),(921217,102334270,2,'b6d767d2f8ed5d21a44b0e5886680cb9','22','2018-08-10 13:50:06','2018-08-10 13:50:06',1),(921245,102334270,2,'f773482f41325311714655db10ca322c','http://pay.morefuntek.com/paycenter/notify/zqgameCallback.jsp','2018-08-10 14:22:04','2018-08-10 14:22:04',41766),(921285,102334272,2,'c6f8ddbe115d1d1c4e6e1a9b95f628ff','https://mpay-api.37.com.cn/game/sppay/479/1003894/','2018-08-10 15:14:04','2018-08-10 15:14:04',19991),(924693,102334270,2,'5e056c500a1c4b6a7110b50d807bade5','https','2018-08-14 14:12:21','2018-08-14 14:12:21',3),(924715,102334270,2,'b99689feded5c4ffd1ef5b4f1e8b77b9','http://uni.notice.zqgame.com/102334270/294/pay_notice','2018-08-14 15:16:28','2018-08-14 15:16:28',24),(931919,102334276,2,'2d57a048104cba820004e402330be960','http://183.136.223.85:9020/paycheck/confirm/fytx_test/zhongqingbao/V1_2','2018-08-27 14:50:23','2018-08-27 14:50:23',17),(940636,102334277,2,'7c4e2ecab68fb010ad96a5e8b99bb54a','http://wvvvv.9377.cn/api/combine_sdk/pay/callback/zhongqingbao.php','2018-09-05 17:07:20','2018-09-05 17:07:20',308030),(944555,102334278,2,'f33d1b58769e60c04a658485b811c29b','http://gm.djcg.fenggugame.cn:80/apizqb/paysuccess','2018-09-10 14:36:27','2018-09-10 14:36:27',164),(972665,102334279,2,'8167db9cc03f9c51e7d37339a19f0e16','http%3A%2F%2F192.168.31.148%3A31015%2FonPay_SL2ZQB','2018-09-26 10:41:12','2018-09-26 10:41:12',8),(973020,102334279,2,'0d3943eb6970a21915bc5cb7add0552a','http%3A%2F%2F192.168.31.158%3A31015%2FonPay_SL2ZQB','2018-09-26 14:27:04','2018-09-26 14:27:04',6),(973036,102334279,2,'75054c4202c4e7b694a58b88b86b692a','http://192.168.31.148:31015/onPay_SL2ZQB','2018-09-26 14:44:26','2018-09-26 14:44:26',4),(973089,102334279,2,'5f960dd9b5e829f1ee92f5907c528691','http://120.92.133.224:10115/onPay_SL2ZQB','2018-09-26 15:16:04','2018-09-26 15:16:04',4),(973258,102334279,2,'c997e7974d44fc76228aee7afcea8d3e','http://192.168.31.148:31015/onPay_SL2ZQB_2','2018-09-26 18:02:14','2018-09-26 18:02:14',1),(973282,102334279,2,'e15b7e3f859e0116bdbd46b7b0c87dec','http://192.168.31.158:31015/onPay_SL2ZQB','2018-09-26 18:30:38','2018-09-26 18:30:38',8),(973330,102334279,2,'cd3268b5b968bde4832c8cd4c0af12bd','http://120.92.133.224:10115/onPay_SL2ZQB_2','2018-09-26 19:17:39','2018-09-26 19:17:39',314),(975873,102334279,2,'bfcbb0585056a149e90b2027d54f5410','http://111.230.141.236:10115/onPay_SL2ZQB','2018-09-28 10:32:07','2018-09-28 10:32:07',2),(975891,102334279,2,'aced8575206659a01f66e172ad87dce7','http://111.230.141.236:10115/onPay_SL2ZQB_2','2018-09-28 11:02:26','2018-09-28 11:02:26',199),(976234,102334279,2,'150f95b70c9e1d781d7cf54de2f17012','http://111.230.141.236:10515/onPay_SL2ZQB_2','2018-09-28 18:41:37','2018-09-28 18:41:37',64),(977907,102334279,2,'ebc2281b8e938db670c54754baf41209','http://111.230.141.236:10215/onPay_SL2ZQB_2','2018-09-29 19:54:28','2018-09-29 19:54:28',49),(977975,102334279,2,'4ed24598b2068fc1c83f0b2dee17c937','http://111.230.141.236:10415/onPay_SL2ZQB_2','2018-09-29 21:07:45','2018-09-29 21:07:45',112),(990700,102334279,2,'c01aa978426e0c8ea7f9c04153af4c22','http://120.92.133.224:10115/onPay_SL2ZQB_1','2018-10-10 12:23:04','2018-10-10 12:23:04',63),(993706,102334270,2,'b607d945e173da44eaa57536e53acb18','http://pay.morefuntek.com/paycenter/notify/yiwanCallback.jsp','2018-10-12 13:25:49','2018-10-12 13:25:49',102),(1024056,102334215,2,'ab42324471d320ec3737c37d18a9f501','http://yhtcs.morefuntek.com:18088/paycenter/notify/zqgameCallback.jsp','2018-10-23 16:13:48','2018-10-23 16:13:48',303),(1024475,102334279,2,'21f7f60bcc835e771b526afe81def098','http://111.230.141.236:10415/onPay_SL2ZQB_1','2018-10-23 19:54:01','2018-10-23 19:54:01',118),(1024677,102334279,2,'5a4ab7faa54e0c3399b1bda992df5aec','http://111.230.141.236:10315/onPay_SL2ZQB_2','2018-10-23 21:20:34','2018-10-23 21:20:34',41),(1030855,102334279,2,'4fa5896dfe274f3a679b393735194d87','http%3A%2F%2F111.230.141.236%3A10415%2FonPay_SL2ZQB_1','2018-10-25 18:20:02','2018-10-25 18:20:02',14),(1062653,102334279,2,'a70b52d602b1ec8291670087f8b6a1d0','http://111.230.141.236:10515/onPay_SL2ZQB_1','2018-11-02 11:13:14','2018-11-02 11:13:14',14),(1070057,102334279,2,'fb7b43c67ac07881be44b45200e0f3fe','http://111.230.141.236:10115/onPay_SL2ZQB_1','2018-11-05 09:59:16','2018-11-05 09:59:16',2),(1092389,1023342813,0,'8b5299d9931799cc8760ed01b9f3d5fb','http://121.134.159.151/ZQGame.aspx','2018-11-15 09:35:22','2018-11-15 09:35:22',52),(1092628,102334279,2,'9699dce979e97d90f767c8c8d0d53fbd','http://111.230.141.236:21015/onPay_SL2ZQB_2','2018-11-15 11:56:41','2018-11-15 11:56:41',220),(1107353,102334279,2,'0387601abac86090ad560e86e1de8718','http://192.168.31.158:31015/onPay_SL2ZQB_2','2018-11-20 14:48:21','2018-11-20 14:48:21',24),(1111370,1023342813,2,'9947a49c2394d5f4f94d517fe6b37a52','http://58.68.237.18/ZQGame.aspx','2018-11-22 10:56:22','2018-11-22 10:56:22',36),(1112171,102334279,2,'2e15683c339e02c9891c1e8a135d853f','http://111.230.141.236:22015/onPay_SL2ZQB_1','2018-11-22 19:26:31','2018-11-22 19:26:31',53),(1116741,102334285,2,'f773482f41325311714655db10ca322c','http://pay.morefuntek.com/paycenter/notify/zqgameCallback.jsp','2018-11-24 16:32:30','2018-11-24 16:32:30',501),(1125666,102334287,2,'9947a49c2394d5f4f94d517fe6b37a52','http://58.68.237.18/ZQGame.aspx','2018-11-29 14:54:13','2018-11-29 14:54:13',243),(1129710,102334277,2,'5e056c500a1c4b6a7110b50d807bade5','http://120.92.140.166:9913/api/rpc/?m=charge-zhongqingbaoios','2018-11-30 19:10:28','2018-11-30 19:10:28',3),(1129839,102334277,2,'620d618448b616bb495def1e92ae8e67','http%3A%2F%2F120.92.140.166%3A9913%2Fapi%2Frpc%2F%3Fm%3Dcharge-zhongqingbaoios','2018-11-30 19:27:30','2018-11-30 19:27:30',20),(1130305,102334277,2,'f27f86d5b5d947871b94a2cf7672b616','http%3A%2F%2Fcl-qztx-api.ijunhai.com%2F%3Fm%3Dcharge-zhongqingbaoios','2018-11-30 21:52:23','2018-11-30 21:52:23',3),(1130355,102334277,2,'7c6c4e93c59cf880d3430798015151f5','http%3A%2F%2Fcl-qztxcyou-api.er05.com%2F%3Fm%3Dcharge-zhongqingbaoios','2018-11-30 22:12:07','2018-11-30 22:12:07',41),(1138811,102334215,2,'f773482f41325311714655db10ca322c','http://pay.morefuntek.com/paycenter/notify/zqgameCallback.jsp','2018-12-04 21:14:30','2018-12-04 21:14:30',951),(1158050,8051,2,'fd4219703481e9cfab0a37ec55d19447','http://192.168.54.68/s/payResult','2018-12-12 16:15:31','2018-12-12 16:15:31',15),(1158294,8051,2,'6cad0bb8cbb6f6f27f4a4cceaf1450ca','http://139.199.185.43/s/payResult','2018-12-12 18:11:20','2018-12-12 18:11:20',7),(1158473,8051,2,'bf5324d22049b1a188ce1136a161495e','http://139.199.185.43:10000/s/payResult','2018-12-12 19:33:11','2018-12-12 19:33:11',377),(1160656,102334288,1,'efbbcc929283fb4777d5375fd36614b2','http://pay.public.sdk.gzyouai.com/paycheck/confirm/qjzh_ml/zhongqingbao/V1_2','2018-12-13 17:01:16','2018-12-13 17:01:16',28288),(1164291,8051,2,'0de43e5beb34632564f5ae11c38d3509','http://111.230.240.25:10000/s/payResult','2018-12-14 09:47:33','2018-12-14 09:47:33',101),(1164487,102334286,2,'ab42324471d320ec3737c37d18a9f501','http://yhtcs.morefuntek.com:18088/paycenter/notify/zqgameCallback.jsp','2018-12-14 10:28:52','2018-12-14 10:28:52',297),(1170389,102334284,2,'f773482f41325311714655db10ca322c','http://pay.morefuntek.com/paycenter/notify/zqgameCallback.jsp','2018-12-15 14:08:16','2018-12-15 14:08:16',13),(1188615,102334277,2,'10e1a0feb718735d3dccbac2505ecde2','http://120.92.140.166:9913/api/rpc/?m=charge-zhongqingbaoios','2018-12-19 20:52:47','2018-12-19 20:52:47',13),(1190338,102334277,2,'c0b8aab412496429ddb7f6b076dfdbe6','http://cl-qztxcyou-api.er05.com/?m=charge-zhongqingbaoios','2018-12-20 11:47:57','2018-12-20 11:47:57',185),(1236589,3019,1,'c4fa02579bfa7b1ab4ccb917af01f69f','127.0.0.1:8080/3019/314/pay_notice','2018-12-29 15:28:19','2018-12-29 15:28:19',4),(1268519,102334287,2,'5dc469cb7c398c53fbce157ddc222c5a','http://cszbgame.zqgame.com/ZQGame.aspx','2019-01-02 17:35:39','2019-01-02 17:35:39',19),(1287189,102334286,2,'f773482f41325311714655db10ca322c','http://pay.morefuntek.com/paycenter/notify/zqgameCallback.jsp','2019-01-05 16:56:48','2019-01-05 16:56:48',2943),(1296937,8051,2,'39f84388326816c19f30d28fb69042df','http://192.168.130.230:10000/s/payResult','2019-01-07 14:49:29','2019-01-07 14:49:29',1),(1331827,102334289,1,'3dbd740c7888febf3eb487d92731e75f','http://120.132.92.44:5000/api/bill/zqb','2019-01-14 15:17:52','2019-01-14 15:17:52',23),(1332393,102334289,1,'c25b269e7534a8dfa027f51d593eb923','http://129.204.111.213:5000/api/bill/zqb','2019-01-16 10:22:28','2019-01-16 10:22:28',2034),(1333147,102334291,1,'e1aeddd2ad99289d69584e6c5cb80801','http://192.168.1.163 /integration/callback/zhongqingbao.do','2019-01-16 15:54:41','2019-01-16 15:54:41',1),(1333275,102334291,1,'98562d886c96acf0c7bd8b81e39781bc','http://192.168.1.163/integration/callback/zhongqingbao.do','2019-01-16 16:52:48','2019-01-16 16:52:48',4),(1333729,102334289,1,'a36256a2dded6b05df4790fda1edd2b7','http://120.132.92.44:5000/api/bill/zqb_ios','2019-01-16 19:46:39','2019-01-16 19:46:39',16),(1334480,102334289,1,'33b3dd1b1ef21913d04b9e5ac7be7ffb','http://129.204.111.213:5000/api/bill/zqb_ios','2019-01-16 23:53:00','2019-01-16 23:53:00',19);
/*!40000 ALTER TABLE `notify_urls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 17:56:41
