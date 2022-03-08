-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'gdlABdJOhLzoi4WBSht5xg34Fwo6uFie',1,'2022-01-04 21:14:43','2022-01-04 21:14:43','2022-01-04 21:14:43');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2027-01-05 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(2,'Make your Breakfast','2027-01-05 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(3,'The best Organic','2027-01-05 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(4,'Bring nature into your home','2027-01-05 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(5,'Delivered to your home','2027-01-05 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(6,'Save 17% on Oganic Juice','2027-01-05 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(7,'Everyday Fresh & Clean with Our Products','2027-01-05 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(8,'The best Organic Products Online','2027-01-05 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(9,'Everyday Fresh with Our Products','2027-01-05 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(10,'100% guaranteed all Fresh items','2027-01-05 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(11,'Special grocery sale off this month','2027-01-05 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(12,'Enjoy 15% OFF for all vegetable and fruit','2027-01-05 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2022-01-04 21:14:48','2022-01-04 21:14:48');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Voluptatem et laudantium nam. Sit aut dolore molestias illum non quis modi mollitia. Et omnis dolorum ut laborum nostrum vel aut. Dolores repudiandae laborum incidunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(2,'Fashion',0,'Repellat quas quo officiis non perferendis vel voluptatum. Maiores aliquam blanditiis ex molestiae dignissimos fuga est. Tenetur vel itaque autem quaerat minus nulla. Est similique fuga dicta aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(3,'Electronic',0,'Ut quae porro aut voluptatem est nostrum. Atque tempora rerum expedita debitis facilis. Libero aut modi qui qui. Ut quo necessitatibus molestiae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(4,'Commercial',0,'Tenetur officia magni illo. Sit voluptas alias mollitia totam et nihil enim velit. Nam ducimus ea dolorum eum corporis magnam. Esse voluptatem ea ipsam eaque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-04 21:14:42','2022-01-04 21:14:42');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_backup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_backup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2022-01-04 21:13:55','2022-01-04 21:13:55');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `decimals` tinyint(3) unsigned DEFAULT 0,
  `order` int(10) unsigned DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(2,'EUR','€',0,2,1,0,0.84,'2022-01-04 21:13:55','2022-01-04 21:13:55'),(3,'VND','₫',0,0,2,0,23203,'2022-01-04 21:13:55','2022-01-04 21:13:55');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Cole Wuckert DDS','customer@botble.com','+13157076908','CL','Wisconsin','Sporerberg','26836 Ward Center',1,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','35759-2253'),(2,'Cole Wuckert DDS','customer@botble.com','+18457621876','NF','District of Columbia','New Enriquemouth','648 Sawayn Views',1,0,'2022-01-04 21:14:20','2022-01-04 21:14:20','51182-0083'),(3,'Misael Harvey','vendor@botble.com','+14357146049','TL','Florida','Kobeborough','612 Robel Prairie',2,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','50299'),(4,'Misael Harvey','vendor@botble.com','+14783788831','NZ','Ohio','East Alana','463 Elisha Forks',2,0,'2022-01-04 21:14:20','2022-01-04 21:14:20','42168-4150'),(5,'Hadley Smitham','travis01@example.net','+16069276530','PL','New Mexico','North Augustine','20867 Monte Junction Apt. 234',3,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','53036'),(6,'Elena Luettgen','velva07@example.org','+16673029028','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',4,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','17448'),(7,'Dr. Maryam Champlin V','douglas.schoen@example.net','+18386739499','FK','West Virginia','West Ferne','795 Steuber Island',5,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','45294-2030'),(8,'Miss Kelly Ebert','pfeffer.celestino@example.net','+17276761924','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',6,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','35167'),(9,'Hailie Gulgowski','price.burnice@example.com','+12239155746','MY','Oregon','Maryjanetown','8666 Cassin Keys Apt. 447',7,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','51824-8507'),(10,'Aniya Feeney','lyla.zulauf@example.org','+19596280649','SL','Massachusetts','Ravenville','568 Kirlin Run Apt. 229',8,1,'2022-01-04 21:14:20','2022-01-04 21:14:20','73476'),(11,'Ms. Evie Dare DVM','lily.mayer@example.com','+18284583913','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',9,1,'2022-01-04 21:14:21','2022-01-04 21:14:21','94324-1750'),(12,'Prof. Dessie McCullough Sr.','trudie57@example.com','+17736995567','ZA','Alaska','Lake Hazelstad','2341 Sarai Ranch Apt. 747',10,1,'2022-01-04 21:14:21','2022-01-04 21:14:21','13971-6497');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Cole Wuckert DDS','customer@botble.com','$2y$10$mXMBGQqr2OIsma1XX8nEJO3LWQLC9QOlMpeQYPc4EHqq5gUg2Xake','customers/1.jpg',NULL,'+13468461343',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:20','2022-01-05 04:14:20',NULL,0,NULL,'activated'),(2,'Misael Harvey','vendor@botble.com','$2y$10$07RnX1ipixr.9AcqBlROiOQxt/RBWSUil6DZWWXuJiLqrvXuhbYnm','customers/7.jpg',NULL,'+19046010260',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:57','2022-01-05 04:14:20',NULL,1,'2022-01-05 04:14:57','activated'),(3,'Hadley Smitham','travis01@example.net','$2y$10$N88XeJRClAGUuTtiYnSTb.CdLYC5oUrNOCzCH4mJEBuB4SQLD/CI6','customers/1.jpg',NULL,'+16466212584',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:57','2022-01-05 04:14:20',NULL,1,'2022-01-05 04:14:57','activated'),(4,'Elena Luettgen','velva07@example.org','$2y$10$491zqmcH7V8y3Usu9pAvo.rTYIU57BBVI7t3juADPs1wozXmYRWH2','customers/2.jpg',NULL,'+18625663109',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:20','2022-01-05 04:14:20',NULL,0,NULL,'activated'),(5,'Dr. Maryam Champlin V','douglas.schoen@example.net','$2y$10$4gXRYF0FhPhdYtDCeh.Ysen1dJX5JmPc.Fku0gqAuSosLvNDw1iLy','customers/3.jpg',NULL,'+13605008790',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:20','2022-01-05 04:14:20',NULL,0,NULL,'activated'),(6,'Miss Kelly Ebert','pfeffer.celestino@example.net','$2y$10$NNeLtp5jJ//908eJyhUCw.Ml7JwEpEqSeaka/OV0yhIAfw62MgOam','customers/4.jpg',NULL,'+14694570636',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:20','2022-01-05 04:14:20',NULL,0,NULL,'activated'),(7,'Hailie Gulgowski','price.burnice@example.com','$2y$10$.97l0nTa0NIWgKE5yjzXT.ntpgcM8ocwAglhGXwG1JwY3xAEeakPO','customers/5.jpg',NULL,'+19858089750',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:57','2022-01-05 04:14:20',NULL,1,'2022-01-05 04:14:57','activated'),(8,'Aniya Feeney','lyla.zulauf@example.org','$2y$10$XuGV5pN4cr6rMe4PHMA7B.ZNsk5JmHzqpICnZghWYOsdPbEP34Iza','customers/6.jpg',NULL,'+13859106653',NULL,'2022-01-04 21:14:20','2022-01-04 21:14:57','2022-01-05 04:14:20',NULL,1,'2022-01-05 04:14:57','activated'),(9,'Ms. Evie Dare DVM','lily.mayer@example.com','$2y$10$9uvMG/uAy./DW.WWocQf9.rJH7Z.vxUKSWEROrI/2RUVJS3PC3q4K','customers/7.jpg',NULL,'+16809974231',NULL,'2022-01-04 21:14:21','2022-01-04 21:14:21','2022-01-05 04:14:21',NULL,0,NULL,'activated'),(10,'Prof. Dessie McCullough Sr.','trudie57@example.com','$2y$10$kY17yb28F5lLLW73iHy8HOtPezuOioveBpBnL54HmMI1GROS6G/QO','customers/8.jpg',NULL,'+15203402404',NULL,'2022-01-04 21:14:21','2022-01-04 21:14:57','2022-01-05 04:14:21',NULL,1,'2022-01-05 04:14:57','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_collection_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) unsigned NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `sold` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,21,77.7,11,3),(2,8,48.484,17,4),(3,5,16.2,13,3),(4,5,19.35,8,5),(5,16,59.2064,17,2),(6,1,101.91,17,4),(6,2,200.69,10,2),(6,3,115.83,8,1),(6,4,42.0626,6,3),(6,5,31.5,16,3),(6,6,20.65,15,2),(6,7,67.6,17,4),(6,8,60.078,18,2),(6,9,96.8,13,3),(6,10,148.96,16,3),(6,11,66.25,17,3),(6,12,49.4016,15,5),(6,13,36.89,6,2),(6,14,73.6,20,2),(6,15,46.44,6,4),(6,16,61.248,12,4),(6,17,41.65,11,4),(6,18,102.48,6,2),(6,19,67.26,17,2),(6,20,74.415,8,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2022-04-19 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(2,'Flash sale 2','2022-03-18 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(3,'Flash sale 3','2022-03-18 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(4,'Flash sale 4','2022-03-24 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(5,'Flash sale 5','2022-04-19 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(6,'Daily Best Sales','2022-03-30 00:00:00','published','2022-02-28 02:44:17','2022-02-28 02:44:17');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',1,'35167'),(2,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',2,'35167'),(3,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',3,'35167'),(4,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',4,'35167'),(5,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',5,'17448'),(6,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',6,'17448'),(7,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',7,'17448'),(8,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',8,'17448'),(9,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',9,'17448'),(10,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',10,'17448'),(11,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',11,'45294-2030'),(12,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',12,'45294-2030'),(13,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',13,'45294-2030'),(14,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',14,'45294-2030'),(15,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',15,'45294-2030'),(16,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',16,'45294-2030'),(17,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',17,'45294-2030'),(18,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',18,'45294-2030'),(19,'Dr. Maryam Champlin V','+18386739499','douglas.schoen@example.net','FK','West Virginia','West Ferne','795 Steuber Island',19,'45294-2030'),(20,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',20,'94324-1750'),(21,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',21,'94324-1750'),(22,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',22,'94324-1750'),(23,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',23,'17448'),(24,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',24,'17448'),(25,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',25,'17448'),(26,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',26,'35167'),(27,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',27,'35167'),(28,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',28,'35167'),(29,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',29,'35167'),(30,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',30,'35167'),(31,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',31,'35759-2253'),(32,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',32,'35759-2253'),(33,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',33,'94324-1750'),(34,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',34,'94324-1750'),(35,'Ms. Evie Dare DVM','+18284583913','lily.mayer@example.com','GH','Utah','East Patsy','7076 Fadel Underpass Suite 680',35,'94324-1750'),(36,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',36,'35759-2253'),(37,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',37,'35759-2253'),(38,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',38,'35759-2253'),(39,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',39,'17448'),(40,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',40,'17448'),(41,'Elena Luettgen','+16673029028','velva07@example.org','IE','Louisiana','East Loganport','516 Osinski Via Apt. 663',41,'17448'),(42,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',42,'35759-2253'),(43,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',43,'35759-2253'),(44,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',44,'35759-2253'),(45,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',45,'35759-2253'),(46,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',46,'35759-2253'),(47,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',47,'35759-2253'),(48,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',48,'35759-2253'),(49,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',49,'35759-2253'),(50,'Cole Wuckert DDS','+13157076908','customer@botble.com','CL','Wisconsin','Sporerberg','26836 Ward Center',50,'35759-2253'),(51,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',51,'35167'),(52,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',52,'35167'),(53,'Miss Kelly Ebert','+17276761924','pfeffer.celestino@example.net','AZ','Wisconsin','Port Lyla','4306 Walsh Bypass Suite 838',53,'35167');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(3,'confirm_payment','Payment was confirmed (amount $657.10) by %user_name%',0,1,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(5,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-02-23 02:44:18','2022-02-23 02:44:18'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-02-23 02:44:18','2022-02-23 02:44:18'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(9,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-02-23 08:44:18','2022-02-23 08:44:18'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-02-23 08:44:18','2022-02-23 08:44:18'),(12,'confirm_payment','Payment was confirmed (amount $760.40) by %user_name%',0,3,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(14,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-02-17 00:44:18','2022-02-17 00:44:18'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-02-17 00:44:18','2022-02-17 00:44:18'),(17,'create_shipment','Created shipment for order',0,4,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(20,'confirm_payment','Payment was confirmed (amount $491.40) by %user_name%',0,5,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(22,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(25,'confirm_payment','Payment was confirmed (amount $384.40) by %user_name%',0,6,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(27,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-02-25 02:44:18','2022-02-25 02:44:18'),(29,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-02-25 02:44:18','2022-02-25 02:44:18'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(31,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(32,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-02-18 04:44:18','2022-02-18 04:44:18'),(33,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-02-18 04:44:18','2022-02-18 04:44:18'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(35,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-02-23 20:44:18','2022-02-23 20:44:18'),(37,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-02-23 20:44:18','2022-02-23 20:44:18'),(38,'confirm_payment','Payment was confirmed (amount $260.40) by %user_name%',0,9,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(39,'create_shipment','Created shipment for order',0,9,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(40,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-02-19 14:44:18','2022-02-19 14:44:18'),(42,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-02-19 14:44:18','2022-02-19 14:44:18'),(43,'confirm_payment','Payment was confirmed (amount $125.40) by %user_name%',0,10,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(44,'create_shipment','Created shipment for order',0,10,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(45,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-02-22 18:44:18','2022-02-22 18:44:18'),(47,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-02-22 18:44:18','2022-02-22 18:44:18'),(48,'confirm_payment','Payment was confirmed (amount $94.50) by %user_name%',0,11,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(49,'create_shipment','Created shipment for order',0,11,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(50,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-02-20 02:44:18','2022-02-20 02:44:18'),(51,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-02-20 02:44:18','2022-02-20 02:44:18'),(52,'confirm_payment','Payment was confirmed (amount $615.90) by %user_name%',0,12,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(53,'create_shipment','Created shipment for order',0,12,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-02-25 14:44:18','2022-02-25 14:44:18'),(55,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-02-25 14:44:18','2022-02-25 14:44:18'),(56,'create_shipment','Created shipment for order',0,13,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(57,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-02-21 20:44:18','2022-02-21 20:44:18'),(59,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-02-21 20:44:18','2022-02-21 20:44:18'),(60,'confirm_payment','Payment was confirmed (amount $182.90) by %user_name%',0,14,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(61,'create_shipment','Created shipment for order',0,14,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(62,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-02-16 20:44:18','2022-02-16 20:44:18'),(64,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-02-16 20:44:18','2022-02-16 20:44:18'),(65,'confirm_payment','Payment was confirmed (amount $529.90) by %user_name%',0,15,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(66,'create_shipment','Created shipment for order',0,15,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(67,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(69,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(70,'confirm_payment','Payment was confirmed (amount $260.70) by %user_name%',0,16,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(71,'create_shipment','Created shipment for order',0,16,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(72,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-02-21 02:44:18','2022-02-21 02:44:18'),(74,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-02-21 02:44:18','2022-02-21 02:44:18'),(75,'confirm_payment','Payment was confirmed (amount $122.10) by %user_name%',0,17,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(76,'create_shipment','Created shipment for order',0,17,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-02-27 00:44:18','2022-02-27 00:44:18'),(78,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-02-27 00:44:18','2022-02-27 00:44:18'),(79,'confirm_payment','Payment was confirmed (amount $260.40) by %user_name%',0,18,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(80,'create_shipment','Created shipment for order',0,18,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-02-21 14:44:18','2022-02-21 14:44:18'),(82,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-02-21 14:44:18','2022-02-21 14:44:18'),(83,'create_shipment','Created shipment for order',0,19,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(84,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(86,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(87,'create_shipment','Created shipment for order',0,20,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-02-22 02:44:18','2022-02-22 02:44:18'),(89,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-02-22 02:44:18','2022-02-22 02:44:18'),(90,'create_shipment','Created shipment for order',0,21,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(91,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(92,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(93,'confirm_payment','Payment was confirmed (amount $125.40) by %user_name%',0,22,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(94,'create_shipment','Created shipment for order',0,22,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-02-22 14:44:18','2022-02-22 14:44:18'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-02-22 14:44:18','2022-02-22 14:44:18'),(97,'confirm_payment','Payment was confirmed (amount $1,469.40) by %user_name%',0,23,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(98,'create_shipment','Created shipment for order',0,23,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-02-23 12:44:18','2022-02-23 12:44:18'),(100,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-02-23 12:44:18','2022-02-23 12:44:18'),(101,'confirm_payment','Payment was confirmed (amount $1,088.10) by %user_name%',0,24,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(102,'create_shipment','Created shipment for order',0,24,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-02-18 22:44:18','2022-02-18 22:44:18'),(104,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-02-18 22:44:18','2022-02-18 22:44:18'),(105,'create_shipment','Created shipment for order',0,25,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(106,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(107,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-02-20 14:44:18','2022-02-20 14:44:18'),(108,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-02-20 14:44:18','2022-02-20 14:44:18'),(109,'confirm_payment','Payment was confirmed (amount $353.40) by %user_name%',0,26,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(110,'create_shipment','Created shipment for order',0,26,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(113,'confirm_payment','Payment was confirmed (amount $237.30) by %user_name%',0,27,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(115,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,27,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-02-24 08:44:18','2022-02-24 08:44:18'),(117,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-02-24 08:44:18','2022-02-24 08:44:18'),(118,'create_shipment','Created shipment for order',0,28,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(119,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(120,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-02-21 08:44:18','2022-02-21 08:44:18'),(121,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-02-21 08:44:18','2022-02-21 08:44:18'),(122,'confirm_payment','Payment was confirmed (amount $125.40) by %user_name%',0,29,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(123,'create_shipment','Created shipment for order',0,29,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-02-23 14:44:18','2022-02-23 14:44:18'),(125,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-02-23 14:44:18','2022-02-23 14:44:18'),(126,'create_shipment','Created shipment for order',0,30,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-02-23 10:44:18','2022-02-23 10:44:18'),(128,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-02-23 10:44:18','2022-02-23 10:44:18'),(129,'create_shipment','Created shipment for order',0,31,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(131,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(132,'confirm_payment','Payment was confirmed (amount $233.10) by %user_name%',0,32,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(133,'create_shipment','Created shipment for order',0,32,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(134,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-02-27 12:44:18','2022-02-27 12:44:18'),(136,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-02-27 12:44:18','2022-02-27 12:44:18'),(137,'confirm_payment','Payment was confirmed (amount $64.90) by %user_name%',0,33,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(138,'create_shipment','Created shipment for order',0,33,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(139,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-02-26 08:44:18','2022-02-26 08:44:18'),(141,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-02-26 08:44:18','2022-02-26 08:44:18'),(142,'confirm_payment','Payment was confirmed (amount $431.20) by %user_name%',0,34,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(143,'create_shipment','Created shipment for order',0,34,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-02-25 18:44:18','2022-02-25 18:44:18'),(145,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-02-25 18:44:18','2022-02-25 18:44:18'),(146,'confirm_payment','Payment was confirmed (amount $396.80) by %user_name%',0,35,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(147,'create_shipment','Created shipment for order',0,35,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(148,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(150,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(151,'confirm_payment','Payment was confirmed (amount $1,323.70) by %user_name%',0,36,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(152,'create_shipment','Created shipment for order',0,36,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(153,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(155,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(156,'confirm_payment','Payment was confirmed (amount $619.20) by %user_name%',0,37,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(157,'create_shipment','Created shipment for order',0,37,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(158,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-02-27 02:44:18','2022-02-27 02:44:18'),(159,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-02-27 02:44:18','2022-02-27 02:44:18'),(160,'confirm_payment','Payment was confirmed (amount $399.90) by %user_name%',0,38,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(161,'create_shipment','Created shipment for order',0,38,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(163,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(164,'confirm_payment','Payment was confirmed (amount $266.60) by %user_name%',0,39,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(165,'create_shipment','Created shipment for order',0,39,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(166,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(168,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(169,'confirm_payment','Payment was confirmed (amount $387.50) by %user_name%',0,40,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(170,'create_shipment','Created shipment for order',0,40,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(171,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(172,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(173,'confirm_payment','Payment was confirmed (amount $471.30) by %user_name%',0,41,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(174,'create_shipment','Created shipment for order',0,41,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(175,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(176,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-02-25 10:44:18','2022-02-25 10:44:18'),(177,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-02-25 10:44:18','2022-02-25 10:44:18'),(178,'create_shipment','Created shipment for order',0,42,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(180,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(181,'confirm_payment','Payment was confirmed (amount $1,083.60) by %user_name%',0,43,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(182,'create_shipment','Created shipment for order',0,43,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(183,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(185,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(186,'confirm_payment','Payment was confirmed (amount $140.80) by %user_name%',0,44,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(187,'create_shipment','Created shipment for order',0,44,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(188,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2022-02-27 08:44:18','2022-02-27 08:44:18'),(189,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2022-02-27 08:44:18','2022-02-27 08:44:18'),(190,'confirm_payment','Payment was confirmed (amount $64.90) by %user_name%',0,45,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(191,'create_shipment','Created shipment for order',0,45,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(192,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(193,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2022-02-27 14:44:18','2022-02-27 14:44:18'),(194,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2022-02-27 14:44:18','2022-02-27 14:44:18'),(195,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,46,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(196,'create_shipment','Created shipment for order',0,46,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(197,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(198,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2022-02-26 14:44:18','2022-02-26 14:44:18'),(199,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2022-02-26 14:44:18','2022-02-26 14:44:18'),(200,'confirm_payment','Payment was confirmed (amount $734.70) by %user_name%',0,47,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(201,'create_shipment','Created shipment for order',0,47,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(202,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(203,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(204,'confirm_payment','Payment was confirmed (amount $823.20) by %user_name%',0,48,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(205,'create_shipment','Created shipment for order',0,48,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(206,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,48,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(207,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(208,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(209,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,49,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(210,'create_shipment','Created shipment for order',0,49,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(211,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(212,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(213,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(214,'confirm_payment','Payment was confirmed (amount $249.90) by %user_name%',0,50,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(215,'create_shipment','Created shipment for order',0,50,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(216,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,50,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(217,'create_order_from_seeder','Order is created from the checkout page',NULL,51,NULL,'2022-02-27 18:44:18','2022-02-27 18:44:18'),(218,'confirm_order','Order was verified by %user_name%',0,51,NULL,'2022-02-27 18:44:18','2022-02-27 18:44:18'),(219,'confirm_payment','Payment was confirmed (amount $266.60) by %user_name%',0,51,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(220,'create_shipment','Created shipment for order',0,51,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(221,'create_order_from_seeder','Order is created from the checkout page',NULL,52,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(222,'confirm_order','Order was verified by %user_name%',0,52,NULL,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(223,'confirm_payment','Payment was confirmed (amount $139.50) by %user_name%',0,52,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(224,'create_shipment','Created shipment for order',0,52,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(225,'create_order_from_seeder','Order is created from the checkout page',NULL,53,NULL,'2022-02-28 00:44:18','2022-02-28 00:44:18'),(226,'confirm_order','Order was verified by %user_name%',0,53,NULL,'2022-02-28 00:44:18','2022-02-28 00:44:18'),(227,'create_shipment','Created shipment for order',0,53,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(228,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(229,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(230,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(231,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(232,'update_status','Order confirmed by %user_name%',0,9,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(233,'update_status','Order confirmed by %user_name%',0,10,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(234,'update_status','Order confirmed by %user_name%',0,14,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(235,'update_status','Order confirmed by %user_name%',0,15,NULL,'2022-02-28 02:44:19','2022-02-28 02:44:19'),(236,'update_status','Order confirmed by %user_name%',0,16,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(237,'update_status','Order confirmed by %user_name%',0,27,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(238,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(239,'update_status','Order confirmed by %user_name%',0,33,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(240,'update_status','Order confirmed by %user_name%',0,35,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(241,'update_status','Order confirmed by %user_name%',0,36,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(242,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-02-28 02:44:20','2022-02-28 02:44:20'),(243,'update_status','Order confirmed by %user_name%',0,41,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(244,'update_status','Order confirmed by %user_name%',0,43,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(245,'update_status','Order confirmed by %user_name%',0,45,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(246,'update_status','Order confirmed by %user_name%',0,46,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(247,'update_status','Order confirmed by %user_name%',0,48,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(248,'update_status','Order confirmed by %user_name%',0,49,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21'),(249,'update_status','Order confirmed by %user_name%',0,50,NULL,'2022-02-28 02:44:21','2022-02-28 02:44:21');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) unsigned DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,130.00,13.00,'[]',42,'Canada Dry Ginger Ale – 2 L Bottle',2349.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(2,1,2,121.00,12.10,'[]',75,'Perdue Simply Smart Organics Gluten Free',1146.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(3,2,1,121.00,12.10,'[]',48,'Gorton’s Beer Battered Fish Fillets',703.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(4,2,3,128.00,12.80,'[]',83,'Organic Cage-Free Grade A Large Brown Eggs',1659.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(5,3,2,130.00,13.00,'[]',42,'Canada Dry Ginger Ale – 2 L Bottle',1566.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(6,3,3,115.00,11.50,'[]',60,'Organic Frozen Triple Berry Blend',1629.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(7,3,1,119.00,11.90,'[]',66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',503.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(8,4,2,125.00,12.50,'[]',54,'Nestle Original Coffee-Mate Coffee Creamer',1584.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(9,5,1,86.00,8.60,'[]',37,'Foster Farms Takeout Crispy Classic',639.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(10,5,3,128.00,12.80,'[]',81,'Organic Cage-Free Grade A Large Brown Eggs',1659.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(11,6,3,124.00,12.40,'[]',46,'Encore Seafoods Stuffed Alaskan',2628.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(12,7,2,111.00,11.10,'[]',77,'Chen Watermelon',1274.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(13,8,1,130.00,13.00,'[]',43,'Canada Dry Ginger Ale – 2 L Bottle',783.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(14,8,1,116.00,11.60,'[]',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',708.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(15,9,2,124.00,12.40,'[]',44,'Encore Seafoods Stuffed Alaskan',1752.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(16,10,1,114.00,11.40,'[]',71,'Simply Lemonade with Raspberry Juice',694.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(17,11,2,45.00,4.50,'[]',39,'Blue Diamond Almonds Lightly',1048.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(18,12,2,125.00,12.50,'[]',54,'Nestle Original Coffee-Mate Coffee Creamer',1584.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(19,12,3,114.00,11.40,'[]',70,'Simply Lemonade with Raspberry Juice',2082.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(20,13,1,427.00,42.70,'[]',31,'All Natural Italian-Style Chicken Meatballs',612.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(21,14,3,59.00,5.90,'[]',41,'Chobani Complete Vanilla Greek',2580.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(22,15,1,121.00,12.10,'[]',47,'Gorton’s Beer Battered Fish Fillets',703.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(23,15,3,128.00,12.80,'[]',81,'Organic Cage-Free Grade A Large Brown Eggs',1659.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(24,16,1,237.00,23.70,'[]',25,'Seeds of Change Organic Quinoe',861.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(25,17,1,111.00,11.10,'[]',77,'Chen Watermelon',637.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(26,18,2,124.00,12.40,'[]',46,'Encore Seafoods Stuffed Alaskan',1752.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(27,19,2,119.00,11.90,'[]',58,'Pepperidge Farm Farmhouse Hearty White Bread',1040.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(28,20,3,45.00,4.50,'[]',38,'Blue Diamond Almonds Lightly',1572.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(29,20,1,45.00,4.50,'[]',39,'Blue Diamond Almonds Lightly',524.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(30,21,3,122.00,12.20,'[]',68,'All Natural Italian-Style Chicken Meatballs',1764.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(31,22,1,114.00,11.40,'[]',73,'Simply Lemonade with Raspberry Juice',694.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(32,23,3,237.00,23.70,'[]',25,'Seeds of Change Organic Quinoe',2583.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(33,23,3,237.00,23.70,'[]',28,'Seeds of Change Organic Quinoe',2583.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(34,24,3,351.00,35.10,'[]',32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',2034.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(35,25,3,119.00,11.90,'[]',58,'Pepperidge Farm Farmhouse Hearty White Bread',1560.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(36,26,3,114.00,11.40,'[]',70,'Simply Lemonade with Raspberry Juice',2082.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(37,27,2,113.00,11.30,'[]',84,'Colorful Banana',1506.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(38,28,1,86.00,8.60,'[]',35,'Foster Farms Takeout Crispy Classic',639.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(39,29,1,114.00,11.40,'[]',74,'Simply Lemonade with Raspberry Juice',694.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(40,30,1,110.00,11.00,'[]',88,'Signature Wood-Fired Mushroom and Caramelized',626.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(41,31,2,116.00,11.60,'[]',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',1416.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(42,31,3,113.00,11.30,'[]',85,'Colorful Banana',2259.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(43,32,2,111.00,11.10,'[]',77,'Chen Watermelon',1274.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(44,33,1,59.00,5.90,'[]',41,'Chobani Complete Vanilla Greek',860.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(45,34,1,392.00,39.20,'[]',50,'Haagen-Dazs Caramel Cone Ice Cream',557.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(46,35,3,128.00,12.80,'[]',83,'Organic Cage-Free Grade A Large Brown Eggs',1659.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(47,36,3,427.00,42.70,'[]',30,'All Natural Italian-Style Chicken Meatballs',1836.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(48,37,1,351.00,35.10,'[]',33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',678.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(49,37,2,111.00,11.10,'[]',79,'Chen Watermelon',1274.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(50,38,3,129.00,12.90,'[]',61,'Oroweat Country Buttermilk Bread',2001.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(51,39,3,86.00,8.60,'[]',36,'Foster Farms Takeout Crispy Classic',1917.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(52,40,3,125.00,12.50,'[]',53,'Nestle Original Coffee-Mate Coffee Creamer',2376.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(53,41,3,113.00,11.30,'[]',85,'Colorful Banana',2259.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(54,41,1,110.00,11.00,'[]',87,'Signature Wood-Fired Mushroom and Caramelized',626.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(55,42,2,351.00,35.10,'[]',34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1356.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(56,43,2,124.00,12.40,'[]',46,'Encore Seafoods Stuffed Alaskan',1752.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(57,43,2,392.00,39.20,'[]',50,'Haagen-Dazs Caramel Cone Ice Cream',1114.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(58,44,1,128.00,12.80,'[]',80,'Organic Cage-Free Grade A Large Brown Eggs',553.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(59,45,1,59.00,5.90,'[]',41,'Chobani Complete Vanilla Greek',860.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(60,46,2,125.00,12.50,'[]',54,'Nestle Original Coffee-Mate Coffee Creamer',1584.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(61,47,3,237.00,23.70,'[]',26,'Seeds of Change Organic Quinoe',2583.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(62,48,2,392.00,39.20,'[]',49,'Haagen-Dazs Caramel Cone Ice Cream',1114.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(63,49,2,125.00,12.50,'[]',53,'Nestle Original Coffee-Mate Coffee Creamer',1584.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(64,50,2,119.00,11.90,'[]',64,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1006.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(65,51,3,86.00,8.60,'[]',37,'Foster Farms Takeout Crispy Classic',1917.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(66,52,3,45.00,4.50,'[]',39,'Blue Diamond Almonds Lightly',1572.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(67,53,1,130.00,13.00,'[]',43,'Canada Dry Ginger Ale – 2 L Bottle',783.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(68,53,3,119.00,11.90,'[]',65,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1509.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,6,'1','default','completed',657.10,25.10,0.00,NULL,NULL,0.00,632.00,1,NULL,1,'Rd4SaSuNdJ8mVrGifCfB32uF81dqX',1,'2022-02-18 02:44:18','2022-02-28 02:44:18',2),(2,6,'1','default','completed',529.90,24.90,0.00,NULL,NULL,0.00,505.00,1,NULL,1,'pVYJ7LzMam0uEA64Gwb4EcnF7X440',2,'2022-02-23 02:44:18','2022-02-28 02:44:18',3),(3,6,'1','default','completed',760.40,36.40,0.00,NULL,NULL,0.00,724.00,1,NULL,1,'9IAH2PBcWsHNYktfzF8jkyxU98MKV',3,'2022-02-23 08:44:18','2022-02-28 02:44:18',2),(4,6,'1','default','pending',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'43jCmR3BofZSmZW8uHyizYFOmhyC7',4,'2022-02-17 00:44:18','2022-02-28 02:44:18',4),(5,4,'1','default','completed',491.40,21.40,0.00,NULL,NULL,0.00,470.00,1,NULL,1,'Yv9vggssyGiF0Cpmx8igmigoPP9MT',5,'2022-02-17 14:44:18','2022-02-28 02:44:18',3),(6,4,'1','default','completed',384.40,12.40,0.00,NULL,NULL,0.00,372.00,1,NULL,1,'NmuPZPgbjvI14yv64B3SQ26pL8rTp',6,'2022-02-17 14:44:18','2022-02-28 02:44:18',1),(7,4,'1','default','completed',233.10,11.10,0.00,NULL,NULL,0.00,222.00,1,NULL,1,'w0Ruah82XjOuwvnEQeQdy8nwoHCMd',7,'2022-02-25 02:44:18','2022-02-28 02:44:18',4),(8,4,'1','default','completed',270.60,24.60,0.00,NULL,NULL,0.00,246.00,1,NULL,1,'NKiDTbVobMA29gonnnBOjKLUnnue8',8,'2022-02-18 04:44:18','2022-02-28 02:44:18',2),(9,4,'1','default','completed',260.40,12.40,0.00,NULL,NULL,0.00,248.00,1,NULL,1,'mqGPgbOd8JUwO1CcaInmTQ2Mz2qZA',9,'2022-02-23 20:44:18','2022-02-28 02:44:18',1),(10,4,'1','default','completed',125.40,11.40,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'hHn9w4qLnU9Wr30nRSyVow3rUJZqJ',10,'2022-02-19 14:44:18','2022-02-28 02:44:18',4),(11,5,'1','default','pending',94.50,4.50,0.00,NULL,NULL,0.00,90.00,1,NULL,1,'FXtaDyDCwnew22rpvOtTMPTq6fZkx',11,'2022-02-22 18:44:18','2022-02-28 02:44:18',1),(12,5,'1','default','pending',615.90,23.90,0.00,NULL,NULL,0.00,592.00,1,NULL,1,'tc0izGpmBdA4bVAEA5BnFk9OD89aK',12,'2022-02-20 02:44:18','2022-02-28 02:44:18',4),(13,5,'1','default','completed',469.70,42.70,0.00,NULL,NULL,0.00,427.00,1,NULL,1,'5CKeRL7OUlOYzKQwaBC6eFaWHH8eS',13,'2022-02-25 14:44:18','2022-02-28 02:44:18',1),(14,5,'1','default','completed',182.90,5.90,0.00,NULL,NULL,0.00,177.00,1,NULL,1,'bxl3bKwfyjR2PiWax9zcLPT920zdw',14,'2022-02-21 20:44:18','2022-02-28 02:44:18',2),(15,5,'1','default','completed',529.90,24.90,0.00,NULL,NULL,0.00,505.00,1,NULL,1,'UptHTsIiZuV6uM4CmGTXPllPzER0l',15,'2022-02-16 20:44:18','2022-02-28 02:44:18',3),(16,5,'1','default','completed',260.70,23.70,0.00,NULL,NULL,0.00,237.00,1,NULL,1,'NaiMyC97YzvlUFtKHrY5KqxYTejFq',16,'2022-02-26 22:44:18','2022-02-28 02:44:18',3),(17,5,'1','default','pending',122.10,11.10,0.00,NULL,NULL,0.00,111.00,1,NULL,1,'wyAKuzS0bTtSuChkj68M28bu496lC',17,'2022-02-21 02:44:18','2022-02-28 02:44:18',4),(18,5,'1','default','pending',260.40,12.40,0.00,NULL,NULL,0.00,248.00,1,NULL,1,'AwQ5JwnLdjMgmN0n2jtDY3JFF3qHS',18,'2022-02-27 00:44:18','2022-02-28 02:44:18',1),(19,5,'1','default','completed',249.90,11.90,0.00,NULL,NULL,0.00,238.00,1,NULL,1,'HtuT3x20qnvSX8ctjMGwaR7MEvhSk',19,'2022-02-21 14:44:18','2022-02-28 02:44:18',2),(20,9,'1','default','pending',189.00,9.00,0.00,NULL,NULL,0.00,180.00,1,NULL,1,'F0NtFgwuSYiBB1hfTSR7Gd90jBMLM',20,'2022-02-26 02:44:18','2022-02-28 02:44:18',1),(21,9,'1','default','pending',378.20,12.20,0.00,NULL,NULL,0.00,366.00,1,NULL,1,'Kr5H67Ir9NDNqKHHiMpezCvKIxoE9',21,'2022-02-22 02:44:18','2022-02-28 02:44:18',5),(22,9,'1','default','pending',125.40,11.40,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'tXAuc2lYFOeUe0NmnrDiYjaH8cQ6z',22,'2022-02-18 02:44:18','2022-02-28 02:44:18',4),(23,4,'1','default','pending',1469.40,47.40,0.00,NULL,NULL,0.00,1422.00,1,NULL,1,'YriKsMoSr6V7uDwVuHK8XkKxRmDWe',23,'2022-02-22 14:44:18','2022-02-28 02:44:18',3),(24,4,'1','default','pending',1088.10,35.10,0.00,NULL,NULL,0.00,1053.00,1,NULL,1,'VF9Gi4IaPA2Yn7bypW3qGR1sfTp7m',24,'2022-02-23 12:44:18','2022-02-28 02:44:18',4),(25,4,'1','default','completed',368.90,11.90,0.00,NULL,NULL,0.00,357.00,1,NULL,1,'XWUPPsWkSXJTcBrgEZMSY5yvDwudq',25,'2022-02-18 22:44:18','2022-02-28 02:44:18',2),(26,6,'1','default','pending',353.40,11.40,0.00,NULL,NULL,0.00,342.00,1,NULL,1,'61I1h6b2kmEip32FMkd3Q7EEPFfLT',26,'2022-02-20 14:44:18','2022-02-28 02:44:18',4),(27,6,'1','default','completed',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,'8vSRZbyqnPtI9e3MH4jYl6B8AJqBs',27,'2022-02-27 06:44:18','2022-02-28 02:44:18',2),(28,6,'1','default','completed',94.60,8.60,0.00,NULL,NULL,0.00,86.00,1,NULL,1,'F6ggtEBjUBXfyt8XHJN7GXD05TV9P',28,'2022-02-24 08:44:18','2022-02-28 02:44:18',3),(29,6,'1','default','pending',125.40,11.40,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'vszrXZiEmcWwG24eaAlFp7KBxguiw',29,'2022-02-21 08:44:18','2022-02-28 02:44:18',4),(30,6,'1','default','pending',121.00,11.00,0.00,NULL,NULL,0.00,110.00,1,NULL,1,'rWItVuI7SF18N4oBiCC3dBwIsjfc0',30,'2022-02-23 14:44:18','2022-02-28 02:44:18',2),(31,1,'1','default','pending',593.90,22.90,0.00,NULL,NULL,0.00,571.00,1,NULL,1,'V50FfeKa2mfPtmCHC0YnuLGxvPlPy',31,'2022-02-23 10:44:18','2022-02-28 02:44:18',2),(32,1,'1','default','completed',233.10,11.10,0.00,NULL,NULL,0.00,222.00,1,NULL,1,'3I8XNDGT50zp68Q3nmUBUk7LB85nY',32,'2022-02-27 10:44:18','2022-02-28 02:44:18',4),(33,9,'1','default','completed',64.90,5.90,0.00,NULL,NULL,0.00,59.00,1,NULL,1,'erVxNK2iokQ8RXIthZvYkxeJbKn3o',33,'2022-02-27 12:44:18','2022-02-28 02:44:18',2),(34,9,'1','default','pending',431.20,39.20,0.00,NULL,NULL,0.00,392.00,1,NULL,1,'rpdlks6FxjxuUL6xYCYQhKtrcEDPy',34,'2022-02-26 08:44:18','2022-02-28 02:44:18',1),(35,9,'1','default','completed',396.80,12.80,0.00,NULL,NULL,0.00,384.00,1,NULL,1,'pKYG7r7ubnjihLs8paStaGZG4Bv4C',35,'2022-02-25 18:44:18','2022-02-28 02:44:18',3),(36,1,'1','default','completed',1323.70,42.70,0.00,NULL,NULL,0.00,1281.00,1,NULL,1,'5fCVIZt7OHkmNZAQulSFFMZ3vbknO',36,'2022-02-26 02:44:18','2022-02-28 02:44:18',1),(37,1,'1','default','pending',619.20,46.20,0.00,NULL,NULL,0.00,573.00,1,NULL,1,'sTucbl1mP7P2MJ7OPlQTnE9SmdusZ',37,'2022-02-26 02:44:18','2022-02-28 02:44:18',4),(38,1,'1','default','pending',399.90,12.90,0.00,NULL,NULL,0.00,387.00,1,NULL,1,'wQfj3u6ob9uBDTJ58SbScVToAph5A',38,'2022-02-27 02:44:18','2022-02-28 02:44:18',5),(39,4,'1','default','completed',266.60,8.60,0.00,NULL,NULL,0.00,258.00,1,NULL,1,'UI5shVV6zonLrFwzmzzVtOgdZ4aCk',39,'2022-02-27 16:44:18','2022-02-28 02:44:18',3),(40,4,'1','default','pending',387.50,12.50,0.00,NULL,NULL,0.00,375.00,1,NULL,1,'Nrew4811OT29UZYh92IW1oDeY4ZhT',40,'2022-02-27 16:44:18','2022-02-28 02:44:18',4),(41,4,'1','default','completed',471.30,22.30,0.00,NULL,NULL,0.00,449.00,1,NULL,1,'mPRdQXEosEuyJ5KB79UOjJbZNZAHJ',41,'2022-02-26 10:44:18','2022-02-28 02:44:18',2),(42,1,'1','default','pending',737.10,35.10,0.00,NULL,NULL,0.00,702.00,1,NULL,1,'0rLBZ0aA2DeGbcZlnaJ1q6n7YfX4r',42,'2022-02-25 10:44:18','2022-02-28 02:44:18',4),(43,1,'1','default','completed',1083.60,51.60,0.00,NULL,NULL,0.00,1032.00,1,NULL,1,'68mowyi6H28wRZXPMFofOiA31RlIf',43,'2022-02-27 10:44:18','2022-02-28 02:44:18',1),(44,1,'1','default','pending',140.80,12.80,0.00,NULL,NULL,0.00,128.00,1,NULL,1,'val636cmxE4tesBL1vuVhFgi8Ew05',44,'2022-02-26 10:44:18','2022-02-28 02:44:18',3),(45,1,'1','default','completed',64.90,5.90,0.00,NULL,NULL,0.00,59.00,1,NULL,1,'67MdybtAXWTekhztU4EczycZjzwiU',45,'2022-02-27 08:44:18','2022-02-28 02:44:18',2),(46,1,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'fl9ydrhqwu88BwJNVDFn6dxgB0sT1',46,'2022-02-27 14:44:18','2022-02-28 02:44:18',4),(47,1,'1','default','pending',734.70,23.70,0.00,NULL,NULL,0.00,711.00,1,NULL,1,'787SPiAlAWMR8rJWPHyDr44KrTl4W',47,'2022-02-26 14:44:18','2022-02-28 02:44:18',3),(48,1,'1','default','completed',823.20,39.20,0.00,NULL,NULL,0.00,784.00,1,NULL,1,'R59LB8K6oEyjzKHvmRCt4CSvxc5xL',48,'2022-02-27 06:44:18','2022-02-28 02:44:18',1),(49,1,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'DrrE7qT1ccHpnAgymzdjCQMs5vK3Z',49,'2022-02-26 22:44:18','2022-02-28 02:44:18',4),(50,1,'1','default','completed',249.90,11.90,0.00,NULL,NULL,0.00,238.00,1,NULL,1,'SKyUTId2o6pVpSvu8GO9SEaU1rFWq',50,'2022-02-27 10:44:18','2022-02-28 02:44:18',2),(51,6,'1','default','pending',266.60,8.60,0.00,NULL,NULL,0.00,258.00,1,NULL,1,'YYn0y7C9OlDWNVzNkJpW5VBW2Wz5J',51,'2022-02-27 18:44:18','2022-02-28 02:44:18',3),(52,6,'1','default','pending',139.50,4.50,0.00,NULL,NULL,0.00,135.00,1,NULL,1,'iHtlB2ifmlzRqSF3eUcRHuc8IO4kB',52,'2022-02-27 06:44:18','2022-02-28 02:44:18',1),(53,6,'1','default','pending',511.90,24.90,0.00,NULL,NULL,0.00,487.00,1,NULL,1,'Tc56EX4vqN9hwOBWND8mN7gfxlQna',53,'2022-02-28 00:44:18','2022-02-28 02:44:18',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2022-02-28 02:44:17','2022-02-28 02:44:17',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2022-02-28 02:44:17','2022-02-28 02:44:17',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2022-02-28 02:44:17','2022-02-28 02:44:17'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2022-02-28 02:44:17','2022-02-28 02:44:17');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2022-01-04 21:14:01','2022-01-04 21:14:01'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2022-01-04 21:14:01','2022-01-04 21:14:01');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1,1),(2,4,2),(3,12,3),(4,5,4),(5,14,5),(6,11,6),(7,7,7),(8,10,8),(9,14,9),(10,2,10),(11,1,11),(12,14,12),(13,9,13),(14,10,14),(15,3,15),(16,9,16),(17,10,17),(18,10,18),(19,10,19),(20,8,20),(21,13,21),(22,2,22),(23,3,23),(24,6,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1,1),(2,3,2),(3,2,3),(4,3,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,10),(11,3,11),(12,1,12),(13,3,13),(14,1,14),(15,2,15),(16,2,16),(17,1,17),(18,1,18),(19,3,19),(20,2,20),(21,1,21),(22,2,22),(23,1,23),(24,2,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,12),(2,1,22),(3,1,8),(4,1,6),(5,2,10),(6,2,23),(7,2,13),(8,2,20),(9,3,18),(10,3,15),(11,3,1),(12,4,23),(13,4,6),(14,4,15),(15,5,24),(16,5,22),(17,5,2),(18,5,7),(19,6,1),(20,6,22),(21,6,2),(22,6,7),(23,7,18),(24,7,21),(25,7,8),(26,7,16),(27,8,4),(28,8,18),(29,8,7),(30,8,9),(31,9,24),(32,9,16),(33,9,20),(34,9,10),(35,10,5),(36,10,11),(37,10,20),(38,10,7),(39,11,13),(40,11,12),(41,11,21),(42,11,15),(43,12,21),(44,12,23),(45,12,9),(46,12,16),(47,13,4),(48,13,5),(49,13,18),(50,13,8),(51,14,7),(52,14,18),(53,14,11),(54,15,10),(55,15,16),(56,15,2),(57,16,14),(58,16,24),(59,16,3),(60,17,9),(61,17,11),(62,17,19),(63,17,22),(64,18,24),(65,18,14),(66,18,8),(67,18,13),(68,19,17),(69,19,22),(70,19,24),(71,19,13),(72,20,23),(73,20,4),(74,20,3),(75,21,10),(76,21,9),(77,21,7),(78,22,10),(79,22,23),(80,22,24),(81,22,8),(82,23,21),(83,23,2),(84,23,1),(85,23,8),(86,24,5),(87,24,3),(88,24,10),(89,24,12);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,14),(2,21),(3,7);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(2,'New','#00c9a7','published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(3,'Sale','#fe9931','published','2022-01-04 21:14:01','2022-01-04 21:14:01');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,1),(2,6),(3,1),(3,2),(3,3),(4,2),(4,3),(4,4),(5,3),(5,4),(6,3),(6,4),(7,1),(7,4),(7,5),(8,3),(8,5),(9,1),(9,5),(10,3),(10,4),(11,6),(12,1),(12,5),(13,1),(13,2),(13,5),(14,1),(14,3),(14,4),(15,3),(15,4),(15,5),(16,4),(16,6),(17,1),(17,6),(18,4),(19,1),(19,4),(19,5),(20,1),(20,4),(20,5),(21,1),(21,3),(22,4),(22,6),(23,1),(23,2),(24,2),(24,5),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(2,'Bags',NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(3,'Shoes',NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(4,'Clothes',NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01'),(5,'Hand bag',NULL,'published','2022-01-04 21:14:01','2022-01-04 21:14:01');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(2,9,1),(3,5,2),(4,9,2),(5,3,3),(6,10,3),(7,4,4),(8,9,4),(9,5,5),(10,6,5),(11,1,6),(12,9,6),(13,5,7),(14,6,7),(15,2,8),(16,8,8),(17,4,9),(18,10,9),(19,3,10),(20,7,10),(21,3,11),(22,9,11),(23,2,12),(24,9,12),(25,3,13),(26,9,13),(27,1,14),(28,7,14),(29,1,15),(30,6,15),(31,4,16),(32,10,16),(33,4,17),(34,10,17),(35,1,18),(36,7,18),(37,1,19),(38,7,19),(39,3,20),(40,8,20),(41,5,21),(42,6,21),(43,4,22),(44,7,22),(45,2,23),(46,9,23),(47,5,24),(48,10,24),(49,3,25),(50,6,25),(51,1,26),(52,6,26),(53,4,27),(54,10,27),(55,2,28),(56,9,28),(57,5,29),(58,8,29),(59,4,30),(60,10,30),(61,1,31),(62,9,31),(63,3,32),(64,10,32),(65,1,33),(66,10,33),(67,3,34),(68,10,34),(69,5,35),(70,6,35),(71,4,36),(72,6,36),(73,1,37),(74,8,37),(75,5,38),(76,9,38),(77,5,39),(78,10,39),(79,3,40),(80,8,40),(81,1,41),(82,9,41),(83,5,42),(84,6,42),(85,3,43),(86,8,43),(87,4,44),(88,8,44),(89,1,45),(90,6,45),(91,1,46),(92,8,46),(93,4,47),(94,7,47),(95,2,48),(96,6,48),(97,4,49),(98,10,49),(99,2,50),(100,7,50),(101,3,51),(102,7,51),(103,3,52),(104,10,52),(105,4,53),(106,7,53),(107,1,54),(108,7,54),(109,1,55),(110,8,55),(111,4,56),(112,7,56),(113,3,57),(114,9,57),(115,4,58),(116,6,58),(117,1,59),(118,7,59),(119,3,60),(120,7,60),(121,4,61),(122,9,61),(123,3,62),(124,6,62),(125,4,63),(126,7,63),(127,3,64),(128,6,64),(129,2,65),(130,6,65);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `configurable_product_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,1,0),(5,29,1,0),(6,30,2,1),(7,31,2,0),(8,32,3,1),(9,33,3,0),(10,34,3,0),(11,35,4,1),(12,36,4,0),(13,37,4,0),(14,38,5,1),(15,39,5,0),(16,40,5,0),(17,41,6,1),(18,42,7,1),(19,43,7,0),(20,44,8,1),(21,45,8,0),(22,46,8,0),(23,47,9,1),(24,48,9,0),(25,49,10,1),(26,50,10,0),(27,51,10,0),(28,52,11,1),(29,53,11,0),(30,54,11,0),(31,55,12,1),(32,56,12,0),(33,57,12,0),(34,58,13,1),(35,59,14,1),(36,60,14,0),(37,61,15,1),(38,62,16,1),(39,63,16,0),(40,64,17,1),(41,65,17,0),(42,66,17,0),(43,67,18,1),(44,68,18,0),(45,69,18,0),(46,70,19,1),(47,71,19,0),(48,72,19,0),(49,73,19,0),(50,74,19,0),(51,75,20,1),(52,76,21,1),(53,77,21,0),(54,78,21,0),(55,79,21,0),(56,80,22,1),(57,81,22,0),(58,82,22,0),(59,83,22,0),(60,84,23,1),(61,85,23,0),(62,86,23,0),(63,87,24,1),(64,88,24,0),(65,89,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute`
--

DROP TABLE IF EXISTS `ec_product_with_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute`
--

LOCK TABLES `ec_product_with_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute` VALUES (1,3,1),(2,10,1),(3,1,2),(4,6,2),(5,1,3),(6,10,3),(7,5,4),(8,7,4),(9,5,5),(10,8,5),(11,4,6),(12,9,6),(13,1,7),(14,6,7),(15,2,8),(16,8,8),(17,3,9),(18,9,9),(19,1,10),(20,8,10),(21,1,11),(22,10,11),(23,4,12),(24,9,12),(25,5,13),(26,10,13),(27,4,14),(28,10,14),(29,3,15),(30,8,15),(31,3,16),(32,9,16),(33,2,17),(34,10,17),(35,5,18),(36,8,18),(37,2,19),(38,6,19),(39,1,20),(40,9,20),(41,4,21),(42,10,21),(43,5,22),(44,8,22),(45,1,23),(46,7,23),(47,3,24),(48,6,24);
/*!40000 ALTER TABLE `ec_product_with_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_by_id` int(11) DEFAULT 0,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-125-A0',0,16,0,1,1,3,0,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,47861,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-129-A0',0,13,0,1,1,5,0,0,427,NULL,NULL,NULL,19.00,10.00,13.00,612.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,66111,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-107-A0',0,14,0,1,1,6,0,0,351,NULL,NULL,NULL,13.00,12.00,20.00,678.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,87004,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-161-A0',0,13,0,1,1,3,0,0,86,62.78,NULL,NULL,17.00,14.00,14.00,639.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,18541,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-101-A0',0,19,0,1,1,1,0,0,45,NULL,NULL,NULL,13.00,10.00,14.00,524.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,60309,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-116-A0',0,10,0,1,1,4,0,0,59,NULL,NULL,NULL,14.00,20.00,14.00,860.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,50307,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-163-A0',0,14,0,1,1,7,0,0,130,NULL,NULL,NULL,10.00,10.00,16.00,783.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,155057,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-113-A0',0,10,0,1,1,5,0,0,124,105.4,NULL,NULL,10.00,11.00,12.00,876.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,99492,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-191-A0',0,11,0,1,1,6,0,0,121,NULL,NULL,NULL,11.00,11.00,12.00,703.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,174461,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-100-A0',0,15,0,1,1,3,0,0,392,NULL,NULL,NULL,12.00,17.00,14.00,557.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,135480,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-122-A0',0,20,0,1,1,5,0,0,125,NULL,NULL,NULL,20.00,14.00,15.00,792.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,105583,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-111-A0',0,14,0,1,1,4,0,0,124,102.92,NULL,NULL,18.00,13.00,20.00,586.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,26013,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-197-A0',0,18,0,1,1,1,0,0,119,NULL,NULL,NULL,20.00,20.00,13.00,520.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,144986,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-183-A0',0,12,0,1,1,3,0,0,115,NULL,NULL,NULL,13.00,14.00,13.00,543.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,137701,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-133-A0',0,12,0,1,1,3,0,0,129,NULL,NULL,NULL,19.00,12.00,16.00,667.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,31394,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-197-A0',0,14,0,1,1,1,0,0,116,102.08,NULL,NULL,13.00,14.00,12.00,708.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,99236,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-182-A0',0,10,0,1,1,4,0,0,119,NULL,NULL,NULL,16.00,12.00,12.00,503.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,145184,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-166-A0',0,12,0,1,1,4,0,0,122,NULL,NULL,NULL,15.00,11.00,13.00,588.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,8579,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-133-A0',0,14,0,1,1,5,0,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,191789,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-108-A0',0,15,0,1,1,4,0,0,121,90.75,NULL,NULL,20.00,12.00,14.00,573.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,108045,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-179-A0',0,20,0,1,1,5,0,0,111,NULL,NULL,NULL,17.00,13.00,11.00,637.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,184281,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-100-A0',0,19,0,1,1,5,0,0,128,NULL,NULL,NULL,20.00,12.00,20.00,553.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,19858,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-200-A0',0,14,0,1,1,2,0,0,113,NULL,NULL,NULL,11.00,13.00,15.00,753.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,92725,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-125-A0',0,17,0,1,1,5,0,0,110,89.1,NULL,NULL,17.00,20.00,18.00,626.00,'2022-01-04 21:14:17','2022-01-04 21:14:57',1,90060,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-125-A0',0,16,0,1,0,3,1,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-125-A0-A1',0,16,0,1,0,3,1,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-125-A0-A2',0,16,0,1,0,3,1,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-125-A0-A3',0,16,0,1,0,3,1,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-125-A0-A4',0,16,0,1,0,3,1,0,237,NULL,NULL,NULL,16.00,20.00,14.00,861.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-129-A0',0,13,0,1,0,5,1,0,427,NULL,NULL,NULL,19.00,10.00,13.00,612.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-129-A0-A1',0,13,0,1,0,5,1,0,427,NULL,NULL,NULL,19.00,10.00,13.00,612.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-107-A0',0,14,0,1,0,6,1,0,351,NULL,NULL,NULL,13.00,12.00,20.00,678.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-107-A0-A1',0,14,0,1,0,6,1,0,351,NULL,NULL,NULL,13.00,12.00,20.00,678.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-107-A0-A2',0,14,0,1,0,6,1,0,351,NULL,NULL,NULL,13.00,12.00,20.00,678.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-161-A0',0,13,0,1,0,3,1,0,86,62.78,NULL,NULL,17.00,14.00,14.00,639.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-161-A0-A1',0,13,0,1,0,3,1,0,86,64.5,NULL,NULL,17.00,14.00,14.00,639.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-161-A0-A2',0,13,0,1,0,3,1,0,86,69.66,NULL,NULL,17.00,14.00,14.00,639.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-101-A0',0,19,0,1,0,1,1,0,45,NULL,NULL,NULL,13.00,10.00,14.00,524.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-101-A0-A1',0,19,0,1,0,1,1,0,45,NULL,NULL,NULL,13.00,10.00,14.00,524.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-101-A0-A2',0,19,0,1,0,1,1,0,45,NULL,NULL,NULL,13.00,10.00,14.00,524.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-116-A0',0,10,0,1,0,4,1,0,59,NULL,NULL,NULL,14.00,20.00,14.00,860.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-163-A0',0,14,0,1,0,7,1,0,130,NULL,NULL,NULL,10.00,10.00,16.00,783.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-163-A0-A1',0,14,0,1,0,7,1,0,130,NULL,NULL,NULL,10.00,10.00,16.00,783.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-113-A0',0,10,0,1,0,5,1,0,124,105.4,NULL,NULL,10.00,11.00,12.00,876.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-113-A0-A1',0,10,0,1,0,5,1,0,124,102.92,NULL,NULL,10.00,11.00,12.00,876.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-113-A0-A2',0,10,0,1,0,5,1,0,124,97.96,NULL,NULL,10.00,11.00,12.00,876.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-191-A0',0,11,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,11.00,12.00,703.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-191-A0-A1',0,11,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,11.00,12.00,703.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-100-A0',0,15,0,1,0,3,1,0,392,NULL,NULL,NULL,12.00,17.00,14.00,557.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-100-A0-A1',0,15,0,1,0,3,1,0,392,NULL,NULL,NULL,12.00,17.00,14.00,557.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-100-A0-A2',0,15,0,1,0,3,1,0,392,NULL,NULL,NULL,12.00,17.00,14.00,557.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-122-A0',0,20,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,14.00,15.00,792.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-122-A0-A1',0,20,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,14.00,15.00,792.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-122-A0-A2',0,20,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,14.00,15.00,792.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-111-A0',0,14,0,1,0,4,1,0,124,102.92,NULL,NULL,18.00,13.00,20.00,586.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-111-A0-A1',0,14,0,1,0,4,1,0,124,106.64,NULL,NULL,18.00,13.00,20.00,586.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-111-A0-A2',0,14,0,1,0,4,1,0,124,93,NULL,NULL,18.00,13.00,20.00,586.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-197-A0',0,18,0,1,0,1,1,0,119,NULL,NULL,NULL,20.00,20.00,13.00,520.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-183-A0',0,12,0,1,0,3,1,0,115,NULL,NULL,NULL,13.00,14.00,13.00,543.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-183-A0-A1',0,12,0,1,0,3,1,0,115,NULL,NULL,NULL,13.00,14.00,13.00,543.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-133-A0',0,12,0,1,0,3,1,0,129,NULL,NULL,NULL,19.00,12.00,16.00,667.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-197-A0',0,14,0,1,0,1,1,0,116,102.08,NULL,NULL,13.00,14.00,12.00,708.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-197-A0-A1',0,14,0,1,0,1,1,0,116,104.4,NULL,NULL,13.00,14.00,12.00,708.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-182-A0',0,10,0,1,0,4,1,0,119,NULL,NULL,NULL,16.00,12.00,12.00,503.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-182-A0-A1',0,10,0,1,0,4,1,0,119,NULL,NULL,NULL,16.00,12.00,12.00,503.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-182-A0-A2',0,10,0,1,0,4,1,0,119,NULL,NULL,NULL,16.00,12.00,12.00,503.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-166-A0',0,12,0,1,0,4,1,0,122,NULL,NULL,NULL,15.00,11.00,13.00,588.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-166-A0-A1',0,12,0,1,0,4,1,0,122,NULL,NULL,NULL,15.00,11.00,13.00,588.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-166-A0-A2',0,12,0,1,0,4,1,0,122,NULL,NULL,NULL,15.00,11.00,13.00,588.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-133-A0',0,14,0,1,0,5,1,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-133-A0-A1',0,14,0,1,0,5,1,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-133-A0-A2',0,14,0,1,0,5,1,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-133-A0-A3',0,14,0,1,0,5,1,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-133-A0-A4',0,14,0,1,0,5,1,0,114,NULL,NULL,NULL,20.00,17.00,17.00,694.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-108-A0',0,15,0,1,0,4,1,0,121,90.75,NULL,NULL,20.00,12.00,14.00,573.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-179-A0',0,20,0,1,0,5,1,0,111,NULL,NULL,NULL,17.00,13.00,11.00,637.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-179-A0-A1',0,20,0,1,0,5,1,0,111,NULL,NULL,NULL,17.00,13.00,11.00,637.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-179-A0-A2',0,20,0,1,0,5,1,0,111,NULL,NULL,NULL,17.00,13.00,11.00,637.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-179-A0-A3',0,20,0,1,0,5,1,0,111,NULL,NULL,NULL,17.00,13.00,11.00,637.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-100-A0',0,19,0,1,0,5,1,0,128,NULL,NULL,NULL,20.00,12.00,20.00,553.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-100-A0-A1',0,19,0,1,0,5,1,0,128,NULL,NULL,NULL,20.00,12.00,20.00,553.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(82,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-100-A0-A2',0,19,0,1,0,5,1,0,128,NULL,NULL,NULL,20.00,12.00,20.00,553.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(83,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-100-A0-A3',0,19,0,1,0,5,1,0,128,NULL,NULL,NULL,20.00,12.00,20.00,553.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(84,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-200-A0',0,14,0,1,0,2,1,0,113,NULL,NULL,NULL,11.00,13.00,15.00,753.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(85,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-200-A0-A1',0,14,0,1,0,2,1,0,113,NULL,NULL,NULL,11.00,13.00,15.00,753.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(86,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-200-A0-A2',0,14,0,1,0,2,1,0,113,NULL,NULL,NULL,11.00,13.00,15.00,753.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(87,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-125-A0',0,17,0,1,0,5,1,0,110,89.1,NULL,NULL,17.00,20.00,18.00,626.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(88,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-125-A0-A1',0,17,0,1,0,5,1,0,110,83.6,NULL,NULL,17.00,20.00,18.00,626.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(89,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-125-A0-A2',0,17,0,1,0,5,1,0,110,86.9,NULL,NULL,17.00,20.00,18.00,626.00,'2022-01-04 21:14:17','2022-01-04 21:14:17',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',28,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',29,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',30,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',31,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',32,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',33,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',34,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',35,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',36,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',37,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',38,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',39,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',40,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',41,'Chobani vani Hy Lạp',NULL,NULL),('vi',42,'Gừng khô Canada',NULL,NULL),('vi',43,'Gừng khô Canada',NULL,NULL),('vi',44,'Hải sản Alaska',NULL,NULL),('vi',45,'Hải sản Alaska',NULL,NULL),('vi',46,'Hải sản Alaska',NULL,NULL),('vi',47,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',48,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',49,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',50,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',51,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',52,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',53,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',54,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',55,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',56,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',57,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',58,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',59,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',60,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',61,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',62,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',63,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',64,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',65,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',66,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',67,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',68,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',69,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',70,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',71,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',72,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',73,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',74,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',75,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',76,'Dưa hấu chen',NULL,NULL),('vi',77,'Dưa hấu chen',NULL,NULL),('vi',78,'Dưa hấu chen',NULL,NULL),('vi',79,'Dưa hấu chen',NULL,NULL),('vi',80,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',81,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',82,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',83,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',84,'Chuối đầy màu sắc',NULL,NULL),('vi',85,'Chuối đầy màu sắc',NULL,NULL),('vi',86,'Chuối đầy màu sắc',NULL,NULL),('vi',87,'Nấm đặc trưng và caramel',NULL,NULL),('vi',88,'Nấm đặc trưng và caramel',NULL,NULL),('vi',89,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,1,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(2,4,11,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\"]'),(3,9,8,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(4,6,17,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(5,3,15,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(6,5,18,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(7,4,18,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(8,4,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(9,10,5,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(10,2,17,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(11,7,15,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(12,1,10,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(13,6,9,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(14,1,20,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\"]'),(15,7,13,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(16,10,4,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(17,1,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(18,3,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\"]'),(19,10,20,3.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(20,8,9,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\"]'),(21,3,10,5.00,'Best ecommerce CMS online store!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(22,5,24,3.00,'Best ecommerce CMS online store!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(23,6,15,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(24,1,15,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(25,6,9,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(26,2,18,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(27,9,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(28,3,17,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(29,6,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/10.jpg\"]'),(30,3,12,5.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(31,3,23,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(32,10,19,2.00,'Good app, good backup service and support. Good documentation.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(33,10,22,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(34,7,13,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(35,7,11,3.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(36,2,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\"]'),(37,10,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(38,2,23,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(39,2,13,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(40,10,13,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),(41,2,1,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(42,1,6,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(43,5,16,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(44,9,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(45,8,17,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(46,1,6,3.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(47,1,14,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(48,7,8,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(49,1,18,1.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(50,8,19,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(51,6,12,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(52,1,4,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(53,8,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(54,9,11,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(55,7,18,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(56,9,1,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/18.jpg\"}'),(57,4,13,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(58,10,9,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/17.jpg\"}'),(59,6,20,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(60,9,17,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(61,7,1,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(62,4,5,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\"]'),(63,3,19,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(64,10,10,5.00,'Good app, good backup service and support. Good documentation.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(65,6,4,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(66,1,20,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(67,10,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/24.jpg\"]'),(68,8,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(69,5,9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(70,8,3,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(71,4,18,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\"]'),(72,10,7,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(73,7,14,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(74,7,21,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(75,2,23,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(76,2,7,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(77,5,22,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(78,3,24,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(79,4,19,4.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(80,8,18,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(81,8,1,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(82,4,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(83,9,16,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\"]'),(84,7,15,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(85,6,23,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(86,10,13,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(87,3,4,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(88,8,1,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\"]'),(89,7,18,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(90,7,22,3.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(91,6,11,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(92,1,9,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\"]'),(93,5,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(94,3,3,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(95,6,21,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(96,6,2,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(97,5,11,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(98,6,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(99,10,2,2.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(100,6,10,5.00,'Clean & perfect source code','published','2022-01-04 21:14:21','2022-01-04 21:14:21','[\"products\\/2.jpg\",\"products\\/7.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2022-02-26 10:44:18','2022-02-28 02:44:18'),(3,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,1,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-02-23 02:44:18','2022-02-23 02:44:18'),(5,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2022-02-26 10:44:18','2022-02-28 02:44:18'),(6,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,2,2,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(7,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,2,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(8,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-02-23 08:44:18','2022-02-23 08:44:18'),(9,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2022-02-26 12:44:18','2022-02-28 02:44:18'),(10,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,3,3,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(11,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-02-17 00:44:18','2022-02-17 00:44:18'),(12,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2022-02-26 12:44:18','2022-02-28 02:44:18'),(13,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(14,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2022-02-26 14:44:18','2022-02-28 02:44:18'),(15,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,5,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(16,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-02-17 14:44:18','2022-02-17 14:44:18'),(17,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2022-02-26 14:44:18','2022-02-28 02:44:18'),(18,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,6,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(19,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-02-25 02:44:18','2022-02-25 02:44:18'),(20,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2022-02-26 14:44:18','2022-02-28 02:44:18'),(21,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,7,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(22,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-02-18 04:44:18','2022-02-18 04:44:18'),(23,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2022-02-26 16:44:18','2022-02-28 02:44:18'),(24,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,8,8,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(25,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,8,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(26,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-02-23 20:44:18','2022-02-23 20:44:18'),(27,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2022-02-26 16:44:18','2022-02-28 02:44:18'),(28,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,9,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(29,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-02-19 14:44:18','2022-02-19 14:44:18'),(30,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2022-02-26 16:44:18','2022-02-28 02:44:18'),(31,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,10,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(32,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-02-22 18:44:18','2022-02-22 18:44:18'),(33,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2022-02-26 18:44:18','2022-02-28 02:44:18'),(34,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-02-20 02:44:18','2022-02-20 02:44:18'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2022-02-26 18:44:18','2022-02-28 02:44:18'),(36,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-02-25 14:44:18','2022-02-25 14:44:18'),(37,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2022-02-26 20:44:18','2022-02-28 02:44:18'),(38,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(39,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-02-21 20:44:18','2022-02-21 20:44:18'),(40,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2022-02-26 20:44:18','2022-02-28 02:44:18'),(41,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,14,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(42,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-02-16 20:44:18','2022-02-16 20:44:18'),(43,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2022-02-26 20:44:18','2022-02-28 02:44:18'),(44,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,15,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(45,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(46,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2022-02-26 22:44:18','2022-02-28 02:44:18'),(47,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,16,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(48,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-02-21 02:44:18','2022-02-21 02:44:18'),(49,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2022-02-26 22:44:18','2022-02-28 02:44:18'),(50,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-02-27 00:44:18','2022-02-27 00:44:18'),(51,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2022-02-27 00:44:18','2022-02-28 02:44:18'),(52,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-02-21 14:44:18','2022-02-21 14:44:18'),(53,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2022-02-27 00:44:18','2022-02-28 02:44:18'),(54,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,19,19,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(55,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,19,19,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(56,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(57,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2022-02-27 02:44:18','2022-02-28 02:44:18'),(58,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-02-22 02:44:18','2022-02-22 02:44:18'),(59,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,21,21,'2022-02-27 02:44:18','2022-02-28 02:44:18'),(60,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-02-18 02:44:18','2022-02-18 02:44:18'),(61,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,22,22,'2022-02-27 02:44:18','2022-02-28 02:44:18'),(62,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-02-22 14:44:18','2022-02-22 14:44:18'),(63,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,23,23,'2022-02-27 04:44:18','2022-02-28 02:44:18'),(64,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-02-23 12:44:18','2022-02-23 12:44:18'),(65,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,24,24,'2022-02-27 04:44:18','2022-02-28 02:44:18'),(66,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-02-18 22:44:18','2022-02-18 22:44:18'),(67,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,25,25,'2022-02-27 04:44:18','2022-02-28 02:44:18'),(68,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,25,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(69,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-02-20 14:44:18','2022-02-20 14:44:18'),(70,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,26,26,'2022-02-27 06:44:18','2022-02-28 02:44:18'),(71,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(72,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,27,27,'2022-02-27 06:44:18','2022-02-28 02:44:18'),(73,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,27,27,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(74,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-02-24 08:44:18','2022-02-24 08:44:18'),(75,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,28,28,'2022-02-27 08:44:18','2022-02-28 02:44:18'),(76,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,28,28,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(77,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,28,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(78,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-02-21 08:44:18','2022-02-21 08:44:18'),(79,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,29,29,'2022-02-27 08:44:18','2022-02-28 02:44:18'),(80,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-02-23 14:44:18','2022-02-23 14:44:18'),(81,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,30,30,'2022-02-27 08:44:18','2022-02-28 02:44:18'),(82,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-02-23 10:44:18','2022-02-23 10:44:18'),(83,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,31,31,'2022-02-27 10:44:18','2022-02-28 02:44:18'),(84,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(85,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,32,32,'2022-02-27 10:44:18','2022-02-28 02:44:18'),(86,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,32,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(87,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-02-27 12:44:18','2022-02-27 12:44:18'),(88,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,33,33,'2022-02-27 12:44:18','2022-02-28 02:44:18'),(89,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,33,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(90,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-02-26 08:44:18','2022-02-26 08:44:18'),(91,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,34,34,'2022-02-27 12:44:18','2022-02-28 02:44:18'),(92,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-02-25 18:44:18','2022-02-25 18:44:18'),(93,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,35,35,'2022-02-27 12:44:18','2022-02-28 02:44:18'),(94,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,35,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(95,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(96,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,36,36,'2022-02-27 14:44:18','2022-02-28 02:44:18'),(97,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,36,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(98,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-02-26 02:44:18','2022-02-26 02:44:18'),(99,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,37,37,'2022-02-27 14:44:18','2022-02-28 02:44:18'),(100,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-02-27 02:44:18','2022-02-27 02:44:18'),(101,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,38,38,'2022-02-27 14:44:18','2022-02-28 02:44:18'),(102,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(103,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,39,39,'2022-02-27 16:44:18','2022-02-28 02:44:18'),(104,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,39,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(105,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-02-27 16:44:18','2022-02-27 16:44:18'),(106,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,40,40,'2022-02-27 16:44:18','2022-02-28 02:44:18'),(107,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(108,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,41,41,'2022-02-27 16:44:18','2022-02-28 02:44:18'),(109,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,41,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(110,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-02-25 10:44:18','2022-02-25 10:44:18'),(111,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,42,42,'2022-02-27 18:44:18','2022-02-28 02:44:18'),(112,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(113,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,43,43,'2022-02-27 18:44:18','2022-02-28 02:44:18'),(114,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,43,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(115,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-02-26 10:44:18','2022-02-26 10:44:18'),(116,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,44,44,'2022-02-27 18:44:18','2022-02-28 02:44:18'),(117,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2022-02-27 08:44:18','2022-02-27 08:44:18'),(118,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,45,45,'2022-02-27 20:44:18','2022-02-28 02:44:18'),(119,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,45,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(120,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2022-02-27 14:44:18','2022-02-27 14:44:18'),(121,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,46,46,'2022-02-27 20:44:18','2022-02-28 02:44:18'),(122,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,46,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(123,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2022-02-26 14:44:18','2022-02-26 14:44:18'),(124,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,47,47,'2022-02-27 22:44:18','2022-02-28 02:44:18'),(125,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(126,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,48,48,'2022-02-27 22:44:18','2022-02-28 02:44:18'),(127,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,48,48,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(128,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2022-02-26 22:44:18','2022-02-26 22:44:18'),(129,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,49,49,'2022-02-27 22:44:18','2022-02-28 02:44:18'),(130,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,49,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(131,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2022-02-27 10:44:18','2022-02-27 10:44:18'),(132,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,50,50,'2022-02-27 22:44:18','2022-02-28 02:44:18'),(133,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,50,50,'2022-02-28 02:44:18','2022-02-28 02:44:18'),(134,'create_from_order','Shipping was created from order %order_id%',0,51,51,'2022-02-27 18:44:18','2022-02-27 18:44:18'),(135,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,51,51,'2022-02-28 00:44:18','2022-02-28 02:44:18'),(136,'create_from_order','Shipping was created from order %order_id%',0,52,52,'2022-02-27 06:44:18','2022-02-27 06:44:18'),(137,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,52,52,'2022-02-28 00:44:18','2022-02-28 02:44:18'),(138,'create_from_order','Shipping was created from order %order_id%',0,53,53,'2022-02-28 00:44:18','2022-02-28 00:44:18'),(139,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,53,53,'2022-02-28 00:44:18','2022-02-28 02:44:18');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3495.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0065732772','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18','2022-02-28 09:44:18'),(2,2,NULL,2362.00,NULL,'','delivered',529.90,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0045392741','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-04 09:44:18','2022-02-28 09:44:18'),(3,3,NULL,3698.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0017765464','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-06 09:44:18','2022-02-28 09:44:18'),(4,4,NULL,1584.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0065002978','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18',NULL),(5,5,NULL,2298.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0035485645','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18','2022-02-28 09:44:18'),(6,6,NULL,2628.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0050799597','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18','2022-02-28 09:44:18'),(7,7,NULL,1274.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0016625994','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18','2022-02-28 09:44:18'),(8,8,NULL,1491.00,NULL,'','delivered',270.60,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0045436369','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18','2022-02-28 09:44:18'),(9,9,NULL,1752.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0090637558','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-10 09:44:18','2022-02-28 09:44:18'),(10,10,NULL,694.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0044437546','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18','2022-02-28 09:44:18'),(11,11,NULL,1048.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0059740204','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18',NULL),(12,12,NULL,3666.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0011328395','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-04 09:44:18',NULL),(13,13,NULL,612.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0068664228','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-04 09:44:18','2022-02-28 09:44:18'),(14,14,NULL,2580.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0049304311','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18','2022-02-28 09:44:18'),(15,15,NULL,2362.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0089993719','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18','2022-02-28 09:44:18'),(16,16,NULL,861.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0097249090','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18','2022-02-28 09:44:18'),(17,17,NULL,637.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0048096934','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-06 09:44:18',NULL),(18,18,NULL,1752.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0027469325','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-04 09:44:18',NULL),(19,19,NULL,1040.00,NULL,'','delivered',249.90,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0046210277','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18','2022-02-28 09:44:18'),(20,20,NULL,2096.00,NULL,'','approved',189.00,'pending','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0037662810','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18',NULL),(21,21,NULL,1764.00,NULL,'','approved',378.20,'pending','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD006787384','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18',NULL),(22,22,NULL,694.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0044431060','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-03 09:44:18',NULL),(23,23,NULL,5166.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0024166699','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-10 09:44:18',NULL),(24,24,NULL,2034.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0066879998','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18',NULL),(25,25,NULL,1560.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0052831466','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-08 09:44:18','2022-02-28 09:44:18'),(26,26,NULL,2082.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0025294848','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-10 09:44:18',NULL),(27,27,NULL,1506.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0044031750','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18','2022-02-28 09:44:18'),(28,28,NULL,639.00,NULL,'','delivered',94.60,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0010137966','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-06 09:44:18','2022-02-28 09:44:18'),(29,29,NULL,694.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0023769621','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-04 09:44:18',NULL),(30,30,NULL,626.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0041905415','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18',NULL),(31,31,NULL,3675.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0023408663','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-03 09:44:18',NULL),(32,32,NULL,1274.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0050912964','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18','2022-02-28 09:44:18'),(33,33,NULL,860.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0018340434','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18','2022-02-28 09:44:18'),(34,34,NULL,557.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0052773297','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18',NULL),(35,35,NULL,1659.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0011404447','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-03 09:44:18','2022-02-28 09:44:18'),(36,36,NULL,1836.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0062944889','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18','2022-02-28 09:44:18'),(37,37,NULL,1952.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0070995164','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-03 09:44:18',NULL),(38,38,NULL,2001.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0040667504','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-05 09:44:18',NULL),(39,39,NULL,1917.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD002755817','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18','2022-02-28 09:44:18'),(40,40,NULL,2376.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0071980968','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18',NULL),(41,41,NULL,2885.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0031190953','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18','2022-02-28 09:44:18'),(42,42,NULL,1356.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD002077942','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-07 09:44:18',NULL),(43,43,NULL,2866.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0079507185','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-06 09:44:18','2022-02-28 09:44:18'),(44,44,NULL,553.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0084386762','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-08 09:44:18',NULL),(45,45,NULL,860.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0099901261','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18','2022-02-28 09:44:18'),(46,46,NULL,1584.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0015930284','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-08 09:44:18','2022-02-28 09:44:18'),(47,47,NULL,2583.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0067596490','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-10 09:44:18',NULL),(48,48,NULL,1114.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0019299685','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18','2022-02-28 09:44:18'),(49,49,NULL,1584.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0053959151','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18','2022-02-28 09:44:18'),(50,50,NULL,1006.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0082622126','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-09 09:44:18','2022-02-28 09:44:18'),(51,51,NULL,1917.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0043955139','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-08 09:44:18',NULL),(52,52,NULL,1572.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0066478640','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-02 09:44:18',NULL),(53,53,NULL,2292.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-02-28 02:44:18','2022-02-28 02:44:18','JJD0086377533','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-03-01 09:44:18',NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-01-04 21:14:21','2022-01-04 21:14:21');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(10) unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-01-04 21:14:21','2022-01-04 21:14:21'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-01-04 21:14:21','2022-01-04 21:14:21'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-01-04 21:14:21','2022-01-04 21:14:21');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-01-04 21:14:21','2022-01-04 21:14:21');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-01-04 21:14:18','2022-01-04 21:14:18'),(2,'None',0.000000,2,'published','2022-01-04 21:14:18','2022-01-04 21:14:18');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(2,'Payment',1,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(3,'Order & Returns',2,'published','2022-01-04 21:14:48','2022-01-04 21:14:48');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-01-04 21:14:48','2022-01-04 21:14:48');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','f7137218b9e4978755452ac6ca1ff4a9',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','2e10c2f0999a8b0dec24e5757a49aa07',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','25eda978ad28dbeb04994fdf1cf6a062',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','e7f04df105e56cd36c63b6ad90f3386d',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','987b9f2e65d581f784ac624a074bc7f3',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','b01ea0206ae27b7e33dd084a745f6577',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','5089599f83e111f277bf5e32a726eedc',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','f7137218b9e4978755452ac6ca1ff4a9',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','2e10c2f0999a8b0dec24e5757a49aa07',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','25eda978ad28dbeb04994fdf1cf6a062',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','e7f04df105e56cd36c63b6ad90f3386d',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','987b9f2e65d581f784ac624a074bc7f3',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','b01ea0206ae27b7e33dd084a745f6577',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','5089599f83e111f277bf5e32a726eedc',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','39112b8831f4d0f56bc5d42bde6d0128',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','9c41947142df34e46c91ad03d5c3ea02',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','5beeccadd18042bfb264ace66bcbe681',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','ed755aa79c514c1fed7d5074acc496ca',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','cde984e582491841f15b3b3eb08c234e',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','30eeadc85bdf2f6871236b789038ab51',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','c35c5a89ecf3503e80f239d94ece9e22',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','0edff703ee1b56827cc75496f2da11a0',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','9c41947142df34e46c91ad03d5c3ea02',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','294887664637d668c4d7fc145458d690',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','ed755aa79c514c1fed7d5074acc496ca',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','cde984e582491841f15b3b3eb08c234e',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','30eeadc85bdf2f6871236b789038ab51',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','c35c5a89ecf3503e80f239d94ece9e22',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1',1,'image/png',4323,'product-categories/icon-1.png','[]','2022-01-04 21:13:55','2022-01-04 21:13:55',NULL),(2,0,'icon-10',1,'image/png',4357,'product-categories/icon-10.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(3,0,'icon-11',1,'image/png',2024,'product-categories/icon-11.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(4,0,'icon-12',1,'image/png',3531,'product-categories/icon-12.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(5,0,'icon-13',1,'image/png',2344,'product-categories/icon-13.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(6,0,'icon-14',1,'image/png',2314,'product-categories/icon-14.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(7,0,'icon-2',1,'image/png',3204,'product-categories/icon-2.png','[]','2022-01-04 21:13:56','2022-01-04 21:13:56',NULL),(8,0,'icon-3',1,'image/png',4184,'product-categories/icon-3.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(9,0,'icon-4',1,'image/png',4648,'product-categories/icon-4.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(10,0,'icon-5',1,'image/png',4594,'product-categories/icon-5.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(11,0,'icon-6',1,'image/png',3518,'product-categories/icon-6.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(12,0,'icon-7',1,'image/png',3829,'product-categories/icon-7.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(13,0,'icon-8',1,'image/png',4815,'product-categories/icon-8.png','[]','2022-01-04 21:13:57','2022-01-04 21:13:57',NULL),(14,0,'icon-9',1,'image/png',3126,'product-categories/icon-9.png','[]','2022-01-04 21:13:58','2022-01-04 21:13:58',NULL),(15,0,'image-1',1,'image/png',25796,'product-categories/image-1.png','[]','2022-01-04 21:13:58','2022-01-04 21:13:58',NULL),(16,0,'image-10',1,'image/png',13714,'product-categories/image-10.png','[]','2022-01-04 21:13:58','2022-01-04 21:13:58',NULL),(17,0,'image-11',1,'image/png',18723,'product-categories/image-11.png','[]','2022-01-04 21:13:58','2022-01-04 21:13:58',NULL),(18,0,'image-12',1,'image/png',19482,'product-categories/image-12.png','[]','2022-01-04 21:13:58','2022-01-04 21:13:58',NULL),(19,0,'image-13',1,'image/png',19312,'product-categories/image-13.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(20,0,'image-14',1,'image/png',19593,'product-categories/image-14.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(21,0,'image-15',1,'image/png',17706,'product-categories/image-15.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(22,0,'image-2',1,'image/png',19956,'product-categories/image-2.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(23,0,'image-3',1,'image/png',20032,'product-categories/image-3.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(24,0,'image-4',1,'image/png',18475,'product-categories/image-4.png','[]','2022-01-04 21:13:59','2022-01-04 21:13:59',NULL),(25,0,'image-5',1,'image/png',16666,'product-categories/image-5.png','[]','2022-01-04 21:14:00','2022-01-04 21:14:00',NULL),(26,0,'image-6',1,'image/png',15381,'product-categories/image-6.png','[]','2022-01-04 21:14:00','2022-01-04 21:14:00',NULL),(27,0,'image-7',1,'image/png',13804,'product-categories/image-7.png','[]','2022-01-04 21:14:00','2022-01-04 21:14:00',NULL),(28,0,'image-8',1,'image/png',17392,'product-categories/image-8.png','[]','2022-01-04 21:14:00','2022-01-04 21:14:00',NULL),(29,0,'image-9',1,'image/png',17729,'product-categories/image-9.png','[]','2022-01-04 21:14:00','2022-01-04 21:14:00',NULL),(30,0,'1-1',2,'image/jpeg',77048,'products/1-1.jpg','[]','2022-01-04 21:14:01','2022-01-04 21:14:01',NULL),(31,0,'1',2,'image/jpeg',80718,'products/1.jpg','[]','2022-01-04 21:14:01','2022-01-04 21:14:01',NULL),(32,0,'10-1',2,'image/jpeg',105100,'products/10-1.jpg','[]','2022-01-04 21:14:02','2022-01-04 21:14:02',NULL),(33,0,'10',2,'image/jpeg',117642,'products/10.jpg','[]','2022-01-04 21:14:02','2022-01-04 21:14:02',NULL),(34,0,'11-1',2,'image/jpeg',45724,'products/11-1.jpg','[]','2022-01-04 21:14:02','2022-01-04 21:14:02',NULL),(35,0,'11',2,'image/jpeg',46272,'products/11.jpg','[]','2022-01-04 21:14:03','2022-01-04 21:14:03',NULL),(36,0,'12-1',2,'image/jpeg',72251,'products/12-1.jpg','[]','2022-01-04 21:14:03','2022-01-04 21:14:03',NULL),(37,0,'12',2,'image/jpeg',71309,'products/12.jpg','[]','2022-01-04 21:14:03','2022-01-04 21:14:03',NULL),(38,0,'13-1',2,'image/jpeg',32608,'products/13-1.jpg','[]','2022-01-04 21:14:04','2022-01-04 21:14:04',NULL),(39,0,'13',2,'image/jpeg',33526,'products/13.jpg','[]','2022-01-04 21:14:04','2022-01-04 21:14:04',NULL),(40,0,'14-1',2,'image/jpeg',64893,'products/14-1.jpg','[]','2022-01-04 21:14:04','2022-01-04 21:14:04',NULL),(41,0,'14',2,'image/jpeg',53642,'products/14.jpg','[]','2022-01-04 21:14:05','2022-01-04 21:14:05',NULL),(42,0,'15-1',2,'image/jpeg',93293,'products/15-1.jpg','[]','2022-01-04 21:14:05','2022-01-04 21:14:05',NULL),(43,0,'15',2,'image/jpeg',70399,'products/15.jpg','[]','2022-01-04 21:14:05','2022-01-04 21:14:05',NULL),(44,0,'16-1',2,'image/jpeg',59168,'products/16-1.jpg','[]','2022-01-04 21:14:06','2022-01-04 21:14:06',NULL),(45,0,'16-2',2,'image/jpeg',74882,'products/16-2.jpg','[]','2022-01-04 21:14:06','2022-01-04 21:14:06',NULL),(46,0,'16-3',2,'image/jpeg',71574,'products/16-3.jpg','[]','2022-01-04 21:14:06','2022-01-04 21:14:06',NULL),(47,0,'16-4',2,'image/jpeg',87131,'products/16-4.jpg','[]','2022-01-04 21:14:07','2022-01-04 21:14:07',NULL),(48,0,'16-5',2,'image/jpeg',59849,'products/16-5.jpg','[]','2022-01-04 21:14:07','2022-01-04 21:14:07',NULL),(49,0,'16-6',2,'image/jpeg',91691,'products/16-6.jpg','[]','2022-01-04 21:14:07','2022-01-04 21:14:07',NULL),(50,0,'16',2,'image/jpeg',100953,'products/16.jpg','[]','2022-01-04 21:14:08','2022-01-04 21:14:08',NULL),(51,0,'17-1',2,'image/jpeg',17816,'products/17-1.jpg','[]','2022-01-04 21:14:08','2022-01-04 21:14:08',NULL),(52,0,'17',2,'image/jpeg',17551,'products/17.jpg','[]','2022-01-04 21:14:08','2022-01-04 21:14:08',NULL),(53,0,'18-1',2,'image/jpeg',13352,'products/18-1.jpg','[]','2022-01-04 21:14:08','2022-01-04 21:14:08',NULL),(54,0,'18',2,'image/jpeg',20319,'products/18.jpg','[]','2022-01-04 21:14:09','2022-01-04 21:14:09',NULL),(55,0,'19-1',2,'image/jpeg',22960,'products/19-1.jpg','[]','2022-01-04 21:14:09','2022-01-04 21:14:09',NULL),(56,0,'19',2,'image/jpeg',15156,'products/19.jpg','[]','2022-01-04 21:14:09','2022-01-04 21:14:09',NULL),(57,0,'2-1',2,'image/jpeg',56143,'products/2-1.jpg','[]','2022-01-04 21:14:09','2022-01-04 21:14:09',NULL),(58,0,'2',2,'image/jpeg',64331,'products/2.jpg','[]','2022-01-04 21:14:09','2022-01-04 21:14:09',NULL),(59,0,'20-1',2,'image/jpeg',27985,'products/20-1.jpg','[]','2022-01-04 21:14:10','2022-01-04 21:14:10',NULL),(60,0,'20',2,'image/jpeg',18065,'products/20.jpg','[]','2022-01-04 21:14:10','2022-01-04 21:14:10',NULL),(61,0,'21-1',2,'image/jpeg',28003,'products/21-1.jpg','[]','2022-01-04 21:14:10','2022-01-04 21:14:10',NULL),(62,0,'21',2,'image/jpeg',18198,'products/21.jpg','[]','2022-01-04 21:14:10','2022-01-04 21:14:10',NULL),(63,0,'22-1',2,'image/jpeg',28621,'products/22-1.jpg','[]','2022-01-04 21:14:10','2022-01-04 21:14:10',NULL),(64,0,'22',2,'image/jpeg',19002,'products/22.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(65,0,'23-1',2,'image/jpeg',35525,'products/23-1.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(66,0,'23',2,'image/jpeg',19227,'products/23.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(67,0,'24-1',2,'image/jpeg',20531,'products/24-1.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(68,0,'24',2,'image/jpeg',10609,'products/24.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(69,0,'3-1',2,'image/jpeg',79350,'products/3-1.jpg','[]','2022-01-04 21:14:11','2022-01-04 21:14:11',NULL),(70,0,'3',2,'image/jpeg',89626,'products/3.jpg','[]','2022-01-04 21:14:12','2022-01-04 21:14:12',NULL),(71,0,'4-1',2,'image/jpeg',58354,'products/4-1.jpg','[]','2022-01-04 21:14:12','2022-01-04 21:14:12',NULL),(72,0,'4',2,'image/jpeg',76935,'products/4.jpg','[]','2022-01-04 21:14:13','2022-01-04 21:14:13',NULL),(73,0,'5-1',2,'image/jpeg',91691,'products/5-1.jpg','[]','2022-01-04 21:14:13','2022-01-04 21:14:13',NULL),(74,0,'5',2,'image/jpeg',100953,'products/5.jpg','[]','2022-01-04 21:14:13','2022-01-04 21:14:13',NULL),(75,0,'6-1',2,'image/jpeg',74851,'products/6-1.jpg','[]','2022-01-04 21:14:14','2022-01-04 21:14:14',NULL),(76,0,'6',2,'image/jpeg',89464,'products/6.jpg','[]','2022-01-04 21:14:14','2022-01-04 21:14:14',NULL),(77,0,'7-1',2,'image/jpeg',66135,'products/7-1.jpg','[]','2022-01-04 21:14:14','2022-01-04 21:14:14',NULL),(78,0,'7',2,'image/jpeg',71573,'products/7.jpg','[]','2022-01-04 21:14:15','2022-01-04 21:14:15',NULL),(79,0,'8-1',2,'image/jpeg',41283,'products/8-1.jpg','[]','2022-01-04 21:14:15','2022-01-04 21:14:15',NULL),(80,0,'8',2,'image/jpeg',33964,'products/8.jpg','[]','2022-01-04 21:14:15','2022-01-04 21:14:15',NULL),(81,0,'9-1',2,'image/jpeg',78790,'products/9-1.jpg','[]','2022-01-04 21:14:16','2022-01-04 21:14:16',NULL),(82,0,'9',2,'image/jpeg',84813,'products/9.jpg','[]','2022-01-04 21:14:16','2022-01-04 21:14:16',NULL),(83,0,'1',3,'image/jpeg',274660,'customers/1.jpg','[]','2022-01-04 21:14:18','2022-01-04 21:14:18',NULL),(84,0,'2',3,'image/jpeg',295031,'customers/2.jpg','[]','2022-01-04 21:14:18','2022-01-04 21:14:18',NULL),(85,0,'3',3,'image/jpeg',183576,'customers/3.jpg','[]','2022-01-04 21:14:18','2022-01-04 21:14:18',NULL),(86,0,'4',3,'image/jpeg',245360,'customers/4.jpg','[]','2022-01-04 21:14:18','2022-01-04 21:14:18',NULL),(87,0,'5',3,'image/jpeg',262908,'customers/5.jpg','[]','2022-01-04 21:14:19','2022-01-04 21:14:19',NULL),(88,0,'6',3,'image/jpeg',109600,'customers/6.jpg','[]','2022-01-04 21:14:19','2022-01-04 21:14:19',NULL),(89,0,'7',3,'image/jpeg',159280,'customers/7.jpg','[]','2022-01-04 21:14:19','2022-01-04 21:14:19',NULL),(90,0,'8',3,'image/jpeg',99998,'customers/8.jpg','[]','2022-01-04 21:14:20','2022-01-04 21:14:20',NULL),(96,0,'1-1',5,'image/png',519229,'sliders/1-1.png','[]','2022-01-04 21:14:24','2022-01-04 21:14:24',NULL),(97,0,'1-2',5,'image/png',468469,'sliders/1-2.png','[]','2022-01-04 21:14:25','2022-01-04 21:14:25',NULL),(98,0,'1-3',5,'image/png',2697,'sliders/1-3.png','[]','2022-01-04 21:14:26','2022-01-04 21:14:26',NULL),(99,0,'2-1',5,'image/png',159240,'sliders/2-1.png','[]','2022-01-04 21:14:26','2022-01-04 21:14:26',NULL),(100,0,'2-2',5,'image/png',113574,'sliders/2-2.png','[]','2022-01-04 21:14:27','2022-01-04 21:14:27',NULL),(101,0,'2-3',5,'image/png',2697,'sliders/2-3.png','[]','2022-01-04 21:14:27','2022-01-04 21:14:27',NULL),(102,0,'3-1',5,'image/png',519229,'sliders/3-1.png','[]','2022-01-04 21:14:28','2022-01-04 21:14:28',NULL),(103,0,'3-2',5,'image/png',468469,'sliders/3-2.png','[]','2022-01-04 21:14:28','2022-01-04 21:14:28',NULL),(104,0,'4-1',5,'image/png',618556,'sliders/4-1.png','[]','2022-01-04 21:14:29','2022-01-04 21:14:29',NULL),(105,0,'4-2',5,'image/png',949745,'sliders/4-2.png','[]','2022-01-04 21:14:30','2022-01-04 21:14:30',NULL),(106,0,'4-3',5,'image/png',2697,'sliders/4-3.png','[]','2022-01-04 21:14:30','2022-01-04 21:14:30',NULL),(107,0,'5-1',5,'image/png',1273599,'sliders/5-1.png','[]','2022-01-04 21:14:31','2022-01-04 21:14:31',NULL),(108,0,'5-2',5,'image/png',695846,'sliders/5-2.png','[]','2022-01-04 21:14:31','2022-01-04 21:14:31',NULL),(109,0,'banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2022-01-04 21:14:32','2022-01-04 21:14:32',NULL),(110,0,'thumbnail-1',5,'image/jpeg',28966,'sliders/thumbnail-1.jpg','[]','2022-01-04 21:14:33','2022-01-04 21:14:33',NULL),(111,0,'thumbnail-2',5,'image/jpeg',13975,'sliders/thumbnail-2.jpg','[]','2022-01-04 21:14:33','2022-01-04 21:14:33',NULL),(112,0,'thumbnail-3',5,'image/jpeg',15751,'sliders/thumbnail-3.jpg','[]','2022-01-04 21:14:33','2022-01-04 21:14:33',NULL),(113,0,'thumbnail-4',5,'image/jpeg',16846,'sliders/thumbnail-4.jpg','[]','2022-01-04 21:14:33','2022-01-04 21:14:33',NULL),(114,0,'thumbnail-5',5,'image/jpeg',24938,'sliders/thumbnail-5.jpg','[]','2022-01-04 21:14:34','2022-01-04 21:14:34',NULL),(115,0,'thumbnail-6',5,'image/jpeg',63412,'sliders/thumbnail-6.jpg','[]','2022-01-04 21:14:34','2022-01-04 21:14:34',NULL),(116,0,'1',6,'image/png',533812,'news/1.png','[]','2022-01-04 21:14:34','2022-01-04 21:14:34',NULL),(117,0,'10',6,'image/png',439491,'news/10.png','[]','2022-01-04 21:14:35','2022-01-04 21:14:35',NULL),(118,0,'11',6,'image/png',593219,'news/11.png','[]','2022-01-04 21:14:36','2022-01-04 21:14:36',NULL),(119,0,'2',6,'image/png',633277,'news/2.png','[]','2022-01-04 21:14:36','2022-01-04 21:14:36',NULL),(120,0,'3',6,'image/png',372986,'news/3.png','[]','2022-01-04 21:14:37','2022-01-04 21:14:37',NULL),(121,0,'4',6,'image/png',438363,'news/4.png','[]','2022-01-04 21:14:38','2022-01-04 21:14:38',NULL),(122,0,'5',6,'image/png',483356,'news/5.png','[]','2022-01-04 21:14:39','2022-01-04 21:14:39',NULL),(123,0,'6',6,'image/png',502720,'news/6.png','[]','2022-01-04 21:14:39','2022-01-04 21:14:39',NULL),(124,0,'7',6,'image/png',465225,'news/7.png','[]','2022-01-04 21:14:40','2022-01-04 21:14:40',NULL),(125,0,'8',6,'image/png',489034,'news/8.png','[]','2022-01-04 21:14:41','2022-01-04 21:14:41',NULL),(126,0,'9',6,'image/png',328817,'news/9.png','[]','2022-01-04 21:14:41','2022-01-04 21:14:41',NULL),(127,0,'1',7,'image/png',50119,'promotion/1.png','[]','2022-01-04 21:14:43','2022-01-04 21:14:43',NULL),(128,0,'10',7,'image/png',108470,'promotion/10.png','[]','2022-01-04 21:14:43','2022-01-04 21:14:43',NULL),(129,0,'11',7,'image/png',106453,'promotion/11.png','[]','2022-01-04 21:14:44','2022-01-04 21:14:44',NULL),(130,0,'12',7,'image/png',104430,'promotion/12.png','[]','2022-01-04 21:14:44','2022-01-04 21:14:44',NULL),(131,0,'2',7,'image/png',38339,'promotion/2.png','[]','2022-01-04 21:14:44','2022-01-04 21:14:44',NULL),(132,0,'3',7,'image/png',65066,'promotion/3.png','[]','2022-01-04 21:14:45','2022-01-04 21:14:45',NULL),(133,0,'4',7,'image/png',62462,'promotion/4.png','[]','2022-01-04 21:14:45','2022-01-04 21:14:45',NULL),(134,0,'5',7,'image/png',190175,'promotion/5.png','[]','2022-01-04 21:14:45','2022-01-04 21:14:45',NULL),(135,0,'6',7,'image/png',190175,'promotion/6.png','[]','2022-01-04 21:14:46','2022-01-04 21:14:46',NULL),(136,0,'7',7,'image/png',272480,'promotion/7.png','[]','2022-01-04 21:14:46','2022-01-04 21:14:46',NULL),(137,0,'8',7,'image/png',73547,'promotion/8.png','[]','2022-01-04 21:14:47','2022-01-04 21:14:47',NULL),(138,0,'9',7,'image/png',126894,'promotion/9.png','[]','2022-01-04 21:14:47','2022-01-04 21:14:47',NULL),(163,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(164,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(165,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(166,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(167,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(168,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(169,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(170,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(171,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(172,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(173,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(174,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-01-04 21:14:55','2022-01-04 21:14:55',NULL),(175,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-01-04 21:14:56','2022-01-04 21:14:56',NULL),(176,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-01-04 21:14:56','2022-01-04 21:14:56',NULL),(177,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-01-04 21:14:56','2022-01-04 21:14:56',NULL),(178,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-01-04 21:14:56','2022-01-04 21:14:56',NULL),(179,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-01-04 21:14:56','2022-01-04 21:14:56',NULL),(200,0,'app-store',14,'image/jpeg',29714,'general/app-store.jpg','[]','2022-02-22 07:44:32','2022-02-22 07:44:32',NULL),(201,0,'category-1',14,'image/png',4323,'general/category-1.png','[]','2022-02-22 07:44:32','2022-02-22 07:44:32',NULL),(202,0,'facebook',14,'image/png',646,'general/facebook.png','[]','2022-02-22 07:44:33','2022-02-22 07:44:33',NULL),(203,0,'favicon',14,'image/png',3890,'general/favicon.png','[]','2022-02-22 07:44:33','2022-02-22 07:44:33',NULL),(204,0,'google-play',14,'image/jpeg',29477,'general/google-play.jpg','[]','2022-02-22 07:44:33','2022-02-22 07:44:33',NULL),(205,0,'header-bg',14,'image/png',16995,'general/header-bg.png','[]','2022-02-22 07:44:33','2022-02-22 07:44:33',NULL),(206,0,'home-6',14,'image/jpeg',799491,'general/home-6.jpeg','[]','2022-02-22 07:44:33','2022-02-22 07:44:33',NULL),(207,0,'icon-1',14,'image/png',2024,'general/icon-1.png','[]','2022-02-22 07:44:34','2022-02-22 07:44:34',NULL),(208,0,'icon-2',14,'image/png',3531,'general/icon-2.png','[]','2022-02-22 07:44:34','2022-02-22 07:44:34',NULL),(209,0,'icon-3',14,'image/png',2344,'general/icon-3.png','[]','2022-02-22 07:44:34','2022-02-22 07:44:34',NULL),(210,0,'icon-4',14,'image/png',2314,'general/icon-4.png','[]','2022-02-22 07:44:34','2022-02-22 07:44:34',NULL),(211,0,'icon-5',14,'image/png',2853,'general/icon-5.png','[]','2022-02-22 07:44:34','2022-02-22 07:44:34',NULL),(212,0,'instagram',14,'image/png',2586,'general/instagram.png','[]','2022-02-22 07:44:35','2022-02-22 07:44:35',NULL),(213,0,'loading',14,'image/gif',25062,'general/loading.gif','[]','2022-02-22 07:44:35','2022-02-22 07:44:35',NULL),(214,0,'login-1',14,'image/png',270812,'general/login-1.png','[]','2022-02-22 07:44:35','2022-02-22 07:44:35',NULL),(215,0,'logo',14,'image/png',7698,'general/logo.png','[]','2022-02-22 07:44:36','2022-02-22 07:44:36',NULL),(216,0,'newsletter-background-image',14,'image/png',28409,'general/newsletter-background-image.png','[]','2022-02-22 07:44:36','2022-02-22 07:44:36',NULL),(217,0,'newsletter-image',14,'image/png',116235,'general/newsletter-image.png','[]','2022-02-22 07:44:36','2022-02-22 07:44:36',NULL),(218,0,'open-graph-image',14,'image/png',436809,'general/open-graph-image.png','[]','2022-02-22 07:44:37','2022-02-22 07:44:37',NULL),(219,0,'payment-methods',14,'image/png',10634,'general/payment-methods.png','[]','2022-02-22 07:44:37','2022-02-22 07:44:37',NULL),(220,0,'pinterest',14,'image/png',2128,'general/pinterest.png','[]','2022-02-22 07:44:37','2022-02-22 07:44:37',NULL),(221,0,'twitter',14,'image/png',1759,'general/twitter.png','[]','2022-02-22 07:44:37','2022-02-22 07:44:37',NULL),(222,0,'youtube',14,'image/png',1083,'general/youtube.png','[]','2022-02-22 07:44:37','2022-02-22 07:44:37',NULL),(223,0,'1',15,'image/png',431894,'flash-sales/1.png','[]','2022-02-28 02:44:14','2022-02-28 02:44:14',NULL),(224,0,'2',15,'image/png',118543,'flash-sales/2.png','[]','2022-02-28 02:44:14','2022-02-28 02:44:14',NULL),(225,0,'3',15,'image/png',163085,'flash-sales/3.png','[]','2022-02-28 02:44:15','2022-02-28 02:44:15',NULL),(226,0,'4',15,'image/png',195017,'flash-sales/4.png','[]','2022-02-28 02:44:15','2022-02-28 02:44:15',NULL),(227,0,'5',15,'image/png',153833,'flash-sales/5.png','[]','2022-02-28 02:44:16','2022-02-28 02:44:16',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2022-01-04 21:13:55','2022-01-04 21:13:55',NULL),(2,0,'products','products',0,'2022-01-04 21:14:01','2022-01-04 21:14:01',NULL),(3,0,'customers','customers',0,'2022-01-04 21:14:18','2022-01-04 21:14:18',NULL),(5,0,'sliders','sliders',0,'2022-01-04 21:14:24','2022-01-04 21:14:24',NULL),(6,0,'news','news',0,'2022-01-04 21:14:34','2022-01-04 21:14:34',NULL),(7,0,'promotion','promotion',0,'2022-01-04 21:14:43','2022-01-04 21:14:43',NULL),(9,0,'stores','stores',0,'2022-01-04 21:14:54','2022-01-04 21:14:54',NULL),(14,0,'general','general',0,'2022-02-22 07:44:32','2022-02-22 07:44:32',NULL),(15,0,'flash-sales','flash-sales',0,'2022-02-28 02:44:14','2022-02-28 02:44:14',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-01-04 21:14:57','2022-01-04 21:14:57'),(2,2,'header-navigation','2022-01-04 21:14:57','2022-01-04 21:14:57'),(3,6,'main-menu','2022-01-04 21:14:57','2022-01-04 21:14:57'),(4,7,'header-navigation','2022-01-04 21:14:57','2022-01-04 21:14:57');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reference_id` int(10) unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(2,1,1,1,'Botble\\Page\\Models\\Page','',NULL,0,'Home 1',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(34,2,0,NULL,NULL,'/customer/overview',NULL,0,'My Account',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(35,2,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(36,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(37,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(38,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(39,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(40,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(41,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(42,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(43,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(44,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(45,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(46,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(47,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(48,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(49,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(50,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(51,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(52,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(53,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(54,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(55,6,54,1,'Botble\\Page\\Models\\Page','',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(56,6,54,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(57,6,54,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(58,6,54,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(59,6,54,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(60,6,54,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(61,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(62,6,61,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(63,6,61,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(64,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(65,6,64,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(66,6,64,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(67,6,64,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(68,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(69,6,68,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(70,6,68,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(71,6,68,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(72,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(73,6,72,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(74,6,72,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(75,6,72,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(76,6,72,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(77,6,72,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(78,6,72,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(79,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(80,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(81,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(82,7,0,NULL,NULL,'/customer/overview',NULL,0,'Tài Khoản',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(83,7,0,NULL,NULL,'/wishlist',NULL,0,'Yêu Thích',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(84,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(85,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(86,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(87,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(88,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(89,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(90,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(91,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(92,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(93,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(94,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(95,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(96,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(97,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(98,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(99,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(100,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-04 21:14:57','2022-01-04 21:14:57');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(2,'Header menu','header-menu','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(3,'Product categories','product-categories','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(4,'Information','information','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(5,'Company','company','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(6,'Menu chính','menu-chinh','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(7,'Menu trên cùng','menu-tren-cung','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(8,'Product categories','danh-muc-san-pham','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(9,'Information','thong-tin','published','2022-01-04 21:14:57','2022-01-04 21:14:57'),(10,'Công ty','cong-ty','published','2022-01-04 21:14:57','2022-01-04 21:14:57');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-04 21:14:01','2022-01-04 21:14:01'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(33,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(34,'is_popular','[\"1\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(38,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(42,'is_popular','[\"1\"]',9,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(46,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(48,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(50,'is_popular','[\"1\"]',15,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(51,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(54,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(57,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(58,'is_popular','[\"1\"]',21,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(60,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(62,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(63,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-01-04 21:14:17','2022-01-04 21:14:17'),(74,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(75,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(76,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(77,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(78,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(79,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(80,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(81,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(82,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(83,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(84,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(85,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(86,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(87,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-01-04 21:14:34','2022-01-04 21:14:34'),(88,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-01-04 21:14:42','2022-01-04 21:14:42'),(89,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-01-04 21:14:42','2022-01-04 21:14:42'),(90,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-01-04 21:14:42','2022-01-04 21:14:42'),(91,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-01-04 21:14:42','2022-01-04 21:14:42'),(94,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(95,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(96,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(97,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(98,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(99,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(100,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(101,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(102,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(103,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(104,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(105,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(106,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(107,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(108,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(109,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(110,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(111,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(112,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(113,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(114,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(115,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(116,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(117,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(118,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(119,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(120,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(121,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(122,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(123,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(124,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(125,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(126,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(127,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(128,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(129,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(130,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(131,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(132,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(133,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(135,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(136,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(137,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(138,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(140,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2022-01-04 21:14:48','2022-01-04 21:14:48'),(142,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2022-01-04 21:14:57','2022-01-04 21:14:57'),(143,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2022-01-04 21:14:57','2022-01-04 21:14:57'),(144,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2022-01-04 21:14:57','2022-01-04 21:14:57'),(145,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2022-01-04 21:14:57','2022-01-04 21:14:57'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2022-01-04 21:14:57','2022-01-04 21:14:57'),(187,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(188,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(189,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(190,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(191,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(192,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(193,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(194,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(195,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(196,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-02-28 02:44:17','2022-02-28 02:44:17'),(197,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2022-02-28 02:47:00','2022-02-28 02:47:00'),(198,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2022-02-28 02:47:00','2022-02-28 02:47:00');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2020_03_05_041139_create_ecommerce_tables',1),(25,'2020_09_22_135635_update_taxes_table',1),(26,'2020_09_29_101006_add_views_into_ec_products_table',1),(27,'2020_10_01_152311_make_column_image_in_product_attributes_table_nullable',1),(28,'2020_10_06_073439_improve_ecommerce_database',1),(29,'2020_11_01_040415_update_table_ec_order_addresses',1),(30,'2020_11_04_091510_make_column_phone_in_order_addresses_nullable',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2020_11_30_015801_update_table_ec_product_categories',1),(33,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(34,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(35,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(36,'2021_02_16_092633_remove_default_value_for_author_type',1),(37,'2021_02_18_073505_update_table_ec_reviews',1),(38,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(39,'2021_03_10_025153_change_column_tax_amount',1),(40,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(41,'2021_03_27_144913_add_customer_type_into_table_payments',1),(42,'2021_04_28_074008_ecommerce_create_product_label_table',1),(43,'2021_05_24_034720_make_column_currency_nullable',1),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(45,'2021_06_28_153141_correct_slugs_data',1),(46,'2021_07_06_030002_create_marketplace_table',1),(47,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(48,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(49,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(50,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(51,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(52,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(53,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(54,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(55,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(56,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(57,'2021_10_19_020859_update_metadata_field',1),(58,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(59,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(60,'2021_11_23_071403_correct_languages_for_product_variations',1),(61,'2021_11_28_031808_add_product_tags_translations',1),(62,'2021_12_01_031123_add_featured_image_to_ec_products',1),(63,'2021_12_02_035301_add_ads_translations_table',1),(64,'2021_12_03_030600_create_blog_translations',1),(65,'2021_12_03_075608_create_page_translations',1),(66,'2021_12_03_082134_create_faq_translations',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2022_01_01_033107_update_table_ec_shipments',1),(69,'2019_11_18_061011_create_country_table',2),(70,'2021_12_03_084118_create_location_translations',2),(71,'2021_12_03_094518_migrate_old_location_data',2),(72,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',2),(73,'2022_01_16_085908_improve_plugin_location',2),(74,'2022_02_16_042457_improve_product_attribute_sets',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,3,1,657.10,0.00,657.10,1245.70,'USD',NULL,'2022-02-27 10:44:18','2022-02-27 10:44:18',0,NULL),(2,3,3,760.40,0.00,760.40,1902.80,'USD',NULL,'2022-02-26 18:44:19','2022-02-26 18:44:19',0,NULL),(3,7,5,491.40,0.00,491.40,2589.40,'USD',NULL,'2022-02-25 14:44:19','2022-02-25 14:44:19',0,NULL),(4,2,6,384.40,0.00,384.40,670.10,'USD',NULL,'2022-02-22 06:44:19','2022-02-22 06:44:19',0,NULL),(5,2,9,260.40,0.00,260.40,1054.50,'USD',NULL,'2022-02-21 10:44:19','2022-02-21 10:44:19',0,NULL),(6,8,10,125.40,0.00,125.40,2017.20,'USD',NULL,'2022-02-25 08:44:19','2022-02-25 08:44:19',0,NULL),(7,3,14,182.90,0.00,182.90,2663.20,'USD',NULL,'2022-02-19 08:44:19','2022-02-19 08:44:19',0,NULL),(8,7,15,529.90,0.00,529.90,3080.80,'USD',NULL,'2022-02-18 18:44:19','2022-02-18 18:44:19',0,NULL),(9,7,16,260.70,0.00,260.70,3610.70,'USD',NULL,'2022-02-22 10:44:20','2022-02-22 10:44:20',0,NULL),(10,3,27,237.30,0.00,237.30,2846.10,'USD',NULL,'2022-02-21 02:44:20','2022-02-21 02:44:20',0,NULL),(11,8,32,233.10,0.00,233.10,2142.60,'USD',NULL,'2022-02-25 08:44:20','2022-02-25 08:44:20',0,NULL),(12,3,33,64.90,0.00,64.90,3083.40,'USD',NULL,'2022-02-02 14:44:20','2022-02-02 14:44:20',0,NULL),(13,7,35,396.80,0.00,396.80,3871.40,'USD',NULL,'2022-02-16 02:44:20','2022-02-16 02:44:20',0,NULL),(14,2,36,1323.70,0.00,1323.70,1314.90,'USD',NULL,'2022-02-03 10:44:20','2022-02-03 10:44:20',0,NULL),(15,7,39,266.60,0.00,266.60,4268.20,'USD',NULL,'2022-01-29 02:44:20','2022-01-29 02:44:20',0,NULL),(16,3,41,471.30,0.00,471.30,3148.30,'USD',NULL,'2022-02-07 02:44:21','2022-02-07 02:44:21',0,NULL),(17,2,43,1083.60,0.00,1083.60,2638.60,'USD',NULL,'2022-02-17 02:44:21','2022-02-17 02:44:21',0,NULL),(18,3,45,64.90,0.00,64.90,3619.60,'USD',NULL,'2022-02-05 02:44:21','2022-02-05 02:44:21',0,NULL),(19,8,46,262.50,0.00,262.50,2375.70,'USD',NULL,'2022-01-31 16:44:21','2022-01-31 16:44:21',0,NULL),(20,2,48,823.20,0.00,823.20,3722.20,'USD',NULL,'2022-02-07 16:44:21','2022-02-07 16:44:21',0,NULL),(21,8,49,262.50,0.00,262.50,2638.20,'USD',NULL,'2022-02-15 14:44:21','2022-02-15 14:44:21',0,NULL),(22,3,50,249.90,0.00,249.90,3684.50,'USD',NULL,'2022-02-19 14:44:21','2022-02-19 14:44:21',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) unsigned DEFAULT 0.00,
  `current_balance` decimal(15,2) unsigned DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,665.00,4545.40,'USD','','{\"name\":\"Virginie Gorczany\",\"number\":\"+12548960246\",\"full_name\":\"Burley Glover\",\"description\":\"Selmer Reichel\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(2,2,0.00,932.00,3880.40,'USD','','{\"name\":\"Virginie Gorczany\",\"number\":\"+12548960246\",\"full_name\":\"Burley Glover\",\"description\":\"Selmer Reichel\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(3,2,0.00,602.00,2948.40,'USD','','{\"name\":\"Virginie Gorczany\",\"number\":\"+12548960246\",\"full_name\":\"Burley Glover\",\"description\":\"Selmer Reichel\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(4,2,0.00,358.00,2346.40,'USD','','{\"name\":\"Virginie Gorczany\",\"number\":\"+12548960246\",\"full_name\":\"Burley Glover\",\"description\":\"Selmer Reichel\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(5,3,0.00,741.00,3934.40,'USD','','{\"name\":\"Casper Connelly\",\"number\":\"+18658579322\",\"full_name\":\"Mrs. Zula Hyatt DVM\",\"description\":\"Kelsi Stokes\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(6,3,0.00,273.00,3193.40,'USD','','{\"name\":\"Casper Connelly\",\"number\":\"+18658579322\",\"full_name\":\"Mrs. Zula Hyatt DVM\",\"description\":\"Kelsi Stokes\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(7,7,0.00,781.00,4534.80,'USD','','{\"name\":\"Corrine Walsh\",\"number\":\"+16516809769\",\"full_name\":\"Prof. Hyman Abshire\",\"description\":\"Prof. Jett Mueller III\"}',NULL,0,'completed',NULL,'2022-02-28 02:44:22','2022-02-28 02:44:22',NULL),(8,7,0.00,61.00,3753.80,'USD','','{\"name\":\"Corrine Walsh\",\"number\":\"+16516809769\",\"full_name\":\"Prof. Hyman Abshire\",\"description\":\"Prof. Jett Mueller III\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(9,7,0.00,208.00,3692.80,'USD','','{\"name\":\"Corrine Walsh\",\"number\":\"+16516809769\",\"full_name\":\"Prof. Hyman Abshire\",\"description\":\"Prof. Jett Mueller III\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(10,7,0.00,193.00,3484.80,'USD','','{\"name\":\"Corrine Walsh\",\"number\":\"+16516809769\",\"full_name\":\"Prof. Hyman Abshire\",\"description\":\"Prof. Jett Mueller III\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(11,8,0.00,4.00,2900.70,'USD','','{\"name\":\"Emiliano Corkery\",\"number\":\"+16783875586\",\"full_name\":\"Mike Kovacek\",\"description\":\"Prof. Loma Purdy\"}',NULL,0,'completed',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(12,8,0.00,417.00,2896.70,'USD','','{\"name\":\"Emiliano Corkery\",\"number\":\"+16783875586\",\"full_name\":\"Mike Kovacek\",\"description\":\"Prof. Loma Purdy\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(13,10,0.00,14.00,387.40,'USD','','{\"name\":\"Yesenia Orn\",\"number\":\"+19803515603\",\"full_name\":\"Arne Grady PhD\",\"description\":\"Laurel Heidenreich\"}',NULL,0,'processing',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL),(14,10,0.00,11.00,373.40,'USD','','{\"name\":\"Yesenia Orn\",\"number\":\"+19803515603\",\"full_name\":\"Arne Grady PhD\",\"description\":\"Laurel Heidenreich\"}',NULL,0,'pending',NULL,'2022-02-28 02:44:23','2022-02-28 02:44:23',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','darius.mann@example.org','+15408057350','24812 Bode Flat Suite 526','ZW','Florida','Blandaville',2,'stores/1.png','Earum aspernatur sint modi dignissimos minus.','Cumque et veniam et sed sit. Repellat aut aut sequi nulla eum maiores enim veritatis. Ut omnis est ut velit. Dignissimos et quia ut.','published',NULL,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(2,'Global Office','jasper.kovacek@example.com','+15513056364','572 Okuneva Lake Suite 178','FK','Michigan','Schoenhaven',3,'stores/2.png','Non ab error eligendi.','Tenetur vitae in at porro id dicta. Accusamus sint quam nesciunt magni quis consectetur. Laudantium veritatis id facere voluptatibus et quam.','published',NULL,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(3,'Young Shop','bode.susana@example.net','+17433706804','37013 Huels Prairie','LC','Oklahoma','Norbertoland',7,'stores/3.png','Expedita nesciunt et quasi consectetur.','Vel officiis id voluptatem inventore vero iusto. Pariatur est aliquid omnis. Qui ipsam animi quia quam qui quia quae.','published',NULL,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(4,'Global Store','mkuphal@example.org','+12604225683','7125 Wuckert Village Apt. 100','MK','Michigan','Strackeland',8,'stores/4.png','Ut velit quidem sit rerum sunt ex quidem.','Quis suscipit occaecati molestiae distinctio in. Amet ea dolores sit est. Quia eius excepturi quia voluptate numquam. Omnis est adipisci qui dolor.','published',NULL,'2022-01-04 21:14:57','2022-01-04 21:14:57'),(5,'Robert’s Store','mckenna.gulgowski@example.com','+17814893617','1822 Toney Lane','BI','Washington','New River',10,'stores/5.png','Nemo illo placeat commodi possimus.','Impedit in ex sunt eum. Mollitia aperiam iusto aut enim qui. At qui quidem ipsam dolorum.','published',NULL,'2022-01-04 21:14:57','2022-01-04 21:14:57');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,1988.40,0.00,5118.40,'$2y$10$.ilXqE4.2zvKqLXT0cobnOGcQ4CTEDxqEECELcJ.wlwQNdEmcTnIK','{\"name\":\"Virginie Gorczany\",\"number\":\"+12548960246\",\"full_name\":\"Burley Glover\",\"description\":\"Selmer Reichel\"}','2022-01-04 21:14:57','2022-02-28 02:44:22'),(2,3,2920.40,0.00,7058.40,'$2y$10$QZV70BWyvgknBwaQ2CI/eeIzgiObGAkRr3ROJ8AUe32PmQfy5LJM6','{\"name\":\"Casper Connelly\",\"number\":\"+18658579322\",\"full_name\":\"Mrs. Zula Hyatt DVM\",\"description\":\"Kelsi Stokes\"}','2022-01-04 21:14:57','2022-02-28 02:44:22'),(3,7,3291.80,0.00,7717.80,'$2y$10$GIQ7R3cAwJHXIfBCHLOtROOH0A991wAcJkhC6FvPzFpXhnqzuOH.6','{\"name\":\"Corrine Walsh\",\"number\":\"+16516809769\",\"full_name\":\"Prof. Hyman Abshire\",\"description\":\"Prof. Jett Mueller III\"}','2022-01-04 21:14:57','2022-02-28 02:44:23'),(4,8,2479.70,0.00,4671.70,'$2y$10$xIohssfoERD/.zxs66ymr.6mRn4IFPZQY/eOhOfOF7Q6HPGFdXiBW','{\"name\":\"Emiliano Corkery\",\"number\":\"+16783875586\",\"full_name\":\"Mike Kovacek\",\"description\":\"Prof. Loma Purdy\"}','2022-01-04 21:14:57','2022-02-28 02:44:23'),(5,10,362.40,0.00,634.40,'$2y$10$O9U6HrHKTNd6F4BDh6r3kOkLs9oLfJOvbiOeFiOrzu/fmdb9CLPkm','{\"name\":\"Yesenia Orn\",\"number\":\"+19803515603\",\"full_name\":\"Arne Grady PhD\",\"description\":\"Laurel Heidenreich\"}','2022-01-04 21:14:57','2022-02-28 02:44:23');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Featured Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(7,'About us','<p>March Hare went \'Sh! sh!\' and the Queen in a tone of this was not a mile high,\' said Alice. \'Did you say it.\' \'That\'s nothing to do: once or twice, half hoping that the cause of this rope--Will the roof was thatched with fur. It was high time to go, for the fan and gloves--that is, if I might venture to ask the question?\' said the one who got any advantage from the trees upon her knee, and the March Hare. \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got to? And oh, my poor.</p><p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Queen, and in a Little Bill It was the Rabbit began. Alice gave a little faster?\" said a timid voice at her feet as the other.\' As soon as she could. \'The game\'s going on between the executioner, the King, looking round the table, but there was mouth enough for it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Panther.</p><p>Duchess said in an undertone, \'important--unimportant--unimportant--important--\' as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a more subdued tone, and everybody laughed, \'Let the jury eagerly wrote down on her lap as if a fish came to ME, and told me he was going to happen next. First, she tried the little golden key in the way wherever she wanted to send the.</p><p>I used to come upon them THIS size: why, I should say \"With what porpoise?\"\' \'Don\'t you mean that you have just been reading about; and when she had looked under it, and very soon finished off the subjects on his spectacles and looked anxiously at the top of the trial.\' \'Stupid things!\' Alice began to repeat it, but her head struck against the door, and knocked. \'There\'s no such thing!\' Alice was very hot, she kept on good terms with him, he\'d do almost anything you liked with the Queen,\' and.</p>',1,NULL,'right-sidebar',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(9,'Terms & Conditions','<p>And the executioner ran wildly up and said, without even looking round. \'I\'ll fetch the executioner ran wildly up and walking off to other parts of the house if it began ordering people about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not a mile high,\' said Alice. \'You are,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and sighing. \'It IS a long silence after this, and she tried to speak, but for a dunce? Go on!\' \'I\'m a poor.</p><p>Queen furiously, throwing an inkstand at the top of his teacup instead of the others looked round also, and all must have imitated somebody else\'s hand,\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said to the shore, and then all the arches are gone from this side of the trees upon her face. \'Very,\' said Alice: \'allow me to him: She gave me a pair of gloves and a large canvas bag, which tied up at the other, trying every door, she found herself in a.</p><p>Alice put down yet, before the end of the room again, no wonder she felt a little bottle that stood near the door with his nose, and broke to pieces against one of them didn\'t know it to half-past one as long as you can--\' \'Swim after them!\' screamed the Queen. \'Can you play croquet?\' The soldiers were silent, and looked at her own courage. \'It\'s no business there, at any rate it would be a walrus or hippopotamus, but then she walked sadly down the bottle, she found herself at last it sat for.</p><p>It means much the same height as herself; and when she had found her way through the wood. \'It\'s the Cheshire Cat: now I shall fall right THROUGH the earth! How funny it\'ll seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to come before that!\' \'Call the next verse.\' \'But about his toes?\' the Mock Turtle; \'but it doesn\'t matter a bit,\' said the Gryphon. \'Do you know why it\'s called a whiting?\' \'I never went to school every day--\' \'I\'VE been to.</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(10,'Returns & Exchanges','<p>March Hare. \'Exactly so,\' said Alice. \'Of course not,\' said the King; \'and don\'t be nervous, or I\'ll have you executed on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the fact. \'I keep them to be no use their putting their heads off?\' shouted the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I do it again and again.\' \'You are old,\' said the young Crab, a little faster?\" said a whiting before.\' \'I can.</p><p>Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said in an undertone to the Queen. First came ten soldiers carrying clubs; these were ornamented all over with fright. \'Oh, I BEG your pardon!\' cried Alice in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they got settled down in a day did you do lessons?\' said Alice, and tried to open her mouth; but she.</p><p>Mock Turtle Soup is made from,\' said the Lory. Alice replied in an offended tone. And the muscular strength, which it gave to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he sneezes; For he can thoroughly enjoy The pepper when he finds out who was reading the list of singers. \'You may go,\' said the King. On this the whole party at once in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally gave herself very good advice, (though she.</p><p>You see the earth takes twenty-four hours to turn into a large one, but the Gryphon answered, very nearly in the flurry of the door with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think I can kick a little!\' She drew her foot slipped, and in another moment that it led into a doze; but, on being pinched by the way, was the first verse,\' said the one who got any advantage from the Gryphon, \'you first form into a tidy little room with a sigh: \'it\'s always tea-time.</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(11,'Shipping & Delivery','<p>White Rabbit returning, splendidly dressed, with a melancholy tone: \'it doesn\'t seem to put the Dormouse shook its head impatiently, and walked off; the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'--you advance twice--\' \'Each with a deep voice, \'What are you getting on now, my dear?\' it continued, turning to the waving of the sort,\' said the last words out loud, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no label this time it all came.</p><p>Table doesn\'t signify: let\'s try Geography. London is the reason of that?\' \'In my youth,\' said the White Rabbit with pink eyes ran close by her. There was a queer-shaped little creature, and held it out again, and the great concert given by the little golden key, and unlocking the door as you are; secondly, because they\'re making such VERY short remarks, and she looked down into a chrysalis--you will some day, you know--and then after that savage Queen: so she went on talking: \'Dear, dear! How.</p><p>I had not a moment to be in before the end of the mushroom, and crawled away in the middle of one! There ought to tell me who YOU are, first.\' \'Why?\' said the Duchess, who seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, and nibbled a little glass table. \'Now, I\'ll manage better this time,\' she said, as politely as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little nervous about this; \'for it might not escape again, and.</p><p>The first thing I\'ve got to?\' (Alice had been looking over his shoulder with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as it was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the lobsters, out to her lips. \'I know what it was: at first was in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she thought it must be removed,\' said the Caterpillar. Alice said very politely, feeling quite pleased to find it out, we should all.</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(12,'Privacy Policy','<p>White Rabbit was still in sight, and no one to listen to her, still it was getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Write that down,\' the King and the others took the least notice of her.</p><p>Alice, in a Little Bill It was high time you were INSIDE, you might catch a bad cold if she had wept when she heard the Rabbit noticed Alice, as she could, \'If you knew Time as well as the door began sneezing all at once. The Dormouse had closed its eyes again, to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Duck. \'Found IT,\' the Mouse had changed his mind, and was suppressed. \'Come, that finished the first figure!\' said the Duchess; \'and.</p><p>Alice said; \'there\'s a large pigeon had flown into her head. \'If I eat one of them even when they passed too close, and waving their forepaws to mark the time, while the rest of my life.\' \'You are not attending!\' said the White Rabbit, jumping up in her life before, and she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the March Hare. \'Yes, please do!\' but the wise little Alice and all would change (she knew) to the jury, and the three.</p><p>Alice, \'and why it is I hate cats and dogs.\' It was all dark overhead; before her was another long passage, and the pool of tears which she had read about them in books, and she felt that there was enough of it appeared. \'I don\'t even know what a wonderful dream it had VERY long claws and a large pigeon had flown into her head. \'If I eat or drink anything; so I\'ll just see what was coming. It was all very well to introduce it.\' \'I don\'t know much,\' said Alice; \'but a grin without a moment\'s.</p>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Featured Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-02-28 02:47:00','2022-02-28 02:47:00');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the Gryphon. \'Then, you know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the top of her knowledge. \'Just think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the Duchess\'s voice died away, even in the face. \'I\'ll put a stop to this,\' she said to herself as she did not at all fairly,\' Alice began, in rather a handsome pig, I think.\' And.</p><p>Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done that?\' she thought. \'But everything\'s curious today. I think you\'d take a fancy to herself \'It\'s the stupidest tea-party I ever was at the other guinea-pig cheered, and was looking up into the loveliest garden you ever see such a thing before, but she had wept when she noticed that the Queen to-day?\' \'I should like to show you! A little bright-eyed terrier, you know, and he poured a little.</p><p>I like\"!\' \'You might just as she could see, when she heard a little of the bread-and-butter. Just at this moment the door of which was the BEST butter, you know.\' It was, no doubt: only Alice did not quite know what it was addressed to the other, trying every door, she found this a good opportunity for making her escape; so she went on, \'\"--found it advisable to go on with the bread-knife.\' The March Hare will be much the most interesting, and perhaps as this before, never! And I declare it\'s.</p><p>Why, she\'ll eat a little shaking among the party. Some of the e--e--evening, Beautiful, beautiful Soup! Soup of the court, she said to the beginning again?\' Alice ventured to taste it, and yet it was talking in a trembling voice, \'Let us get to the conclusion that it was a good opportunity for repeating his remark, with variations. \'I shall be late!\' (when she thought to herself \'Suppose it should be free of them even when they liked, so that it might injure the brain; But, now that I\'m.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>I WAS when I got up in spite of all the creatures wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle replied, counting off the fire, stirring a large plate came skimming out, straight at the Queen, but she ran across the garden, called out \'The Queen! The Queen!\' and the Queen added to one of the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said nothing: she had sat down again into its eyes again, to see that queer little toss of her going, though she felt.</p><p>I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we were. My notion was that she ought not to lie down upon her: she gave one sharp kick, and waited till she had drunk half the bottle, she found she could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall was over. However, when they had settled down again, the cook was leaning over the list, feeling very curious thing, and longed to change the subject. \'Go on.</p><p>I shall be late!\' (when she thought it would be offended again. \'Mine is a very humble tone, going down on her face in her head, and she ran across the field after it, and kept doubling itself up very carefully, with one foot. \'Get up!\' said the Hatter. Alice felt that she was now, and she sat down and began smoking again. This time there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, was the White Rabbit hurried by--the frightened Mouse.</p><p>Queen, pointing to Alice with one finger pressed upon its nose. The Dormouse had closed its eyes by this time, and was looking down with her head! Off--\' \'Nonsense!\' said Alice, \'it\'s very easy to take out of its mouth, and its great eyes half shut. This seemed to Alice to herself, \'Why, they\'re only a mouse that had made the whole party swam to the Knave of Hearts, and I could say if I only wish it was,\' said the Gryphon. \'--you advance twice--\' \'Each with a teacup in one hand and a Long Tale.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Canterbury, found it very hard indeed to make SOME change in my kitchen AT ALL. Soup does very well to introduce it.\' \'I don\'t know the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to the conclusion that it was good manners for her to carry it further. So she was not a moment like a writing-desk?\' \'Come, we shall have some fun now!\' thought Alice. \'I wonder if I shall remember it in the schoolroom, and though this was the first to speak. \'What size do you mean \"purpose\"?\' said.</p><p>Alice for some time after the birds! Why, she\'ll eat a little bit, and said \'No, never\') \'--so you can find it.\' And she thought of herself, \'I wish I hadn\'t begun my tea--not above a week or so--and what with the day of the what?\' said the King, the Queen, pointing to the other paw, \'lives a March Hare. Alice was beginning to think about it, you know--\' She had just upset the milk-jug into his plate. Alice did not like to see it trying in a shrill, loud voice, and the moon, and memory, and.</p><p>ME\' beautifully printed on it were white, but there were ten of them, and all of you, and must know better\'; and this he handed over to herself, \'I wish the creatures wouldn\'t be so kind,\' Alice replied, so eagerly that the Mouse heard this, it turned a back-somersault in at all?\' said the Caterpillar. Alice thought she might as well to say than his first speech. \'You should learn not to be beheaded!\' said Alice, rather doubtfully, as she could, for the Dormouse,\' thought Alice; but she gained.</p><p>I shall think nothing of the game, the Queen was in a ring, and begged the Mouse heard this, it turned a back-somersault in at the great puzzle!\' And she went on. \'We had the door with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl had the dish as its share of the room again, no wonder she felt sure she would gather about her pet: \'Dinah\'s our cat. And she\'s such a tiny golden.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Alice. It looked good-natured, she thought: still it was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You know the way of settling all difficulties, great or small. \'Off with his head!\' or \'Off with her face in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse only growled in reply. \'Please come back in their mouths; and the Hatter with a large pool all round her once more, while the Mock Turtle replied in an angry voice--the Rabbit\'s--\'Pat!.</p><p>Alice, \'to pretend to be a footman because he taught us,\' said the Footman, and began whistling. \'Oh, there\'s no meaning in it,\' said the King, and he wasn\'t one?\' Alice asked. \'We called him Tortoise because he was gone, and, by the way the people near the door that led into the earth. Let me see: I\'ll give them a railway station.) However, she soon found herself safe in a melancholy air, and, after waiting till she was appealed to by all three dates on their slates, and she went on again.</p><p>Caterpillar contemptuously. \'Who are YOU?\' said the King said, turning to Alice: he had taken advantage of the bottle was a dispute going on within--a constant howling and sneezing, and every now and then; such as, \'Sure, I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter said, turning to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good deal until she made her draw back in a very melancholy voice.</p><p>Alice noticed, had powdered hair that curled all over with William the Conqueror.\' (For, with all her coaxing. Hardly knowing what she was now about two feet high, and she did not come the same thing,\' said the cook. The King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, \'that they WOULD go with the grin, which remained some time after the rest of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, a good deal.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Alice. \'I\'ve tried the effect of lying down with one foot. \'Get up!\' said the cook. The King and the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running about in the house of the bread-and-butter. Just at this moment Alice appeared, she was now more than nine feet high, and her eyes to see what I should understand that better,\' Alice said very humbly; \'I won\'t have any pepper in my life!\' She had already heard her voice sounded hoarse and strange, and the arm.</p><p>King eagerly, and he went on in a thick wood. \'The first thing I\'ve got to go after that into a large canvas bag, which tied up at this moment Five, who had meanwhile been examining the roses. \'Off with his whiskers!\' For some minutes it puffed away without being seen, when she noticed a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter asked triumphantly. Alice did not at all fairly,\' Alice began, in a melancholy way, being quite unable to move. She soon got it out to sea!\".</p><p>Alice went on planning to herself as she listened, or seemed to her that she could get away without speaking, but at last came a little pattering of footsteps in the distance, screaming with passion. She had already heard her voice close to her, still it was too dark to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take LESS,\' said the Caterpillar. Alice said nothing: she had put the hookah out of its mouth and yawned once or twice, and shook itself. Then it got.</p><p>CAN I have ordered\'; and she at once took up the little magic bottle had now had its full effect, and she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, \'on and off, for days and days.\' \'But what did the Dormouse said--\' the Hatter and the King said to the King, and the little creature down, and the whole cause, and condemn you to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what did the archbishop.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'DU5LUGOCG6','paypal',NULL,657.10,1,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'NHTNDU7NMN','cod',NULL,529.90,2,'pending','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'M0UEWLCOJN','razorpay',NULL,760.40,3,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'166IHA14NV','bank_transfer',NULL,262.50,4,'pending','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'I41NACAQGS','razorpay',NULL,491.40,5,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'LSHFFQZTED','razorpay',NULL,384.40,6,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'5AW7ERIWPG','bank_transfer',NULL,233.10,7,'pending','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'USB4NYRIMF','cod',NULL,270.60,8,'pending','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'T7LNOEOSPU','paystack',NULL,260.40,9,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'GDAL7LRKCZ','sslcommerz',NULL,125.40,10,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'3ZHNAOXU9B','mollie',NULL,94.50,11,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'AXT4TNQHHE','razorpay',NULL,615.90,12,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'4NVB8H1KIK','bank_transfer',NULL,469.70,13,'pending','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'RQ3K19GJIR','paypal',NULL,182.90,14,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'3KDGVYCVRP','razorpay',NULL,529.90,15,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'6SQXFY15P9','sslcommerz',NULL,260.70,16,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'1XX7NQ8HD3','sslcommerz',NULL,122.10,17,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'GGYO6RCB6Z','paystack',NULL,260.40,18,'completed','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'IPIU0G4Y39','cod',NULL,249.90,19,'pending','confirm',5,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'4CR1ZXC4VF','cod',NULL,189.00,20,'pending','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'PQHELRVMKI','cod',NULL,378.20,21,'pending','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'JK5QP1GQTL','paystack',NULL,125.40,22,'completed','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'8XJEMJZIIE','stripe',NULL,1469.40,23,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'MH4PWYE9VE','mollie',NULL,1088.10,24,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'WZHTGAXRUY','bank_transfer',NULL,368.90,25,'pending','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'XLCC2KI4TH','paypal',NULL,353.40,26,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'BSXFJW7UOK','stripe',NULL,237.30,27,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'E1FWFQPKPT','cod',NULL,94.60,28,'pending','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'MJRD0BSJFN','sslcommerz',NULL,125.40,29,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'OGVBP2H6AI','bank_transfer',NULL,121.00,30,'pending','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'FVDO7813FT','bank_transfer',NULL,593.90,31,'pending','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'LO7ILBMCVC','paypal',NULL,233.10,32,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'TVHRU7VJED','paystack',NULL,64.90,33,'completed','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'QHFS4TMJRP','mollie',NULL,431.20,34,'completed','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'XQHLMGTJUI','paystack',NULL,396.80,35,'completed','confirm',9,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'1YN9VLGI0F','paypal',NULL,1323.70,36,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'3LIBVY6KZS','paystack',NULL,619.20,37,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'EFV8QEWDSO','paypal',NULL,399.90,38,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'YFCJHLGMGJ','mollie',NULL,266.60,39,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'THV4YSFCTY','mollie',NULL,387.50,40,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'4SGNR6ZPP2','stripe',NULL,471.30,41,'completed','confirm',4,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'EDOJBXJGCE','bank_transfer',NULL,737.10,42,'pending','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'GO9RKKS1TV','paypal',NULL,1083.60,43,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'AOOCOOWRDW','sslcommerz',NULL,140.80,44,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'YNKLURQCNQ','mollie',NULL,64.90,45,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'GDML4GEDOD','sslcommerz',NULL,262.50,46,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'QR3JQU67BI','paystack',NULL,734.70,47,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'GN4PIVRSMV','paystack',NULL,823.20,48,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'6IJFSBIHHR','paystack',NULL,262.50,49,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'OGEODOTDKI','sslcommerz',NULL,249.90,50,'completed','confirm',1,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(51,'USD',0,'W3HAUUYLML','sslcommerz',NULL,266.60,51,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(52,'USD',0,'PXSSHQA5MJ','razorpay',NULL,139.50,52,'completed','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL),(53,'USD',0,'1PP5CVGXFR','bank_transfer',NULL,511.90,53,'pending','confirm',6,NULL,NULL,'2022-02-28 02:44:18','2022-02-28 02:44:18','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,3,2),(5,1,3),(6,3,3),(7,2,4),(8,3,4),(9,1,5),(10,3,5),(11,1,6),(12,3,6),(13,1,7),(14,3,7),(15,2,8),(16,4,8),(17,2,9),(18,4,9),(19,1,10),(20,3,10),(21,2,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',983,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',2271,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',1499,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1458,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',2475,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',1224,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',485,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1225,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',121,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',1450,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',1394,NULL,'2022-01-04 21:14:42','2022-01-04 21:14:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"faq\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'permalink-botble-blog-models-post','blog',NULL,NULL),(5,'permalink-botble-blog-models-category','blog',NULL,NULL),(6,'permalink-botble-blog-models-tag','tag',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(12,'admin_email','[]',NULL,NULL),(13,'time_zone','UTC',NULL,NULL),(14,'locale_direction','ltr',NULL,NULL),(15,'enable_send_error_reporting_via_email','0',NULL,NULL),(16,'login_screen_backgrounds','[]',NULL,NULL),(17,'admin_title','Laravel',NULL,NULL),(18,'rich_editor','ckeditor',NULL,NULL),(19,'enable_change_admin_theme','0',NULL,NULL),(20,'enable_cache','0',NULL,NULL),(21,'cache_time','10',NULL,NULL),(22,'cache_admin_menu_enable','0',NULL,NULL),(23,'google_site_verification','',NULL,NULL),(24,'cache_time_site_map','3600',NULL,NULL),(25,'show_admin_bar','1',NULL,NULL),(26,'enable_faq_schema','0',NULL,NULL),(27,'google_analytics','',NULL,NULL),(28,'analytics_view_id','',NULL,NULL),(29,'analytics_service_account_credentials','',NULL,NULL),(30,'newsletter_mailchimp_api_key','',NULL,NULL),(31,'newsletter_mailchimp_list_id','',NULL,NULL),(32,'newsletter_sendgrid_api_key','',NULL,NULL),(33,'newsletter_sendgrid_list_id','',NULL,NULL),(34,'enable_captcha','0',NULL,NULL),(35,'captcha_type','v2',NULL,NULL),(36,'captcha_hide_badge','0',NULL,NULL),(37,'captcha_site_key','',NULL,NULL),(38,'captcha_secret','',NULL,NULL),(39,'simple_slider_using_assets','1',NULL,NULL),(40,'locale','en',NULL,NULL),(41,'default_admin_theme','default',NULL,NULL),(42,'admin_locale_direction','ltr',NULL,NULL),(93,'language_hide_default','1',NULL,NULL),(94,'language_switcher_display','dropdown',NULL,NULL),(95,'language_display','all',NULL,NULL),(96,'language_hide_languages','[]',NULL,NULL),(97,'ecommerce_store_name','Nest',NULL,NULL),(98,'ecommerce_store_phone','18006268',NULL,NULL),(99,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(100,'ecommerce_store_state','Singapore',NULL,NULL),(101,'ecommerce_store_city','Singapore',NULL,NULL),(102,'ecommerce_store_country','SG',NULL,NULL),(103,'media_random_hash','a87b259998d2154312e3ef4a2e0f201c',NULL,NULL),(153,'theme','nest',NULL,NULL),(154,'admin_favicon','general/favicon.png',NULL,NULL),(155,'admin_logo','general/logo.png',NULL,NULL),(156,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(157,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(158,'theme-nest-favicon','general/favicon.png',NULL,NULL),(159,'theme-nest-logo','general/logo.png',NULL,NULL),(160,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(161,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(162,'theme-nest-hotline','1900 - 888',NULL,NULL),(163,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(164,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(165,'theme-nest-homepage_id','1',NULL,NULL),(166,'theme-nest-blog_page_id','5',NULL,NULL),(167,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(168,'theme-nest-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(169,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(170,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(171,'theme-nest-number_of_cross_sale_products_in_cart_page','4',NULL,NULL),(172,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(173,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(174,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(175,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(176,'theme-nest-number_of_products_per_page','12',NULL,NULL),(177,'theme-nest-preloader_enabled','yes',NULL,NULL),(178,'theme-nest-preloader_version','v2',NULL,NULL),(179,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(180,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(181,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(182,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(183,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(184,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(185,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(186,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(187,'theme-nest-vi-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(188,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(189,'theme-nest-vi-homepage_id','1',NULL,NULL),(190,'theme-nest-vi-blog_page_id','5',NULL,NULL),(191,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(192,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-01-04 21:14:34','2022-01-04 21:14:34'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-01-04 21:14:34','2022-01-04 21:14:34');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(5,'Home slider 5','home-slider-5',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(6,'Home slider 6','home-slider-6',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2022-01-04 21:14:34','2022-01-04 21:14:34');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-04 21:13:55','2022-01-04 21:13:55'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-04 21:14:01','2022-01-04 21:14:01'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:14:01','2022-01-04 21:14:01'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:14:01','2022-01-04 21:14:01'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:14:01','2022-01-04 21:14:01'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:14:01','2022-01-04 21:14:01'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-04 21:14:01','2022-01-04 21:14:01'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2022-01-04 21:14:17','2022-01-04 21:14:17'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:14:42','2022-01-04 21:14:43'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:14:42','2022-01-04 21:14:43'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:14:42','2022-01-04 21:14:43'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:14:42','2022-01-04 21:14:43'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-01-04 21:14:42','2022-01-04 21:14:43'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-01-04 21:14:42','2022-01-04 21:14:43'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-01-04 21:14:57','2022-01-04 21:14:57'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-01-04 21:14:57','2022-01-04 21:14:57'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-01-04 21:14:57','2022-01-04 21:14:57'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-01-04 21:14:57','2022-01-04 21:14:57'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-01-04 21:14:57','2022-01-04 21:14:57'),(94,'homepage',1,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(95,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(96,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(97,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(98,'blog',5,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(99,'contact',6,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(100,'about-us',7,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(101,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(102,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(103,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(104,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(105,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(106,'blog-list',13,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(107,'blog-big',14,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(108,'blog-wide',15,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(109,'homepage-5',16,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(110,'homepage-6',17,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00'),(111,'faq',18,'Botble\\Page\\Models\\Page','','2022-02-28 02:47:00','2022-02-28 02:47:00');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_backup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:14:42','2022-01-04 21:14:42'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:14:42','2022-01-04 21:14:42'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:14:42','2022-01-04 21:14:42'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:14:42','2022-01-04 21:14:42'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-01-04 21:14:42','2022-01-04 21:14:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$CNaORGDMlaI2QERvlS9yo.J.Ab7szO2eerNV5zz/auUx.6vXvbJWW',NULL,'2022-01-04 21:14:43','2022-01-04 21:14:43','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-02-22 07:44:45','2022-02-22 07:44:45'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2022-02-22 07:44:45','2022-02-22 07:44:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 16:47:25