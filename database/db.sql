-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: su_app_directory
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activations`
--

LOCK TABLES `admin_activations` WRITE;
/*!40000 ALTER TABLE `admin_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Sam','Maosa','smaosa@strathmore.edu','$2y$10$CzMn.hm5YGlyUp4HF632hekqVGBzhfLWZh.UNDEv2EFCSfS1rM5im','V7XxyTZai0jjyxLPy2TIGfhGSIq6QgN7N3WHne9xdgsksiQZrlax8ddZad3i',1,0,'en',NULL,'2020-02-12 06:54:31','2020-02-12 07:08:38'),(2,'Hillary','Okoth','hillary.okoth@strathmore.edu','$2y$10$ZhEYKFyf1nQWJtRqtvJYJuJQbgv54IhGUUNQUcMN1DZdgPx.2PUxG',NULL,1,0,'en',NULL,'2020-02-12 07:07:34','2020-02-12 07:07:34'),(3,'Diana','Mwaura','diana.mwaura@strathmore.edu','$2y$10$WokdXOot3jUCcQ9RYquiV..Tndk49Z2x2X88eHxzfaBp7iRMCLn7S',NULL,1,0,'en',NULL,'2020-02-12 07:08:06','2020-02-12 07:08:06');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1,'avatar','avatar','avatar.png','image/png','media',23924,'[]','{\"generated_conversions\": {\"thumb_75\": true, \"thumb_150\": true, \"thumb_200\": true}}','[]',1,'2020-02-12 06:54:31','2020-02-12 06:54:32');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2020_02_12_095416_create_media_table',1),(10,'2020_02_12_095416_create_permission_tables',1),(11,'2020_02_12_095421_fill_default_admin_user_and_permissions',1),(12,'2020_02_12_095416_create_translations_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1),(1,'Brackets\\AdminAuth\\Models\\AdminUser',2),(1,'Brackets\\AdminAuth\\Models\\AdminUser',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(2,'admin.translation.index','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(3,'admin.translation.edit','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(4,'admin.translation.rescan','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(5,'admin.admin-user.index','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(6,'admin.admin-user.create','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(7,'admin.admin-user.edit','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(8,'admin.admin-user.delete','admin','2020-02-12 06:54:31','2020-02-12 06:54:31'),(9,'admin.upload','admin','2020-02-12 06:54:31','2020-02-12 06:54:31');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','admin','2020-02-12 06:54:31','2020-02-12 06:54:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(4,'*','admin','admin-user.columns.first_name','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(5,'*','admin','admin-user.columns.last_name','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(6,'*','admin','admin-user.columns.email','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(7,'*','admin','admin-user.columns.password','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(8,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(9,'*','admin','admin-user.columns.activated','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(10,'*','admin','admin-user.columns.forbidden','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(11,'*','admin','admin-user.columns.language','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(12,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(22,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(23,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(24,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(25,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(26,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(27,'brackets/admin-ui','admin','btn.new','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(28,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(29,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(30,'brackets/admin-ui','admin','sidebar.content','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(31,'brackets/admin-ui','admin','sidebar.settings','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(32,'*','admin','admin-user.actions.edit_password','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(33,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(34,'brackets/admin-auth','activations','email.line','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(35,'brackets/admin-auth','activations','email.action','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(36,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(37,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(38,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(39,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(40,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(41,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(42,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(43,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(44,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(45,'brackets/admin-auth','admin','passwords.invalid_password','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(46,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(47,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(48,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(49,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(50,'brackets/admin-auth','admin','login.title','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(51,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(52,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(53,'brackets/admin-auth','admin','login.button','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(54,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(55,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(56,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(57,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(58,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(59,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(60,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(61,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(62,'*','*','Manage access','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(63,'*','*','Translations','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL),(64,'*','*','Configuration','[]',NULL,'2020-02-12 06:54:36','2020-02-12 06:54:36',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysiwyg_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int(10) unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wysiwyg_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-12 13:17:57
