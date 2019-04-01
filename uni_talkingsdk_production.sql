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
-- Table structure for table `app_types`
--

DROP TABLE IF EXISTS `app_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apple_receipt_infos`
--

DROP TABLE IF EXISTS `apple_receipt_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apple_receipt_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `real_price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receipt` text COLLATE utf8_unicode_ci NOT NULL,
  `sandbox` int(11) DEFAULT NULL COMMENT '1 沙盒，其它非沙盒',
  `bid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_app_receipt_infos_on_app_id_and_my_order_id` (`app_id`,`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61349 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_companies_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `creating_orders`
--

DROP TABLE IF EXISTS `creating_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creating_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `server_id` int(11) DEFAULT NULL,
  `game_account_id` bigint(20) NOT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_price` decimal(10,2) NOT NULL,
  `ideal_price` decimal(10,2) NOT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_url_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `pay_platid` int(11) DEFAULT '0',
  `account` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_creating_orders_on_app_id_and_my_order_id` (`app_id`,`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1390327 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distribution_infos`
--

DROP TABLE IF EXISTS `distribution_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribution_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `dist_app_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `dist_app_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dist_app_secret` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dist_app_vendor` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dist_app_public_key` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `meta` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `dist_app_private_key` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `dist_app_goods` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `replace` int(11) NOT NULL DEFAULT '0',
  `send` int(10) DEFAULT '0',
  `sandbox_off` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_distribution_infos_unique` (`app_id`,`distributor_id`,`dist_app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distributors`
--

DROP TABLE IF EXISTS `distributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abbrev` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `verify_session_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verify_order_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_distributors_on_abbrev` (`abbrev`)
) ENGINE=InnoDB AUTO_INCREMENT=100009 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distributors_new`
--

DROP TABLE IF EXISTS `distributors_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributors_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abbrev` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `verify_session_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verify_order_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_distributors_on_abbrev` (`abbrev`)
) ENGINE=InnoDB AUTO_INCREMENT=50366 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_emails_on_email` (`email`),
  KEY `index_emails_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_types`
--

DROP TABLE IF EXISTS `language_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_infos`
--

DROP TABLE IF EXISTS `login_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_in` int(11) DEFAULT NULL,
  `extdata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_login_infos_on_app_id_and_uid` (`app_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `namespaces`
--

DROP TABLE IF EXISTS `namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namespaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_namespaces_on_name` (`name`) USING BTREE,
  KEY `index_namespaces_on_owner_id` (`owner_id`) USING BTREE,
  KEY `index_namespaces_on_path` (`path`) USING BTREE,
  KEY `index_namespaces_on_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=1360249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `openid_balance_infos`
--

DROP TABLE IF EXISTS `openid_balance_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_balance_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `open_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_openid_balance_infos_on_app_id_and_platform_id_and_open_id` (`app_id`,`platform_id`,`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `openid_records`
--

DROP TABLE IF EXISTS `openid_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL DEFAULT '0',
  `platid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pre_balance` int(11) NOT NULL DEFAULT '0',
  `sub_balance` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_openid_records_on_app_id_and_platid_and_openid` (`app_id`,`platid`,`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_notifications`
--

DROP TABLE IF EXISTS `order_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `notifying_status` int(11) NOT NULL DEFAULT '1',
  `notifying_count` int(11) NOT NULL DEFAULT '1',
  `next_time` datetime NOT NULL DEFAULT '2014-03-13 19:55:39',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_order_notifications_on_app_id_and_my_order_id` (`app_id`,`my_order_id`),
  KEY `notify_condition` (`notifying_status`,`notifying_count`,`next_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `real_price` decimal(10,2) NOT NULL,
  `ideal_price` decimal(10,2) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '1',
  `notifying_status` int(11) NOT NULL DEFAULT '1',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `os_type_id` int(11) DEFAULT '1',
  `platform_id` int(11) DEFAULT '0',
  `times` int(11) DEFAULT '1',
  `giftcoin` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_orders_on_app_id_and_my_order_id` (`app_id`,`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=628742 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `os_types`
--

DROP TABLE IF EXISTS `os_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay` (
  `app_name` varchar(64) COLLATE utf8_unicode_ci,
  `distributor_name` varchar(64) COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL DEFAULT '0',
  `real_price` decimal(14,6) DEFAULT NULL,
  `ideal_price` decimal(14,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `platform_id` int(11) DEFAULT '0',
  `notifying_status` int(11) NOT NULL DEFAULT '1',
  `account` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11),
  `role_name` varchar(64) COLLATE utf8_unicode_ci,
  `payPlatId` int(11) DEFAULT NULL,
  `payPlatName` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL COMMENT '1：沙盒，其它非沙盒',
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paycuowu`
--

DROP TABLE IF EXISTS `paycuowu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paycuowu` (
  `app_name` varchar(64) COLLATE utf8_unicode_ci,
  `distributor_name` varchar(64) COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL DEFAULT '0',
  `giftcoin` decimal(14,6) DEFAULT NULL,
  `real_price` decimal(14,6) DEFAULT NULL,
  `ideal_price` decimal(14,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `platform_id` int(11) DEFAULT '0',
  `notifying_status` int(11) NOT NULL DEFAULT '1',
  `account` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci,
  `payPlatId` int(11) DEFAULT NULL,
  `payPlatName` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL COMMENT '1 沙盒，其它非沙盒',
  `bid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `a_platform_id` int(11) DEFAULT '0',
  `d_platform_id` int(11) DEFAULT NULL,
  `d_pay_platid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paycuowu1`
--

DROP TABLE IF EXISTS `paycuowu1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paycuowu1` (
  `app_name` varchar(64) COLLATE utf8_unicode_ci,
  `distributor_name` varchar(64) COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL DEFAULT '0',
  `giftcoin` decimal(14,6) DEFAULT NULL,
  `real_price` decimal(14,6) DEFAULT NULL,
  `ideal_price` decimal(14,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `platform_id` int(11) DEFAULT '0',
  `notifying_status` int(11) NOT NULL DEFAULT '1',
  `account` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci,
  `payPlatId` int(11) DEFAULT NULL,
  `payPlatName` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL COMMENT '1 沙盒，其它非沙盒',
  `bid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `a_platform_id` int(11) DEFAULT '0',
  `d_platform_id` int(11) DEFAULT NULL,
  `d_pay_platid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_extensions`
--

DROP TABLE IF EXISTS `payment_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `creating_order_id` int(11) NOT NULL,
  `diamond_count` int(11) NOT NULL,
  `ext` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_payment_extensions_on_order_id` (`order_id`),
  UNIQUE KEY `index_payment_extensions_on_creating_order_id` (`creating_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `issues_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `wall_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `merge_requests_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `wiki_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `namespace_id` int(11) DEFAULT NULL,
  `issues_tracker` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'xuyu',
  `issues_tracker_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snippets_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `last_activity_at` datetime DEFAULT NULL,
  `import_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_level` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `import_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_user_id` (`user_id`) USING BTREE,
  KEY `index_projects_on_last_activity_at` (`last_activity_at`) USING BTREE,
  KEY `index_projects_on_namespace_id` (`namespace_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdk_notify_orders`
--

DROP TABLE IF EXISTS `sdk_notify_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sdk_notify_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `my_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `theirs_order_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `real_price` decimal(10,2) NOT NULL,
  `ideal_price` decimal(10,2) NOT NULL,
  `order_status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_creating_orders_on_app_id_and_my_order_id` (`app_id`,`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35062 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secret_key_infos`
--

DROP TABLE IF EXISTS `secret_key_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secret_key_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_info_id` int(11) NOT NULL,
  `secret_key_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_pay_alipay`
--

DROP TABLE IF EXISTS `test_pay_alipay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_pay_alipay` (
  `ORDERID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RMB` decimal(10,2) DEFAULT NULL,
  `ADDTIMES` datetime DEFAULT NULL,
  `A1` int(11) DEFAULT NULL,
  `A2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_login_infos`
--

DROP TABLE IF EXISTS `user_login_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_login_infos_on_app_id_and_user_id_and_distributor_id` (`app_id`,`user_id`,`distributor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9145123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `projects_limit` int(11) DEFAULT '10',
  `skype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theme_id` int(11) NOT NULL DEFAULT '1',
  `extern_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_create_group` tinyint(1) NOT NULL DEFAULT '1',
  `can_create_team` tinyint(1) NOT NULL DEFAULT '1',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_scheme_id` int(11) NOT NULL DEFAULT '1',
  `notification_level` int(11) NOT NULL DEFAULT '1',
  `password_expires_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `last_credential_check_at` datetime DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide_no_ssh_key` tinyint(1) DEFAULT '0',
  `website_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extern_username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qq` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tel` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_developer` tinyint(1) DEFAULT '0',
  `approved` tinyint(1) DEFAULT '0',
  `developer_type` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_extern_username` (`extern_username`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_authentication_token` (`authentication_token`)
) ENGINE=InnoDB AUTO_INCREMENT=100000002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_access` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_level` int(11) NOT NULL DEFAULT '3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_projects`
--

DROP TABLE IF EXISTS `users_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_access` int(11) NOT NULL DEFAULT '0',
  `notification_level` int(11) NOT NULL DEFAULT '3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_hooks`
--

DROP TABLE IF EXISTS `web_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_hooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zone_infos`
--

DROP TABLE IF EXISTS `zone_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `new_zone_id` int(11) NOT NULL DEFAULT '0',
  `gateway_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `show_order` int(11) NOT NULL DEFAULT '0',
  `mysql_server_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `redis_server_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `rethink_server_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_zone_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_zone_infos_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 18:02:19
