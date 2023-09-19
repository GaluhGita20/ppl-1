-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ams-kbn
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `ref_aspects`
--

DROP TABLE IF EXISTS `ref_aspects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_aspects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `ict_object_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_aspects_object_id_foreign` (`object_id`),
  KEY `ref_aspects_ict_object_id_foreign` (`ict_object_id`),
  CONSTRAINT `ref_aspects_ict_object_id_foreign` FOREIGN KEY (`ict_object_id`) REFERENCES `ref_ict_objects` (`id`),
  CONSTRAINT `ref_aspects_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_aspects`
--

LOCK TABLES `ref_aspects` WRITE;
/*!40000 ALTER TABLE `ref_aspects` DISABLE KEYS */;
INSERT INTO `ref_aspects` VALUES (1,'Lingkup HSSE 1','operation',19,NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,'Lingkup HSSE 2','operation',19,NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,'Lingkup SDM 1','operation',13,NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(4,'Lingkup SDM 2','operation',13,NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(5,'Bidang Operasional','operation',11,NULL,1,NULL,'2023-07-25 13:19:53',NULL),(6,'Bidang Keuangan & Umum','operation',11,NULL,1,NULL,'2023-07-25 13:20:44',NULL),(7,'Bidang Pemasaran','operation',11,NULL,1,NULL,'2023-07-25 13:21:06',NULL);
/*!40000 ALTER TABLE `ref_aspects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_audit_rating`
--

DROP TABLE IF EXISTS `ref_audit_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_audit_rating` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audit_rating` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_audit_rating`
--

LOCK TABLES `ref_audit_rating` WRITE;
/*!40000 ALTER TABLE `ref_audit_rating` DISABLE KEYS */;
INSERT INTO `ref_audit_rating` VALUES (1,'Baik Sekali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-07-24 14:13:58',NULL),(2,'Baik','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-07-24 14:13:58',NULL),(3,'Cukup','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-07-24 14:13:58',NULL),(4,'Kurang','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-07-24 14:13:58',NULL),(5,'Kurang sekali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-07-24 14:13:58',NULL),(6,'Baik Sekali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-08-09 11:59:18',NULL),(7,'Baik','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-08-09 11:59:18',NULL),(8,'Cukup','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-08-09 11:59:18',NULL),(9,'Kurang','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-08-09 11:59:18',NULL),(10,'Kurang sekali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non nisi erat. Donec maximus venenatis consectetur. Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum. Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere. Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros. Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',1,NULL,'2023-08-09 11:59:18',NULL);
/*!40000 ALTER TABLE `ref_audit_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_auditee_nonpkpt`
--

DROP TABLE IF EXISTS `ref_auditee_nonpkpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_auditee_nonpkpt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_auditee_nonpkpt`
--

LOCK TABLES `ref_auditee_nonpkpt` WRITE;
/*!40000 ALTER TABLE `ref_auditee_nonpkpt` DISABLE KEYS */;
INSERT INTO `ref_auditee_nonpkpt` VALUES (1,'Auditee Non PKPT 1','100200','nonpkpt1@email.com','Jakarta Utara','Michael Jordan','Kepala Divisi Internal Audit',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,'Auditee Non PKPT 2','300200','nonpkpt2@email.com','Jakarta Utara','David Beckham','Kepala Divisi Internal Audit',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,'Auditee Non PKPT 3','900800','nonpkpt3@email.com','Jakarta Utara','John Doe','Kepala Divisi Internal Audit',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58');
/*!40000 ALTER TABLE `ref_auditee_nonpkpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_bank_accounts`
--

DROP TABLE IF EXISTS `ref_bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_bank_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `number` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_bank_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `ref_bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_bank_accounts`
--

LOCK TABLES `ref_bank_accounts` WRITE;
/*!40000 ALTER TABLE `ref_bank_accounts` DISABLE KEYS */;
INSERT INTO `ref_bank_accounts` VALUES (1,7,'123456','mandiri',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,12,'22113344','bni',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,4,'55667788','bca',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(4,16,'00998877','bni',NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(5,10,'125999','mandiri',1,NULL,'2023-07-25 14:20:38',NULL),(6,14,'99999','mandiri',1,NULL,'2023-07-25 14:21:02',NULL),(7,13,'0809','mandiri',1,NULL,'2023-07-25 14:21:22',NULL);
/*!40000 ALTER TABLE `ref_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_city`
--

DROP TABLE IF EXISTS `ref_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_city_province_id_foreign` (`province_id`),
  CONSTRAINT `ref_city_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ref_province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_city`
--

LOCK TABLES `ref_city` WRITE;
/*!40000 ALTER TABLE `ref_city` DISABLE KEYS */;
INSERT INTO `ref_city` VALUES (1,1,'KAB. ACEH SELATAN','1101',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(2,1,'KAB. ACEH TENGGARA','1102',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(3,1,'KAB. ACEH TIMUR','1103',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(4,1,'KAB. ACEH TENGAH','1104',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(5,1,'KAB. ACEH BARAT','1105',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(6,1,'KAB. ACEH BESAR','1106',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(7,1,'KAB. PIDIE','1107',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(8,1,'KAB. ACEH UTARA','1108',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(9,1,'KAB. SIMEULUE','1109',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(10,1,'KAB. ACEH SINGKIL','1110',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(11,1,'KAB. BIREUEN','1111',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(12,1,'KAB. ACEH BARAT DAYA','1112',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(13,1,'KAB. GAYO LUES','1113',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(14,1,'KAB. ACEH JAYA','1114',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(15,1,'KAB. NAGAN RAYA','1115',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(16,1,'KAB. ACEH TAMIANG','1116',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(17,1,'KAB. BENER MERIAH','1117',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(18,1,'KAB. PIDIE JAYA','1118',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(19,1,'KOTA BANDA ACEH','1171',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(20,1,'KOTA SABANG','1172',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(21,1,'KOTA LHOKSEUMAWE','1173',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(22,1,'KOTA LANGSA','1174',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(23,1,'KOTA SUBULUSSALAM','1175',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(24,2,'KAB. TAPANULI TENGAH','1201',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(25,2,'KAB. TAPANULI UTARA','1202',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(26,2,'KAB. TAPANULI SELATAN','1203',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(27,2,'KAB. NIAS','1204',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(28,2,'KAB. LANGKAT','1205',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(29,2,'KAB. KARO','1206',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(30,2,'KAB. DELI SERDANG','1207',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(31,2,'KAB. SIMALUNGUN','1208',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(32,2,'KAB. ASAHAN','1209',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(33,2,'KAB. LABUHANBATU','1210',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(34,2,'KAB. DAIRI','1211',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(35,2,'KAB. TOBA SAMOSIR','1212',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(36,2,'KAB. MANDAILING NATAL','1213',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(37,2,'KAB. NIAS SELATAN','1214',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(38,2,'KAB. PAKPAK BHARAT','1215',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(39,2,'KAB. HUMBANG HASUNDUTAN','1216',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(40,2,'KAB. SAMOSIR','1217',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(41,2,'KAB. SERDANG BEDAGAI','1218',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(42,2,'KAB. BATU BARA','1219',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(43,2,'KAB. PADANG LAWAS UTARA','1220',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(44,2,'KAB. PADANG LAWAS','1221',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(45,2,'KAB. LABUHANBATU SELATAN','1222',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(46,2,'KAB. LABUHANBATU UTARA','1223',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(47,2,'KAB. NIAS UTARA','1224',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(48,2,'KAB. NIAS BARAT','1225',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(49,2,'KOTA MEDAN','1271',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(50,2,'KOTA PEMATANGSIANTAR','1272',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(51,2,'KOTA SIBOLGA','1273',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(52,2,'KOTA TANJUNG BALAI','1274',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(53,2,'KOTA BINJAI','1275',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(54,2,'KOTA TEBING TINGGI','1276',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(55,2,'KOTA PADANGSIDIMPUAN','1277',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(56,2,'KOTA GUNUNGSITOLI','1278',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(57,3,'KAB. PESISIR SELATAN','1301',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(58,3,'KAB. SOLOK','1302',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(59,3,'KAB. SIJUNJUNG','1303',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(60,3,'KAB. TANAH DATAR','1304',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(61,3,'KAB. PADANG PARIAMAN','1305',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(62,3,'KAB. AGAM','1306',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(63,3,'KAB. LIMA PULUH KOTA','1307',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(64,3,'KAB. PASAMAN','1308',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(65,3,'KAB. KEPULAUAN MENTAWAI','1309',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(66,3,'KAB. DHARMASRAYA','1310',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(67,3,'KAB. SOLOK SELATAN','1311',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(68,3,'KAB. PASAMAN BARAT','1312',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(69,3,'KOTA PADANG','1371',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(70,3,'KOTA SOLOK','1372',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(71,3,'KOTA SAWAHLUNTO','1373',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(72,3,'KOTA PADANG PANJANG','1374',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(73,3,'KOTA BUKITTINGGI','1375',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(74,3,'KOTA PAYAKUMBUH','1376',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(75,3,'KOTA PARIAMAN','1377',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(76,4,'KAB. KAMPAR','1401',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(77,4,'KAB. INDRAGIRI HULU','1402',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(78,4,'KAB. BENGKALIS','1403',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(79,4,'KAB. INDRAGIRI HILIR','1404',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(80,4,'KAB. PELALAWAN','1405',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(81,4,'KAB. ROKAN HULU','1406',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(82,4,'KAB. ROKAN HILIR','1407',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(83,4,'KAB. SIAK','1408',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(84,4,'KAB. KUANTAN SINGINGI','1409',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(85,4,'KAB. KEPULAUAN MERANTI','1410',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(86,4,'KOTA PEKANBARU','1471',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(87,4,'KOTA DUMAI','1472',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(88,5,'KAB. KERINCI','1501',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(89,5,'KAB. MERANGIN','1502',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(90,5,'KAB. SAROLANGUN','1503',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(91,5,'KAB. BATANGHARI','1504',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(92,5,'KAB. MUARO JAMBI','1505',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(93,5,'KAB. TANJUNG JABUNG BARAT','1506',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(94,5,'KAB. TANJUNG JABUNG TIMUR','1507',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(95,5,'KAB. BUNGO','1508',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(96,5,'KAB. TEBO','1509',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(97,5,'KOTA JAMBI','1571',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(98,5,'KOTA SUNGAI PENUH','1572',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(99,6,'KAB. OGAN KOMERING ULU','1601',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(100,6,'KAB. OGAN KOMERING ILIR','1602',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(101,6,'KAB. MUARA ENIM','1603',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(102,6,'KAB. LAHAT','1604',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(103,6,'KAB. MUSI RAWAS','1605',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(104,6,'KAB. MUSI BANYUASIN','1606',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(105,6,'KAB. BANYUASIN','1607',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(106,6,'KAB. OGAN KOMERING ULU TIMUR','1608',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(107,6,'KAB. OGAN KOMERING ULU SELATAN','1609',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(108,6,'KAB. OGAN ILIR','1610',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(109,6,'KAB. EMPAT LAWANG','1611',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(110,6,'KAB. PENUKAL ABAB LEMATANG ILIR','1612',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(111,6,'KAB. MUSI RAWAS UTARA','1613',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(112,6,'KOTA PALEMBANG','1671',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(113,6,'KOTA PAGAR ALAM','1672',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(114,6,'KOTA LUBUK LINGGAU','1673',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(115,6,'KOTA PRABUMULIH','1674',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(116,7,'KAB. BENGKULU SELATAN','1701',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(117,7,'KAB. REJANG LEBONG','1702',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(118,7,'KAB. BENGKULU UTARA','1703',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(119,7,'KAB. KAUR','1704',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(120,7,'KAB. SELUMA','1705',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(121,7,'KAB. MUKO MUKO','1706',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(122,7,'KAB. LEBONG','1707',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(123,7,'KAB. KEPAHIANG','1708',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(124,7,'KAB. BENGKULU TENGAH','1709',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(125,7,'KOTA BENGKULU','1771',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(126,8,'KAB. LAMPUNG SELATAN','1801',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(127,8,'KAB. LAMPUNG TENGAH','1802',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(128,8,'KAB. LAMPUNG UTARA','1803',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(129,8,'KAB. LAMPUNG BARAT','1804',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(130,8,'KAB. TULANG BAWANG','1805',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(131,8,'KAB. TANGGAMUS','1806',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(132,8,'KAB. LAMPUNG TIMUR','1807',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(133,8,'KAB. WAY KANAN','1808',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(134,8,'KAB. PESAWARAN','1809',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(135,8,'KAB. PRINGSEWU','1810',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(136,8,'KAB. MESUJI','1811',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(137,8,'KAB. TULANG BAWANG BARAT','1812',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(138,8,'KAB. PESISIR BARAT','1813',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(139,8,'KOTA BANDAR LAMPUNG','1871',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(140,8,'KOTA METRO','1872',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(141,9,'KAB. BANGKA','1901',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(142,9,'KAB. BELITUNG','1902',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(143,9,'KAB. BANGKA SELATAN','1903',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(144,9,'KAB. BANGKA TENGAH','1904',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(145,9,'KAB. BANGKA BARAT','1905',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(146,9,'KAB. BELITUNG TIMUR','1906',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(147,9,'KOTA PANGKAL PINANG','1971',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(148,10,'KAB. BINTAN','2101',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(149,10,'KAB. KARIMUN','2102',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(150,10,'KAB. NATUNA','2103',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(151,10,'KAB. LINGGA','2104',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(152,10,'KAB. KEPULAUAN ANAMBAS','2105',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(153,10,'KOTA BATAM','2171',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(154,10,'KOTA TANJUNG PINANG','2172',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(155,11,'KAB. ADM. KEP. SERIBU','3101',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(156,11,'KOTA ADM. JAKARTA PUSAT','3171',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(157,11,'KOTA ADM. JAKARTA UTARA','3172',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(158,11,'KOTA ADM. JAKARTA BARAT','3173',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(159,11,'KOTA ADM. JAKARTA SELATAN','3174',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(160,11,'KOTA ADM. JAKARTA TIMUR','3175',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(161,12,'KAB. BOGOR','3201',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(162,12,'KAB. SUKABUMI','3202',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(163,12,'KAB. CIANJUR','3203',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(164,12,'KAB. BANDUNG','3204',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(165,12,'KAB. GARUT','3205',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(166,12,'KAB. TASIKMALAYA','3206',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(167,12,'KAB. CIAMIS','3207',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(168,12,'KAB. KUNINGAN','3208',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(169,12,'KAB. CIREBON','3209',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(170,12,'KAB. MAJALENGKA','3210',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(171,12,'KAB. SUMEDANG','3211',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(172,12,'KAB. INDRAMAYU','3212',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(173,12,'KAB. SUBANG','3213',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(174,12,'KAB. PURWAKARTA','3214',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(175,12,'KAB. KARAWANG','3215',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(176,12,'KAB. BEKASI','3216',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(177,12,'KAB. BANDUNG BARAT','3217',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(178,12,'KAB. PANGANDARAN','3218',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(179,12,'KOTA BOGOR','3271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(180,12,'KOTA SUKABUMI','3272',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(181,12,'KOTA BANDUNG','3273',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(182,12,'KOTA CIREBON','3274',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(183,12,'KOTA BEKASI','3275',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(184,12,'KOTA DEPOK','3276',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(185,12,'KOTA CIMAHI','3277',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(186,12,'KOTA TASIKMALAYA','3278',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(187,12,'KOTA BANJAR','3279',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(188,13,'KAB. CILACAP','3301',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(189,13,'KAB. BANYUMAS','3302',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(190,13,'KAB. PURBALINGGA','3303',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(191,13,'KAB. BANJARNEGARA','3304',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(192,13,'KAB. KEBUMEN','3305',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(193,13,'KAB. PURWOREJO','3306',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(194,13,'KAB. WONOSOBO','3307',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(195,13,'KAB. MAGELANG','3308',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(196,13,'KAB. BOYOLALI','3309',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(197,13,'KAB. KLATEN','3310',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(198,13,'KAB. SUKOHARJO','3311',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(199,13,'KAB. WONOGIRI','3312',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(200,13,'KAB. KARANGANYAR','3313',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(201,13,'KAB. SRAGEN','3314',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(202,13,'KAB. GROBOGAN','3315',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(203,13,'KAB. BLORA','3316',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(204,13,'KAB. REMBANG','3317',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(205,13,'KAB. PATI','3318',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(206,13,'KAB. KUDUS','3319',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(207,13,'KAB. JEPARA','3320',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(208,13,'KAB. DEMAK','3321',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(209,13,'KAB. SEMARANG','3322',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(210,13,'KAB. TEMANGGUNG','3323',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(211,13,'KAB. KENDAL','3324',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(212,13,'KAB. BATANG','3325',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(213,13,'KAB. PEKALONGAN','3326',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(214,13,'KAB. PEMALANG','3327',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(215,13,'KAB. TEGAL','3328',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(216,13,'KAB. BREBES','3329',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(217,13,'KOTA MAGELANG','3371',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(218,13,'KOTA SURAKARTA','3372',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(219,13,'KOTA SALATIGA','3373',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(220,13,'KOTA SEMARANG','3374',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(221,13,'KOTA PEKALONGAN','3375',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(222,13,'KOTA TEGAL','3376',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(223,14,'KAB. KULON PROGO','3401',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(224,14,'KAB. BANTUL','3402',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(225,14,'KAB. GUNUNGKIDUL','3403',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(226,14,'KAB. SLEMAN','3404',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(227,14,'KOTA YOGYAKARTA','3471',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(228,15,'KAB. PACITAN','3501',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(229,15,'KAB. PONOROGO','3502',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(230,15,'KAB. TRENGGALEK','3503',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(231,15,'KAB. TULUNGAGUNG','3504',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(232,15,'KAB. BLITAR','3505',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(233,15,'KAB. KEDIRI','3506',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(234,15,'KAB. MALANG','3507',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(235,15,'KAB. LUMAJANG','3508',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(236,15,'KAB. JEMBER','3509',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(237,15,'KAB. BANYUWANGI','3510',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(238,15,'KAB. BONDOWOSO','3511',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(239,15,'KAB. SITUBONDO','3512',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(240,15,'KAB. PROBOLINGGO','3513',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(241,15,'KAB. PASURUAN','3514',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(242,15,'KAB. SIDOARJO','3515',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(243,15,'KAB. MOJOKERTO','3516',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(244,15,'KAB. JOMBANG','3517',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(245,15,'KAB. NGANJUK','3518',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(246,15,'KAB. MADIUN','3519',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(247,15,'KAB. MAGETAN','3520',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(248,15,'KAB. NGAWI','3521',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(249,15,'KAB. BOJONEGORO','3522',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(250,15,'KAB. TUBAN','3523',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(251,15,'KAB. LAMONGAN','3524',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(252,15,'KAB. GRESIK','3525',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(253,15,'KAB. BANGKALAN','3526',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(254,15,'KAB. SAMPANG','3527',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(255,15,'KAB. PAMEKASAN','3528',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(256,15,'KAB. SUMENEP','3529',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(257,15,'KOTA KEDIRI','3571',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(258,15,'KOTA BLITAR','3572',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(259,15,'KOTA MALANG','3573',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(260,15,'KOTA PROBOLINGGO','3574',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(261,15,'KOTA PASURUAN','3575',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(262,15,'KOTA MOJOKERTO','3576',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(263,15,'KOTA MADIUN','3577',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(264,15,'KOTA SURABAYA','3578',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(265,15,'KOTA BATU','3579',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(266,16,'KAB. PANDEGLANG','3601',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(267,16,'KAB. LEBAK','3602',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(268,16,'KAB. TANGERANG','3603',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(269,16,'KAB. SERANG','3604',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(270,16,'KOTA TANGERANG','3671',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(271,16,'KOTA CILEGON','3672',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(272,16,'KOTA SERANG','3673',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(273,16,'KOTA TANGERANG SELATAN','3674',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(274,17,'KAB. JEMBRANA','5101',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(275,17,'KAB. TABANAN','5102',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(276,17,'KAB. BADUNG','5103',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(277,17,'KAB. GIANYAR','5104',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(278,17,'KAB. KLUNGKUNG','5105',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(279,17,'KAB. BANGLI','5106',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(280,17,'KAB. KARANGASEM','5107',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(281,17,'KAB. BULELENG','5108',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(282,17,'KOTA DENPASAR','5171',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(283,18,'KAB. LOMBOK BARAT','5201',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(284,18,'KAB. LOMBOK TENGAH','5202',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(285,18,'KAB. LOMBOK TIMUR','5203',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(286,18,'KAB. SUMBAWA','5204',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(287,18,'KAB. DOMPU','5205',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(288,18,'KAB. BIMA','5206',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(289,18,'KAB. SUMBAWA BARAT','5207',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(290,18,'KAB. LOMBOK UTARA','5208',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(291,18,'KOTA MATARAM','5271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(292,18,'KOTA BIMA','5272',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(293,19,'KAB. KUPANG','5301',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(294,19,'KAB TIMOR TENGAH SELATAN','5302',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(295,19,'KAB. TIMOR TENGAH UTARA','5303',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(296,19,'KAB. BELU','5304',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(297,19,'KAB. ALOR','5305',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(298,19,'KAB. FLORES TIMUR','5306',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(299,19,'KAB. SIKKA','5307',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(300,19,'KAB. ENDE','5308',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(301,19,'KAB. NGADA','5309',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(302,19,'KAB. MANGGARAI','5310',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(303,19,'KAB. SUMBA TIMUR','5311',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(304,19,'KAB. SUMBA BARAT','5312',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(305,19,'KAB. LEMBATA','5313',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(306,19,'KAB. ROTE NDAO','5314',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(307,19,'KAB. MANGGARAI BARAT','5315',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(308,19,'KAB. NAGEKEO','5316',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(309,19,'KAB. SUMBA TENGAH','5317',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(310,19,'KAB. SUMBA BARAT DAYA','5318',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(311,19,'KAB. MANGGARAI TIMUR','5319',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(312,19,'KAB. SABU RAIJUA','5320',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(313,19,'KAB. MALAKA','5321',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(314,19,'KOTA KUPANG','5371',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(315,20,'KAB. SAMBAS','6101',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(316,20,'KAB. MEMPAWAH','6102',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(317,20,'KAB. SANGGAU','6103',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(318,20,'KAB. KETAPANG','6104',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(319,20,'KAB. SINTANG','6105',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(320,20,'KAB. KAPUAS HULU','6106',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(321,20,'KAB. BENGKAYANG','6107',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(322,20,'KAB. LANDAK','6108',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(323,20,'KAB. SEKADAU','6109',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(324,20,'KAB. MELAWI','6110',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(325,20,'KAB. KAYONG UTARA','6111',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(326,20,'KAB. KUBU RAYA','6112',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(327,20,'KOTA PONTIANAK','6171',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(328,20,'KOTA SINGKAWANG','6172',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(329,21,'KAB. KOTAWARINGIN BARAT','6201',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(330,21,'KAB. KOTAWARINGIN TIMUR','6202',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(331,21,'KAB. KAPUAS','6203',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(332,21,'KAB. BARITO SELATAN','6204',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(333,21,'KAB. BARITO UTARA','6205',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(334,21,'KAB. KATINGAN','6206',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(335,21,'KAB. SERUYAN','6207',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(336,21,'KAB. SUKAMARA','6208',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(337,21,'KAB. LAMANDAU','6209',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(338,21,'KAB. GUNUNG MAS','6210',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(339,21,'KAB. PULANG PISAU','6211',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(340,21,'KAB. MURUNG RAYA','6212',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(341,21,'KAB. BARITO TIMUR','6213',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(342,21,'KOTA PALANGKARAYA','6271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(343,22,'KAB. TANAH LAUT','6301',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(344,22,'KAB. KOTABARU','6302',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(345,22,'KAB. BANJAR','6303',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(346,22,'KAB. BARITO KUALA','6304',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(347,22,'KAB. TAPIN','6305',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(348,22,'KAB. HULU SUNGAI SELATAN','6306',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(349,22,'KAB. HULU SUNGAI TENGAH','6307',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(350,22,'KAB. HULU SUNGAI UTARA','6308',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(351,22,'KAB. TABALONG','6309',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(352,22,'KAB. TANAH BUMBU','6310',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(353,22,'KAB. BALANGAN','6311',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(354,22,'KOTA BANJARMASIN','6371',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(355,22,'KOTA BANJARBARU','6372',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(356,23,'KAB. PASER','6401',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(357,23,'KAB. KUTAI KARTANEGARA','6402',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(358,23,'KAB. BERAU','6403',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(359,23,'KAB. KUTAI BARAT','6407',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(360,23,'KAB. KUTAI TIMUR','6408',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(361,23,'KAB. PENAJAM PASER UTARA','6409',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(362,23,'KAB. MAHAKAM ULU','6411',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(363,23,'KOTA BALIKPAPAN','6471',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(364,23,'KOTA SAMARINDA','6472',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(365,23,'KOTA BONTANG','6474',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(366,24,'KAB. BULUNGAN','6501',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(367,24,'KAB. MALINAU','6502',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(368,24,'KAB. NUNUKAN','6503',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(369,24,'KAB. TANA TIDUNG','6504',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(370,24,'KOTA TARAKAN','6571',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(371,25,'KAB. BOLAANG MONGONDOW','7101',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(372,25,'KAB. MINAHASA','7102',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(373,25,'KAB. KEPULAUAN SANGIHE','7103',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(374,25,'KAB. KEPULAUAN TALAUD','7104',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(375,25,'KAB. MINAHASA SELATAN','7105',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(376,25,'KAB. MINAHASA UTARA','7106',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(377,25,'KAB. MINAHASA TENGGARA','7107',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(378,25,'KAB. BOLAANG MONGONDOW UTARA','7108',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(379,25,'KAB. KEP. SIAU TAGULANDANG BIARO','7109',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(380,25,'KAB. BOLAANG MONGONDOW TIMUR','7110',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(381,25,'KAB. BOLAANG MONGONDOW SELATAN','7111',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(382,25,'KOTA MANADO','7171',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(383,25,'KOTA BITUNG','7172',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(384,25,'KOTA TOMOHON','7173',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(385,25,'KOTA KOTAMOBAGU','7174',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(386,26,'KAB. BANGGAI','7201',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(387,26,'KAB. POSO','7202',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(388,26,'KAB. DONGGALA','7203',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(389,26,'KAB. TOLI TOLI','7204',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(390,26,'KAB. BUOL','7205',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(391,26,'KAB. MOROWALI','7206',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(392,26,'KAB. BANGGAI KEPULAUAN','7207',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(393,26,'KAB. PARIGI MOUTONG','7208',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(394,26,'KAB. TOJO UNA UNA','7209',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(395,26,'KAB. SIGI','7210',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(396,26,'KAB. BANGGAI LAUT','7211',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(397,26,'KAB. MOROWALI UTARA','7212',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(398,26,'KOTA PALU','7271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(399,27,'KAB. KEPULAUAN SELAYAR','7301',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(400,27,'KAB. BULUKUMBA','7302',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(401,27,'KAB. BANTAENG','7303',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(402,27,'KAB. JENEPONTO','7304',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(403,27,'KAB. TAKALAR','7305',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(404,27,'KAB. GOWA','7306',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(405,27,'KAB. SINJAI','7307',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(406,27,'KAB. BONE','7308',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(407,27,'KAB. MAROS','7309',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(408,27,'KAB. PANGKAJENE KEPULAUAN','7310',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(409,27,'KAB. BARRU','7311',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(410,27,'KAB. SOPPENG','7312',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(411,27,'KAB. WAJO','7313',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(412,27,'KAB. SIDENRENG RAPPANG','7314',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(413,27,'KAB. PINRANG','7315',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(414,27,'KAB. ENREKANG','7316',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(415,27,'KAB. LUWU','7317',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(416,27,'KAB. TANA TORAJA','7318',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(417,27,'KAB. LUWU UTARA','7322',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(418,27,'KAB. LUWU TIMUR','7324',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(419,27,'KAB. TORAJA UTARA','7326',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(420,27,'KOTA MAKASSAR','7371',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(421,27,'KOTA PARE PARE','7372',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(422,27,'KOTA PALOPO','7373',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(423,28,'KAB. KOLAKA','7401',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(424,28,'KAB. KONAWE','7402',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(425,28,'KAB. MUNA','7403',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(426,28,'KAB. BUTON','7404',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(427,28,'KAB. KONAWE SELATAN','7405',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(428,28,'KAB. BOMBANA','7406',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(429,28,'KAB. WAKATOBI','7407',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(430,28,'KAB. KOLAKA UTARA','7408',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(431,28,'KAB. KONAWE UTARA','7409',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(432,28,'KAB. BUTON UTARA','7410',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(433,28,'KAB. KOLAKA TIMUR','7411',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(434,28,'KAB. KONAWE KEPULAUAN','7412',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(435,28,'KAB. MUNA BARAT','7413',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(436,28,'KAB. BUTON TENGAH','7414',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(437,28,'KAB. BUTON SELATAN','7415',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(438,28,'KOTA KENDARI','7471',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(439,28,'KOTA BAU BAU','7472',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(440,29,'KAB. GORONTALO','7501',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(441,29,'KAB. BOALEMO','7502',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(442,29,'KAB. BONE BOLANGO','7503',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(443,29,'KAB. PAHUWATO','7504',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(444,29,'KAB. GORONTALO UTARA','7505',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(445,29,'KOTA GORONTALO','7571',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(446,30,'KAB. MAMUJU UTARA','7601',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(447,30,'KAB. MAMUJU','7602',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(448,30,'KAB. MAMASA','7603',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(449,30,'KAB. POLEWALI MANDAR','7604',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(450,30,'KAB. MAJENE','7605',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(451,30,'KAB. MAMUJU TENGAH','7606',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(452,31,'KAB. MALUKU TENGAH','8101',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(453,31,'KAB. MALUKU TENGGARA','8102',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(454,31,'KAB. MALUKU TENGGARA BARAT','8103',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(455,31,'KAB. BURU','8104',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(456,31,'KAB. SERAM BAGIAN TIMUR','8105',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(457,31,'KAB. SERAM BAGIAN BARAT','8106',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(458,31,'KAB. KEPULAUAN ARU','8107',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(459,31,'KAB. MALUKU BARAT DAYA','8108',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(460,31,'KAB. BURU SELATAN','8109',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(461,31,'KOTA AMBON','8171',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(462,31,'KOTA TUAL','8172',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(463,32,'KAB. HALMAHERA BARAT','8201',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(464,32,'KAB. HALMAHERA TENGAH','8202',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(465,32,'KAB. HALMAHERA UTARA','8203',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(466,32,'KAB. HALMAHERA SELATAN','8204',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(467,32,'KAB. KEPULAUAN SULA','8205',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(468,32,'KAB. HALMAHERA TIMUR','8206',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(469,32,'KAB. PULAU MOROTAI','8207',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(470,32,'KAB. PULAU TALIABU','8208',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(471,32,'KOTA TERNATE','8271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(472,32,'KOTA TIDORE KEPULAUAN','8272',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(473,33,'KAB. MERAUKE','9101',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(474,33,'KAB. JAYAWIJAYA','9102',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(475,33,'KAB. JAYAPURA','9103',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(476,33,'KAB. NABIRE','9104',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(477,33,'KAB. KEPULAUAN YAPEN','9105',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(478,33,'KAB. BIAK NUMFOR','9106',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(479,33,'KAB. PUNCAK JAYA','9107',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(480,33,'KAB. PANIAI','9108',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(481,33,'KAB. MIMIKA','9109',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(482,33,'KAB. SARMI','9110',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(483,33,'KAB. KEEROM','9111',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(484,33,'KAB. PEGUNUNGAN BINTANG','9112',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(485,33,'KAB. YAHUKIMO','9113',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(486,33,'KAB. TOLIKARA','9114',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(487,33,'KAB. WAROPEN','9115',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(488,33,'KAB. BOVEN DIGOEL','9116',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(489,33,'KAB. MAPPI','9117',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(490,33,'KAB. ASMAT','9118',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(491,33,'KAB. SUPIORI','9119',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(492,33,'KAB. MAMBERAMO RAYA','9120',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(493,33,'KAB. MAMBERAMO TENGAH','9121',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(494,33,'KAB. YALIMO','9122',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(495,33,'KAB. LANNY JAYA','9123',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(496,33,'KAB. NDUGA','9124',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(497,33,'KAB. PUNCAK','9125',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(498,33,'KAB. DOGIYAI','9126',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(499,33,'KAB. INTAN JAYA','9127',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(500,33,'KAB. DEIYAI','9128',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(501,33,'KOTA JAYAPURA','9171',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(502,34,'KAB. SORONG','9201',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(503,34,'KAB. MANOKWARI','9202',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(504,34,'KAB. FAK FAK','9203',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(505,34,'KAB. SORONG SELATAN','9204',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(506,34,'KAB. RAJA AMPAT','9205',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(507,34,'KAB. TELUK BINTUNI','9206',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(508,34,'KAB. TELUK WONDAMA','9207',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(509,34,'KAB. KAIMANA','9208',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(510,34,'KAB. TAMBRAUW','9209',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(511,34,'KAB. MAYBRAT','9210',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(512,34,'KAB. MANOKWARI SELATAN','9211',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(513,34,'KAB. PEGUNUNGAN ARFAK','9212',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(514,34,'KOTA SORONG','9271',1,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(515,1,'Krian','C001',1,1,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(516,2,'Sidomulyo','C002',1,1,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(517,1,'Krian','C001',1,1,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(518,2,'Sidomulyo','C002',1,1,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_cost_components`
--

DROP TABLE IF EXISTS `ref_cost_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_cost_components` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cost_components`
--

LOCK TABLES `ref_cost_components` WRITE;
/*!40000 ALTER TABLE `ref_cost_components` DISABLE KEYS */;
INSERT INTO `ref_cost_components` VALUES (1,'Uang Saku',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Laundry',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Penginapan',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,'Transportasi',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5,'makan','makan makan',1,NULL,'2023-07-25 14:17:14',NULL),(6,'Biaya BBM','Harus Dibuktikan Dengan Struk',1,NULL,'2023-07-25 14:17:49',NULL),(7,'Biaya Friendship','Buktikan Dengan Struk dan Bon',1,NULL,'2023-07-25 14:18:44',NULL);
/*!40000 ALTER TABLE `ref_cost_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_district`
--

DROP TABLE IF EXISTS `ref_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_district_city_id_foreign` (`city_id`),
  CONSTRAINT `ref_district_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `ref_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_district`
--

LOCK TABLES `ref_district` WRITE;
/*!40000 ALTER TABLE `ref_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_document_items`
--

DROP TABLE IF EXISTS `ref_document_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_document_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `aspect_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_document_items_aspect_id_foreign` (`aspect_id`),
  CONSTRAINT `ref_document_items_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_document_items`
--

LOCK TABLES `ref_document_items` WRITE;
/*!40000 ALTER TABLE `ref_document_items` DISABLE KEYS */;
INSERT INTO `ref_document_items` VALUES (1,1,'Dokumen HSSE 1',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,1,'Dokumen HSSE 2',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,2,'Dokumen HSSE 3',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(4,2,'Dokumen HSSE 4',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(5,3,'Dokumen SDM 1',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(6,3,'Dokumen SDM 2',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7,4,'Dokumen SDM 3',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8,4,'Dokumen SDM 4',NULL,NULL,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58');
/*!40000 ALTER TABLE `ref_document_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_extern_instances`
--

DROP TABLE IF EXISTS `ref_extern_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_extern_instances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_extern_instances`
--

LOCK TABLES `ref_extern_instances` WRITE;
/*!40000 ALTER TABLE `ref_extern_instances` DISABLE KEYS */;
INSERT INTO `ref_extern_instances` VALUES (1,'BPKP','bpkp@email.com','Surya Wijaya','998866','Jl. Surapati No.12, Cihaur Geulis, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40122',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Kementerian Keuangan','keuangan@email.com','Ichwan Suhariadi','773399','Jl. Surapati No.12, Cihaur Geulis, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40122',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_extern_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_iacm_details`
--

DROP TABLE IF EXISTS `ref_iacm_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_iacm_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `iacm_id` bigint(20) unsigned NOT NULL,
  `support_item` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_iacm_details_iacm_id_foreign` (`iacm_id`),
  CONSTRAINT `ref_iacm_details_iacm_id_foreign` FOREIGN KEY (`iacm_id`) REFERENCES `trans_iacm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_iacm_details`
--

LOCK TABLES `ref_iacm_details` WRITE;
/*!40000 ALTER TABLE `ref_iacm_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_iacm_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_iacm_level`
--

DROP TABLE IF EXISTS `ref_iacm_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_iacm_level` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_iacm_level`
--

LOCK TABLES `ref_iacm_level` WRITE;
/*!40000 ALTER TABLE `ref_iacm_level` DISABLE KEYS */;
INSERT INTO `ref_iacm_level` VALUES (1,'Level 1 Initial',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Level 2 Infrastructura',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Level 3 Integrated',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,'Level 4 Managed',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5,'Level 5 Optimized',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6,'Level 1 Initial',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(7,'Level 2 Infrastructura',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(8,'Level 3 Integrated',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(9,'Level 4 Managed',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(10,'Level 5 Optimized',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_iacm_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_iacm_parameter`
--

DROP TABLE IF EXISTS `ref_iacm_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_iacm_parameter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_iacm_parameter`
--

LOCK TABLES `ref_iacm_parameter` WRITE;
/*!40000 ALTER TABLE `ref_iacm_parameter` DISABLE KEYS */;
INSERT INTO `ref_iacm_parameter` VALUES (1,'Peran dan Layanan Audit Intern',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Pengelolaan SDM',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Praktik Profesional',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,'Akuntabilitas dan Manajemen Kinerja',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5,'Budaya dan Hubungan Organisasi',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6,'Struktur Tata Kelola',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7,'Peran dan Layanan Audit Intern',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(8,'Pengelolaan SDM',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(9,'Praktik Profesional',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(10,'Akuntabilitas dan Manajemen Kinerja',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(11,'Budaya dan Hubungan Organisasi',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(12,'Struktur Tata Kelola',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_iacm_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_ict_objects`
--

DROP TABLE IF EXISTS `ref_ict_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_ict_objects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ict_type_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_ict_objects_ict_type_id_foreign` (`ict_type_id`),
  CONSTRAINT `ref_ict_objects_ict_type_id_foreign` FOREIGN KEY (`ict_type_id`) REFERENCES `ref_ict_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_ict_objects`
--

LOCK TABLES `ref_ict_objects` WRITE;
/*!40000 ALTER TABLE `ref_ict_objects` DISABLE KEYS */;
INSERT INTO `ref_ict_objects` VALUES (1,2,'Aplikasi Human Capital',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,2,'Aplikasi Persuratan',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,3,'Gamatechno',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,3,'Pragma Informatika',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_ict_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_ict_types`
--

DROP TABLE IF EXISTS `ref_ict_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_ict_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_ict_types`
--

LOCK TABLES `ref_ict_types` WRITE;
/*!40000 ALTER TABLE `ref_ict_types` DISABLE KEYS */;
INSERT INTO `ref_ict_types` VALUES (1,'Hardware',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Software',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Penyedia Jasa',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_ict_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_kategori_langkah_kerja`
--

DROP TABLE IF EXISTS `ref_kategori_langkah_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_kategori_langkah_kerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_kategori_langkah_kerja`
--

LOCK TABLES `ref_kategori_langkah_kerja` WRITE;
/*!40000 ALTER TABLE `ref_kategori_langkah_kerja` DISABLE KEYS */;
INSERT INTO `ref_kategori_langkah_kerja` VALUES (1,'Kategori langkah kerja 1',NULL,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(2,'Kategori langkah kerja 2',NULL,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(3,'Kategori langkah kerja 3',NULL,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_kategori_langkah_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_langkah_kerja`
--

DROP TABLE IF EXISTS `ref_langkah_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_langkah_kerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `kategori_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_langkah_kerja_kategori_id_foreign` (`kategori_id`),
  CONSTRAINT `ref_langkah_kerja_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `ref_kategori_langkah_kerja` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_langkah_kerja`
--

LOCK TABLES `ref_langkah_kerja` WRITE;
/*!40000 ALTER TABLE `ref_langkah_kerja` DISABLE KEYS */;
INSERT INTO `ref_langkah_kerja` VALUES (1,'Item langkah kerja 1',NULL,1,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(2,'Item langkah kerja 2',NULL,1,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(3,'Item langkah kerja 3',NULL,1,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(4,'Item langkah kerja 4',NULL,2,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(5,'Item langkah kerja 5',NULL,2,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(6,'Item langkah kerja 6',NULL,3,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(7,'Item langkah kerja 7',NULL,3,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_langkah_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_last_audits`
--

DROP TABLE IF EXISTS `ref_last_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_last_audits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `category` varchar(255) NOT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `ict_object_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `audit_rating_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_last_audits_object_id_foreign` (`object_id`),
  KEY `ref_last_audits_ict_object_id_foreign` (`ict_object_id`),
  CONSTRAINT `ref_last_audits_ict_object_id_foreign` FOREIGN KEY (`ict_object_id`) REFERENCES `ref_ict_objects` (`id`),
  CONSTRAINT `ref_last_audits_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_last_audits`
--

LOCK TABLES `ref_last_audits` WRITE;
/*!40000 ALTER TABLE `ref_last_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_last_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_letters`
--

DROP TABLE IF EXISTS `ref_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_letters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT 'assignment,report',
  `format` varchar(255) NOT NULL,
  `no_formulir` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_letters`
--

LOCK TABLES `ref_letters` WRITE;
/*!40000 ALTER TABLE `ref_letters` DISABLE KEYS */;
INSERT INTO `ref_letters` VALUES (1,'assignment','[NO]/ST/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(2,'report','[NO]/LHP/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(3,'meeting','[NO]/RAPAT/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(4,'rkia','[NO]/PK/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(5,'instruction','[NO]/IA/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(6,'langkah-kerja','[NO]/LK/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(7,'program-audit','[NO]/PA/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(8,'fee','[NO]/BP/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(9,'memo-opening','[NO]/MO/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(10,'opening','[NO]/OM/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(11,'doc-req','[NO]/DR/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(12,'doc-full','[NO]/DF/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(13,'sample','[NO]/KKP/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(14,'feedback','[NO]/TA/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(15,'worksheet','[NO]/TS/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(16,'memo-closing','[NO]/MC/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(17,'closing','[NO]/CM/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(18,'exiting','[NO]/EM/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(19,'memo-lhp','[NO]/MLHP/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(20,'lb-spi','[NO]/LBSPI/IA/[MONTH]/[YEAR]',NULL,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47');
/*!40000 ALTER TABLE `ref_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_level_dampak`
--

DROP TABLE IF EXISTS `ref_level_dampak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_level_dampak` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_level_dampak`
--

LOCK TABLES `ref_level_dampak` WRITE;
/*!40000 ALTER TABLE `ref_level_dampak` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_level_dampak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_level_kemungkinan`
--

DROP TABLE IF EXISTS `ref_level_kemungkinan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_level_kemungkinan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_level_kemungkinan`
--

LOCK TABLES `ref_level_kemungkinan` WRITE;
/*!40000 ALTER TABLE `ref_level_kemungkinan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_level_kemungkinan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_level_temuans`
--

DROP TABLE IF EXISTS `ref_level_temuans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_level_temuans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_level_temuans`
--

LOCK TABLES `ref_level_temuans` WRITE;
/*!40000 ALTER TABLE `ref_level_temuans` DISABLE KEYS */;
INSERT INTO `ref_level_temuans` VALUES (1,'Very Low','Very Low','2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,'Low','Low','2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,'Medium','Medium','2023-07-24 14:13:58','2023-07-24 14:13:58'),(4,'High','High','2023-07-24 14:13:58','2023-07-24 14:13:58'),(5,'Very High','Very High','2023-07-24 14:13:58','2023-07-24 14:13:58');
/*!40000 ALTER TABLE `ref_level_temuans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_org_structs`
--

DROP TABLE IF EXISTS `ref_org_structs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_org_structs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `level` varchar(255) NOT NULL COMMENT 'root, bod, division, branch',
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1:presdir, 2:direktur, 3:ia division, 4:it division',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `code` int(10) unsigned NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_org_structs_parent_id_foreign` (`parent_id`),
  CONSTRAINT `ref_org_structs_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_org_structs`
--

LOCK TABLES `ref_org_structs` WRITE;
/*!40000 ALTER TABLE `ref_org_structs` DISABLE KEYS */;
INSERT INTO `ref_org_structs` VALUES (1,NULL,'root',0,'PT. Kawasan Berikat Nusantara (Persero)','marketing@kbn.co.id','www.kbn.co.id',1001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,1,'2023-07-24 14:13:45','2023-08-09 11:58:47',157),(2,1,'boc',0,'Dewan Komisaris',NULL,NULL,1101,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(3,1,'boc',0,'Komite Audit',NULL,NULL,1102,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(4,1,'bod',1,'Direktur Utama',NULL,NULL,2001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(5,4,'bod',0,'Direktur Pengembangan',NULL,NULL,2002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(6,4,'bod',0,'Direktur Operasi',NULL,NULL,2003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(7,4,'bod',0,'Direktur Keuangan dan Manajemen Resiko',NULL,NULL,2004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(8,4,'subsidiary',0,'PT. Karya Citra Nusantara',NULL,NULL,3001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(9,4,'subsidiary',0,'PT. Marunda Bandar Indonesia',NULL,NULL,3002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(10,4,'subsidiary',0,'PT. KBN Graha Medika',NULL,NULL,3003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(11,4,'subsidiary',0,'PT. KBN Prima Logistik',NULL,NULL,3004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(12,4,'division',3,'Satuan Pengawas Internal',NULL,NULL,4001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(13,7,'division',0,'Divisi Sumber Daya Manusia',NULL,NULL,4002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(14,5,'division',0,'Divisi Komersial',NULL,NULL,4003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(15,6,'division',0,'Divisi Teknologi Informasi',NULL,NULL,4004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(16,5,'division',0,'Divisi Pengembangan Bisnis',NULL,NULL,4005,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(17,5,'division',0,'Divisi Monitoring & Evaluasi Bisnis',NULL,NULL,4006,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(18,6,'division',0,'Divisi Operasi & Teknis',NULL,NULL,4007,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(19,6,'division',0,'Divisi HSSE',NULL,NULL,4008,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(20,7,'division',0,'Divisi Keuangan & TJSL',NULL,NULL,4009,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(21,7,'division',0,'Divisi Manajemen Resiko',NULL,NULL,4010,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(22,4,'division',0,'Sekretaris Perusahaan',NULL,NULL,4011,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(23,4,'division',0,'Divisi Perencanaan Strategis',NULL,NULL,4012,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(24,7,'division',0,'Divisi Pengadaan Barang dan Jasa',NULL,NULL,4013,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-08-09 11:58:47',NULL),(25,4,'sbu',0,'SBU Kawasan Cakung',NULL,NULL,5001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(26,4,'sbu',0,'SBU Kawasan Marunda & Priok',NULL,NULL,5002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(27,4,'sbu',0,'SBU Pengelolaan Air',NULL,NULL,5003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(28,4,'sbu',0,'SBU Support',NULL,NULL,5004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(29,4,'sbu',0,'SBU Pusat Logistik Berikat',NULL,NULL,5005,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(30,22,'branch',0,'Bagian sekretariat',NULL,NULL,6001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(31,22,'branch',0,'Bagian Komunikasi korporat & stakeholder relations',NULL,NULL,6002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(32,12,'branch',0,'Bagian pemeriksaan audit',NULL,NULL,6003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(33,12,'branch',0,'Bagian perencanaan & evaluasi audit',NULL,NULL,6004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(34,16,'branch',0,'Bagian pengembangan bisnis',NULL,NULL,6005,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(35,16,'branch',0,'Bagian pengembangan produk & optimalisasi aset',NULL,NULL,6006,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(36,14,'branch',0,'Bagian pemasaran dan penjualan',NULL,NULL,6007,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(37,14,'branch',0,'Bagian partnership',NULL,NULL,6008,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(38,19,'branch',0,'Bagian keamanan dan K3',NULL,NULL,6009,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(39,19,'branch',0,'Bagian pengendalian lingkungan',NULL,NULL,6010,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(40,15,'branch',0,'Bagian perencanaan dan pengembangan TI',NULL,NULL,6011,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(41,15,'branch',0,'Bagian operasional dan Infrastruktur TI',NULL,NULL,6012,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(42,38,'fungsi',0,'Seksi Keamanan',NULL,NULL,7001,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(43,38,'fungsi',0,'Seksi K3',NULL,NULL,7002,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(44,39,'fungsi',0,'Seksi pengendalian lingkungan',NULL,NULL,7003,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(45,40,'fungsi',0,'Fungsi perencanaan TI',NULL,NULL,7004,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(46,40,'fungsi',0,'Fungsi developer TI',NULL,NULL,7005,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(47,41,'fungsi',0,'Seksi layanan pendukung TI',NULL,NULL,7006,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL),(48,41,'fungsi',0,'Fungsi infrastruktur, jaringan dan keamanan TI',NULL,NULL,7007,'(021) 4482-0909','Jl. Raya Cakung Cilincing, Tanjung Priok 14140',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45',NULL);
/*!40000 ALTER TABLE `ref_org_structs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_org_structs_groups`
--

DROP TABLE IF EXISTS `ref_org_structs_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_org_structs_groups` (
  `group_id` bigint(20) unsigned NOT NULL,
  `struct_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `ref_org_structs_groups_group_id_struct_id_unique` (`group_id`,`struct_id`),
  KEY `ref_org_structs_groups_struct_id_foreign` (`struct_id`),
  CONSTRAINT `ref_org_structs_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `ref_org_structs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ref_org_structs_groups_struct_id_foreign` FOREIGN KEY (`struct_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_org_structs_groups`
--

LOCK TABLES `ref_org_structs_groups` WRITE;
/*!40000 ALTER TABLE `ref_org_structs_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_org_structs_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_pendidikan_user`
--

DROP TABLE IF EXISTS `ref_pendidikan_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_pendidikan_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `institute` text DEFAULT NULL,
  `thn_lulus` year(4) NOT NULL,
  `jenjang_pendidikan` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_pendidikan_user`
--

LOCK TABLES `ref_pendidikan_user` WRITE;
/*!40000 ALTER TABLE `ref_pendidikan_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_pendidikan_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_penilaian_category`
--

DROP TABLE IF EXISTS `ref_penilaian_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_penilaian_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_penilaian_category`
--

LOCK TABLES `ref_penilaian_category` WRITE;
/*!40000 ALTER TABLE `ref_penilaian_category` DISABLE KEYS */;
INSERT INTO `ref_penilaian_category` VALUES (1,'Kategori penilaian 1',NULL,1,NULL,'2023-07-24 14:13:58',NULL),(2,'Kategori penilaian 2',NULL,1,NULL,'2023-07-24 14:13:58',NULL),(3,'Kategori penilaian 3',NULL,1,NULL,'2023-07-24 14:13:58',NULL),(4,'Kategori penilaian 4',NULL,1,NULL,'2023-07-24 14:13:58',NULL),(5,'Kategori penilaian 1',NULL,1,NULL,'2023-08-09 11:59:18',NULL),(6,'Kategori penilaian 2',NULL,1,NULL,'2023-08-09 11:59:18',NULL),(7,'Kategori penilaian 3',NULL,1,NULL,'2023-08-09 11:59:18',NULL),(8,'Kategori penilaian 4',NULL,1,NULL,'2023-08-09 11:59:18',NULL);
/*!40000 ALTER TABLE `ref_penilaian_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_penilaian_parameter`
--

DROP TABLE IF EXISTS `ref_penilaian_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_penilaian_parameter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_penilaian_parameter`
--

LOCK TABLES `ref_penilaian_parameter` WRITE;
/*!40000 ALTER TABLE `ref_penilaian_parameter` DISABLE KEYS */;
INSERT INTO `ref_penilaian_parameter` VALUES (1,'Parameter penilaian 1',1,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(2,'Parameter penilaian 2',1,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(3,'Parameter penilaian 3',1,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(4,'Parameter penilaian 4',2,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(5,'Parameter penilaian 5',3,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(6,'Parameter penilaian 6',3,NULL,1,NULL,'2023-07-24 14:13:58',NULL),(7,'Parameter penilaian 1',1,NULL,1,NULL,'2023-08-09 11:59:18',NULL),(8,'Parameter penilaian 2',1,NULL,1,NULL,'2023-08-09 11:59:18',NULL),(9,'Parameter penilaian 3',1,NULL,1,NULL,'2023-08-09 11:59:18',NULL),(10,'Parameter penilaian 4',2,NULL,1,NULL,'2023-08-09 11:59:18',NULL),(11,'Parameter penilaian 5',3,NULL,1,NULL,'2023-08-09 11:59:18',NULL),(12,'Parameter penilaian 6',3,NULL,1,NULL,'2023-08-09 11:59:18',NULL);
/*!40000 ALTER TABLE `ref_penilaian_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_positions`
--

DROP TABLE IF EXISTS `ref_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` int(10) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_positions_location_id_foreign` (`location_id`),
  CONSTRAINT `ref_positions_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_positions`
--

LOCK TABLES `ref_positions` WRITE;
/*!40000 ALTER TABLE `ref_positions` DISABLE KEYS */;
INSERT INTO `ref_positions` VALUES (1,19,'Officer keamanan',1001,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(2,19,'Deputi Vice Presiden, Bagian Pengendalian Lingkungan',1002,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(3,19,'Deputi Vice Presiden, Bagian Keamanan & K3',1003,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(4,19,'Asisten Deputi Vice Presiden, Seksi K3',1004,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(5,19,'Fungsional Pengendalian Lingkungan F2',1005,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(6,19,'Asisten Deputi Vice Presiden, Seksi Keamanan',1006,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(7,47,'Deputi Vice Presiden Bagian Dukungan Hukum',1007,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(8,47,'Fungsional Litigasi F3',1008,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(9,47,'Deputi Vice Presiden Bagian Litigasi',1009,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(10,47,'Fungsional Dukungan Hukum F3',1010,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(11,20,'Asisten Deputi Vice Presiden, Seksi ADM Keuangan TJSL',1011,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(12,20,'Asisten Deputi Vice Presiden, Seksi Pengelolaan Kas',1012,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(13,20,'Deputi Vice Presiden, Bagian Akuntansi',1013,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(14,20,'Asisten Deputi Vice Presiden, Seksi Penagihan TJSL',1014,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(15,20,'Asisten Deputi Vice Presiden, Seksi Anggaran',1015,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(16,20,'Penagihan TJSL',1016,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(17,20,'Officer Aggaran',1017,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(18,20,'Asisten Deputi Vice Presiden, Seksi Analis Keuangan',1018,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(19,20,'Asisten Deputi Vice Presiden, Seksi Akuntansi',1019,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(20,20,'Officer Pajak',1020,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(21,20,'Officer Keuangan',1021,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(22,20,'Officer Akuntansi',1022,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(23,20,'Officer Analis Keuangan',1023,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(24,20,'Officer Pengelolaan Kas',1024,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(25,20,'Asisten Deputi Vice Presiden, Seksi Pembinaan TJSL',1025,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(26,20,'Asisten Deputi Vice Presiden, Seksi Verifikasi Keuangan',1026,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(27,14,'Fungsional Partnership F2',1027,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(28,14,'Asisten Deputi Vice Presiden, Seksi Penjualan & Pelayanan',1028,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(29,14,'Deputi Vice Presiden, Bagian Partnership',1029,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(30,14,'Officer Penjualan & Pelayanan',1030,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(31,14,'Asisten Deputi Vice Presiden, Seksi Pemasaran',1031,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(32,14,'Fungsional Partnership F3',1032,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(33,14,'Officer Pemasaran',1033,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(34,17,'Fungsional Mutu & Tata Kelola F2',1034,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(35,17,'Fungsional Monitoring & Evaluasi SBU & Anak Perusahaan F2',1035,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(36,17,'Deputi Vice Presiden, Bagian Mutu & Tata Kelola',1036,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(37,17,'Deputi Vice Presiden, Bagian Monitoring & Evaluasi SBU & Anak Perusahaan',1037,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(38,17,'Fungsional Monitoring & Evaluasi SBU & Anak Perusahaan F3',1038,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(39,17,'Fungsional Mutu & Tata Kelola F3',1039,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(40,18,'Fungsional Pengawasan Pembangunan F1',1040,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(41,18,'Fungsional Pengawasan Pembangunan F2',1041,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(42,18,'Deputi Vice Presiden, Bagian Perencanaan & Tata Ruang',1042,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(43,18,'Asisten Deputi Vice Presiden, Seksi Tata Ruang & Infrastruktur',1043,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(44,18,'Fungsional Pengawasan Pembangunan F3',1044,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(45,18,'Officer Tata Ruang & Infrastruktur',1045,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(46,18,'Asisten Deputi Vice Presiden, Seksi Perencanaan Bangunan & IMB',1046,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(47,18,'Officer Perencanaan Bangunan & IMB',1047,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(48,48,'Vice Presiden Pengadaan Barang & Jasa',1048,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(49,48,'Fungsional Pengadaan Barang & Jasa F2',1049,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(50,48,'Fungsional Pengadaan Barang & Jasa F3',1050,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(51,16,'Fungsional Pengembangan Bisnis F3',1051,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(52,16,'Deputi Vice Presiden, Bagian Pengembangan Produk & Optimalisasi Aset',1052,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(53,16,'Deputi Vice Presiden, Bagian Pengembangan Bisnis',1053,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(54,16,'Fungsional Pengembangan Produk & Optimalisasi Aset F2',1054,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(55,16,'Fungsional Pengembangan Bisnis F2',1055,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(56,16,'Fungsional Pengembangan Produk & Optimalisasi Aset F3',1056,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(57,23,'Fungsional Perencanaan Strategis-F2',1057,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(58,23,'Deputi Vice Presiden, Bagian Perencanaan Strategis',1058,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(59,23,'Fungsional Project Management Office (PMO)-F2',1059,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(60,23,'Fungsional Perencanaan Strategis-F3',1060,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(61,13,'Asisten Deputi Vice Presiden, Seksi Rumah Tangga',1061,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(62,13,'Asisten Deputi Vice Presiden, Seksi Umum',1062,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(63,13,'Officer Rumah Tangga',1063,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(64,13,'Pgs. Deputi Vice Presiden, Bagian SDM',1064,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(65,13,'Officer Umum',1065,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(66,13,'Asisten Deputi Vice Presiden, Seksi Pengembangan SDM & Budaya',1066,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(67,13,'Asisten Deputi Vice Presiden, Seksi Strategi & Telent Manajemen',1067,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(68,13,'Officer Pelayanan SDM',1068,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(69,13,'Officer Pengembangan SDM & Budaya',1069,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(70,13,'Deputi Vice Presiden, Bagian Umum & Rumah Tangga',1070,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(71,15,'Deputi Vice Presiden, Bagian Operasional & Infrastruktur TI',1071,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(72,15,'Asisten Deputi Vice Presiden, Seksi Layanan Pendukung TI',1072,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(73,15,'Deputi Vice Presiden, Bagian Perencanaan & Pengembangan TI',1073,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(74,15,'Spesialis Perencanaan IT S3',1074,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(75,15,'Spesialis Infrastruktur Jaringan & Keamanan TI S3',1075,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(76,15,'Officer Layanan Pendukung TI',1076,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(77,21,'Fungsional Manajemen Resiko F2',1077,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(78,21,'Fungsional Manajemen Resiko F1',1078,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(79,21,'Fungsional Manajemen Resiko F3',1079,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(80,12,'Spesialis Auditor-S1',1080,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(81,12,'Fungsional Perencanaan & Evaluasi Audit-F2',1081,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(82,12,'Spesialis Auditor-S2',1082,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(83,12,'Fungsional Perencanaan & Evaluasi Audit-F3',1083,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(84,12,'Spesialis Auditor-S3',1084,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(85,12,'Deputi Vice Presiden Bagian Pemeriksaan Audit',1085,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(86,12,'Deputi Vice Presiden, Bagian Perencanaan & Evaluasi Audit',1086,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(87,19,'Vice Presiden HSSE',1087,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(88,47,'Vice Presiden Hukum',1088,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(89,20,'Vice Presiden, Keuangan & TJSL',1089,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(90,14,'Vice Presiden Komersial',1090,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(91,17,'Vice Presiden Monitoring & Evaluasi Bisnis',1091,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(92,18,'Vice Presiden Operasi & Teknik',1092,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(93,13,'Vice Presiden SDM & Umum',1093,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(94,21,'Vice Presiden Manajemen Resiko',1094,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(95,12,'Vice Presiden Satuan Pengawasan Intern',1095,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(96,22,'Vice Presiden Sekretariat Perusahaan',1096,NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(97,11,'Direktur',1097,1,NULL,'2023-07-25 13:08:31',NULL);
/*!40000 ALTER TABLE `ref_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_procedure_audit`
--

DROP TABLE IF EXISTS `ref_procedure_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_procedure_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `aspect_id` bigint(20) unsigned NOT NULL,
  `procedure` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_procedure_audit_aspect_id_foreign` (`aspect_id`),
  CONSTRAINT `ref_procedure_audit_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_procedure_audit`
--

LOCK TABLES `ref_procedure_audit` WRITE;
/*!40000 ALTER TABLE `ref_procedure_audit` DISABLE KEYS */;
INSERT INTO `ref_procedure_audit` VALUES (1,1,'Prosedur HSSE 1',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(2,1,'Prosedur HSSE 2',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(3,2,'Prosedur HSSE 3',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(4,2,'Prosedur HSSE 4',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(5,3,'Prosedur SDM 1',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(6,3,'Prosedur SDM 2',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7,4,'Prosedur SDM 3',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8,4,'Prosedur SDM 4',NULL,1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9,6,'SOP','SKD',1,NULL,'2023-07-25 13:21:45',NULL);
/*!40000 ALTER TABLE `ref_procedure_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_province`
--

DROP TABLE IF EXISTS `ref_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_province_name_unique` (`name`),
  UNIQUE KEY `ref_province_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_province`
--

LOCK TABLES `ref_province` WRITE;
/*!40000 ALTER TABLE `ref_province` DISABLE KEYS */;
INSERT INTO `ref_province` VALUES (1,'ACEH','11',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(2,'SUMATERA UTARA','12',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(3,'SUMATERA BARAT','13',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(4,'RIAU','14',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(5,'JAMBI','15',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(6,'SUMATERA SELATAN','16',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(7,'BENGKULU','17',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(8,'LAMPUNG','18',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(9,'KEPULAUAN BANGKA BELITUNG','19',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(10,'KEPULAUAN RIAU','21',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(11,'DKI JAKARTA','31',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(12,'JAWA BARAT','32',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(13,'JAWA TENGAH','33',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(14,'DAERAH ISTIMEWA YOGYAKARTA','34',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(15,'JAWA TIMUR','35',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(16,'BANTEN','36',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(17,'BALI','51',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(18,'NUSA TENGGARA BARAT','52',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(19,'NUSA TENGGARA TIMUR','53',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(20,'KALIMANTAN BARAT','61',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(21,'KALIMANTAN TENGAH','62',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(22,'KALIMANTAN SELATAN','63',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(23,'KALIMANTAN TIMUR','64',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(24,'KALIMANTAN UTARA','65',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(25,'SULAWESI UTARA','71',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(26,'SULAWESI TENGAH','72',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(27,'SULAWESI SELATAN','73',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(28,'SULAWESI TENGGARA','74',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(29,'GORONTALO','75',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(30,'SULAWESI BARAT','76',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(31,'MALUKU','81',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(32,'MALUKU UTARA','82',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(33,'PAPUA','91',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44'),(34,'PAPUA BARAT','92',1,NULL,'2023-07-24 14:13:44','2023-07-24 14:13:44');
/*!40000 ALTER TABLE `ref_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_regions`
--

DROP TABLE IF EXISTS `ref_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) DEFAULT NULL,
  `name` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_regions`
--

LOCK TABLES `ref_regions` WRITE;
/*!40000 ALTER TABLE `ref_regions` DISABLE KEYS */;
INSERT INTO `ref_regions` VALUES (11,0,'ACEH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(12,0,'SUMATERA UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(13,0,'SUMATERA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(14,0,'RIAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(15,0,'JAMBI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(16,0,'SUMATERA SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(17,0,'BENGKULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(18,0,'LAMPUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(19,0,'KEPULAUAN BANGKA BELITUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(21,0,'KEPULAUAN RIAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(31,0,'DKI JAKARTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(32,0,'JAWA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(33,0,'JAWA TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(34,0,'DI YOGYAKARTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(35,0,'JAWA TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(36,0,'BANTEN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(51,0,'BALI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(52,0,'NUSA TENGGARA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(53,0,'NUSA TENGGARA TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(61,0,'KALIMANTAN BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(62,0,'KALIMANTAN TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(63,0,'KALIMANTAN SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(64,0,'KALIMANTAN TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(65,0,'KALIMANTAN UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(71,0,'SULAWESI UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(72,0,'SULAWESI TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(73,0,'SULAWESI SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(74,0,'SULAWESI TENGGARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(75,0,'GORONTALO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(76,0,'SULAWESI BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(81,0,'MALUKU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(82,0,'MALUKU UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(91,0,'PAPUA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(94,0,'PAPUA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1101,11,'KABUPATEN SIMEULUE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1102,11,'KABUPATEN ACEH SINGKIL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1103,11,'KABUPATEN ACEH SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1104,11,'KABUPATEN ACEH TENGGARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1105,11,'KABUPATEN ACEH TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1106,11,'KABUPATEN ACEH TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1107,11,'KABUPATEN ACEH BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1108,11,'KABUPATEN ACEH BESAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1109,11,'KABUPATEN PIDIE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1110,11,'KABUPATEN BIREUEN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1111,11,'KABUPATEN ACEH UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1112,11,'KABUPATEN ACEH BARAT DAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1113,11,'KABUPATEN GAYO LUES',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1114,11,'KABUPATEN ACEH TAMIANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1115,11,'KABUPATEN NAGAN RAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1116,11,'KABUPATEN ACEH JAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1117,11,'KABUPATEN BENER MERIAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1118,11,'KABUPATEN PIDIE JAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1171,11,'KOTA BANDA ACEH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1172,11,'KOTA SABANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1173,11,'KOTA LANGSA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1174,11,'KOTA LHOKSEUMAWE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1175,11,'KOTA SUBULUSSALAM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1201,12,'KABUPATEN NIAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1202,12,'KABUPATEN MANDAILING NATAL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1203,12,'KABUPATEN TAPANULI SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1204,12,'KABUPATEN TAPANULI TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1205,12,'KABUPATEN TAPANULI UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1206,12,'KABUPATEN TOBA SAMOSIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1207,12,'KABUPATEN LABUHAN BATU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1208,12,'KABUPATEN ASAHAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1209,12,'KABUPATEN SIMALUNGUN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1210,12,'KABUPATEN DAIRI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1211,12,'KABUPATEN KARO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1212,12,'KABUPATEN DELI SERDANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1213,12,'KABUPATEN LANGKAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1214,12,'KABUPATEN NIAS SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1215,12,'KABUPATEN HUMBANG HASUNDUTAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1216,12,'KABUPATEN PAKPAK BHARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1217,12,'KABUPATEN SAMOSIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1218,12,'KABUPATEN SERDANG BEDAGAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1219,12,'KABUPATEN BATU BARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1220,12,'KABUPATEN PADANG LAWAS UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1221,12,'KABUPATEN PADANG LAWAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1222,12,'KABUPATEN LABUHAN BATU SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1223,12,'KABUPATEN LABUHAN BATU UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1224,12,'KABUPATEN NIAS UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1225,12,'KABUPATEN NIAS BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1271,12,'KOTA SIBOLGA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1272,12,'KOTA TANJUNG BALAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1273,12,'KOTA PEMATANG SIANTAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1274,12,'KOTA TEBING TINGGI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1275,12,'KOTA MEDAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1276,12,'KOTA BINJAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1277,12,'KOTA PADANGSIDIMPUAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1278,12,'KOTA GUNUNGSITOLI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1301,13,'KABUPATEN KEPULAUAN MENTAWAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1302,13,'KABUPATEN PESISIR SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1303,13,'KABUPATEN SOLOK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1304,13,'KABUPATEN SIJUNJUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1305,13,'KABUPATEN TANAH DATAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1306,13,'KABUPATEN PADANG PARIAMAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1307,13,'KABUPATEN AGAM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1308,13,'KABUPATEN LIMA PULUH KOTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1309,13,'KABUPATEN PASAMAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1310,13,'KABUPATEN SOLOK SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1311,13,'KABUPATEN DHARMASRAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1312,13,'KABUPATEN PASAMAN BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1371,13,'KOTA PADANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1372,13,'KOTA SOLOK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1373,13,'KOTA SAWAH LUNTO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1374,13,'KOTA PADANG PANJANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1375,13,'KOTA BUKITTINGGI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1376,13,'KOTA PAYAKUMBUH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1377,13,'KOTA PARIAMAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1401,14,'KABUPATEN KUANTAN SINGINGI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1402,14,'KABUPATEN INDRAGIRI HULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1403,14,'KABUPATEN INDRAGIRI HILIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1404,14,'KABUPATEN PELALAWAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1405,14,'KABUPATEN S I A K',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1406,14,'KABUPATEN KAMPAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1407,14,'KABUPATEN ROKAN HULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1408,14,'KABUPATEN BENGKALIS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1409,14,'KABUPATEN ROKAN HILIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1410,14,'KABUPATEN KEPULAUAN MERANTI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1471,14,'KOTA PEKANBARU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1473,14,'KOTA D U M A I',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1501,15,'KABUPATEN KERINCI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1502,15,'KABUPATEN MERANGIN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1503,15,'KABUPATEN SAROLANGUN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1504,15,'KABUPATEN BATANG HARI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1505,15,'KABUPATEN MUARO JAMBI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1506,15,'KABUPATEN TANJUNG JABUNG TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1507,15,'KABUPATEN TANJUNG JABUNG BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1508,15,'KABUPATEN TEBO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1509,15,'KABUPATEN BUNGO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1571,15,'KOTA JAMBI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1572,15,'KOTA SUNGAI PENUH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1601,16,'KABUPATEN OGAN KOMERING ULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1602,16,'KABUPATEN OGAN KOMERING ILIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1603,16,'KABUPATEN MUARA ENIM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1604,16,'KABUPATEN LAHAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1605,16,'KABUPATEN MUSI RAWAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1606,16,'KABUPATEN MUSI BANYUASIN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1607,16,'KABUPATEN BANYU ASIN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1608,16,'KABUPATEN OGAN KOMERING ULU SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1609,16,'KABUPATEN OGAN KOMERING ULU TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1610,16,'KABUPATEN OGAN ILIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1611,16,'KABUPATEN EMPAT LAWANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1612,16,'KABUPATEN PENUKAL ABAB LEMATANG ILIR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1613,16,'KABUPATEN MUSI RAWAS UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1671,16,'KOTA PALEMBANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1672,16,'KOTA PRABUMULIH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1673,16,'KOTA PAGAR ALAM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1674,16,'KOTA LUBUKLINGGAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1701,17,'KABUPATEN BENGKULU SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1702,17,'KABUPATEN REJANG LEBONG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1703,17,'KABUPATEN BENGKULU UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1704,17,'KABUPATEN KAUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1705,17,'KABUPATEN SELUMA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1706,17,'KABUPATEN MUKOMUKO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1707,17,'KABUPATEN LEBONG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1708,17,'KABUPATEN KEPAHIANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1709,17,'KABUPATEN BENGKULU TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1771,17,'KOTA BENGKULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1801,18,'KABUPATEN LAMPUNG BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1802,18,'KABUPATEN TANGGAMUS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1803,18,'KABUPATEN LAMPUNG SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1804,18,'KABUPATEN LAMPUNG TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1805,18,'KABUPATEN LAMPUNG TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1806,18,'KABUPATEN LAMPUNG UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1807,18,'KABUPATEN WAY KANAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1808,18,'KABUPATEN TULANGBAWANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1809,18,'KABUPATEN PESAWARAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1810,18,'KABUPATEN PRINGSEWU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1811,18,'KABUPATEN MESUJI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1812,18,'KABUPATEN TULANG BAWANG BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1813,18,'KABUPATEN PESISIR BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1871,18,'KOTA BANDAR LAMPUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1872,18,'KOTA METRO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1901,19,'KABUPATEN BANGKA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1902,19,'KABUPATEN BELITUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1903,19,'KABUPATEN BANGKA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1904,19,'KABUPATEN BANGKA TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1905,19,'KABUPATEN BANGKA SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1906,19,'KABUPATEN BELITUNG TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(1971,19,'KOTA PANGKAL PINANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2101,21,'KABUPATEN KARIMUN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2102,21,'KABUPATEN BINTAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2103,21,'KABUPATEN NATUNA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2104,21,'KABUPATEN LINGGA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2105,21,'KABUPATEN KEPULAUAN ANAMBAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2171,21,'KOTA B A T A M',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2172,21,'KOTA TANJUNG PINANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3101,31,'KABUPATEN KEPULAUAN SERIBU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3171,31,'KOTA JAKARTA SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3172,31,'KOTA JAKARTA TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3173,31,'KOTA JAKARTA PUSAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3174,31,'KOTA JAKARTA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3175,31,'KOTA JAKARTA UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3201,32,'KABUPATEN BOGOR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3202,32,'KABUPATEN SUKABUMI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3203,32,'KABUPATEN CIANJUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3204,32,'KABUPATEN BANDUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3205,32,'KABUPATEN GARUT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3206,32,'KABUPATEN TASIKMALAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3207,32,'KABUPATEN CIAMIS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3208,32,'KABUPATEN KUNINGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3209,32,'KABUPATEN CIREBON',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3210,32,'KABUPATEN MAJALENGKA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3211,32,'KABUPATEN SUMEDANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3212,32,'KABUPATEN INDRAMAYU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3213,32,'KABUPATEN SUBANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3214,32,'KABUPATEN PURWAKARTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3215,32,'KABUPATEN KARAWANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3216,32,'KABUPATEN BEKASI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3217,32,'KABUPATEN BANDUNG BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3218,32,'KABUPATEN PANGANDARAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3271,32,'KOTA BOGOR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3272,32,'KOTA SUKABUMI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3273,32,'KOTA BANDUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3274,32,'KOTA CIREBON',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3275,32,'KOTA BEKASI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3276,32,'KOTA DEPOK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3277,32,'KOTA CIMAHI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3278,32,'KOTA TASIKMALAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3279,32,'KOTA BANJAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3301,33,'KABUPATEN CILACAP',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3302,33,'KABUPATEN BANYUMAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3303,33,'KABUPATEN PURBALINGGA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3304,33,'KABUPATEN BANJARNEGARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3305,33,'KABUPATEN KEBUMEN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3306,33,'KABUPATEN PURWOREJO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3307,33,'KABUPATEN WONOSOBO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3308,33,'KABUPATEN MAGELANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3309,33,'KABUPATEN BOYOLALI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3310,33,'KABUPATEN KLATEN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3311,33,'KABUPATEN SUKOHARJO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3312,33,'KABUPATEN WONOGIRI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3313,33,'KABUPATEN KARANGANYAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3314,33,'KABUPATEN SRAGEN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3315,33,'KABUPATEN GROBOGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3316,33,'KABUPATEN BLORA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3317,33,'KABUPATEN REMBANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3318,33,'KABUPATEN PATI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3319,33,'KABUPATEN KUDUS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3320,33,'KABUPATEN JEPARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3321,33,'KABUPATEN DEMAK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3322,33,'KABUPATEN SEMARANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3323,33,'KABUPATEN TEMANGGUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3324,33,'KABUPATEN KENDAL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3325,33,'KABUPATEN BATANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3326,33,'KABUPATEN PEKALONGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3327,33,'KABUPATEN PEMALANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3328,33,'KABUPATEN TEGAL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3329,33,'KABUPATEN BREBES',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3371,33,'KOTA MAGELANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3372,33,'KOTA SURAKARTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3373,33,'KOTA SALATIGA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3374,33,'KOTA SEMARANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3375,33,'KOTA PEKALONGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3376,33,'KOTA TEGAL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3401,34,'KABUPATEN KULON PROGO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3402,34,'KABUPATEN BANTUL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3403,34,'KABUPATEN GUNUNG KIDUL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3404,34,'KABUPATEN SLEMAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3471,34,'KOTA YOGYAKARTA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3501,35,'KABUPATEN PACITAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3502,35,'KABUPATEN PONOROGO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3503,35,'KABUPATEN TRENGGALEK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3504,35,'KABUPATEN TULUNGAGUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3505,35,'KABUPATEN BLITAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3506,35,'KABUPATEN KEDIRI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3507,35,'KABUPATEN MALANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3508,35,'KABUPATEN LUMAJANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3509,35,'KABUPATEN JEMBER',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3510,35,'KABUPATEN BANYUWANGI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3511,35,'KABUPATEN BONDOWOSO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3512,35,'KABUPATEN SITUBONDO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3513,35,'KABUPATEN PROBOLINGGO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3514,35,'KABUPATEN PASURUAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3515,35,'KABUPATEN SIDOARJO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3516,35,'KABUPATEN MOJOKERTO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3517,35,'KABUPATEN JOMBANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3518,35,'KABUPATEN NGANJUK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3519,35,'KABUPATEN MADIUN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3520,35,'KABUPATEN MAGETAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3521,35,'KABUPATEN NGAWI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3522,35,'KABUPATEN BOJONEGORO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3523,35,'KABUPATEN TUBAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3524,35,'KABUPATEN LAMONGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3525,35,'KABUPATEN GRESIK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3526,35,'KABUPATEN BANGKALAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3527,35,'KABUPATEN SAMPANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3528,35,'KABUPATEN PAMEKASAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3529,35,'KABUPATEN SUMENEP',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3571,35,'KOTA KEDIRI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3572,35,'KOTA BLITAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3573,35,'KOTA MALANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3574,35,'KOTA PROBOLINGGO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3575,35,'KOTA PASURUAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3576,35,'KOTA MOJOKERTO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3577,35,'KOTA MADIUN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3578,35,'KOTA SURABAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3579,35,'KOTA BATU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3601,36,'KABUPATEN PANDEGLANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3602,36,'KABUPATEN LEBAK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3603,36,'KABUPATEN TANGERANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3604,36,'KABUPATEN SERANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3671,36,'KOTA TANGERANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3672,36,'KOTA CILEGON',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3673,36,'KOTA SERANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3674,36,'KOTA TANGERANG SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5101,51,'KABUPATEN JEMBRANA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5102,51,'KABUPATEN TABANAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5103,51,'KABUPATEN BADUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5104,51,'KABUPATEN GIANYAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5105,51,'KABUPATEN KLUNGKUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5106,51,'KABUPATEN BANGLI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5107,51,'KABUPATEN KARANG ASEM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5108,51,'KABUPATEN BULELENG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5171,51,'KOTA DENPASAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5201,52,'KABUPATEN LOMBOK BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5202,52,'KABUPATEN LOMBOK TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5203,52,'KABUPATEN LOMBOK TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5204,52,'KABUPATEN SUMBAWA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5205,52,'KABUPATEN DOMPU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5206,52,'KABUPATEN BIMA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5207,52,'KABUPATEN SUMBAWA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5208,52,'KABUPATEN LOMBOK UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5271,52,'KOTA MATARAM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5272,52,'KOTA BIMA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5301,53,'KABUPATEN SUMBA BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5302,53,'KABUPATEN SUMBA TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5303,53,'KABUPATEN KUPANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5304,53,'KABUPATEN TIMOR TENGAH SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5305,53,'KABUPATEN TIMOR TENGAH UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5306,53,'KABUPATEN BELU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5307,53,'KABUPATEN ALOR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5308,53,'KABUPATEN LEMBATA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5309,53,'KABUPATEN FLORES TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5310,53,'KABUPATEN SIKKA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5311,53,'KABUPATEN ENDE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5312,53,'KABUPATEN NGADA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5313,53,'KABUPATEN MANGGARAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5314,53,'KABUPATEN ROTE NDAO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5315,53,'KABUPATEN MANGGARAI BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5316,53,'KABUPATEN SUMBA TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5317,53,'KABUPATEN SUMBA BARAT DAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5318,53,'KABUPATEN NAGEKEO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5319,53,'KABUPATEN MANGGARAI TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5320,53,'KABUPATEN SABU RAIJUA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5321,53,'KABUPATEN MALAKA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5371,53,'KOTA KUPANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5372,53,'LABUAN BAJO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6101,61,'KABUPATEN SAMBAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6102,61,'KABUPATEN BENGKAYANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6103,61,'KABUPATEN LANDAK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6104,61,'KABUPATEN MEMPAWAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6105,61,'KABUPATEN SANGGAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6106,61,'KABUPATEN KETAPANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6107,61,'KABUPATEN SINTANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6108,61,'KABUPATEN KAPUAS HULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6109,61,'KABUPATEN SEKADAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6110,61,'KABUPATEN MELAWI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6111,61,'KABUPATEN KAYONG UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6112,61,'KABUPATEN KUBU RAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6171,61,'KOTA PONTIANAK',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6172,61,'KOTA SINGKAWANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6201,62,'KABUPATEN KOTAWARINGIN BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6202,62,'KABUPATEN KOTAWARINGIN TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6203,62,'KABUPATEN KAPUAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6204,62,'KABUPATEN BARITO SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6205,62,'KABUPATEN BARITO UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6206,62,'KABUPATEN SUKAMARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6207,62,'KABUPATEN LAMANDAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6208,62,'KABUPATEN SERUYAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6209,62,'KABUPATEN KATINGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6210,62,'KABUPATEN PULANG PISAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6211,62,'KABUPATEN GUNUNG MAS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6212,62,'KABUPATEN BARITO TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6213,62,'KABUPATEN MURUNG RAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6271,62,'KOTA PALANGKA RAYA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6301,63,'KABUPATEN TANAH LAUT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6302,63,'KABUPATEN KOTA BARU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6303,63,'KABUPATEN BANJAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6304,63,'KABUPATEN BARITO KUALA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6305,63,'KABUPATEN TAPIN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6306,63,'KABUPATEN HULU SUNGAI SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6307,63,'KABUPATEN HULU SUNGAI TENGAH',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6308,63,'KABUPATEN HULU SUNGAI UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6309,63,'KABUPATEN TABALONG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6310,63,'KABUPATEN TANAH BUMBU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6311,63,'KABUPATEN BALANGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6371,63,'KOTA BANJARMASIN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6372,63,'KOTA BANJAR BARU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6401,64,'KABUPATEN PASER',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6402,64,'KABUPATEN KUTAI BARAT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6403,64,'KABUPATEN KUTAI KARTANEGARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6404,64,'KABUPATEN KUTAI TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6405,64,'KABUPATEN BERAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6409,64,'KABUPATEN PENAJAM PASER UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6411,64,'KABUPATEN MAHAKAM HULU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6471,64,'KOTA BALIKPAPAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6472,64,'KOTA SAMARINDA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6474,64,'KOTA BONTANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6475,64,'SANGATA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6476,64,'SENDAWAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6477,64,'PANAJAM',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6478,64,'TANJUNG ARU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6482,64,'LONGKALI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6484,64,'BATU KAJANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6501,65,'KABUPATEN MALINAU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6502,65,'KABUPATEN BULUNGAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6503,65,'KABUPATEN TANA TIDUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6504,65,'KABUPATEN NUNUKAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6571,65,'KOTA TARAKAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7101,71,'KABUPATEN BOLAANG MONGONDOW',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7102,71,'KABUPATEN MINAHASA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7103,71,'KABUPATEN KEPULAUAN SANGIHE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7104,71,'KABUPATEN KEPULAUAN TALAUD',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7105,71,'KABUPATEN MINAHASA SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7106,71,'KABUPATEN MINAHASA UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7107,71,'KABUPATEN BOLAANG MONGONDOW UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7108,71,'KABUPATEN SIAU TAGULANDANG BIARO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7109,71,'KABUPATEN MINAHASA TENGGARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7110,71,'KABUPATEN BOLAANG MONGONDOW SELATAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7111,71,'KABUPATEN BOLAANG MONGONDOW TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7171,71,'KOTA MANADO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7172,71,'KOTA BITUNG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7173,71,'KOTA TOMOHON',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7174,71,'KOTA KOTAMOBAGU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7201,72,'KABUPATEN BANGGAI KEPULAUAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7202,72,'KABUPATEN BANGGAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7203,72,'KABUPATEN MOROWALI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7204,72,'KABUPATEN POSO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7205,72,'KABUPATEN DONGGALA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7206,72,'KABUPATEN TOLI-TOLI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7207,72,'KABUPATEN BUOL',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7208,72,'KABUPATEN PARIGI MOUTONG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7209,72,'KABUPATEN TOJO UNA-UNA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7210,72,'KABUPATEN SIGI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7211,72,'KABUPATEN BANGGAI LAUT',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7212,72,'KABUPATEN MOROWALI UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7271,72,'KOTA PALU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7301,73,'KABUPATEN KEPULAUAN SELAYAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7302,73,'KABUPATEN BULUKUMBA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7303,73,'KABUPATEN BANTAENG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7304,73,'KABUPATEN JENEPONTO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7305,73,'KABUPATEN TAKALAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7306,73,'KABUPATEN GOWA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7307,73,'KABUPATEN SINJAI',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7308,73,'KABUPATEN MAROS',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7309,73,'KABUPATEN PANGKAJENE DAN KEPULAUAN',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7310,73,'KABUPATEN BARRU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7311,73,'KABUPATEN BONE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7312,73,'KABUPATEN SOPPENG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7313,73,'KABUPATEN WAJO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7314,73,'KABUPATEN SIDENRENG RAPPANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7315,73,'KABUPATEN PINRANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7316,73,'KABUPATEN ENREKANG',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7317,73,'KABUPATEN LUWU',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7318,73,'KABUPATEN TANA TORAJA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7322,73,'KABUPATEN LUWU UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7325,73,'KABUPATEN LUWU TIMUR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7326,73,'KABUPATEN TORAJA UTARA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7371,73,'KOTA MAKASSAR',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7372,73,'KOTA PAREPARE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7373,73,'KOTA PALOPO',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7401,74,'KABUPATEN BUTON',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7402,74,'KABUPATEN MUNA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7403,74,'KABUPATEN KONAWE',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7404,74,'KABUPATEN KOLAKA',1,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7405,74,'KABUPATEN KONAWE SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7406,74,'KABUPATEN BOMBANA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7407,74,'KABUPATEN WAKATOBI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7408,74,'KABUPATEN KOLAKA UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7409,74,'KABUPATEN BUTON UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7410,74,'KABUPATEN KONAWE UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7411,74,'KABUPATEN KOLAKA TIMUR',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7412,74,'KABUPATEN KONAWE KEPULAUAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7413,74,'KABUPATEN MUNA BARAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7414,74,'KABUPATEN BUTON TENGAH',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7415,74,'KABUPATEN BUTON SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7471,74,'KOTA KENDARI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7472,74,'KOTA BAUBAU',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7501,75,'KABUPATEN BOALEMO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7502,75,'KABUPATEN GORONTALO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7503,75,'KABUPATEN POHUWATO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7504,75,'KABUPATEN BONE BOLANGO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7505,75,'KABUPATEN GORONTALO UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7571,75,'KOTA GORONTALO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7601,76,'KABUPATEN MAJENE',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7602,76,'KABUPATEN POLEWALI MANDAR',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7603,76,'KABUPATEN MAMASA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7604,76,'KABUPATEN MAMUJU',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7605,76,'KABUPATEN MAMUJU UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(7606,76,'KABUPATEN MAMUJU TENGAH',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8101,81,'KABUPATEN MALUKU TENGGARA BARAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8102,81,'KABUPATEN MALUKU TENGGARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8103,81,'KABUPATEN MALUKU TENGAH',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8104,81,'KABUPATEN BURU',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8105,81,'KABUPATEN KEPULAUAN ARU',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8106,81,'KABUPATEN SERAM BAGIAN BARAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8107,81,'KABUPATEN SERAM BAGIAN TIMUR',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8108,81,'KABUPATEN MALUKU BARAT DAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8109,81,'KABUPATEN BURU SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8171,81,'KOTA AMBON',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8172,81,'KOTA TUAL',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8201,82,'KABUPATEN HALMAHERA BARAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8202,82,'KABUPATEN HALMAHERA TENGAH',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8203,82,'KABUPATEN KEPULAUAN SULA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8204,82,'KABUPATEN HALMAHERA SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8205,82,'KABUPATEN HALMAHERA UTARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8206,82,'KABUPATEN HALMAHERA TIMUR',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8207,82,'KABUPATEN PULAU MOROTAI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8208,82,'KABUPATEN PULAU TALIABU',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8271,82,'KOTA TERNATE',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(8272,82,'KOTA TIDORE KEPULAUAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9101,91,'KABUPATEN FAKFAK',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9102,91,'KABUPATEN KAIMANA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9103,91,'KABUPATEN TELUK WONDAMA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9104,91,'KABUPATEN TELUK BINTUNI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9105,91,'KABUPATEN MANOKWARI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9106,91,'KABUPATEN SORONG SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9107,91,'KABUPATEN SORONG',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9108,91,'KABUPATEN RAJA AMPAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9109,91,'KABUPATEN TAMBRAUW',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9110,91,'KABUPATEN MAYBRAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9111,91,'KABUPATEN MANOKWARI SELATAN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9112,91,'KABUPATEN PEGUNUNGAN ARFAK',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9171,91,'KOTA SORONG',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9181,91,'KOTA SERUI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9191,91,'TIMIKA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9401,94,'KABUPATEN MERAUKE',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9402,94,'KABUPATEN JAYAWIJAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9403,94,'KABUPATEN JAYAPURA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9404,94,'KABUPATEN NABIRE',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9408,94,'KABUPATEN KEPULAUAN YAPEN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9409,94,'KABUPATEN BIAK NUMFOR',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9410,94,'KABUPATEN PANIAI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9411,94,'KABUPATEN PUNCAK JAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9412,94,'KABUPATEN MIMIKA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9413,94,'KABUPATEN BOVEN DIGOEL',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9414,94,'KABUPATEN MAPPI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9415,94,'KABUPATEN ASMAT',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9416,94,'KABUPATEN YAHUKIMO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9417,94,'KABUPATEN PEGUNUNGAN BINTANG',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9418,94,'KABUPATEN TOLIKARA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9419,94,'KABUPATEN SARMI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9420,94,'KABUPATEN KEEROM',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9426,94,'KABUPATEN WAROPEN',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9427,94,'KABUPATEN SUPIORI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9428,94,'KABUPATEN MAMBERAMO RAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9429,94,'KABUPATEN NDUGA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9430,94,'KABUPATEN LANNY JAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9431,94,'KABUPATEN MAMBERAMO TENGAH',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9432,94,'KABUPATEN YALIMO',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9433,94,'KABUPATEN PUNCAK',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9434,94,'KABUPATEN DOGIYAI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9435,94,'KABUPATEN INTAN JAYA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9436,94,'KABUPATEN DEIYAI',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58'),(9471,94,'KOTA JAYAPURA',1,NULL,'2023-07-24 14:13:58','2023-07-24 14:13:58');
/*!40000 ALTER TABLE `ref_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_assessments`
--

DROP TABLE IF EXISTS `ref_risk_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_assessments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `category` varchar(255) NOT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `ict_object_id` bigint(20) unsigned DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_risk_assessments_object_id_foreign` (`object_id`),
  KEY `ref_risk_assessments_ict_object_id_foreign` (`ict_object_id`),
  CONSTRAINT `ref_risk_assessments_ict_object_id_foreign` FOREIGN KEY (`ict_object_id`) REFERENCES `ref_ict_objects` (`id`),
  CONSTRAINT `ref_risk_assessments_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_assessments`
--

LOCK TABLES `ref_risk_assessments` WRITE;
/*!40000 ALTER TABLE `ref_risk_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_risk_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_assessments_details`
--

DROP TABLE IF EXISTS `ref_risk_assessments_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_assessments_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `risk_assessment_id` bigint(20) unsigned NOT NULL,
  `risk_rating_id` bigint(20) unsigned NOT NULL,
  `description` text NOT NULL,
  `source` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_risk_assessments_details_risk_assessment_id_foreign` (`risk_assessment_id`),
  KEY `ref_risk_assessments_details_risk_rating_id_foreign` (`risk_rating_id`),
  CONSTRAINT `ref_risk_assessments_details_risk_assessment_id_foreign` FOREIGN KEY (`risk_assessment_id`) REFERENCES `ref_risk_assessments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ref_risk_assessments_details_risk_rating_id_foreign` FOREIGN KEY (`risk_rating_id`) REFERENCES `ref_risk_ratings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_assessments_details`
--

LOCK TABLES `ref_risk_assessments_details` WRITE;
/*!40000 ALTER TABLE `ref_risk_assessments_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_risk_assessments_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_code`
--

DROP TABLE IF EXISTS `ref_risk_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_code`
--

LOCK TABLES `ref_risk_code` WRITE;
/*!40000 ALTER TABLE `ref_risk_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_risk_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_ratings`
--

DROP TABLE IF EXISTS `ref_risk_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_ratings`
--

LOCK TABLES `ref_risk_ratings` WRITE;
/*!40000 ALTER TABLE `ref_risk_ratings` DISABLE KEYS */;
INSERT INTO `ref_risk_ratings` VALUES (1,'Low','Low',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Medium','Medium',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'High','High',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_risk_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_status`
--

DROP TABLE IF EXISTS `ref_risk_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_status`
--

LOCK TABLES `ref_risk_status` WRITE;
/*!40000 ALTER TABLE `ref_risk_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_risk_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_risk_type`
--

DROP TABLE IF EXISTS `ref_risk_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_risk_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_risk_type`
--

LOCK TABLES `ref_risk_type` WRITE;
/*!40000 ALTER TABLE `ref_risk_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_risk_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_sertifikasi_user`
--

DROP TABLE IF EXISTS `ref_sertifikasi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_sertifikasi_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `nama_sertif` text DEFAULT NULL,
  `no_sertif` varchar(255) DEFAULT NULL,
  `tgl_sertif` date DEFAULT NULL,
  `lembaga` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_sertifikasi_user`
--

LOCK TABLES `ref_sertifikasi_user` WRITE;
/*!40000 ALTER TABLE `ref_sertifikasi_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_sertifikasi_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_survey_categories`
--

DROP TABLE IF EXISTS `ref_survey_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_survey_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_survey_categories`
--

LOCK TABLES `ref_survey_categories` WRITE;
/*!40000 ALTER TABLE `ref_survey_categories` DISABLE KEYS */;
INSERT INTO `ref_survey_categories` VALUES (1,'Kesopanan',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Kerapihan',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Penguasaan Materi',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_survey_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_surveys`
--

DROP TABLE IF EXISTS `ref_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_surveys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|active|nonactive',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_surveys`
--

LOCK TABLES `ref_surveys` WRITE;
/*!40000 ALTER TABLE `ref_surveys` DISABLE KEYS */;
INSERT INTO `ref_surveys` VALUES (1,0,'lorem ipsum','active',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57');
/*!40000 ALTER TABLE `ref_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_surveys_statements`
--

DROP TABLE IF EXISTS `ref_surveys_statements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_surveys_statements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `statement` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_surveys_statements_survey_id_foreign` (`survey_id`),
  KEY `ref_surveys_statements_category_id_foreign` (`category_id`),
  CONSTRAINT `ref_surveys_statements_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `ref_survey_categories` (`id`),
  CONSTRAINT `ref_surveys_statements_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `ref_surveys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_surveys_statements`
--

LOCK TABLES `ref_surveys_statements` WRITE;
/*!40000 ALTER TABLE `ref_surveys_statements` DISABLE KEYS */;
INSERT INTO `ref_surveys_statements` VALUES (1,1,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,1,1,'Pellentesque non nisi erat. Donec maximus venenatis consectetur',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,1,1,'Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,1,1,'Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5,1,2,'Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6,1,2,'Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7,1,2,'Sed sagittis nunc in purus congue, vel sodales sem ultrices. Mauris eu enim id neque venenatis gravida',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(8,1,3,'Curabitur purus urna, interdum id est ac, molestie facilisis nunc',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(9,1,3,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(10,1,3,'Donec pretium ex vitae enim commodo, quis tincidunt leo suscipit. Praesent ac auctor enim. Etiam sollicitudin',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(11,1,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(12,1,1,'Pellentesque non nisi erat. Donec maximus venenatis consectetur',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(13,1,1,'Fusce rutrum nisi sit amet vehicula varius. Praesent consequat diam lacinia diam tristique ornare. Fusce vel nisl ipsum',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(14,1,1,'Curabitur ac dui ut eros suscipit vulputate. Integer commodo velit in augue vulputate, vitae pharetra nisl posuere',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(15,1,2,'Duis feugiat nisi lacus, ut imperdiet felis fringilla at. Etiam dapibus suscipit odio vel rhoncus. Donec et urna eros',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(16,1,2,'Nam blandit dictum felis vitae pretium. Phasellus eget eleifend odio.',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(17,1,2,'Sed sagittis nunc in purus congue, vel sodales sem ultrices. Mauris eu enim id neque venenatis gravida',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(18,1,3,'Curabitur purus urna, interdum id est ac, molestie facilisis nunc',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(19,1,3,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(20,1,3,'Donec pretium ex vitae enim commodo, quis tincidunt leo suscipit. Praesent ac auctor enim. Etiam sollicitudin',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_surveys_statements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_training_institutes`
--

DROP TABLE IF EXISTS `ref_training_institutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_training_institutes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_training_institutes`
--

LOCK TABLES `ref_training_institutes` WRITE;
/*!40000 ALTER TABLE `ref_training_institutes` DISABLE KEYS */;
INSERT INTO `ref_training_institutes` VALUES (1,'PPA&K',NULL,NULL,1,'2023-07-24 14:13:57','2023-08-02 09:23:18'),(2,'YPIA',NULL,NULL,1,'2023-07-24 14:13:57','2023-08-02 09:23:37'),(4,'CRMS',NULL,1,NULL,'2023-08-02 09:23:58',NULL),(5,'PPM Manajemen',NULL,1,NULL,'2023-08-02 09:24:37',NULL),(6,'LSP MKS',NULL,1,NULL,'2023-08-02 09:25:04',NULL),(7,'LSP MR',NULL,1,NULL,'2023-08-02 09:25:20',NULL),(8,'LSP AI',NULL,1,NULL,'2023-08-02 09:26:12',NULL),(9,'Danareksa LEAD',NULL,1,NULL,'2023-08-02 09:27:42',NULL),(10,'ACFE',NULL,1,NULL,'2023-08-02 09:40:37',NULL),(11,'IIA',NULL,1,NULL,'2023-08-02 09:41:15',NULL),(13,'Moonsoon Academy',NULL,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(14,'Inixindo',NULL,NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `ref_training_institutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_training_types`
--

DROP TABLE IF EXISTS `ref_training_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_training_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_training_types`
--

LOCK TABLES `ref_training_types` WRITE;
/*!40000 ALTER TABLE `ref_training_types` DISABLE KEYS */;
INSERT INTO `ref_training_types` VALUES (1,'Dasar-dasar Audit',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,'Komunikasi dan Psikologi Audit',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,'Audit Operasional',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,'Audit Kecurangan',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(5,'Pengelolaan Tugas Audit',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(6,'Program Matrikulasi PIA',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(7,'Seminar dan Pengukuhan PIA',NULL,NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(8,'Diklat Khusus Kepala SPI + Asesmen',NULL,1,NULL,'2023-08-02 09:29:17',NULL),(9,'Tingkat Dasar I',NULL,1,NULL,'2023-08-02 09:30:44',NULL),(10,'Tingkat Dasar II',NULL,1,NULL,'2023-08-02 09:31:18',NULL),(11,'Tingkat Lanjutan I',NULL,1,NULL,'2023-08-02 09:32:25',NULL),(12,'Tingkat Lanjutan II',NULL,1,NULL,'2023-08-02 09:32:58',NULL),(13,'Tingkat Manajerial',NULL,1,NULL,'2023-08-02 09:33:18',NULL),(14,'Seminar dan Pengukuhan QIA',NULL,1,NULL,'2023-08-02 09:33:44',NULL),(15,'TIngkat Pra-Manajerial Kepala SPI',NULL,1,NULL,'2023-08-02 09:34:38',NULL),(16,'Tingkat Manajerial Kepala SPI',NULL,1,NULL,'2023-08-02 09:34:59',NULL),(17,'Certified Risk Management Officer',NULL,1,NULL,'2023-08-02 09:35:58',NULL),(18,'Qualified Risk Management Officer',NULL,1,NULL,'2023-08-02 09:36:26',NULL),(19,'Certified Risk Management Professional',NULL,1,NULL,'2023-08-02 09:37:01',NULL),(20,'Qualified Risk Management Professional',NULL,1,NULL,'2023-08-02 09:37:52',NULL),(21,'Certified Legal Auditor',NULL,1,NULL,'2023-08-02 09:38:16',NULL),(22,'Certified Chief Governance Officer',NULL,1,NULL,'2023-08-02 09:38:44',NULL),(23,'Qualified Chief Risk Officer',NULL,1,NULL,'2023-08-02 09:39:11',NULL),(24,'Certified Chief Compliance Officer',NULL,1,NULL,'2023-08-02 09:39:40',NULL),(25,'Certified Fraud Examiners',NULL,1,NULL,'2023-08-02 09:40:21',NULL),(26,'Certified Internal Auditor',NULL,1,NULL,'2023-08-02 09:42:29',NULL);
/*!40000 ALTER TABLE `ref_training_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_activities`
--

DROP TABLE IF EXISTS `sys_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_activities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(255) NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_activities_target_type_target_id_index` (`target_type`,`target_id`),
  KEY `sys_activities_user_id_foreign` (`user_id`),
  CONSTRAINT `sys_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_activities`
--

LOCK TABLES `sys_activities` WRITE;
/*!40000 ALTER TABLE `sys_activities` DISABLE KEYS */;
INSERT INTO `sys_activities` VALUES (1,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-24 14:14:19',NULL),(2,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-24 14:15:07',NULL),(3,'App\\Models\\Auth\\User',8,'auth_login','Login berhasil','10.10.1.228',8,8,NULL,'2023-07-24 14:15:08',NULL),(4,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.228',4,4,NULL,'2023-07-24 14:15:09',NULL),(5,'App\\Models\\Auth\\User',13,'auth_login','Login berhasil','10.10.1.228',13,13,NULL,'2023-07-24 14:15:37',NULL),(6,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-24 14:16:44',NULL),(7,'App\\Models\\Master\\Training\\TrainingInstitute',3,'master_training_training-institute','Membuat Data Danareksa Institute Learning','10.10.10.110',1,1,NULL,'2023-07-24 14:42:09',NULL),(8,'App\\Models\\Master\\Training\\TrainingInstitute',3,'master_training_training-institute','Menghapus Data Danareksa Institute Learning','10.10.10.110',1,1,NULL,'2023-07-24 14:42:27',NULL),(9,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Membuat Data Program Kerja PKPT 2023','10.10.1.228',4,4,NULL,'2023-07-24 14:55:50',NULL),(10,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-24 16:29:05',NULL),(11,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.228',9,9,NULL,'2023-07-25 08:56:55',NULL),(12,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-25 09:00:34',NULL),(13,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Membuat Detail Rencana Program Kerja PKPT 2023','10.10.10.110',9,9,NULL,'2023-07-25 09:09:43',NULL),(14,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.10.110',4,4,NULL,'2023-07-25 09:11:22',NULL),(15,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.110',16,16,NULL,'2023-07-25 09:15:11',NULL),(16,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Submit Data Program Kerja PKPT 2023','10.10.10.110',16,16,NULL,'2023-07-25 09:15:45',NULL),(17,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Menyetujui Data Program Kerja PKPT 2023','10.10.10.110',16,16,NULL,'2023-07-25 09:16:29',NULL),(18,'App\\Models\\Auth\\User',14,'auth_login','Login berhasil','10.10.10.110',14,14,NULL,'2023-07-25 09:20:47',NULL),(19,'App\\Models\\Auth\\User',2,'auth_login','Login berhasil','10.10.1.228',2,2,NULL,'2023-07-25 09:24:26',NULL),(20,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-25 09:27:18',NULL),(21,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.10.110',4,4,NULL,'2023-07-25 09:28:32',NULL),(22,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.228',16,16,NULL,'2023-07-25 09:32:47',NULL),(23,'App\\Models\\Auth\\User',16,'setting_profile','Mengubah Profil DASEP TITOF','10.10.1.228',16,16,NULL,'2023-07-25 09:37:12',NULL),(24,'App\\Models\\Auth\\User',8,'auth_login','Login berhasil','10.10.1.228',8,8,NULL,'2023-07-25 10:08:13',NULL),(25,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-25 10:09:21',NULL),(26,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-25 10:12:22',NULL),(27,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-25 10:12:26',NULL),(28,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.228',1,1,NULL,'2023-07-25 10:14:30',NULL),(29,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-25 10:16:29',NULL),(30,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-25 10:17:31',NULL),(31,'App\\Models\\Auth\\User',13,'auth_login','Login berhasil','10.10.1.228',13,13,NULL,'2023-07-25 10:18:49',NULL),(32,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.228',4,4,NULL,'2023-07-25 10:20:22',NULL),(33,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.110',10,10,NULL,'2023-07-25 10:23:01',NULL),(34,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.10.110',4,4,NULL,'2023-07-25 10:23:45',NULL),(35,'App\\Models\\Auth\\User',15,'auth_login','Login berhasil','10.10.1.228',15,15,NULL,'2023-07-25 10:23:58',NULL),(36,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.228',4,4,NULL,'2023-07-25 10:33:53',NULL),(37,'App\\Models\\Auth\\User',12,'auth_login','Login berhasil','10.10.10.110',12,12,NULL,'2023-07-25 10:38:06',NULL),(38,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.10.110',4,4,NULL,'2023-07-25 10:38:25',NULL),(39,'App\\Models\\Auth\\User',15,'auth_login','Login berhasil','10.10.1.14',15,15,NULL,'2023-07-25 11:06:58',NULL),(40,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.110',1,1,NULL,'2023-07-25 11:07:25',NULL),(41,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-07-25 12:10:58',NULL),(42,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-25 12:26:03',NULL),(43,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-25 12:41:07',NULL),(44,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-25 12:42:21',NULL),(45,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-25 12:44:26',NULL),(46,'App\\Models\\Auth\\User',13,'auth_login','Login berhasil','10.10.1.14',13,13,NULL,'2023-07-25 12:45:18',NULL),(47,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-25 12:46:15',NULL),(48,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-25 12:46:57',NULL),(49,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-25 12:49:50',NULL),(50,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Upgrade Versi Program Kerja PKPT 2023','10.10.1.14',10,10,NULL,'2023-07-25 13:02:03',NULL),(51,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-25 13:03:51',NULL),(52,'App\\Models\\Master\\Org\\Position',97,'master_org_position','Membuat Data Direktur','10.10.1.14',1,1,NULL,'2023-07-25 13:08:31',NULL),(53,'App\\Models\\Auth\\User',19,'setting_user','Membuat Data Yato','10.10.1.14',1,1,NULL,'2023-07-25 13:09:55',NULL),(54,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.14',16,16,NULL,'2023-07-25 13:10:39',NULL),(55,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Menyetujui Data Program Kerja PKPT 2023','10.10.1.14',16,16,NULL,'2023-07-25 13:11:23',NULL),(56,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Submit Data Program Kerja PKPT 2023','10.10.1.14',10,10,NULL,'2023-07-25 13:13:05',NULL),(57,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Menyetujui Data Program Kerja PKPT 2023','10.10.1.14',16,16,NULL,'2023-07-25 13:13:30',NULL),(58,'App\\Models\\Master\\Aspect\\Aspect',5,'master_aspect','Membuat Data Bidang Operasional','10.10.10.7',1,1,NULL,'2023-07-25 13:19:53',NULL),(59,'App\\Models\\Master\\Aspect\\Aspect',6,'master_aspect','Membuat Data Bidang Keuangan & Umum','10.10.10.7',1,1,NULL,'2023-07-25 13:20:44',NULL),(60,'App\\Models\\Master\\Aspect\\Aspect',7,'master_aspect','Membuat Data Bidang Pemasaran','10.10.10.7',1,1,NULL,'2023-07-25 13:21:06',NULL),(61,'App\\Models\\Master\\Procedure\\ProcedureAudit',9,'master_procedure','Membuat Data SOP','10.10.10.7',1,1,NULL,'2023-07-25 13:21:45',NULL),(62,'App\\Models\\Preparation\\Assignment\\Assignment',1,'preparation_assignment','Membuat Data Surat Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 13:22:10',NULL),(63,'App\\Models\\Preparation\\Assignment\\Assignment',1,'preparation_assignment','Submit Data Surat Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 13:22:20',NULL),(64,'App\\Models\\Preparation\\Assignment\\Assignment',1,'preparation_assignment','Menyetujui Data Surat Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.1.14',16,16,NULL,'2023-07-25 13:22:40',NULL),(65,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-25 13:24:36',NULL),(66,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-25 13:25:46',NULL),(67,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-25 13:28:51',NULL),(68,'App\\Models\\Preparation\\LangkahKerja\\LangkahKerja',1,'preparation_langkah-kerja','Membuat Data Surat Langkah Kerja No Surat : ','10.10.1.14',10,10,NULL,'2023-07-25 13:32:32',NULL),(69,'App\\Models\\Preparation\\LangkahKerja\\LangkahKerja',1,'preparation_langkah-kerja','Submit Data Surat Langkah Kerja No Surat : ','10.10.1.14',10,10,NULL,'2023-07-25 13:32:45',NULL),(70,'App\\Models\\Preparation\\LangkahKerja\\LangkahKerja',1,'preparation_langkah-kerja','Menyetujui Data Surat Langkah Kerja No Surat : ','10.10.1.14',16,16,NULL,'2023-07-25 13:33:23',NULL),(71,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-25 13:42:41',NULL),(72,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.14',4,4,NULL,'2023-07-25 13:50:35',NULL),(73,'App\\Models\\Preparation\\ApmKbn\\ApmKbn',1,'preparation_apm-kbn','Membuat Data Program Audit No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 13:56:01',NULL),(74,'App\\Models\\Preparation\\ApmKbn\\ApmKbn',1,'preparation_apm-kbn','Submit Data Program Audit No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 13:56:03',NULL),(75,'App\\Models\\Preparation\\ApmKbn\\ApmKbn',1,'preparation_apm-kbn','Menyetujui Data Program Audit No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',16,16,NULL,'2023-07-25 13:56:16',NULL),(76,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Melengkapi Detail Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 14:01:53',NULL),(77,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Melengkapi Detail Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 14:02:11',NULL),(78,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Melengkapi Detail Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 14:02:31',NULL),(79,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Melengkapi Detail Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',10,10,NULL,'2023-07-25 14:02:45',NULL),(82,'App\\Models\\Auth\\User',14,'auth_login','Login berhasil','10.10.10.7',14,14,NULL,'2023-07-25 14:14:37',NULL),(83,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Mengubah Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',14,14,NULL,'2023-07-25 14:15:09',NULL),(84,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Submit Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',14,14,NULL,'2023-07-25 14:15:13',NULL),(85,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Menyetujui Data Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','10.10.10.7',16,16,NULL,'2023-07-25 14:15:41',NULL),(86,'App\\Models\\Master\\Fee\\CostComponent',5,'master_fee_cost-component','Membuat Data makan','10.10.1.14',1,1,NULL,'2023-07-25 14:17:14',NULL),(87,'App\\Models\\Master\\Fee\\CostComponent',6,'master_fee_cost-component','Membuat Data Biaya BBM','10.10.1.14',1,1,NULL,'2023-07-25 14:17:49',NULL),(88,'App\\Models\\Master\\Fee\\CostComponent',7,'master_fee_cost-component','Membuat Data Biaya Friendship','10.10.1.14',1,1,NULL,'2023-07-25 14:18:44',NULL),(89,'App\\Models\\Master\\Fee\\BankAccount',5,'master_fee_bank-account','Membuat Data ','10.10.1.14',1,1,NULL,'2023-07-25 14:20:38',NULL),(90,'App\\Models\\Master\\Fee\\BankAccount',6,'master_fee_bank-account','Membuat Data ','10.10.1.14',1,1,NULL,'2023-07-25 14:21:02',NULL),(91,'App\\Models\\Master\\Fee\\BankAccount',7,'master_fee_bank-account','Membuat Data ','10.10.1.14',1,1,NULL,'2023-07-25 14:21:22',NULL),(92,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-25 15:18:50',NULL),(93,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.14',16,16,NULL,'2023-07-25 18:59:09',NULL),(94,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-26 18:26:18',NULL),(95,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-26 22:14:05',NULL),(96,'App\\Models\\Master\\Org\\OrgStruct',1,'master_org_root','Mengubah Data PT. Kawasan Berikat Nusantara','10.10.1.14',1,1,NULL,'2023-07-26 22:36:46',NULL),(97,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.14',4,4,NULL,'2023-07-26 23:12:36',NULL),(98,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-26 23:13:44',NULL),(99,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-07-27 09:04:26',NULL),(100,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-27 09:13:05',NULL),(101,'App\\Models\\Auth\\User',4,'auth_login','Login berhasil','10.10.1.14',4,4,NULL,'2023-07-27 09:16:46',NULL),(102,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-27 09:19:15',NULL),(103,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-07-27 09:21:22',NULL),(104,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-07-27 09:22:45',NULL),(105,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-07-27 09:23:10',NULL),(106,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-07-27 09:36:18',NULL),(107,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-27 10:15:22',NULL),(108,'App\\Models\\Auth\\User',14,'auth_login','Login berhasil','10.10.1.14',14,14,NULL,'2023-07-27 10:40:42',NULL),(109,'App\\Models\\Rkia\\Rkia',2,'rkia_operation','Membuat Data Program Kerja PKPT 2024','10.10.1.14',14,14,NULL,'2023-07-27 10:42:49',NULL),(110,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Upgrade Versi Program Kerja PKPT 2023','10.10.1.14',14,14,NULL,'2023-07-27 10:50:36',NULL),(111,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.14',16,16,NULL,'2023-07-27 10:52:23',NULL),(112,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Menyetujui Data Program Kerja PKPT 2023','10.10.1.14',16,16,NULL,'2023-07-27 10:53:50',NULL),(113,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-07-27 10:54:43',NULL),(114,'App\\Models\\Auth\\User',8,'auth_login','Login berhasil','10.10.10.7',8,8,NULL,'2023-07-27 10:58:17',NULL),(115,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-27 11:03:04',NULL),(116,'App\\Models\\Training\\TrainingAuditor',1,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:12:41',NULL),(117,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-07-27 11:12:44',NULL),(118,'App\\Models\\Training\\TrainingAuditor',2,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:14:03',NULL),(119,'App\\Models\\Training\\TrainingAuditor',1,'training-auditor.planning','Menghapus Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:14:59',NULL),(120,'App\\Models\\Training\\TrainingAuditor',3,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:16:22',NULL),(121,'App\\Models\\Training\\TrainingAuditor',2,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:16:35',NULL),(122,'App\\Models\\Training\\TrainingAuditor',4,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:18:17',NULL),(123,'App\\Models\\Training\\TrainingAuditor',5,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:18:58',NULL),(124,'App\\Models\\Training\\TrainingAuditor',6,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:19:50',NULL),(125,'App\\Models\\Training\\TrainingAuditor',7,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:20:35',NULL),(126,'App\\Models\\Training\\TrainingAuditor',4,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:21:52',NULL),(127,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-07-27 11:22:26',NULL),(128,'App\\Models\\Training\\TrainingAuditor',8,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:23:24',NULL),(129,'App\\Models\\Training\\TrainingAuditor',8,'training-auditor.planning','Menghapus Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:24:22',NULL),(130,'App\\Models\\Training\\TrainingAuditor',9,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:27:27',NULL),(131,'App\\Models\\Training\\TrainingAuditor',10,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:47:42',NULL),(132,'App\\Models\\Training\\TrainingAuditor',11,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:49:10',NULL),(133,'App\\Models\\Training\\TrainingAuditor',12,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:49:51',NULL),(134,'App\\Models\\Training\\TrainingAuditor',13,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:50:41',NULL),(135,'App\\Models\\Training\\TrainingAuditor',14,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:52:23',NULL),(136,'App\\Models\\Training\\TrainingAuditor',15,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 11:57:51',NULL),(137,'App\\Models\\Training\\TrainingAuditor',16,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 12:01:56',NULL),(138,'App\\Models\\Training\\TrainingAuditor',17,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 12:02:43',NULL),(139,'App\\Models\\Training\\TrainingAuditor',18,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 12:12:50',NULL),(140,'App\\Models\\Training\\TrainingAuditor',19,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-07-27 12:13:52',NULL),(141,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-27 12:53:34',NULL),(142,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-07-27 14:06:07',NULL),(143,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-07-27 16:29:02',NULL),(144,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.14',1,1,NULL,'2023-07-27 22:48:26',NULL),(145,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-07-28 08:29:14',NULL),(146,'App\\Models\\Auth\\User',14,'auth_login','Login berhasil','10.10.1.14',14,14,NULL,'2023-07-28 08:57:59',NULL),(147,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-07-28 10:52:01',NULL),(148,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-07-31 09:25:10',NULL),(149,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-07-31 09:27:57',NULL),(150,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-08-01 11:39:01',NULL),(151,'App\\Models\\Rkia\\Rkia',3,'rkia_special','Membuat Data Program Kerja Non PKPT 2023','10.10.10.7',10,10,NULL,'2023-08-01 11:39:21',NULL),(152,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-08-01 11:40:52',NULL),(153,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-08-01 14:04:59',NULL),(154,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.10.7',10,10,NULL,'2023-08-01 14:05:27',NULL),(155,'App\\Models\\Auth\\User',8,'auth_login','Login berhasil','10.10.1.14',8,8,NULL,'2023-08-02 08:43:15',NULL),(156,'App\\Models\\Training\\TrainingAuditor',20,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:50:21',NULL),(157,'App\\Models\\Training\\TrainingAuditor',21,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:51:32',NULL),(158,'App\\Models\\Training\\TrainingAuditor',20,'training-auditor.planning','Mengubah Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:52:00',NULL),(159,'App\\Models\\Training\\TrainingAuditor',21,'training-auditor.planning','Mengubah Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:52:22',NULL),(160,'App\\Models\\Training\\TrainingAuditor',20,'training-auditor.planning','Mengubah Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:53:07',NULL),(161,'App\\Models\\Training\\TrainingAuditor',22,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:55:05',NULL),(162,'App\\Models\\Training\\TrainingAuditor',21,'training-auditor.planning','Mengubah Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 08:55:22',NULL),(163,'App\\Models\\Training\\TrainingAuditor',23,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 09:18:11',NULL),(164,'App\\Models\\Training\\TrainingAuditor',24,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 09:19:15',NULL),(165,'App\\Models\\Training\\TrainingAuditor',25,'training-auditor.planning','Membuat Data Training Auditor','10.10.1.14',8,8,NULL,'2023-08-02 09:20:19',NULL),(166,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-08-02 09:21:47',NULL),(167,'App\\Models\\Master\\Training\\TrainingInstitute',1,'master_training_training-institute','Mengubah Data PPA&K','10.10.10.7',1,1,NULL,'2023-08-02 09:23:18',NULL),(168,'App\\Models\\Master\\Training\\TrainingInstitute',2,'master_training_training-institute','Mengubah Data YPIA','10.10.10.7',1,1,NULL,'2023-08-02 09:23:37',NULL),(169,'App\\Models\\Master\\Training\\TrainingInstitute',4,'master_training_training-institute','Membuat Data CRMS','10.10.10.7',1,1,NULL,'2023-08-02 09:23:58',NULL),(170,'App\\Models\\Master\\Training\\TrainingInstitute',5,'master_training_training-institute','Membuat Data PPM Manajemen','10.10.10.7',1,1,NULL,'2023-08-02 09:24:37',NULL),(171,'App\\Models\\Master\\Training\\TrainingInstitute',6,'master_training_training-institute','Membuat Data LSP MKS','10.10.10.7',1,1,NULL,'2023-08-02 09:25:04',NULL),(172,'App\\Models\\Master\\Training\\TrainingInstitute',7,'master_training_training-institute','Membuat Data LSP MR','10.10.10.7',1,1,NULL,'2023-08-02 09:25:20',NULL),(173,'App\\Models\\Master\\Training\\TrainingInstitute',8,'master_training_training-institute','Membuat Data LSP AI','10.10.10.7',1,1,NULL,'2023-08-02 09:26:12',NULL),(174,'App\\Models\\Master\\Training\\TrainingInstitute',9,'master_training_training-institute','Membuat Data Danareksa LEAD','10.10.1.14',1,1,NULL,'2023-08-02 09:27:42',NULL),(175,'App\\Models\\Master\\Training\\TrainingType',8,'master_training_training-type','Membuat Data Diklat Khusus Kepala SPI + Asesmen','10.10.1.14',1,1,NULL,'2023-08-02 09:29:17',NULL),(176,'App\\Models\\Master\\Training\\TrainingType',9,'master_training_training-type','Membuat Data Tingkat Dasar I','10.10.1.14',1,1,NULL,'2023-08-02 09:30:44',NULL),(177,'App\\Models\\Master\\Training\\TrainingType',10,'master_training_training-type','Membuat Data Tingkat Dasar II','10.10.1.14',1,1,NULL,'2023-08-02 09:31:18',NULL),(178,'App\\Models\\Master\\Training\\TrainingType',11,'master_training_training-type','Membuat Data Tingkat Lanjutan I','10.10.1.14',1,1,NULL,'2023-08-02 09:32:25',NULL),(179,'App\\Models\\Master\\Training\\TrainingType',12,'master_training_training-type','Membuat Data Tingkat Lanjutan II','10.10.1.14',1,1,NULL,'2023-08-02 09:32:58',NULL),(180,'App\\Models\\Master\\Training\\TrainingType',13,'master_training_training-type','Membuat Data Tingkat Manajerial','10.10.1.14',1,1,NULL,'2023-08-02 09:33:18',NULL),(181,'App\\Models\\Master\\Training\\TrainingType',14,'master_training_training-type','Membuat Data Seminar dan Pengukuhan QIA','10.10.1.14',1,1,NULL,'2023-08-02 09:33:44',NULL),(182,'App\\Models\\Master\\Training\\TrainingType',15,'master_training_training-type','Membuat Data TIngkat Pra-Manajerial Kepala SPI','10.10.1.14',1,1,NULL,'2023-08-02 09:34:38',NULL),(183,'App\\Models\\Master\\Training\\TrainingType',16,'master_training_training-type','Membuat Data Tingkat Manajerial Kepala SPI','10.10.1.14',1,1,NULL,'2023-08-02 09:34:59',NULL),(184,'App\\Models\\Master\\Training\\TrainingType',17,'master_training_training-type','Membuat Data Certified Risk Management Officer','10.10.1.14',1,1,NULL,'2023-08-02 09:35:58',NULL),(185,'App\\Models\\Master\\Training\\TrainingType',18,'master_training_training-type','Membuat Data Qualified Risk Management Officer','10.10.1.14',1,1,NULL,'2023-08-02 09:36:26',NULL),(186,'App\\Models\\Master\\Training\\TrainingType',19,'master_training_training-type','Membuat Data Certified Risk Management Professional','10.10.1.14',1,1,NULL,'2023-08-02 09:37:01',NULL),(187,'App\\Models\\Master\\Training\\TrainingType',20,'master_training_training-type','Membuat Data Qualified Risk Management Professional','10.10.1.14',1,1,NULL,'2023-08-02 09:37:52',NULL),(188,'App\\Models\\Master\\Training\\TrainingType',21,'master_training_training-type','Membuat Data Certified Legal Auditor','10.10.1.14',1,1,NULL,'2023-08-02 09:38:16',NULL),(189,'App\\Models\\Master\\Training\\TrainingType',22,'master_training_training-type','Membuat Data Certified Chief Governance Officer','10.10.1.14',1,1,NULL,'2023-08-02 09:38:44',NULL),(190,'App\\Models\\Master\\Training\\TrainingType',23,'master_training_training-type','Membuat Data Qualified Chief Risk Officer','10.10.1.14',1,1,NULL,'2023-08-02 09:39:12',NULL),(191,'App\\Models\\Master\\Training\\TrainingType',24,'master_training_training-type','Membuat Data Certified Chief Compliance Officer','10.10.1.14',1,1,NULL,'2023-08-02 09:39:40',NULL),(192,'App\\Models\\Master\\Training\\TrainingType',25,'master_training_training-type','Membuat Data Certified Fraud Examiners','10.10.1.14',1,1,NULL,'2023-08-02 09:40:21',NULL),(193,'App\\Models\\Master\\Training\\TrainingInstitute',10,'master_training_training-institute','Membuat Data ACFE','10.10.1.14',1,1,NULL,'2023-08-02 09:40:37',NULL),(194,'App\\Models\\Master\\Training\\TrainingInstitute',11,'master_training_training-institute','Membuat Data IIA','10.10.1.14',1,1,NULL,'2023-08-02 09:41:15',NULL),(195,'App\\Models\\Master\\Training\\TrainingInstitute',12,'master_training_training-institute','Membuat Data CIA','10.10.1.14',1,1,NULL,'2023-08-02 09:41:47',NULL),(196,'App\\Models\\Master\\Training\\TrainingInstitute',12,'master_training_training-institute','Menghapus Data CIA','10.10.1.14',1,1,NULL,'2023-08-02 09:42:06',NULL),(197,'App\\Models\\Master\\Training\\TrainingType',26,'master_training_training-type','Membuat Data Certified Internal Auditor','10.10.1.14',1,1,NULL,'2023-08-02 09:42:29',NULL),(198,'App\\Models\\Training\\TrainingAuditor',26,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 09:55:29',NULL),(199,'App\\Models\\Training\\TrainingAuditor',26,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 09:55:56',NULL),(200,'App\\Models\\Training\\TrainingAuditor',27,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 09:58:49',NULL),(201,'App\\Models\\Training\\TrainingAuditor',28,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 09:59:59',NULL),(202,'App\\Models\\Training\\TrainingAuditor',29,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:07:00',NULL),(203,'App\\Models\\Training\\TrainingAuditor',30,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:07:38',NULL),(204,'App\\Models\\Training\\TrainingAuditor',31,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:09:14',NULL),(205,'App\\Models\\Training\\TrainingAuditor',32,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:09:51',NULL),(206,'App\\Models\\Training\\TrainingAuditor',33,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:10:43',NULL),(207,'App\\Models\\Training\\TrainingAuditor',34,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:11:22',NULL),(208,'App\\Models\\Training\\TrainingAuditor',34,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:11:41',NULL),(209,'App\\Models\\Training\\TrainingAuditor',35,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:18:48',NULL),(210,'App\\Models\\Training\\TrainingAuditor',36,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:20:01',NULL),(211,'App\\Models\\Training\\TrainingAuditor',37,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:23:46',NULL),(212,'App\\Models\\Training\\TrainingAuditor',38,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:24:23',NULL),(213,'App\\Models\\Training\\TrainingAuditor',37,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:24:37',NULL),(214,'App\\Models\\Training\\TrainingAuditor',38,'training-auditor.planning','Mengubah Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:26:40',NULL),(215,'App\\Models\\Training\\TrainingAuditor',39,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:29:06',NULL),(216,'App\\Models\\Training\\TrainingAuditor',40,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:29:38',NULL),(217,'App\\Models\\Training\\TrainingAuditor',41,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:31:22',NULL),(218,'App\\Models\\Training\\TrainingAuditor',42,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:36:41',NULL),(219,'App\\Models\\Training\\TrainingAuditor',43,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:37:04',NULL),(220,'App\\Models\\Training\\TrainingAuditor',44,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:38:11',NULL),(221,'App\\Models\\Training\\TrainingAuditor',45,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:38:51',NULL),(222,'App\\Models\\Training\\TrainingAuditor',46,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:39:31',NULL),(223,'App\\Models\\Training\\TrainingAuditor',47,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:40:01',NULL),(224,'App\\Models\\Training\\TrainingAuditor',48,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:41:04',NULL),(225,'App\\Models\\Training\\TrainingAuditor',49,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:42:10',NULL),(226,'App\\Models\\Training\\TrainingAuditor',50,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:42:41',NULL),(227,'App\\Models\\Training\\TrainingAuditor',51,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:51:57',NULL),(228,'App\\Models\\Training\\TrainingAuditor',52,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:54:35',NULL),(229,'App\\Models\\Training\\TrainingAuditor',53,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:55:41',NULL),(230,'App\\Models\\Training\\TrainingAuditor',54,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:56:15',NULL),(231,'App\\Models\\Training\\TrainingAuditor',55,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:57:18',NULL),(232,'App\\Models\\Training\\TrainingAuditor',56,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 10:58:44',NULL),(233,'App\\Models\\Training\\TrainingAuditor',57,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 11:00:43',NULL),(234,'App\\Models\\Training\\TrainingAuditor',58,'training-auditor.planning','Membuat Data Training Auditor','10.10.10.7',8,8,NULL,'2023-08-02 11:02:42',NULL),(235,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-08-02 11:21:56',NULL),(236,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-08-02 12:53:01',NULL),(237,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-08-02 17:03:04',NULL),(238,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.14',9,9,NULL,'2023-08-07 08:07:49',NULL),(239,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.14',16,16,NULL,'2023-08-07 12:45:20',NULL),(240,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 12:50:57',NULL),(241,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 12:53:23',NULL),(242,'App\\Models\\Auth\\User',15,'auth_login','Login berhasil','10.10.1.14',15,15,NULL,'2023-08-07 12:56:09',NULL),(243,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 12:57:27',NULL),(244,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 13:14:44',NULL),(245,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 14:56:34',NULL),(246,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 15:06:10',NULL),(247,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.7',16,16,NULL,'2023-08-07 15:23:03',NULL),(248,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.10.7',9,9,NULL,'2023-08-08 09:31:32',NULL),(249,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.10.7',1,1,NULL,'2023-08-08 09:34:00',NULL),(250,'App\\Models\\Auth\\User',5,'auth_login','Login berhasil','10.10.10.7',5,5,NULL,'2023-08-08 09:37:05',NULL),(251,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.14',16,16,NULL,'2023-08-08 09:38:48',NULL),(252,'App\\Models\\Auth\\User',10,'auth_login','Login berhasil','10.10.1.14',10,10,NULL,'2023-08-08 09:42:14',NULL),(253,'App\\Models\\Auth\\User',5,'auth_login','Login berhasil','10.10.10.7',5,5,NULL,'2023-08-08 11:45:22',NULL),(254,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.209',16,16,NULL,'2023-08-08 13:42:20',NULL),(255,'App\\Models\\Auth\\User',12,'auth_login','Login berhasil','10.10.10.65',12,12,NULL,'2023-08-08 14:29:33',NULL),(256,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.1.209',16,16,NULL,'2023-08-08 16:40:28',NULL),(257,'App\\Models\\Auth\\User',9,'auth_login','Login berhasil','10.10.1.209',9,9,NULL,'2023-08-09 08:20:08',NULL),(258,'App\\Models\\Auth\\User',16,'auth_login','Login berhasil','10.10.10.65',16,16,NULL,'2023-08-09 10:49:33',NULL),(259,'App\\Models\\Auth\\User',1,'auth_login','Login berhasil','10.10.1.209',1,1,NULL,'2023-08-09 11:58:27',NULL);
/*!40000 ALTER TABLE `sys_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_approvals`
--

DROP TABLE IF EXISTS `sys_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_approvals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(255) NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 1 COMMENT '1:sequence/berurutan, 2:pararel/berbarengan',
  `order` int(11) NOT NULL DEFAULT 1,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|rejected|approved',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_approvals_target_type_target_id_index` (`target_type`,`target_id`),
  KEY `sys_approvals_role_id_foreign` (`role_id`),
  KEY `sys_approvals_user_id_foreign` (`user_id`),
  KEY `sys_approvals_position_id_foreign` (`position_id`),
  CONSTRAINT `sys_approvals_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `sys_approvals_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`),
  CONSTRAINT `sys_approvals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_approvals`
--

LOCK TABLES `sys_approvals` WRITE;
/*!40000 ALTER TABLE `sys_approvals` DISABLE KEYS */;
INSERT INTO `sys_approvals` VALUES (4,'App\\Models\\Preparation\\Assignment\\Assignment',1,'preparation_assignment',6,1,1,'approved',16,95,NULL,'2023-07-25 13:22:40',10,NULL,'2023-07-25 13:22:20','2023-07-25 13:22:40'),(5,'App\\Models\\Preparation\\LangkahKerja\\LangkahKerja',1,'preparation_langkah-kerja',6,1,1,'approved',16,95,NULL,'2023-07-25 13:33:23',10,NULL,'2023-07-25 13:32:45','2023-07-25 13:33:23'),(6,'App\\Models\\Preparation\\ApmKbn\\ApmKbn',1,'preparation_apm-kbn',6,1,1,'approved',16,95,NULL,'2023-07-25 13:56:16',10,NULL,'2023-07-25 13:56:03','2023-07-25 13:56:16'),(7,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee',6,1,1,'approved',16,95,NULL,'2023-07-25 14:15:41',14,NULL,'2023-07-25 14:15:13','2023-07-25 14:15:41');
/*!40000 ALTER TABLE `sys_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_failed_jobs`
--

DROP TABLE IF EXISTS `sys_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_failed_jobs`
--

LOCK TABLES `sys_failed_jobs` WRITE;
/*!40000 ALTER TABLE `sys_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_files`
--

DROP TABLE IF EXISTS `sys_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(255) NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_files_target_type_target_id_index` (`target_type`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_files`
--

LOCK TABLES `sys_files` WRITE;
/*!40000 ALTER TABLE `sys_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_jobs`
--

DROP TABLE IF EXISTS `sys_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_jobs`
--

LOCK TABLES `sys_jobs` WRITE;
/*!40000 ALTER TABLE `sys_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `module` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_menu_module_unique` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,NULL,'rkia',1,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(2,1,'rkia_operation',2,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(3,1,'rkia_special',3,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(4,1,'rkia_ict',4,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(5,NULL,'investigasi',28,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(6,5,'investigasi_surat-tugas-investigasi',29,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(7,5,'investigasi_surat-pemanggilan-investigasi',30,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(8,5,'investigasi_pemeriksaan-pelanggaran',31,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(9,NULL,'preparation',9,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(10,9,'preparation_assignment',10,NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(11,9,'preparation_program',12,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(12,9,'preparation_langkah-kerja',13,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(14,9,'preparation_apm',15,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(15,9,'preparation_fee',16,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(16,NULL,'conducting',17,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(17,16,'conducting_memo-opening',18,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(18,16,'conducting_memo-closing',19,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(19,NULL,'reporting',20,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(20,19,'reporting_lha',22,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(21,19,'reporting.lb-spi',23,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(22,NULL,'followup',24,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(23,22,'followup_reschedule',26,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(24,22,'followup_followup-monitor',27,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(25,NULL,'extern',32,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(26,25,'extern_extern-reg',33,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(27,25,'extern_extern-followup',34,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(28,25,'extern_extern-reschedule',35,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(29,NULL,'consultation',36,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(30,29,'consultation.work-plan',37,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(31,29,'consultation.realization',38,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(32,NULL,'training-auditor',39,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(33,32,'training-auditor.planning',40,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(34,32,'training-auditor.realization',41,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(35,NULL,'penilaian-kinerja',42,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(36,9,'preparation_instruction',11,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(37,19,'reporting_memo-lhp',21,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(38,22,'followup_memo-tindak-lanjut',25,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(39,NULL,'risk-assessment',43,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(40,39,'risk-assessment_risk-register',44,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(41,39,'risk-assessment_current-risk',45,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(42,39,'risk-assessment_inherent-risk',46,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(43,39,'risk-assessment_residual-risk',47,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu_flows`
--

DROP TABLE IF EXISTS `sys_menu_flows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_flows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 1 COMMENT '1:sequence/berurutan, 2:pararel/berbarengan',
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_menu_flows_menu_id_foreign` (`menu_id`),
  KEY `sys_menu_flows_role_id_foreign` (`role_id`),
  CONSTRAINT `sys_menu_flows_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_menu_flows_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu_flows`
--

LOCK TABLES `sys_menu_flows` WRITE;
/*!40000 ALTER TABLE `sys_menu_flows` DISABLE KEYS */;
INSERT INTO `sys_menu_flows` VALUES (30,2,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(31,3,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(32,4,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(36,10,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(37,36,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(38,11,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(39,12,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(41,14,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(42,15,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(43,17,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(44,18,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(45,37,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(46,20,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(47,21,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(48,38,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(49,23,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(50,24,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(51,6,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(52,7,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(53,8,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(54,26,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(55,27,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(56,28,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(57,30,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(58,31,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(59,33,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(60,34,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(61,35,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(62,40,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(63,41,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(64,42,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47'),(65,43,6,1,1,NULL,NULL,'2023-08-09 11:58:47','2023-08-09 11:58:47');
/*!40000 ALTER TABLE `sys_menu_flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_migrations`
--

DROP TABLE IF EXISTS `sys_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_migrations`
--

LOCK TABLES `sys_migrations` WRITE;
/*!40000 ALTER TABLE `sys_migrations` DISABLE KEYS */;
INSERT INTO `sys_migrations` VALUES (1,'2014_10_12_000000_create_sys_users_table',1),(2,'2014_10_12_100000_create_sys_password_resets_table',1),(3,'2019_08_19_000000_create_sys_failed_jobs_table',1),(4,'2022_02_14_102957_create_sys_jobs_table',1),(5,'2022_02_14_113847_create_sys_permission_tables',1),(6,'2022_02_14_142015_create_sys_activities_table',1),(7,'2022_02_14_142042_create_sys_notifications_table',1),(8,'2022_02_14_142058_create_sys_files_table',1),(9,'2022_02_14_142068_create_sys_menu_table',1),(10,'2022_02_14_142078_create_sys_approvals_table',1),(11,'2022_02_14_142111_create_ref_org_structs_table',1),(12,'2022_02_23_152708_create_ref_org_structs_groups_table',1),(13,'2022_02_23_152709_create_ref_ict_objects_table',1),(14,'2022_02_23_152710_create_ref_ext_objects_table',1),(15,'2022_02_24_042619_create_ref_letters_table',1),(16,'2022_02_24_042620_create_ref_aspects_table',1),(17,'2022_02_24_042621_create_ref_document_items_table',1),(18,'2022_02_24_042622_create_ref_audit_procedure_table',1),(19,'2022_02_24_151558_create_trans_rkia_table',1),(20,'2022_03_01_213154_create_trans_assignments_table',1),(21,'2022_03_08_145201_create_ref_geo',1),(22,'2022_03_20_115003_create_trans_documents_table',1),(23,'2022_03_20_234331_create_trans_programs_table',1),(24,'2022_04_05_171713_create_trans_opening_table',1),(25,'2022_04_05_181713_create_trans_closing_table',1),(26,'2022_04_05_201713_create_trans_exiting_table',1),(27,'2022_04_25_213350_create_ref_bank_accounts_table',1),(28,'2022_04_25_214350_create_trans_fees_table',1),(29,'2022_04_25_220125_create_ref_risk_assessments_table',1),(30,'2022_04_26_224432_create_ref_surveys_table',1),(31,'2022_04_26_274404_create_trans_surveys_regs_table',1),(32,'2022_05_06_170011_create_ref_last_audits_table',1),(33,'2022_05_19_101102_create_trans_assignments_users_table',1),(34,'2022_05_19_101902_create_trans_apm_table',1),(35,'2022_05_24_123414_update_trans_documents_fulls_table',1),(36,'2022_05_27_103253_drop_aspect_on_trans_apm_details_table',1),(37,'2022_05_30_155320_create_trans_kka_samples_table',1),(38,'2022_05_31_103137_create_trans_kka_feedbacks_table',1),(39,'2022_05_31_103706_create_trans_kka_worksheets_table',1),(40,'2022_06_03_173309_update_trans_fees_details_table',1),(41,'2022_06_04_224513_create_trans_reports_table',1),(42,'2022_06_05_120352_create_trans_followups_table',1),(43,'2022_06_07_163311_update_latter_manual_trans_assignments',1),(44,'2022_06_07_180504_add_coloum_apm_details_id_to_trans_kka_samples_details',1),(45,'2022_06_13_180516_add_level_to_trans_kka_samples_details',1),(46,'2022_06_16_155817_add_column_to_sys_users_table',1),(47,'2022_06_28_141109_update_ref_surveys_statements_table',1),(48,'2022_06_29_234545_update_ref_org_structs_table',1),(49,'2022_07_05_171949_create_trans_meetings_table',1),(50,'2022_07_08_163417_update_sys_activities_table',1),(51,'2022_07_08_163639_update_sys_approvals_table',1),(52,'2022_07_12_095230_create_trans_meetings_recap_table',1),(53,'2022_07_12_120546_add_column_presence_to_trans_meetings_parts_table',1),(54,'2022_07_21_124550_create_ref_training_types_table',1),(55,'2022_07_21_124821_create_ref_training_institutes_table',1),(56,'2022_07_21_140023_create_trans_training_auditors_table',1),(57,'2022_07_21_161355_drop_ext_objects_table',1),(58,'2022_07_21_171706_create_ref_extern_instances_table',1),(59,'2022_07_22_152352_create_trans_extern_regs_table',1),(60,'2022_07_31_203653_create_trans_lha_table',1),(61,'2022_08_01_034350_create_trans_lha_toc_table',1),(62,'2022_08_01_063632_create_trans_lha_inspection_table',1),(63,'2022_08_01_072659_create_trans_lha_resume_table',1),(64,'2022_08_01_081645_create_trans_lha_result_table',1),(65,'2022_08_01_185355_drop_trans_reports_table',1),(66,'2022_08_02_234343_create_trans_dir_notes_table',1),(67,'2022_08_15_022856_create_ref_survey_categories_table',1),(68,'2022_09_14_151454_add_upgrade_reject_rkia_table',1),(69,'2022_09_22_100907_update_trans_exiting_details_parts_table',1),(70,'2022_09_22_101511_update_trans_opening_details_parts_table',1),(71,'2022_09_27_103759_create_ref_regions',1),(72,'2022_10_05_204742_create_investigasi_pemeriksaan_pelanggaran',1),(73,'2022_10_10_151459_create_investigasi_pemeriksaan_pelanggaran_temp',1),(74,'2022_10_21_131648_alter_trans_followup_monitors_add_reviewed_by',1),(75,'2022_10_21_133307_create_trans_followup_regs_users_table',1),(76,'2022_10_21_134510_add_column_to_trans_followup_regs_items',1),(77,'2022_10_22_000740_create_trans_investigasi_st',1),(78,'2022_11_06_192842_update_trans_investigasi_st',1),(79,'2022_11_07_075458_create_trans_investigasi_sp',1),(80,'2022_11_08_174443_change_investigasi_pp_to_trans_investigasi_pp',1),(81,'2022_11_09_172316_create_trans_investigasi_pp_cc',1),(82,'2022_11_13_132648_create_table_trans_investigasi_sp_details',1),(83,'2022_11_13_183110_change_trans_investigasi_pp_relation_to_sp',1),(84,'2022_11_18_194913_update_trans_apm_details_table',1),(85,'2022_11_21_013611_alter_trans_investigasi_st_add_letter_column',1),(86,'2022_11_28_094922_create_ref_iacm_level_table',1),(87,'2022_11_28_094923_create_ref_iacm_parameter_table',1),(88,'2022_11_28_094924_create_trans_iacm_table',1),(89,'2022_11_28_094925_create_ref_iacm_details_table',1),(90,'2022_12_05_222333_update_table_trans_kka_samples_detail',1),(91,'2022_12_06_061001_alter_trans_lha_result_add_audit_rating_column',1),(92,'2022_12_06_183228_update_table_trans_extern_reg_details',1),(93,'2022_12_08_151451_alter_trans_kka_worksheets_add_approval_column',1),(94,'2022_12_12_015358_alter_trans_kka_samples_details_add_feedback_and_worksheet_meta_column',1),(95,'2022_12_24_051754_alter_trans_investigasi_sp_details_change_receiver_id',1),(96,'2022_12_24_070138_create_trans_investigasi_sp_to',1),(97,'2022_12_25_033733_alter_investigasi_pp_detail_add_immateriil_column',1),(98,'2022_12_29_204359_alter_table_trans_extern_regs',1),(99,'2023_01_02_034522_create_trans_followup_regs_cc',1),(100,'2023_01_02_035522_create_trans_followup_monitors_cc',1),(101,'2023_01_04_095429_alter_table_trans_rkia_summary',1),(102,'2023_01_05_000312_alter_trans_followup_regs_items_recommend_nullable',1),(103,'2023_01_05_001214_alter_trans_followup_regs_items_add_reg_meta_column',1),(104,'2023_01_29_214745_alter_table_trans_investigasi_pp_person',1),(105,'2023_01_29_215554_alter_table_trans_investigasi_pp_person_nullable_user_id',1),(106,'2023_01_29_220025_alter_table_trans_investigasi_pp_person_add_tipe',1),(107,'2023_02_07_003045_alter_table_trans_investigasi_pp_person_drop_foreign_key',1),(108,'2023_03_01_204325_alter_table_trans_investigasi_pp_detail_add_pelanggaran_and_condition',1),(109,'2023_03_09_213007_alter_table_trans_investigasi_sp_details_add_letter_formated',1),(110,'2023_03_30_213007_alter_table_trans_training_auditors_add_biaya',1),(111,'2023_03_31_232348_create_ref_audit_rating_table',1),(112,'2023_03_31_240000_alter_table_last_audit_add_audit_rating_id',1),(113,'2023_04_01_240001_alter_table_ref_org_structs_add_province_city',1),(114,'2023_04_12_100630_alter_table_trans_lha_result_change_column_rating',1),(115,'2023_04_16_214943_add_column_to_ref_ict_types',1),(116,'2023_04_16_220319_add_column_to_ref_cost_components',1),(117,'2023_04_16_221451_add_column_to_ref_training_institutes',1),(118,'2023_04_16_221823_add_column_to_ref_survey_categories',1),(119,'2023_04_16_222235_add_column_to_ref_training_types',1),(120,'2023_04_18_114554_create_trans_followup_regs_add_reschedule_at_and_reschedule_by',1),(121,'2023_05_08_124823_create_ref_level_temuans',1),(122,'2023_05_08_145835_trans_kka_samples_details_add_level_temuan_id',1),(123,'2023_05_08_154653_add_column_email_website_ref_org_structs',1),(124,'2023_05_11_123357_alter_trans_documents_details_add_name_column',1),(125,'2023_05_25_174206_create_ref_pendidikan_user',1),(126,'2023_05_25_192149_create_ref_sertifikasi_user',1),(127,'2023_06_04_034709_create_ref_penilaian_category_table',1),(128,'2023_06_04_044146_create_ref_penilaian_parameter_table',1),(129,'2023_06_05_015507_create_ref_auditee_nonpkpt_table',1),(130,'2023_06_05_023221_alter_table_trans_rkia_summary_add_cost_estimation',1),(131,'2023_06_05_190124_create_trans_penilaian_kinerja_table',1),(132,'2023_06_07_113157_create_trans_consultation_work_plan',1),(133,'2023_06_07_144113_create_trans_consultation_realization',1),(134,'2023_06_16_101902_create_trans_apm_kbn_table',1),(135,'2023_06_17_213154_create_trans_langkah_kerja_table',1),(136,'2023_06_18_261746_create_trans_memo_opening',1),(137,'2023_06_18_261747_create_trans_memo_closing',1),(138,'2023_06_22_132806_alter_sys_notifications_change_message_column',1),(139,'2023_06_24_222443_alter_table_trans_langkah_kerja_add_nullable_and_supervisor',1),(140,'2023_07_02_020822_create_trans_report_lb_spi_table',1),(141,'2023_05_08_124823_create_ref_level_dampak',2),(142,'2023_05_08_124823_create_ref_level_kemungkinan',2),(143,'2023_05_08_124823_create_ref_risk_code',2),(144,'2023_05_08_124823_create_ref_risk_status',2),(145,'2023_05_08_124823_create_ref_risk_type',2),(146,'2023_07_24_215125_alter_table_trans_rkia_summary_add_vp_pic_id',2),(147,'2023_07_24_234131_create_trans_memo_opening_cc',2),(148,'2023_07_25_003738_alter_trans_kka_worksheets_add_approval_vp_spi_and_supervisor',2),(149,'2023_07_25_171706_alter_table_trans_rkia_add_closing_text',2),(150,'2023_07_25_220016_create_trans_instruction_audit',2),(151,'2023_07_26_174833_create_ref_langkah_kerja_table',2),(152,'2023_07_26_213101_create_trans_memo-lhp',2),(153,'2023_07_27_182353_alter_table_trans_assignments_add_vp_spi',2),(154,'2023_07_27_213101_create_trans_memo_tindak_lanjut',2),(155,'2023_07_28_093959_alter_table_trans_apm_add_regulation',2),(156,'2023_07_28_115107_alter_table_trans_opening_details_add_time_finished',2),(157,'2023_07_28_123101_alter_table_trans_opening_details_add_time_end_nullable',2),(158,'2023_07_31_150634_create_trans_risk_assessment_register',2),(159,'2023_08_02_042619_alter_ref_letters_table_add_no_formulir',2),(160,'2023_08_02_151454_alter_trans_rkia_table_add_pic_id',2),(161,'2023_08_31_150634_create_trans_current_risk',2),(162,'2023_08_31_150634_create_trans_inherent_risk',2),(163,'2023_08_31_150634_create_trans_residual_risk',2);
/*!40000 ALTER TABLE `sys_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notifications`
--

DROP TABLE IF EXISTS `sys_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(255) NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `message` varchar(10240) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_notifications_target_type_target_id_index` (`target_type`,`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notifications`
--

LOCK TABLES `sys_notifications` WRITE;
/*!40000 ALTER TABLE `sys_notifications` DISABLE KEYS */;
INSERT INTO `sys_notifications` VALUES (1,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Waiting Approval Program Kerja PKPT 2023','http://ams.kbn.co.id/rkia/operation/1/summary',16,NULL,'2023-07-25 09:15:45',NULL),(2,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Waiting Approval Upgrade Program Kerja PKPT 2023','https://ams.kbn.co.id/rkia/operation/1/summary',10,NULL,'2023-07-25 13:02:03',NULL),(3,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Waiting Approval Program Kerja PKPT 2023','https://ams.kbn.co.id/rkia/operation/1/summary',10,NULL,'2023-07-25 13:13:05',NULL),(4,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Mengetahui Program Kerja PKPT 2023','https://ams.kbn.co.id/rkia/operation/1/summary',10,NULL,'2023-07-25 13:13:05',NULL),(5,'App\\Models\\Preparation\\Assignment\\Assignment',1,'preparation_assignment','Waiting Approval Surat Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','https://ams.kbn.co.id/preparation/assignment/1/approval',10,NULL,'2023-07-25 13:22:20',NULL),(6,'App\\Models\\Preparation\\LangkahKerja\\LangkahKerja',1,'preparation_langkah-kerja','Waiting Approval Surat Langkah Kerja No Surat : ','https://ams.kbn.co.id/preparation/langkah-kerja/1/approval',10,NULL,'2023-07-25 13:32:45',NULL),(7,'App\\Models\\Preparation\\ApmKbn\\ApmKbn',1,'preparation_apm-kbn','Waiting Approval Program Audit No Surat : 126/MMO/DU.SPI.2/05/2023','https://ams.kbn.co.id/preparation/apm-kbn/1/approval',10,NULL,'2023-07-25 13:56:03',NULL),(8,'App\\Models\\Preparation\\Fee\\Fee',1,'preparation_fee','Waiting Approval Biaya Penugasan No Surat : 126/MMO/DU.SPI.2/05/2023','https://ams.kbn.co.id/preparation/fee/1/approval',14,NULL,'2023-07-25 14:15:13',NULL),(9,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Waiting Approval Upgrade Program Kerja PKPT 2023','https://ams.kbn.co.id/rkia/operation/1/summary',14,NULL,'2023-07-27 10:50:36',NULL),(10,'App\\Models\\Rkia\\Rkia',1,'rkia_operation','Mengetahui Program Kerja PKPT 2023','https://ams.kbn.co.id/rkia/operation/1/summary',14,NULL,'2023-07-27 10:50:36',NULL);
/*!40000 ALTER TABLE `sys_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notifications_users`
--

DROP TABLE IF EXISTS `sys_notifications_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notifications_users` (
  `notification_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `readed_at` timestamp NULL DEFAULT NULL,
  KEY `sys_notifications_users_notification_id_foreign` (`notification_id`),
  KEY `sys_notifications_users_user_id_foreign` (`user_id`),
  CONSTRAINT `sys_notifications_users_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `sys_notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_notifications_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notifications_users`
--

LOCK TABLES `sys_notifications_users` WRITE;
/*!40000 ALTER TABLE `sys_notifications_users` DISABLE KEYS */;
INSERT INTO `sys_notifications_users` VALUES (1,16,'2023-07-25 09:37:48'),(2,16,NULL),(3,16,NULL),(4,19,NULL),(5,16,NULL),(6,16,'2023-07-25 13:33:17'),(7,16,'2023-07-25 13:56:10'),(8,16,'2023-07-25 14:15:22'),(9,16,'2023-07-27 10:53:37'),(10,19,NULL);
/*!40000 ALTER TABLE `sys_notifications_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_password_resets`
--

DROP TABLE IF EXISTS `sys_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `sys_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_password_resets`
--

LOCK TABLES `sys_password_resets` WRITE;
/*!40000 ALTER TABLE `sys_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions`
--

DROP TABLE IF EXISTS `sys_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions`
--

LOCK TABLES `sys_permissions` WRITE;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
INSERT INTO `sys_permissions` VALUES (1,'dashboard.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(2,'monitoring.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(3,'rkia.operation.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(4,'rkia.operation.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(5,'rkia.operation.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(6,'rkia.operation.delete','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(7,'rkia.operation.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(8,'rkia.special.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(9,'rkia.special.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(10,'rkia.special.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(11,'rkia.special.delete','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(12,'rkia.special.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(13,'rkia.ict.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(14,'rkia.ict.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(15,'rkia.ict.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(16,'rkia.ict.delete','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(17,'rkia.ict.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(18,'rkia.ext.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(19,'rkia.ext.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(20,'rkia.ext.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(21,'rkia.ext.delete','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(22,'rkia.ext.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(23,'preparation.assignment.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(24,'preparation.assignment.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(25,'preparation.assignment.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(26,'preparation.assignment.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(27,'preparation.doc-req.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(28,'preparation.doc-req.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(29,'preparation.doc-req.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(30,'preparation.doc-req.delete','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(31,'preparation.doc-full.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(32,'preparation.doc-full.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(33,'preparation.doc-full.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(34,'preparation.doc-full.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(35,'preparation.program.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(36,'preparation.program.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(37,'preparation.program.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(38,'preparation.program.approve','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(39,'preparation.langkah-kerja.view','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(40,'preparation.langkah-kerja.create','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(41,'preparation.langkah-kerja.edit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(42,'preparation.langkah-kerja.approve','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(47,'preparation.apm.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(48,'preparation.apm.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(49,'preparation.apm.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(50,'preparation.apm.approve','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(51,'preparation.fee.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(52,'preparation.fee.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(53,'preparation.fee.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(54,'preparation.fee.approve','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(55,'conducting.opening.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(56,'conducting.opening.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(57,'conducting.opening.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(58,'conducting.sample.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(59,'conducting.sample.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(60,'conducting.sample.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(61,'conducting.feedback.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(62,'conducting.feedback.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(63,'conducting.feedback.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(64,'conducting.worksheet.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(65,'conducting.worksheet.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(66,'conducting.worksheet.edit','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(67,'conducting.worksheet.approve','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(68,'conducting.closing.view','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(69,'conducting.closing.create','web',NULL,NULL,'2023-07-24 14:13:47','2023-07-24 14:13:47'),(70,'conducting.closing.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(71,'conducting.memo-opening.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(72,'conducting.memo-opening.create','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(73,'conducting.memo-opening.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(74,'conducting.memo-opening.approve','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(75,'conducting.memo-closing.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(76,'conducting.memo-closing.create','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(77,'conducting.memo-closing.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(78,'conducting.memo-closing.approve','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(79,'reporting.lha.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(80,'reporting.lha.create','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(81,'reporting.lha.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(82,'reporting.lha.approve','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(83,'reporting.exiting.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(84,'reporting.exiting.create','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(85,'reporting.exiting.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(86,'reporting.dir-note.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(87,'reporting.dir-note.create','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(88,'reporting.dir-note.edit','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(89,'reporting.lb-spi.view','web',NULL,NULL,'2023-07-24 14:13:48','2023-07-24 14:13:48'),(90,'reporting.lb-spi.create','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(91,'reporting.lb-spi.edit','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(92,'reporting.lb-spi.delete','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(93,'reporting.lb-spi.approve','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(94,'followup.followup-reg.view','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(95,'followup.followup-reg.create','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(96,'followup.followup-reg.edit','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(97,'followup.reschedule.view','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(98,'followup.reschedule.create','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(99,'followup.reschedule.edit','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(100,'followup.reschedule.approve','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(101,'followup.followup-monitor.view','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(102,'followup.followup-monitor.create','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(103,'followup.followup-monitor.edit','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(104,'followup.followup-monitor.approve','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(105,'survey.survey-reg.view','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(106,'survey.survey-reg.create','web',NULL,NULL,'2023-07-24 14:13:49','2023-07-24 14:13:49'),(107,'survey.survey-reg.edit','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(108,'survey.survey-recap.view','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(109,'penilaian-kinerja.view','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(110,'penilaian-kinerja.create','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(111,'penilaian-kinerja.edit','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(112,'penilaian-kinerja.approve','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(113,'meeting.meeting-invit.view','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(114,'meeting.meeting-invit.create','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(115,'meeting.meeting-invit.edit','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(116,'meeting.meeting-invit.delete','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(117,'meeting.meeting-recap.view','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(118,'investigasi.surat-tugas-investigasi.view','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(119,'investigasi.surat-tugas-investigasi.create','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(120,'investigasi.surat-tugas-investigasi.edit','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(121,'investigasi.surat-tugas-investigasi.delete','web',NULL,NULL,'2023-07-24 14:13:50','2023-07-24 14:13:50'),(122,'investigasi.surat-tugas-investigasi.approve','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(123,'investigasi.surat-pemanggilan-investigasi.view','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(124,'investigasi.surat-pemanggilan-investigasi.create','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(125,'investigasi.surat-pemanggilan-investigasi.edit','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(126,'investigasi.surat-pemanggilan-investigasi.approve','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(127,'investigasi.pemeriksaan-pelanggaran.view','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(128,'investigasi.pemeriksaan-pelanggaran.create','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(129,'investigasi.pemeriksaan-pelanggaran.edit','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(130,'investigasi.pemeriksaan-pelanggaran.approve','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(131,'training-auditor.planning.view','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(132,'training-auditor.planning.create','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(133,'training-auditor.planning.edit','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(134,'training-auditor.planning.delete','web',NULL,NULL,'2023-07-24 14:13:51','2023-07-24 14:13:51'),(135,'training-auditor.planning.approve','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(136,'training-auditor.realization.view','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(137,'training-auditor.realization.create','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(138,'training-auditor.realization.edit','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(139,'training-auditor.realization.delete','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(140,'training-auditor.realization.approve','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(141,'extern.extern-reg.view','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(142,'extern.extern-reg.create','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(143,'extern.extern-reg.edit','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(144,'extern.extern-reg.delete','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(145,'extern.extern-reg.approve','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(146,'extern.extern-reschedule.view','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(147,'extern.extern-reschedule.create','web',NULL,NULL,'2023-07-24 14:13:52','2023-07-24 14:13:52'),(148,'extern.extern-reschedule.edit','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(149,'extern.extern-reschedule.approve','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(150,'extern.extern-followup.view','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(151,'extern.extern-followup.create','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(152,'extern.extern-followup.edit','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(153,'extern.extern-followup.approve','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(154,'consultation.work-plan.view','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(155,'consultation.work-plan.create','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(156,'consultation.work-plan.edit','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(157,'consultation.work-plan.delete','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(158,'consultation.work-plan.approve','web',NULL,NULL,'2023-07-24 14:13:53','2023-07-24 14:13:53'),(159,'consultation.realization.view','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(160,'consultation.realization.edit','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(161,'consultation.realization.approve','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(162,'report.view','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(163,'master.view','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(164,'master.create','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(165,'master.edit','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(166,'master.delete','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(167,'setting.view','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(168,'setting.create','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(169,'setting.edit','web',NULL,NULL,'2023-07-24 14:13:54','2023-07-24 14:13:54'),(170,'setting.delete','web',NULL,NULL,'2023-07-24 14:13:55','2023-07-24 14:13:55'),(171,'preparation.instruction.view','web',NULL,NULL,'2023-08-09 11:58:52','2023-08-09 11:58:52'),(172,'preparation.instruction.create','web',NULL,NULL,'2023-08-09 11:58:52','2023-08-09 11:58:52'),(173,'preparation.instruction.edit','web',NULL,NULL,'2023-08-09 11:58:52','2023-08-09 11:58:52'),(174,'preparation.instruction.approve','web',NULL,NULL,'2023-08-09 11:58:53','2023-08-09 11:58:53'),(175,'reporting.memo-lhp.view','web',NULL,NULL,'2023-08-09 11:58:58','2023-08-09 11:58:58'),(176,'reporting.memo-lhp.create','web',NULL,NULL,'2023-08-09 11:58:58','2023-08-09 11:58:58'),(177,'reporting.memo-lhp.edit','web',NULL,NULL,'2023-08-09 11:58:58','2023-08-09 11:58:58'),(178,'reporting.memo-lhp.approve','web',NULL,NULL,'2023-08-09 11:58:58','2023-08-09 11:58:58'),(179,'followup.memo-tindak-lanjut.view','web',NULL,NULL,'2023-08-09 11:59:00','2023-08-09 11:59:00'),(180,'followup.memo-tindak-lanjut.create','web',NULL,NULL,'2023-08-09 11:59:00','2023-08-09 11:59:00'),(181,'followup.memo-tindak-lanjut.edit','web',NULL,NULL,'2023-08-09 11:59:00','2023-08-09 11:59:00'),(182,'followup.memo-tindak-lanjut.approve','web',NULL,NULL,'2023-08-09 11:59:01','2023-08-09 11:59:01'),(183,'risk-assessment.risk-register.view','web',NULL,NULL,'2023-08-09 11:59:11','2023-08-09 11:59:11'),(184,'risk-assessment.risk-register.create','web',NULL,NULL,'2023-08-09 11:59:11','2023-08-09 11:59:11'),(185,'risk-assessment.risk-register.edit','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(186,'risk-assessment.risk-register.delete','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(187,'risk-assessment.risk-register.approve','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(188,'risk-assessment.current-risk.view','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(189,'risk-assessment.current-risk.create','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(190,'risk-assessment.current-risk.edit','web',NULL,NULL,'2023-08-09 11:59:12','2023-08-09 11:59:12'),(191,'risk-assessment.current-risk.delete','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(192,'risk-assessment.current-risk.approve','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(193,'risk-assessment.inherent-risk.view','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(194,'risk-assessment.inherent-risk.create','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(195,'risk-assessment.inherent-risk.edit','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(196,'risk-assessment.inherent-risk.delete','web',NULL,NULL,'2023-08-09 11:59:13','2023-08-09 11:59:13'),(197,'risk-assessment.inherent-risk.approve','web',NULL,NULL,'2023-08-09 11:59:14','2023-08-09 11:59:14'),(198,'risk-assessment.residual-risk.view','web',NULL,NULL,'2023-08-09 11:59:14','2023-08-09 11:59:14'),(199,'risk-assessment.residual-risk.create','web',NULL,NULL,'2023-08-09 11:59:14','2023-08-09 11:59:14'),(200,'risk-assessment.residual-risk.edit','web',NULL,NULL,'2023-08-09 11:59:14','2023-08-09 11:59:14'),(201,'risk-assessment.residual-risk.delete','web',NULL,NULL,'2023-08-09 11:59:14','2023-08-09 11:59:14'),(202,'risk-assessment.residual-risk.approve','web',NULL,NULL,'2023-08-09 11:59:15','2023-08-09 11:59:15');
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions_models`
--

DROP TABLE IF EXISTS `sys_permissions_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions_models` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `sys_permissions_models_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions_models`
--

LOCK TABLES `sys_permissions_models` WRITE;
/*!40000 ALTER TABLE `sys_permissions_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_permissions_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (1,'Administrator','web',NULL,NULL,'2023-07-24 14:13:45','2023-07-24 14:13:45'),(2,'Dewan Komisaris','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(3,'Komite Audit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(4,'Auditor','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(5,'Auditee','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(6,'Kadiv Internal Audit','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(7,'Direksi','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(8,'Direktur Utama','web',NULL,NULL,'2023-07-24 14:13:46','2023-07-24 14:13:46');
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles_models`
--

DROP TABLE IF EXISTS `sys_roles_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles_models` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `sys_roles_models_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles_models`
--

LOCK TABLES `sys_roles_models` WRITE;
/*!40000 ALTER TABLE `sys_roles_models` DISABLE KEYS */;
INSERT INTO `sys_roles_models` VALUES (1,'App\\Models\\Auth\\User',1),(4,'App\\Models\\Auth\\User',2),(4,'App\\Models\\Auth\\User',3),(4,'App\\Models\\Auth\\User',4),(4,'App\\Models\\Auth\\User',5),(4,'App\\Models\\Auth\\User',6),(4,'App\\Models\\Auth\\User',7),(4,'App\\Models\\Auth\\User',8),(4,'App\\Models\\Auth\\User',9),(4,'App\\Models\\Auth\\User',10),(4,'App\\Models\\Auth\\User',11),(4,'App\\Models\\Auth\\User',12),(4,'App\\Models\\Auth\\User',13),(4,'App\\Models\\Auth\\User',14),(4,'App\\Models\\Auth\\User',15),(5,'App\\Models\\Auth\\User',17),(5,'App\\Models\\Auth\\User',18),(5,'App\\Models\\Auth\\User',19),(6,'App\\Models\\Auth\\User',16);
/*!40000 ALTER TABLE `sys_roles_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles_permissions`
--

DROP TABLE IF EXISTS `sys_roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `sys_roles_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `sys_roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles_permissions`
--

LOCK TABLES `sys_roles_permissions` WRITE;
/*!40000 ALTER TABLE `sys_roles_permissions` DISABLE KEYS */;
INSERT INTO `sys_roles_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(3,2),(3,3),(3,4),(3,6),(3,7),(3,8),(4,4),(4,6),(5,4),(5,6),(6,4),(6,6),(7,6),(7,7),(7,8),(8,2),(8,3),(8,4),(8,6),(8,7),(8,8),(9,4),(9,6),(10,4),(10,6),(11,4),(11,6),(12,6),(12,7),(12,8),(13,2),(13,3),(13,4),(13,6),(13,7),(13,8),(14,4),(14,6),(15,4),(15,6),(16,4),(16,6),(17,6),(17,7),(17,8),(23,2),(23,3),(23,4),(23,6),(23,7),(23,8),(24,4),(24,6),(25,4),(25,6),(26,6),(26,7),(26,8),(27,2),(27,3),(27,4),(27,6),(27,7),(27,8),(28,4),(28,6),(29,4),(29,6),(30,6),(31,2),(31,3),(31,4),(31,5),(31,6),(31,7),(31,8),(32,4),(32,5),(32,6),(33,4),(33,5),(33,6),(34,6),(34,7),(34,8),(39,4),(39,6),(40,4),(40,6),(41,4),(41,6),(42,6),(47,2),(47,3),(47,4),(47,6),(47,7),(47,8),(48,4),(48,6),(49,4),(49,6),(50,6),(50,7),(50,8),(51,2),(51,3),(51,4),(51,6),(51,7),(51,8),(52,4),(52,6),(53,4),(53,6),(54,6),(54,7),(54,8),(55,2),(55,3),(55,4),(55,6),(55,7),(55,8),(56,4),(56,6),(57,4),(57,6),(58,2),(58,3),(58,4),(58,6),(58,7),(58,8),(59,4),(59,6),(60,4),(60,6),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(61,8),(62,4),(62,5),(62,6),(63,4),(63,5),(63,6),(64,2),(64,3),(64,4),(64,6),(64,7),(64,8),(65,4),(65,6),(66,4),(66,6),(67,6),(67,7),(67,8),(68,2),(68,3),(68,4),(68,6),(68,7),(69,4),(69,6),(70,4),(70,6),(71,4),(71,6),(72,4),(72,6),(73,4),(73,6),(74,6),(75,4),(75,6),(76,4),(76,6),(77,4),(77,6),(78,6),(79,2),(79,3),(79,4),(79,6),(79,7),(79,8),(80,4),(80,6),(81,4),(81,6),(82,6),(82,7),(82,8),(83,2),(83,3),(83,4),(83,6),(83,7),(83,8),(84,4),(84,6),(85,4),(85,6),(86,2),(86,3),(86,4),(86,6),(86,7),(86,8),(87,4),(87,6),(88,4),(88,6),(89,4),(89,6),(89,7),(89,8),(90,4),(90,6),(91,4),(91,6),(92,4),(92,6),(93,6),(93,7),(93,8),(94,2),(94,3),(94,4),(94,6),(94,7),(94,8),(95,4),(95,6),(96,4),(96,6),(97,2),(97,3),(97,4),(97,6),(97,7),(97,8),(98,4),(98,6),(99,4),(99,6),(100,6),(100,7),(100,8),(101,2),(101,3),(101,4),(101,5),(101,6),(101,7),(101,8),(102,4),(102,5),(102,6),(103,4),(103,5),(103,6),(104,6),(104,7),(104,8),(105,2),(105,3),(105,4),(105,5),(105,6),(105,7),(105,8),(106,4),(106,5),(106,6),(107,4),(107,5),(107,6),(108,2),(108,3),(108,4),(108,5),(108,6),(108,7),(108,8),(109,2),(109,3),(109,4),(109,5),(109,6),(109,7),(109,8),(110,4),(110,5),(110,6),(111,4),(111,5),(111,6),(112,6),(112,7),(112,8),(113,2),(113,3),(113,4),(113,5),(113,6),(113,7),(113,8),(114,4),(114,6),(115,4),(115,6),(116,4),(116,6),(117,2),(117,3),(117,4),(117,5),(117,6),(117,7),(117,8),(118,4),(118,6),(118,7),(118,8),(119,4),(119,6),(120,4),(120,6),(121,4),(121,6),(122,6),(122,7),(122,8),(123,4),(123,6),(123,7),(123,8),(124,4),(124,6),(125,4),(125,6),(126,6),(126,7),(126,8),(127,4),(127,6),(127,7),(127,8),(128,4),(128,6),(129,4),(129,6),(130,6),(130,7),(130,8),(131,2),(131,3),(131,4),(131,6),(131,7),(131,8),(132,4),(132,6),(133,4),(133,6),(134,4),(134,6),(135,6),(136,2),(136,3),(136,4),(136,6),(136,7),(136,8),(137,4),(137,6),(138,4),(138,6),(139,4),(139,6),(140,6),(141,4),(141,6),(141,7),(141,8),(142,4),(142,6),(143,4),(143,6),(144,4),(144,6),(145,6),(145,7),(145,8),(146,2),(146,3),(146,4),(146,5),(146,6),(146,7),(146,8),(147,4),(147,5),(147,6),(148,4),(148,5),(148,6),(149,6),(149,7),(149,8),(150,2),(150,3),(150,4),(150,5),(150,6),(150,7),(150,8),(151,4),(151,5),(151,6),(152,4),(152,5),(152,6),(153,6),(153,7),(153,8),(154,2),(154,3),(154,4),(154,5),(154,6),(154,8),(155,4),(155,5),(155,6),(156,4),(156,5),(156,6),(157,4),(157,5),(157,6),(158,6),(158,8),(159,2),(159,3),(159,4),(159,5),(159,6),(159,8),(160,4),(160,5),(160,6),(161,6),(161,8),(162,2),(162,3),(162,4),(162,6),(162,7),(162,8),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,4),(171,6),(172,4),(172,6),(173,4),(173,6),(174,6),(175,2),(175,3),(175,4),(175,6),(175,7),(175,8),(176,4),(176,6),(177,4),(177,6),(178,6),(178,7),(178,8),(183,2),(183,6),(183,7),(183,8),(184,6),(185,6),(186,6),(187,6),(187,7),(187,8),(188,2),(188,6),(188,7),(188,8),(189,6),(190,6),(191,6),(192,6),(192,7),(192,8),(193,2),(193,6),(193,7),(193,8),(194,6),(195,6),(196,6),(197,6),(197,7),(197,8),(198,2),(198,6),(198,7),(198,8),(199,6),(200,6),(201,6),(202,6),(202,7),(202,8);
/*!40000 ALTER TABLE `sys_roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'active|nonactive',
  `nik` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_users_email_unique` (`email`),
  UNIQUE KEY `sys_users_username_unique` (`username`),
  KEY `sys_users_position_id_foreign` (`position_id`),
  CONSTRAINT `sys_users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'Administrator','admin','admin@email.com',NULL,'$2y$10$O6FsfOp9HpfMgQCKzzKnoOnyFM55RghYzf1OCJZ8e7BJOHofr.xt.',NULL,'active','admin',NULL,NULL,'zLOxPRudbteuzMktRmWzMAjKZpiwki2LwnzGmO1SOXzQoX7tUtC0xEPEj7QL',NULL,1,'2023-07-24 14:13:46','2023-07-24 14:13:46'),(2,'Khairiah siregar','khairiah','khairiah.siregar@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',80,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(3,'MUCHAMMAD GUNARWAN','gunarwan','muchammad.gunarwan@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',81,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(4,'CORINA ELAWINI KUPPA','corina','corina.elawini@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',81,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(5,'URIPNO','uripno','uripno@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',82,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(6,'TEDDY LAHENGKENG','teddy','teddy.lahengkeng@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',86,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(7,'Agus Kusnadi','agus','agus.kusnadi@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',81,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(8,'OCTAVIANUS BERNARD','octavianus','octavianus.bernard@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',85,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(9,'KIKI RIZKIAH','kiki','kiki.rizkiah@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',81,'active',NULL,NULL,NULL,'FCfJO389SRnFraLUmqEJIKsU1LGWsaPaHo5kgPr52w65b6N1rSU35uVeWUJ5',NULL,9,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(10,'CHANDRA ANDRIAWAN','chandra','chandra.andriawan@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',84,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(11,'DENNY IRAWAN','denny','denny.irawan@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',82,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(12,'BOEDHI SANTOSO','boedhi','boedhi.santoso@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',84,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(13,'SAMUEL NICOLAUS PARDOMUAN N.','samuel','samuel.nicolaus@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',84,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(14,'ERWIN HIDAYAT','erwin','erwin.hidayat@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',82,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(15,'R.S. JOKO PURNOMO','joko','joko.purnomo@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',83,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(16,'DASEP TITOF','dasep','dasep.titof@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',95,'active',NULL,'users/rVK5h9wgLyCGd2nUBCwkPYvVJJTrxyRQPWIKL7s7.jpg','081381695194',NULL,NULL,16,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(17,'TENRI TATA','tenri','tenri.tata@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',93,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(18,'INDRA DWIYANTO','indra','indra.dwiyanto@kbn.co.id',NULL,'$2y$10$fmETDd.Nx56YKG8jgZuLHeJ0TcStW4ZI4ech11P/9.6jav/UaPeka',87,'active',NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-24 14:13:46','2023-08-09 11:58:47'),(19,'Yato','Yato','yato@kbn.co.id',NULL,'$2y$10$UGBQTpXU0s3zItcMzWUUL.OEJborqzgtDIbI1E2Zam7z68u3VovWO',97,'active',NULL,NULL,NULL,NULL,1,NULL,'2023-07-25 13:09:55',NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_files`
--

DROP TABLE IF EXISTS `temp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_files`
--

LOCK TABLES `temp_files` WRITE;
/*!40000 ALTER TABLE `temp_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm`
--

DROP TABLE IF EXISTS `trans_apm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `regarding` varchar(255) NOT NULL,
  `info_type` varchar(255) NOT NULL COMMENT 'biasa|rahasia',
  `date` date NOT NULL,
  `background` text DEFAULT NULL,
  `period` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `scope` longtext DEFAULT NULL,
  `approach` longtext DEFAULT NULL,
  `allocation` text DEFAULT NULL,
  `regulation` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_apm_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm`
--

LOCK TABLES `trans_apm` WRITE;
/*!40000 ALTER TABLE `trans_apm` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_apm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_cc`
--

DROP TABLE IF EXISTS `trans_apm_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_cc` (
  `apm_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`apm_id`,`user_id`),
  KEY `trans_apm_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_cc_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_cc`
--

LOCK TABLES `trans_apm_cc` WRITE;
/*!40000 ALTER TABLE `trans_apm_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_apm_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_details`
--

DROP TABLE IF EXISTS `trans_apm_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apm_id` bigint(20) unsigned NOT NULL,
  `agenda` int(10) unsigned NOT NULL DEFAULT 1,
  `user_id` bigint(20) unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_details_apm_id_foreign` (`apm_id`),
  KEY `trans_apm_details_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_details_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_details`
--

LOCK TABLES `trans_apm_details` WRITE;
/*!40000 ALTER TABLE `trans_apm_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_apm_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn`
--

DROP TABLE IF EXISTS `trans_apm_kbn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `regarding` varchar(255) NOT NULL,
  `info_type` varchar(255) NOT NULL COMMENT 'biasa|rahasia',
  `date` date NOT NULL,
  `background` text DEFAULT NULL,
  `period` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `scope` longtext DEFAULT NULL,
  `approach` longtext DEFAULT NULL,
  `allocation` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_kbn_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_apm_kbn_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn`
--

LOCK TABLES `trans_apm_kbn` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn` DISABLE KEYS */;
INSERT INTO `trans_apm_kbn` VALUES (1,1,'Program Audit Pemeriksaan Audit PT. KBN Prima Logistik – 2023','rahasia','2023-05-31','Tim Pemeriksa melakukan pemeriksaan sesuai Program Kerja Pemeriksaan Tahunan (PKPT) tahun 2023','22 Mei s/d 26 Juni 2023','Rencana waktu pemeriksaan audit yang akan dilaksanakan pada 22 Mei - 26 Juni 2023.','<p class=\"MsoNormalCxSpFirst\" style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:8.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pendahuluan\n:<o:p></o:p></span></p><p>\n\n<span lang=\"IN\" style=\"font-size:8.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:\nIN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Pemeriksaan Kegiatan SBU\nKawasan Cakung</span><br></p>','<p class=\"MsoNormalCxSpFirst\" style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:8.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tujuan\nPemeriksaan :<o:p></o:p></span></p><p>\n\n<span lang=\"IN\" style=\"font-size:8.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:\nIN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Efektivitas &amp;\nEfisiensi pada kegiatan Operasional</span><br></p>','<p><span lang=\"IN\" style=\"font-size:8.0pt;line-height:115%;\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\nminor-latin;mso-ansi-language:IN;mso-fareast-language:EN-US;mso-bidi-language:\nAR-SA\">Tim Pemeriksa melakukan pemeriksaan sesuai Program Kerja Pemeriksaan\nTahunan (PKPT) tahun 2022 dan Surat Tugas Pemeriksaan No.09/STP-PKPT/DUA2/07/2022&nbsp;</span><br></p>',NULL,'completed',10,16,'2023-07-25 13:33:52','2023-07-25 13:56:16');
/*!40000 ALTER TABLE `trans_apm_kbn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn_cc`
--

DROP TABLE IF EXISTS `trans_apm_kbn_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn_cc` (
  `apm_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`apm_id`,`user_id`),
  KEY `trans_apm_kbn_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_kbn_cc_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm_kbn` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_kbn_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn_cc`
--

LOCK TABLES `trans_apm_kbn_cc` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_apm_kbn_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn_detail_pelaksana`
--

DROP TABLE IF EXISTS `trans_apm_kbn_detail_pelaksana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn_detail_pelaksana` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apm_id` bigint(20) unsigned NOT NULL,
  `uraian` longtext NOT NULL,
  `date` date NOT NULL,
  `keterangan` longtext DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_kbn_detail_pelaksana_apm_id_foreign` (`apm_id`),
  CONSTRAINT `trans_apm_kbn_detail_pelaksana_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm_kbn` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn_detail_pelaksana`
--

LOCK TABLES `trans_apm_kbn_detail_pelaksana` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn_detail_pelaksana` DISABLE KEYS */;
INSERT INTO `trans_apm_kbn_detail_pelaksana` VALUES (1,1,'Pendahuluan, Tujuan Pemeriksaan, Surat Tugas Pemeriksaan','2023-07-25',NULL,10,NULL,'2023-07-25 13:48:53',NULL);
/*!40000 ALTER TABLE `trans_apm_kbn_detail_pelaksana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn_detail_pelaksana_pj`
--

DROP TABLE IF EXISTS `trans_apm_kbn_detail_pelaksana_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn_detail_pelaksana_pj` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apm_detail_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_kbn_detail_pelaksana_pj_apm_detail_id_foreign` (`apm_detail_id`),
  KEY `trans_apm_kbn_detail_pelaksana_pj_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_kbn_detail_pelaksana_pj_apm_detail_id_foreign` FOREIGN KEY (`apm_detail_id`) REFERENCES `trans_apm_kbn_detail_pelaksana` (`id`),
  CONSTRAINT `trans_apm_kbn_detail_pelaksana_pj_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn_detail_pelaksana_pj`
--

LOCK TABLES `trans_apm_kbn_detail_pelaksana_pj` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn_detail_pelaksana_pj` DISABLE KEYS */;
INSERT INTO `trans_apm_kbn_detail_pelaksana_pj` VALUES (1,1,10,10,NULL,'2023-07-25 13:48:53',NULL);
/*!40000 ALTER TABLE `trans_apm_kbn_detail_pelaksana_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn_details`
--

DROP TABLE IF EXISTS `trans_apm_kbn_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apm_id` bigint(20) unsigned NOT NULL,
  `agenda` int(10) unsigned NOT NULL DEFAULT 1,
  `user_id` bigint(20) unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_apm_kbn_details_apm_id_foreign` (`apm_id`),
  KEY `trans_apm_kbn_details_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_kbn_details_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm_kbn` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_kbn_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn_details`
--

LOCK TABLES `trans_apm_kbn_details` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn_details` DISABLE KEYS */;
INSERT INTO `trans_apm_kbn_details` VALUES (1,1,9,14,'2023-05-22','2023-06-26',1,10,NULL,'2023-07-25 13:56:01',NULL),(2,1,9,10,'2023-05-22','2023-06-26',2,10,NULL,'2023-07-25 13:56:01',NULL),(3,1,9,12,'2023-05-22','2023-06-26',3,10,NULL,'2023-07-25 13:56:01',NULL),(4,1,9,13,'2023-06-22','2023-06-26',4,10,NULL,'2023-07-25 13:56:01',NULL);
/*!40000 ALTER TABLE `trans_apm_kbn_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_kbn_users`
--

DROP TABLE IF EXISTS `trans_apm_kbn_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_kbn_users` (
  `apm_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`apm_id`,`user_id`),
  KEY `trans_apm_kbn_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_kbn_users_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm_kbn` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_kbn_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_kbn_users`
--

LOCK TABLES `trans_apm_kbn_users` WRITE;
/*!40000 ALTER TABLE `trans_apm_kbn_users` DISABLE KEYS */;
INSERT INTO `trans_apm_kbn_users` VALUES (1,10),(1,12),(1,13);
/*!40000 ALTER TABLE `trans_apm_kbn_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_apm_users`
--

DROP TABLE IF EXISTS `trans_apm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_apm_users` (
  `apm_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`apm_id`,`user_id`),
  KEY `trans_apm_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_apm_users_apm_id_foreign` FOREIGN KEY (`apm_id`) REFERENCES `trans_apm` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_apm_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_apm_users`
--

LOCK TABLES `trans_apm_users` WRITE;
/*!40000 ALTER TABLE `trans_apm_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_apm_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_assignments`
--

DROP TABLE IF EXISTS `trans_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_assignments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `letter_manual` varchar(255) DEFAULT NULL,
  `letter_id` bigint(20) unsigned NOT NULL,
  `letter_no` int(11) NOT NULL,
  `letter_format` varchar(255) NOT NULL,
  `perihal` varchar(10240) NOT NULL,
  `letter_date` date NOT NULL,
  `to_user_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Moved to trans_assignments_users',
  `to_position_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Moved to trans_assignments_users',
  `to_address` text DEFAULT NULL,
  `pic_id` bigint(20) unsigned NOT NULL,
  `supervisor_id` bigint(20) unsigned NOT NULL,
  `vp_spi_id` bigint(20) unsigned DEFAULT NULL,
  `leader_id` bigint(20) unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `description` longtext DEFAULT NULL,
  `objective` varchar(2048) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_assignments_summary_id_foreign` (`summary_id`),
  KEY `trans_assignments_letter_id_foreign` (`letter_id`),
  KEY `trans_assignments_to_user_id_foreign` (`to_user_id`),
  KEY `trans_assignments_to_position_id_foreign` (`to_position_id`),
  KEY `trans_assignments_pic_id_foreign` (`pic_id`),
  KEY `trans_assignments_supervisor_id_foreign` (`supervisor_id`),
  KEY `trans_assignments_leader_id_foreign` (`leader_id`),
  KEY `trans_assignments_vp_spi_id_foreign` (`vp_spi_id`),
  CONSTRAINT `trans_assignments_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_assignments_letter_id_foreign` FOREIGN KEY (`letter_id`) REFERENCES `ref_letters` (`id`),
  CONSTRAINT `trans_assignments_pic_id_foreign` FOREIGN KEY (`pic_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_assignments_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`),
  CONSTRAINT `trans_assignments_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_assignments_vp_spi_id_foreign` FOREIGN KEY (`vp_spi_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_assignments`
--

LOCK TABLES `trans_assignments` WRITE;
/*!40000 ALTER TABLE `trans_assignments` DISABLE KEYS */;
INSERT INTO `trans_assignments` VALUES (1,1,'126/MMO/DU.SPI.2/05/2023',1,1,'[NO]/ST/IA/[MONTH]/[YEAR]','Surat Tugas Pemeriksaan Nomor 05 PKPT Tahun 2023 Pada PT KBN Prima Logistik','2023-05-19',NULL,NULL,'Jl. Raya Cakung Cilincing, Tanjung Priok 14140',8,2,NULL,14,'2023-05-22','2023-06-26','Sesuai Program Kerja Pemeriksaan Tahunan (PKPT) TAHUN 2023, Satuan Pengawas Intern akan melakukan Pemeriksaan :','Efektifitas & Efisiensi Atas Kegiatan Operasional Di PT KBN Prima Logistik','Untuk melaksanakan Audit PKPT / PT. KBN Prima Logistik dengan periode audit Tahun 2023. Kegiatan audit akan dilaksanakan pada tanggal:','completed',10,16,'2023-07-25 13:22:10','2023-07-25 13:22:40');
/*!40000 ALTER TABLE `trans_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_assignments_aspects`
--

DROP TABLE IF EXISTS `trans_assignments_aspects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_assignments_aspects` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `aspect_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`aspect_id`),
  KEY `trans_assignments_aspects_aspect_id_foreign` (`aspect_id`),
  CONSTRAINT `trans_assignments_aspects_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`),
  CONSTRAINT `trans_assignments_aspects_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_assignments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_assignments_aspects`
--

LOCK TABLES `trans_assignments_aspects` WRITE;
/*!40000 ALTER TABLE `trans_assignments_aspects` DISABLE KEYS */;
INSERT INTO `trans_assignments_aspects` VALUES (1,5),(1,6),(1,7);
/*!40000 ALTER TABLE `trans_assignments_aspects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_assignments_cc`
--

DROP TABLE IF EXISTS `trans_assignments_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_assignments_cc` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`user_id`),
  KEY `trans_assignments_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_assignments_cc_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_assignments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_assignments_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_assignments_cc`
--

LOCK TABLES `trans_assignments_cc` WRITE;
/*!40000 ALTER TABLE `trans_assignments_cc` DISABLE KEYS */;
INSERT INTO `trans_assignments_cc` VALUES (1,17);
/*!40000 ALTER TABLE `trans_assignments_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_assignments_members`
--

DROP TABLE IF EXISTS `trans_assignments_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_assignments_members` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`user_id`),
  KEY `trans_assignments_members_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_assignments_members_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_assignments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_assignments_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_assignments_members`
--

LOCK TABLES `trans_assignments_members` WRITE;
/*!40000 ALTER TABLE `trans_assignments_members` DISABLE KEYS */;
INSERT INTO `trans_assignments_members` VALUES (1,10),(1,12),(1,13);
/*!40000 ALTER TABLE `trans_assignments_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_assignments_users`
--

DROP TABLE IF EXISTS `trans_assignments_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_assignments_users` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`user_id`),
  KEY `trans_assignments_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_assignments_users_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_assignments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_assignments_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_assignments_users`
--

LOCK TABLES `trans_assignments_users` WRITE;
/*!40000 ALTER TABLE `trans_assignments_users` DISABLE KEYS */;
INSERT INTO `trans_assignments_users` VALUES (1,19);
/*!40000 ALTER TABLE `trans_assignments_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_closing`
--

DROP TABLE IF EXISTS `trans_closing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_closing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_closing_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_closing_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_closing`
--

LOCK TABLES `trans_closing` WRITE;
/*!40000 ALTER TABLE `trans_closing` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_closing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_closing_details`
--

DROP TABLE IF EXISTS `trans_closing_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_closing_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `closing_id` bigint(20) unsigned NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `link` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `flag` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_closing_details_closing_id_foreign` (`closing_id`),
  CONSTRAINT `trans_closing_details_closing_id_foreign` FOREIGN KEY (`closing_id`) REFERENCES `trans_closing` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_closing_details`
--

LOCK TABLES `trans_closing_details` WRITE;
/*!40000 ALTER TABLE `trans_closing_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_closing_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_closing_details_parts`
--

DROP TABLE IF EXISTS `trans_closing_details_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_closing_details_parts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1:Internal,2:Eksternal',
  `detail_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_closing_details_parts_detail_id_foreign` (`detail_id`),
  KEY `trans_closing_details_parts_user_id_foreign` (`user_id`),
  KEY `trans_closing_details_parts_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_closing_details_parts_detail_id_foreign` FOREIGN KEY (`detail_id`) REFERENCES `trans_closing_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_closing_details_parts_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_closing_details_parts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_closing_details_parts`
--

LOCK TABLES `trans_closing_details_parts` WRITE;
/*!40000 ALTER TABLE `trans_closing_details_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_closing_details_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_consultation_realization`
--

DROP TABLE IF EXISTS `trans_consultation_realization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_consultation_realization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `work_plan_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_consultation_realization_work_plan_id_unique` (`work_plan_id`),
  CONSTRAINT `trans_consultation_realization_work_plan_id_foreign` FOREIGN KEY (`work_plan_id`) REFERENCES `trans_consultation_work_plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_consultation_realization`
--

LOCK TABLES `trans_consultation_realization` WRITE;
/*!40000 ALTER TABLE `trans_consultation_realization` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_consultation_realization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_consultation_realization_detail`
--

DROP TABLE IF EXISTS `trans_consultation_realization_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_consultation_realization_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `realization_id` bigint(20) unsigned NOT NULL,
  `work_plan_detail_id` bigint(20) unsigned NOT NULL,
  `implementation_start` date DEFAULT NULL,
  `implementation_end` date DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_unique` (`realization_id`,`work_plan_detail_id`),
  KEY `work_plan_detail_id` (`work_plan_detail_id`),
  CONSTRAINT `realization_id` FOREIGN KEY (`realization_id`) REFERENCES `trans_consultation_realization` (`id`),
  CONSTRAINT `work_plan_detail_id` FOREIGN KEY (`work_plan_detail_id`) REFERENCES `trans_consultation_work_plan_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_consultation_realization_detail`
--

LOCK TABLES `trans_consultation_realization_detail` WRITE;
/*!40000 ALTER TABLE `trans_consultation_realization_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_consultation_realization_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_consultation_work_plan`
--

DROP TABLE IF EXISTS `trans_consultation_work_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_consultation_work_plan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `code` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `auditee_nonpkpt_id` bigint(20) unsigned NOT NULL,
  `period` date NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_consultation_work_plan_code_unique` (`code`),
  KEY `trans_consultation_work_plan_auditee_nonpkpt_id_foreign` (`auditee_nonpkpt_id`),
  CONSTRAINT `trans_consultation_work_plan_auditee_nonpkpt_id_foreign` FOREIGN KEY (`auditee_nonpkpt_id`) REFERENCES `ref_auditee_nonpkpt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_consultation_work_plan`
--

LOCK TABLES `trans_consultation_work_plan` WRITE;
/*!40000 ALTER TABLE `trans_consultation_work_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_consultation_work_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_consultation_work_plan_detail`
--

DROP TABLE IF EXISTS `trans_consultation_work_plan_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_consultation_work_plan_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `work_plan_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_consultation_work_plan_detail_work_plan_id_foreign` (`work_plan_id`),
  CONSTRAINT `trans_consultation_work_plan_detail_work_plan_id_foreign` FOREIGN KEY (`work_plan_id`) REFERENCES `trans_consultation_work_plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_consultation_work_plan_detail`
--

LOCK TABLES `trans_consultation_work_plan_detail` WRITE;
/*!40000 ALTER TABLE `trans_consultation_work_plan_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_consultation_work_plan_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_current_risk`
--

DROP TABLE IF EXISTS `trans_current_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_current_risk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `risk_register_id` bigint(20) unsigned NOT NULL,
  `risk_register_detail_id` bigint(20) unsigned NOT NULL,
  `prosentase` varchar(255) DEFAULT NULL,
  `level_dampak_id` bigint(20) unsigned DEFAULT NULL,
  `level_kemungkinan_id` bigint(20) unsigned DEFAULT NULL,
  `tingkat_resiko_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_current_risk_risk_register_id_foreign` (`risk_register_id`),
  KEY `trans_current_risk_risk_register_detail_id_foreign` (`risk_register_detail_id`),
  KEY `trans_current_risk_level_dampak_id_foreign` (`level_dampak_id`),
  KEY `trans_current_risk_level_kemungkinan_id_foreign` (`level_kemungkinan_id`),
  KEY `trans_current_risk_tingkat_resiko_id_foreign` (`tingkat_resiko_id`),
  CONSTRAINT `trans_current_risk_level_dampak_id_foreign` FOREIGN KEY (`level_dampak_id`) REFERENCES `ref_level_dampak` (`id`),
  CONSTRAINT `trans_current_risk_level_kemungkinan_id_foreign` FOREIGN KEY (`level_kemungkinan_id`) REFERENCES `ref_level_kemungkinan` (`id`),
  CONSTRAINT `trans_current_risk_risk_register_detail_id_foreign` FOREIGN KEY (`risk_register_detail_id`) REFERENCES `trans_risk_assessment_register_detail` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_current_risk_risk_register_id_foreign` FOREIGN KEY (`risk_register_id`) REFERENCES `trans_risk_assessment_register` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_current_risk_tingkat_resiko_id_foreign` FOREIGN KEY (`tingkat_resiko_id`) REFERENCES `ref_risk_ratings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_current_risk`
--

LOCK TABLES `trans_current_risk` WRITE;
/*!40000 ALTER TABLE `trans_current_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_current_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_current_risk_detail`
--

DROP TABLE IF EXISTS `trans_current_risk_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_current_risk_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `current_risk_id` bigint(20) unsigned NOT NULL,
  `internal_control` longtext NOT NULL,
  `tgl_realisasi` date NOT NULL,
  `realisasi` longtext NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_current_risk_detail_current_risk_id_foreign` (`current_risk_id`),
  CONSTRAINT `trans_current_risk_detail_current_risk_id_foreign` FOREIGN KEY (`current_risk_id`) REFERENCES `trans_current_risk` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_current_risk_detail`
--

LOCK TABLES `trans_current_risk_detail` WRITE;
/*!40000 ALTER TABLE `trans_current_risk_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_current_risk_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_dir_notes`
--

DROP TABLE IF EXISTS `trans_dir_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_dir_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `sample_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_dir_notes_summary_id_foreign` (`summary_id`),
  KEY `trans_dir_notes_sample_id_foreign` (`sample_id`),
  CONSTRAINT `trans_dir_notes_sample_id_foreign` FOREIGN KEY (`sample_id`) REFERENCES `trans_kka_samples` (`id`),
  CONSTRAINT `trans_dir_notes_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_dir_notes`
--

LOCK TABLES `trans_dir_notes` WRITE;
/*!40000 ALTER TABLE `trans_dir_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_dir_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents`
--

DROP TABLE IF EXISTS `trans_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `opening` varchar(2048) DEFAULT NULL,
  `no` varchar(32) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_documents_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_documents_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents`
--

LOCK TABLES `trans_documents` WRITE;
/*!40000 ALTER TABLE `trans_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents_cc`
--

DROP TABLE IF EXISTS `trans_documents_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents_cc` (
  `document_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`document_id`,`user_id`),
  KEY `trans_documents_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_documents_cc_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `trans_documents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_documents_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents_cc`
--

LOCK TABLES `trans_documents_cc` WRITE;
/*!40000 ALTER TABLE `trans_documents_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents_details`
--

DROP TABLE IF EXISTS `trans_documents_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `aspect_id` bigint(20) unsigned DEFAULT NULL,
  `document_item_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'upload' COMMENT 'upload|link',
  `link` text DEFAULT NULL,
  `reviewed_by` bigint(20) unsigned DEFAULT NULL COMMENT 'Reviewed by tim  (per detail)',
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL,
  `flag` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.review|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_documents_details_document_id_foreign` (`document_id`),
  KEY `trans_documents_details_document_item_id_foreign` (`document_item_id`),
  KEY `trans_documents_details_reviewed_by_foreign` (`reviewed_by`),
  KEY `trans_documents_details_aspect_id_foreign` (`aspect_id`),
  CONSTRAINT `trans_documents_details_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`),
  CONSTRAINT `trans_documents_details_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `trans_documents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_documents_details_document_item_id_foreign` FOREIGN KEY (`document_item_id`) REFERENCES `ref_document_items` (`id`),
  CONSTRAINT `trans_documents_details_reviewed_by_foreign` FOREIGN KEY (`reviewed_by`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents_details`
--

LOCK TABLES `trans_documents_details` WRITE;
/*!40000 ALTER TABLE `trans_documents_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents_fulls`
--

DROP TABLE IF EXISTS `trans_documents_fulls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents_fulls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `reviewed_by` bigint(20) unsigned DEFAULT NULL COMMENT 'Reviewed by tim (satu bundle)',
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.review|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_documents_fulls_document_id_foreign` (`document_id`),
  CONSTRAINT `trans_documents_fulls_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `trans_documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents_fulls`
--

LOCK TABLES `trans_documents_fulls` WRITE;
/*!40000 ALTER TABLE `trans_documents_fulls` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents_fulls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents_fulls_cc`
--

DROP TABLE IF EXISTS `trans_documents_fulls_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents_fulls_cc` (
  `doc_full_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`doc_full_id`,`user_id`),
  KEY `trans_documents_fulls_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_documents_fulls_cc_doc_full_id_foreign` FOREIGN KEY (`doc_full_id`) REFERENCES `trans_documents_fulls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_documents_fulls_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents_fulls_cc`
--

LOCK TABLES `trans_documents_fulls_cc` WRITE;
/*!40000 ALTER TABLE `trans_documents_fulls_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents_fulls_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_documents_users`
--

DROP TABLE IF EXISTS `trans_documents_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_documents_users` (
  `document_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`document_id`,`user_id`),
  KEY `trans_documents_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_documents_users_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `trans_documents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_documents_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_documents_users`
--

LOCK TABLES `trans_documents_users` WRITE;
/*!40000 ALTER TABLE `trans_documents_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_documents_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_exiting`
--

DROP TABLE IF EXISTS `trans_exiting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_exiting` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_exiting_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_exiting_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_exiting`
--

LOCK TABLES `trans_exiting` WRITE;
/*!40000 ALTER TABLE `trans_exiting` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_exiting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_exiting_details`
--

DROP TABLE IF EXISTS `trans_exiting_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_exiting_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exiting_id` bigint(20) unsigned NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `link` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `flag` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_exiting_details_exiting_id_foreign` (`exiting_id`),
  CONSTRAINT `trans_exiting_details_exiting_id_foreign` FOREIGN KEY (`exiting_id`) REFERENCES `trans_exiting` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_exiting_details`
--

LOCK TABLES `trans_exiting_details` WRITE;
/*!40000 ALTER TABLE `trans_exiting_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_exiting_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_exiting_details_parts`
--

DROP TABLE IF EXISTS `trans_exiting_details_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_exiting_details_parts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1:Internal,2:Eksternal',
  `detail_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_exiting_details_parts_detail_id_foreign` (`detail_id`),
  KEY `trans_exiting_details_parts_user_id_foreign` (`user_id`),
  KEY `trans_exiting_details_parts_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_exiting_details_parts_detail_id_foreign` FOREIGN KEY (`detail_id`) REFERENCES `trans_exiting_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_exiting_details_parts_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_exiting_details_parts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_exiting_details_parts`
--

LOCK TABLES `trans_exiting_details_parts` WRITE;
/*!40000 ALTER TABLE `trans_exiting_details_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_exiting_details_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_extern_followups`
--

DROP TABLE IF EXISTS `trans_extern_followups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_extern_followups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extern_reg_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_extern_followups_extern_reg_id_foreign` (`extern_reg_id`),
  CONSTRAINT `trans_extern_followups_extern_reg_id_foreign` FOREIGN KEY (`extern_reg_id`) REFERENCES `trans_extern_regs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_extern_followups`
--

LOCK TABLES `trans_extern_followups` WRITE;
/*!40000 ALTER TABLE `trans_extern_followups` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_extern_followups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_extern_reg_details`
--

DROP TABLE IF EXISTS `trans_extern_reg_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_extern_reg_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extern_reg_id` bigint(20) unsigned NOT NULL,
  `risk_rating_id` bigint(20) unsigned NOT NULL,
  `condition` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open' COMMENT 'open|reschedule|closed',
  `completion_date` date NOT NULL,
  `reschedule_note` text DEFAULT NULL,
  `followup_note` text DEFAULT NULL,
  `followup_by` bigint(20) unsigned DEFAULT NULL,
  `followup_at` timestamp NULL DEFAULT NULL,
  `review_note` text DEFAULT NULL,
  `review_by` bigint(20) unsigned DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_extern_reg_details_extern_reg_id_foreign` (`extern_reg_id`),
  KEY `trans_extern_reg_details_risk_rating_id_foreign` (`risk_rating_id`),
  CONSTRAINT `trans_extern_reg_details_extern_reg_id_foreign` FOREIGN KEY (`extern_reg_id`) REFERENCES `trans_extern_regs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_extern_reg_details_risk_rating_id_foreign` FOREIGN KEY (`risk_rating_id`) REFERENCES `ref_risk_ratings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_extern_reg_details`
--

LOCK TABLES `trans_extern_reg_details` WRITE;
/*!40000 ALTER TABLE `trans_extern_reg_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_extern_reg_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_extern_reg_details_pic`
--

DROP TABLE IF EXISTS `trans_extern_reg_details_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_extern_reg_details_pic` (
  `reg_details_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`reg_details_id`,`user_id`),
  KEY `trans_extern_reg_details_pic_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_extern_reg_details_pic_reg_details_id_foreign` FOREIGN KEY (`reg_details_id`) REFERENCES `trans_extern_reg_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_extern_reg_details_pic_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_extern_reg_details_pic`
--

LOCK TABLES `trans_extern_reg_details_pic` WRITE;
/*!40000 ALTER TABLE `trans_extern_reg_details_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_extern_reg_details_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_extern_regs`
--

DROP TABLE IF EXISTS `trans_extern_regs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_extern_regs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_no` varchar(255) NOT NULL,
  `lha_date` date NOT NULL,
  `extern_instance_id` bigint(20) unsigned NOT NULL,
  `insp_period` date NOT NULL COMMENT 'inspection period: month year',
  `insp_date` date NOT NULL COMMENT 'inspection period: date',
  `insp_date_last` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_extern_regs_extern_instance_id_foreign` (`extern_instance_id`),
  CONSTRAINT `trans_extern_regs_extern_instance_id_foreign` FOREIGN KEY (`extern_instance_id`) REFERENCES `ref_extern_instances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_extern_regs`
--

LOCK TABLES `trans_extern_regs` WRITE;
/*!40000 ALTER TABLE `trans_extern_regs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_extern_regs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_extern_reschedule`
--

DROP TABLE IF EXISTS `trans_extern_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_extern_reschedule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extern_reg_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_extern_reschedule_extern_reg_id_foreign` (`extern_reg_id`),
  CONSTRAINT `trans_extern_reschedule_extern_reg_id_foreign` FOREIGN KEY (`extern_reg_id`) REFERENCES `trans_extern_regs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_extern_reschedule`
--

LOCK TABLES `trans_extern_reschedule` WRITE;
/*!40000 ALTER TABLE `trans_extern_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_extern_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_fees`
--

DROP TABLE IF EXISTS `trans_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_fees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `bank_account_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_fees_summary_id_foreign` (`summary_id`),
  KEY `trans_fees_bank_account_id_foreign` (`bank_account_id`),
  CONSTRAINT `trans_fees_bank_account_id_foreign` FOREIGN KEY (`bank_account_id`) REFERENCES `ref_bank_accounts` (`id`),
  CONSTRAINT `trans_fees_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_fees`
--

LOCK TABLES `trans_fees` WRITE;
/*!40000 ALTER TABLE `trans_fees` DISABLE KEYS */;
INSERT INTO `trans_fees` VALUES (1,1,2,'completed',10,16,'2023-07-25 14:01:52','2023-07-25 14:15:41');
/*!40000 ALTER TABLE `trans_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_fees_cc`
--

DROP TABLE IF EXISTS `trans_fees_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_fees_cc` (
  `fee_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`fee_id`,`user_id`),
  KEY `trans_fees_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_fees_cc_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `trans_fees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_fees_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_fees_cc`
--

LOCK TABLES `trans_fees_cc` WRITE;
/*!40000 ALTER TABLE `trans_fees_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_fees_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_fees_details`
--

DROP TABLE IF EXISTS `trans_fees_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_fees_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fee_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT 'user_id from tim auditor',
  `cost_component_id` bigint(20) unsigned NOT NULL,
  `cost` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_fees_details_cost_component_id_foreign` (`cost_component_id`),
  KEY `trans_fees_details_fee_id_foreign` (`fee_id`),
  KEY `trans_fees_details_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_fees_details_cost_component_id_foreign` FOREIGN KEY (`cost_component_id`) REFERENCES `ref_cost_components` (`id`),
  CONSTRAINT `trans_fees_details_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `trans_fees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_fees_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_fees_details`
--

LOCK TABLES `trans_fees_details` WRITE;
/*!40000 ALTER TABLE `trans_fees_details` DISABLE KEYS */;
INSERT INTO `trans_fees_details` VALUES (1,1,14,2,3000000,1,10,NULL,'2023-07-25 14:01:53',NULL),(2,1,10,1,500000,1,10,NULL,'2023-07-25 14:02:10',NULL),(3,1,13,3,1000000,1,10,NULL,'2023-07-25 14:02:31',NULL),(4,1,12,4,500000,1,10,NULL,'2023-07-25 14:02:45',NULL);
/*!40000 ALTER TABLE `trans_fees_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_monitors`
--

DROP TABLE IF EXISTS `trans_followup_monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_monitors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `reg_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|waiting.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reviewed_by` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_followup_monitors_summary_id_foreign` (`summary_id`),
  KEY `trans_followup_monitors_reg_id_foreign` (`reg_id`),
  CONSTRAINT `trans_followup_monitors_reg_id_foreign` FOREIGN KEY (`reg_id`) REFERENCES `trans_followup_regs` (`id`),
  CONSTRAINT `trans_followup_monitors_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_monitors`
--

LOCK TABLES `trans_followup_monitors` WRITE;
/*!40000 ALTER TABLE `trans_followup_monitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_monitors_cc`
--

DROP TABLE IF EXISTS `trans_followup_monitors_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_monitors_cc` (
  `trans_followup_monitor_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_followup_monitor_id`,`user_id`),
  KEY `trans_followup_monitors_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_followup_monitors_cc_trans_followup_monitor_id_foreign` FOREIGN KEY (`trans_followup_monitor_id`) REFERENCES `trans_followup_regs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_followup_monitors_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_monitors_cc`
--

LOCK TABLES `trans_followup_monitors_cc` WRITE;
/*!40000 ALTER TABLE `trans_followup_monitors_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_monitors_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_regs`
--

DROP TABLE IF EXISTS `trans_followup_regs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_regs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_followup_regs_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_followup_regs_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_regs`
--

LOCK TABLES `trans_followup_regs` WRITE;
/*!40000 ALTER TABLE `trans_followup_regs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_regs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_regs_cc`
--

DROP TABLE IF EXISTS `trans_followup_regs_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_regs_cc` (
  `trans_followup_reg_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_followup_reg_id`,`user_id`),
  KEY `trans_followup_regs_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_followup_regs_cc_trans_followup_reg_id_foreign` FOREIGN KEY (`trans_followup_reg_id`) REFERENCES `trans_followup_regs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_followup_regs_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_regs_cc`
--

LOCK TABLES `trans_followup_regs_cc` WRITE;
/*!40000 ALTER TABLE `trans_followup_regs_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_regs_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_regs_items`
--

DROP TABLE IF EXISTS `trans_followup_regs_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_regs_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_id` bigint(20) unsigned NOT NULL,
  `detail_id` bigint(20) unsigned NOT NULL,
  `recommend` text DEFAULT NULL,
  `commitment` text DEFAULT NULL,
  `repeated` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:baru, 1:berulang',
  `deadline` date NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'upload' COMMENT 'upload|link',
  `link` text DEFAULT NULL,
  `followup_note` text DEFAULT NULL,
  `followup_by` bigint(20) unsigned DEFAULT NULL,
  `followup_at` timestamp NULL DEFAULT NULL,
  `review_note` text DEFAULT NULL,
  `review_by` bigint(20) unsigned DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|closed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reg_updated_at` timestamp NULL DEFAULT NULL,
  `reg_updated_by` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_followup_regs_items_reg_id_foreign` (`reg_id`),
  KEY `trans_followup_regs_items_detail_id_foreign` (`detail_id`),
  KEY `trans_followup_regs_items_followup_by_foreign` (`followup_by`),
  KEY `trans_followup_regs_items_review_by_foreign` (`review_by`),
  CONSTRAINT `trans_followup_regs_items_detail_id_foreign` FOREIGN KEY (`detail_id`) REFERENCES `trans_kka_samples_details` (`id`),
  CONSTRAINT `trans_followup_regs_items_followup_by_foreign` FOREIGN KEY (`followup_by`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_followup_regs_items_reg_id_foreign` FOREIGN KEY (`reg_id`) REFERENCES `trans_followup_regs` (`id`),
  CONSTRAINT `trans_followup_regs_items_review_by_foreign` FOREIGN KEY (`review_by`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_regs_items`
--

LOCK TABLES `trans_followup_regs_items` WRITE;
/*!40000 ALTER TABLE `trans_followup_regs_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_regs_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_regs_users`
--

DROP TABLE IF EXISTS `trans_followup_regs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_regs_users` (
  `reg_item_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`reg_item_id`,`user_id`),
  KEY `trans_followup_regs_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_followup_regs_users_reg_item_id_foreign` FOREIGN KEY (`reg_item_id`) REFERENCES `trans_followup_regs_items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_followup_regs_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_regs_users`
--

LOCK TABLES `trans_followup_regs_users` WRITE;
/*!40000 ALTER TABLE `trans_followup_regs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_regs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_reschedule`
--

DROP TABLE IF EXISTS `trans_followup_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_reschedule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `followup_register_id` bigint(20) unsigned NOT NULL,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_reschedule`
--

LOCK TABLES `trans_followup_reschedule` WRITE;
/*!40000 ALTER TABLE `trans_followup_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_followup_reschedule_details`
--

DROP TABLE IF EXISTS `trans_followup_reschedule_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_followup_reschedule_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reschedule_id` bigint(20) unsigned NOT NULL,
  `reg_id` bigint(20) unsigned NOT NULL,
  `deadline_awal` date DEFAULT NULL,
  `deadline_akhir` date DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_followup_reschedule_details`
--

LOCK TABLES `trans_followup_reschedule_details` WRITE;
/*!40000 ALTER TABLE `trans_followup_reschedule_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_followup_reschedule_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_iacm`
--

DROP TABLE IF EXISTS `trans_iacm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_iacm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `iacm_level_id` bigint(20) unsigned NOT NULL,
  `iacm_parameter_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed|upgraded',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_iacm_iacm_level_id_foreign` (`iacm_level_id`),
  KEY `trans_iacm_iacm_parameter_id_foreign` (`iacm_parameter_id`),
  CONSTRAINT `trans_iacm_iacm_level_id_foreign` FOREIGN KEY (`iacm_level_id`) REFERENCES `ref_iacm_level` (`id`),
  CONSTRAINT `trans_iacm_iacm_parameter_id_foreign` FOREIGN KEY (`iacm_parameter_id`) REFERENCES `ref_iacm_parameter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_iacm`
--

LOCK TABLES `trans_iacm` WRITE;
/*!40000 ALTER TABLE `trans_iacm` DISABLE KEYS */;
INSERT INTO `trans_iacm` VALUES (1,2023,1,1,'new',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(2,2024,2,2,'new',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(3,2025,3,3,'new',NULL,NULL,'2023-07-24 14:13:57','2023-07-24 14:13:57'),(4,2023,1,1,'new',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(5,2024,2,2,'new',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18'),(6,2025,3,3,'new',NULL,NULL,'2023-08-09 11:59:18','2023-08-09 11:59:18');
/*!40000 ALTER TABLE `trans_iacm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_inherent_risk`
--

DROP TABLE IF EXISTS `trans_inherent_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_inherent_risk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `risk_register_id` bigint(20) unsigned NOT NULL,
  `risk_register_detail_id` bigint(20) unsigned NOT NULL,
  `level_dampak_id` bigint(20) unsigned DEFAULT NULL,
  `level_kemungkinan_id` bigint(20) unsigned DEFAULT NULL,
  `tingkat_resiko_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_inherent_risk_risk_register_id_foreign` (`risk_register_id`),
  KEY `trans_inherent_risk_risk_register_detail_id_foreign` (`risk_register_detail_id`),
  KEY `trans_inherent_risk_level_dampak_id_foreign` (`level_dampak_id`),
  KEY `trans_inherent_risk_level_kemungkinan_id_foreign` (`level_kemungkinan_id`),
  KEY `trans_inherent_risk_tingkat_resiko_id_foreign` (`tingkat_resiko_id`),
  CONSTRAINT `trans_inherent_risk_level_dampak_id_foreign` FOREIGN KEY (`level_dampak_id`) REFERENCES `ref_level_dampak` (`id`),
  CONSTRAINT `trans_inherent_risk_level_kemungkinan_id_foreign` FOREIGN KEY (`level_kemungkinan_id`) REFERENCES `ref_level_kemungkinan` (`id`),
  CONSTRAINT `trans_inherent_risk_risk_register_detail_id_foreign` FOREIGN KEY (`risk_register_detail_id`) REFERENCES `trans_risk_assessment_register_detail` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_inherent_risk_risk_register_id_foreign` FOREIGN KEY (`risk_register_id`) REFERENCES `trans_risk_assessment_register` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_inherent_risk_tingkat_resiko_id_foreign` FOREIGN KEY (`tingkat_resiko_id`) REFERENCES `ref_risk_ratings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_inherent_risk`
--

LOCK TABLES `trans_inherent_risk` WRITE;
/*!40000 ALTER TABLE `trans_inherent_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_inherent_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction`
--

DROP TABLE IF EXISTS `trans_instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `no_document` varchar(255) DEFAULT NULL,
  `date_document` date DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `hal` varchar(255) DEFAULT NULL,
  `no_letter` varchar(255) DEFAULT NULL,
  `date_letter` date DEFAULT NULL,
  `struct_id` bigint(20) unsigned DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `no_instruction` varchar(255) DEFAULT NULL,
  `date_instruction` date DEFAULT NULL,
  `consider` longtext DEFAULT NULL,
  `regard` longtext DEFAULT NULL,
  `first_instruction` longtext DEFAULT NULL,
  `second_instruction` longtext DEFAULT NULL,
  `third_instruction` longtext DEFAULT NULL,
  `fourth_instruction` longtext DEFAULT NULL,
  `fifth_instruction` longtext DEFAULT NULL,
  `sixth_instruction` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_instruction_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_instruction_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction`
--

LOCK TABLES `trans_instruction` WRITE;
/*!40000 ALTER TABLE `trans_instruction` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction_directors`
--

DROP TABLE IF EXISTS `trans_instruction_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction_directors` (
  `instruction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`instruction_id`,`user_id`),
  KEY `trans_instruction_directors_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_instruction_directors_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `trans_instruction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_instruction_directors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction_directors`
--

LOCK TABLES `trans_instruction_directors` WRITE;
/*!40000 ALTER TABLE `trans_instruction_directors` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction_leaders`
--

DROP TABLE IF EXISTS `trans_instruction_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction_leaders` (
  `instruction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`instruction_id`,`user_id`),
  KEY `trans_instruction_leaders_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_instruction_leaders_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `trans_instruction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_instruction_leaders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction_leaders`
--

LOCK TABLES `trans_instruction_leaders` WRITE;
/*!40000 ALTER TABLE `trans_instruction_leaders` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction_members`
--

DROP TABLE IF EXISTS `trans_instruction_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction_members` (
  `instruction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`instruction_id`,`user_id`),
  KEY `trans_instruction_members_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_instruction_members_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `trans_instruction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_instruction_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction_members`
--

LOCK TABLES `trans_instruction_members` WRITE;
/*!40000 ALTER TABLE `trans_instruction_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction_pj`
--

DROP TABLE IF EXISTS `trans_instruction_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction_pj` (
  `instruction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`instruction_id`,`user_id`),
  KEY `trans_instruction_pj_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_instruction_pj_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `trans_instruction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_instruction_pj_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction_pj`
--

LOCK TABLES `trans_instruction_pj` WRITE;
/*!40000 ALTER TABLE `trans_instruction_pj` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_instruction_supervisors`
--

DROP TABLE IF EXISTS `trans_instruction_supervisors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_instruction_supervisors` (
  `instruction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`instruction_id`,`user_id`),
  KEY `trans_instruction_supervisors_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_instruction_supervisors_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `trans_instruction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_instruction_supervisors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_instruction_supervisors`
--

LOCK TABLES `trans_instruction_supervisors` WRITE;
/*!40000 ALTER TABLE `trans_instruction_supervisors` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_instruction_supervisors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp`
--

DROP TABLE IF EXISTS `trans_investigasi_pp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_report` varchar(255) DEFAULT NULL,
  `date_report` varchar(255) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed|upgraded',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sp_detail_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_pp_sp_detail_id_foreign` (`sp_detail_id`),
  CONSTRAINT `trans_investigasi_pp_sp_detail_id_foreign` FOREIGN KEY (`sp_detail_id`) REFERENCES `trans_investigasi_sp_details` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp`
--

LOCK TABLES `trans_investigasi_pp` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_cc`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_cc` (
  `trans_investigasi_pp_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_investigasi_pp_id`,`user_id`),
  KEY `trans_investigasi_pp_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_pp_cc_trans_investigasi_pp_id_foreign` FOREIGN KEY (`trans_investigasi_pp_id`) REFERENCES `trans_investigasi_pp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_pp_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_cc`
--

LOCK TABLES `trans_investigasi_pp_cc` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_detail`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_detail` (
  `ipp_id` bigint(20) unsigned NOT NULL,
  `chronology` text DEFAULT NULL,
  `inspection` text DEFAULT NULL,
  `pelanggaran` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `settlement_efforts` text DEFAULT NULL,
  `real_loss` text DEFAULT NULL,
  `potential_loss` text DEFAULT NULL,
  `materiil_loss` text DEFAULT NULL,
  `immateriil_loss` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `recomendation` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ipp_id`),
  CONSTRAINT `trans_investigasi_pp_detail_ipp_id_foreign` FOREIGN KEY (`ipp_id`) REFERENCES `trans_investigasi_pp` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_detail`
--

LOCK TABLES `trans_investigasi_pp_detail` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_evidence`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_evidence` (
  `evidence_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ipp_id` bigint(20) unsigned NOT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `date_surat` date DEFAULT NULL,
  `type_surat` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`evidence_id`),
  KEY `trans_investigasi_pp_evidence_ipp_id_foreign` (`ipp_id`),
  CONSTRAINT `trans_investigasi_pp_evidence_ipp_id_foreign` FOREIGN KEY (`ipp_id`) REFERENCES `trans_investigasi_pp` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_evidence`
--

LOCK TABLES `trans_investigasi_pp_evidence` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_evidence_tmp`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_evidence_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_evidence_tmp` (
  `evidence_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `date_surat` date NOT NULL,
  `type_surat` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`evidence_id`),
  KEY `trans_investigasi_pp_evidence_tmp_no_surat_index` (`no_surat`),
  KEY `trans_investigasi_pp_evidence_tmp_date_surat_index` (`date_surat`),
  KEY `trans_investigasi_pp_evidence_tmp_type_surat_index` (`type_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_evidence_tmp`
--

LOCK TABLES `trans_investigasi_pp_evidence_tmp` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_evidence_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_evidence_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_members`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_members` (
  `ipp_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ipp_id`,`user_id`),
  KEY `trans_investigasi_pp_members_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_pp_members_ipp_id_foreign` FOREIGN KEY (`ipp_id`) REFERENCES `trans_investigasi_pp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_pp_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_members`
--

LOCK TABLES `trans_investigasi_pp_members` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_person`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_person` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ipp_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `name_eksternal` varchar(255) DEFAULT NULL,
  `nik_eksternal` varchar(255) DEFAULT NULL,
  `unit_kerja_eksternal` varchar(255) DEFAULT NULL,
  `jabatan_eksternal` varchar(255) DEFAULT NULL,
  `kualifikasi` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_pp_person_ipp_id_foreign` (`ipp_id`),
  KEY `trans_investigasi_pp_person_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_pp_person_ipp_id_foreign` FOREIGN KEY (`ipp_id`) REFERENCES `trans_investigasi_pp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_pp_person_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_person`
--

LOCK TABLES `trans_investigasi_pp_person` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_pp_person_tmp`
--

DROP TABLE IF EXISTS `trans_investigasi_pp_person_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_pp_person_tmp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `kualifikasi` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_pp_person_tmp_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_pp_person_tmp_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_pp_person_tmp`
--

LOCK TABLES `trans_investigasi_pp_person_tmp` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_pp_person_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_pp_person_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_sp`
--

DROP TABLE IF EXISTS `trans_investigasi_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_sp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_investigasi_st_id` bigint(20) unsigned NOT NULL,
  `opening` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `reporting_to_id` bigint(20) unsigned DEFAULT NULL,
  `closing` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_sp_trans_investigasi_st_id_foreign` (`trans_investigasi_st_id`),
  KEY `trans_investigasi_sp_reporting_to_id_foreign` (`reporting_to_id`),
  CONSTRAINT `trans_investigasi_sp_reporting_to_id_foreign` FOREIGN KEY (`reporting_to_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_investigasi_sp_trans_investigasi_st_id_foreign` FOREIGN KEY (`trans_investigasi_st_id`) REFERENCES `trans_investigasi_st` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_sp`
--

LOCK TABLES `trans_investigasi_sp` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_sp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_sp_cc`
--

DROP TABLE IF EXISTS `trans_investigasi_sp_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_sp_cc` (
  `trans_investigasi_sp_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_investigasi_sp_id`,`user_id`),
  KEY `trans_investigasi_sp_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_sp_cc_trans_investigasi_sp_id_foreign` FOREIGN KEY (`trans_investigasi_sp_id`) REFERENCES `trans_investigasi_sp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_sp_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_sp_cc`
--

LOCK TABLES `trans_investigasi_sp_cc` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_sp_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_sp_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_sp_details`
--

DROP TABLE IF EXISTS `trans_investigasi_sp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_sp_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sp_id` bigint(20) unsigned DEFAULT NULL,
  `letter_no` varchar(255) DEFAULT NULL,
  `letter_date` date DEFAULT NULL,
  `letter_place` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL COMMENT 'biasa|segera|sangat_segera',
  `regarding` varchar(255) DEFAULT NULL,
  `receiver_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiver_raw` varchar(255) DEFAULT NULL,
  `letter_formated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_sp_details_sp_id_foreign` (`sp_id`),
  KEY `trans_investigasi_sp_details_receiver_id_foreign` (`receiver_id`),
  CONSTRAINT `trans_investigasi_sp_details_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_investigasi_sp_details_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `trans_investigasi_sp` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_sp_details`
--

LOCK TABLES `trans_investigasi_sp_details` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_sp_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_sp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_sp_to`
--

DROP TABLE IF EXISTS `trans_investigasi_sp_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_sp_to` (
  `trans_investigasi_sp_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_investigasi_sp_id`,`user_id`),
  KEY `trans_investigasi_sp_to_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_sp_to_trans_investigasi_sp_id_foreign` FOREIGN KEY (`trans_investigasi_sp_id`) REFERENCES `trans_investigasi_sp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_sp_to_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_sp_to`
--

LOCK TABLES `trans_investigasi_sp_to` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_sp_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_sp_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_st`
--

DROP TABLE IF EXISTS `trans_investigasi_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_st` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `period` year(4) DEFAULT NULL,
  `object_audit_id` bigint(20) unsigned DEFAULT NULL,
  `schedule_start` date DEFAULT NULL,
  `schedule_end` date DEFAULT NULL,
  `letter_id` bigint(20) unsigned DEFAULT NULL,
  `letter_no` int(11) DEFAULT NULL,
  `letter_format` varchar(255) DEFAULT NULL,
  `letter_formated` varchar(255) DEFAULT NULL,
  `letter_place` varchar(255) NOT NULL,
  `letter_date` date NOT NULL,
  `signer_id` bigint(20) unsigned NOT NULL,
  `object_type` varchar(255) NOT NULL COMMENT 'division:Divisi|department:Departemen|branch:Kantor Regional|distro:Distro|jstore:J Store',
  `object_id` bigint(20) unsigned NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `valid_start` date DEFAULT NULL,
  `valid_end` date DEFAULT NULL,
  `sentence_start` text NOT NULL,
  `sentence_end` text NOT NULL,
  `review_note` text DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_st_signer_id_foreign` (`signer_id`),
  KEY `trans_investigasi_st_object_id_foreign` (`object_id`),
  KEY `trans_investigasi_st_object_audit_id_foreign` (`object_audit_id`),
  KEY `trans_investigasi_st_letter_id_foreign` (`letter_id`),
  CONSTRAINT `trans_investigasi_st_letter_id_foreign` FOREIGN KEY (`letter_id`) REFERENCES `ref_letters` (`id`),
  CONSTRAINT `trans_investigasi_st_object_audit_id_foreign` FOREIGN KEY (`object_audit_id`) REFERENCES `ref_org_structs` (`id`),
  CONSTRAINT `trans_investigasi_st_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `ref_org_structs` (`id`),
  CONSTRAINT `trans_investigasi_st_signer_id_foreign` FOREIGN KEY (`signer_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_st`
--

LOCK TABLES `trans_investigasi_st` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_st` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_st` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_st_cc`
--

DROP TABLE IF EXISTS `trans_investigasi_st_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_st_cc` (
  `trans_investigasi_st_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`trans_investigasi_st_id`,`user_id`),
  KEY `trans_investigasi_st_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_investigasi_st_cc_trans_investigasi_st_id_foreign` FOREIGN KEY (`trans_investigasi_st_id`) REFERENCES `trans_investigasi_st` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_st_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_st_cc`
--

LOCK TABLES `trans_investigasi_st_cc` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_st_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_st_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_investigasi_st_members`
--

DROP TABLE IF EXISTS `trans_investigasi_st_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_investigasi_st_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `st_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `last_position_id` bigint(20) unsigned DEFAULT NULL COMMENT 'jabatan pada saat surat tugas dibuat',
  `last_location_id` bigint(20) unsigned DEFAULT NULL COMMENT 'unit kerja pada saat surat tugas dibuat',
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_investigasi_st_members_st_id_foreign` (`st_id`),
  KEY `trans_investigasi_st_members_user_id_foreign` (`user_id`),
  KEY `trans_investigasi_st_members_last_position_id_foreign` (`last_position_id`),
  KEY `trans_investigasi_st_members_last_location_id_foreign` (`last_location_id`),
  CONSTRAINT `trans_investigasi_st_members_last_location_id_foreign` FOREIGN KEY (`last_location_id`) REFERENCES `ref_org_structs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `trans_investigasi_st_members_last_position_id_foreign` FOREIGN KEY (`last_position_id`) REFERENCES `ref_positions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `trans_investigasi_st_members_st_id_foreign` FOREIGN KEY (`st_id`) REFERENCES `trans_investigasi_st` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_investigasi_st_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_investigasi_st_members`
--

LOCK TABLES `trans_investigasi_st_members` WRITE;
/*!40000 ALTER TABLE `trans_investigasi_st_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_investigasi_st_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_kka_feedbacks`
--

DROP TABLE IF EXISTS `trans_kka_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_kka_feedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `sample_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_kka_feedbacks_summary_id_foreign` (`summary_id`),
  KEY `trans_kka_feedbacks_sample_id_foreign` (`sample_id`),
  CONSTRAINT `trans_kka_feedbacks_sample_id_foreign` FOREIGN KEY (`sample_id`) REFERENCES `trans_kka_samples` (`id`),
  CONSTRAINT `trans_kka_feedbacks_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_kka_feedbacks`
--

LOCK TABLES `trans_kka_feedbacks` WRITE;
/*!40000 ALTER TABLE `trans_kka_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_kka_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_kka_samples`
--

DROP TABLE IF EXISTS `trans_kka_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_kka_samples` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_kka_samples_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_kka_samples_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_kka_samples`
--

LOCK TABLES `trans_kka_samples` WRITE;
/*!40000 ALTER TABLE `trans_kka_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_kka_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_kka_samples_details`
--

DROP TABLE IF EXISTS `trans_kka_samples_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_kka_samples_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) unsigned NOT NULL,
  `aspect_id` bigint(20) unsigned NOT NULL,
  `apm_detail_id` bigint(20) unsigned DEFAULT NULL,
  `no_contract` varchar(255) NOT NULL,
  `posting_date` date NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `criteria` longtext DEFAULT NULL,
  `because` longtext DEFAULT NULL,
  `consequence` longtext DEFAULT NULL,
  `recommendation` longtext DEFAULT NULL,
  `is_finding` varchar(255) NOT NULL DEFAULT 'finding',
  `feedback_status` varchar(255) NOT NULL DEFAULT 'valid' COMMENT 'valid|invalid',
  `feedback_note` text DEFAULT NULL,
  `feedback_by` bigint(20) unsigned DEFAULT NULL,
  `feedback_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'valid' COMMENT 'valid|invalid',
  `level` varchar(255) DEFAULT NULL COMMENT 'low|medium|high',
  `review_note` text DEFAULT NULL,
  `review_by` bigint(20) unsigned DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `review_dir` longtext DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sample_created_by` bigint(20) unsigned DEFAULT NULL,
  `sample_updated_by` bigint(20) unsigned DEFAULT NULL,
  `sample_created_at` timestamp NULL DEFAULT NULL,
  `sample_updated_at` timestamp NULL DEFAULT NULL,
  `feedback_created_by` bigint(20) unsigned DEFAULT NULL,
  `feedback_created_at` timestamp NULL DEFAULT NULL,
  `worksheet_created_by` bigint(20) unsigned DEFAULT NULL,
  `worksheet_created_at` timestamp NULL DEFAULT NULL,
  `level_temuan_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_kka_samples_details_sample_id_foreign` (`sample_id`),
  KEY `trans_kka_samples_details_aspect_id_foreign` (`aspect_id`),
  KEY `trans_kka_samples_details_feedback_by_foreign` (`feedback_by`),
  KEY `trans_kka_samples_details_review_by_foreign` (`review_by`),
  KEY `trans_kka_samples_details_level_temuan_id_foreign` (`level_temuan_id`),
  CONSTRAINT `trans_kka_samples_details_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`),
  CONSTRAINT `trans_kka_samples_details_feedback_by_foreign` FOREIGN KEY (`feedback_by`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_kka_samples_details_level_temuan_id_foreign` FOREIGN KEY (`level_temuan_id`) REFERENCES `ref_level_temuans` (`id`),
  CONSTRAINT `trans_kka_samples_details_review_by_foreign` FOREIGN KEY (`review_by`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_kka_samples_details_sample_id_foreign` FOREIGN KEY (`sample_id`) REFERENCES `trans_kka_samples` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_kka_samples_details`
--

LOCK TABLES `trans_kka_samples_details` WRITE;
/*!40000 ALTER TABLE `trans_kka_samples_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_kka_samples_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_kka_worksheets`
--

DROP TABLE IF EXISTS `trans_kka_worksheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_kka_worksheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `sample_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leader_approved_at` timestamp NULL DEFAULT NULL,
  `leader_rejected_at` timestamp NULL DEFAULT NULL,
  `leader_note` varchar(1024) DEFAULT NULL,
  `pic_approved_at` timestamp NULL DEFAULT NULL,
  `pic_rejected_at` timestamp NULL DEFAULT NULL,
  `pic_note` varchar(1024) DEFAULT NULL,
  `supervisor_approved_at` timestamp NULL DEFAULT NULL,
  `supervisor_rejected_at` timestamp NULL DEFAULT NULL,
  `supervisor_note` varchar(1024) DEFAULT NULL,
  `vp_spi_approved_at` timestamp NULL DEFAULT NULL,
  `vp_spi_rejected_at` timestamp NULL DEFAULT NULL,
  `vp_spi_note` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_kka_worksheets_summary_id_foreign` (`summary_id`),
  KEY `trans_kka_worksheets_sample_id_foreign` (`sample_id`),
  CONSTRAINT `trans_kka_worksheets_sample_id_foreign` FOREIGN KEY (`sample_id`) REFERENCES `trans_kka_samples` (`id`),
  CONSTRAINT `trans_kka_worksheets_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_kka_worksheets`
--

LOCK TABLES `trans_kka_worksheets` WRITE;
/*!40000 ALTER TABLE `trans_kka_worksheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_kka_worksheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_kka_worksheets_cc`
--

DROP TABLE IF EXISTS `trans_kka_worksheets_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_kka_worksheets_cc` (
  `worksheet_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`worksheet_id`,`user_id`),
  KEY `trans_kka_worksheets_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_kka_worksheets_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_kka_worksheets_cc_worksheet_id_foreign` FOREIGN KEY (`worksheet_id`) REFERENCES `trans_kka_worksheets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_kka_worksheets_cc`
--

LOCK TABLES `trans_kka_worksheets_cc` WRITE;
/*!40000 ALTER TABLE `trans_kka_worksheets_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_kka_worksheets_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja`
--

DROP TABLE IF EXISTS `trans_langkah_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `pic_id` bigint(20) unsigned DEFAULT NULL,
  `supervisor_id` bigint(20) unsigned DEFAULT NULL,
  `leader_id` bigint(20) unsigned DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `objective` varchar(2048) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `no_stp` longtext DEFAULT NULL,
  `sasaran` longtext DEFAULT NULL,
  `tujuan` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_langkah_kerja_summary_id_foreign` (`summary_id`),
  KEY `trans_langkah_kerja_pic_id_foreign` (`pic_id`),
  KEY `trans_langkah_kerja_leader_id_foreign` (`leader_id`),
  CONSTRAINT `trans_langkah_kerja_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_langkah_kerja_pic_id_foreign` FOREIGN KEY (`pic_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_langkah_kerja_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja`
--

LOCK TABLES `trans_langkah_kerja` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja` VALUES (1,1,8,2,14,'2023-05-22','2023-06-26',NULL,'Efektifitas & Efisiensi Atas Kegiatan Operasional Di PT KBN Prima Logistik',NULL,'126/MMO/DU.SPI.2/05/2023','PT KBN Prima Logistik','Efektifitas & Efesiensi atas Kegiatan Operasional di PT KBN Prima Logistik','completed',10,16,'2023-07-25 13:26:20','2023-07-25 13:33:23');
/*!40000 ALTER TABLE `trans_langkah_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja_aspects`
--

DROP TABLE IF EXISTS `trans_langkah_kerja_aspects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja_aspects` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `aspect_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`aspect_id`),
  KEY `trans_langkah_kerja_aspects_aspect_id_foreign` (`aspect_id`),
  CONSTRAINT `trans_langkah_kerja_aspects_aspect_id_foreign` FOREIGN KEY (`aspect_id`) REFERENCES `ref_aspects` (`id`),
  CONSTRAINT `trans_langkah_kerja_aspects_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_langkah_kerja` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja_aspects`
--

LOCK TABLES `trans_langkah_kerja_aspects` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja_aspects` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja_aspects` VALUES (1,5),(1,6),(1,7);
/*!40000 ALTER TABLE `trans_langkah_kerja_aspects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja_cc`
--

DROP TABLE IF EXISTS `trans_langkah_kerja_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja_cc` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`user_id`),
  KEY `trans_langkah_kerja_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_langkah_kerja_cc_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_langkah_kerja` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_langkah_kerja_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja_cc`
--

LOCK TABLES `trans_langkah_kerja_cc` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja_cc` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja_cc` VALUES (1,19);
/*!40000 ALTER TABLE `trans_langkah_kerja_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja_detail`
--

DROP TABLE IF EXISTS `trans_langkah_kerja_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `langkah_kerja_id` bigint(20) unsigned NOT NULL,
  `langkah` longtext NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_langkah_kerja_detail_langkah_kerja_id_foreign` (`langkah_kerja_id`),
  CONSTRAINT `trans_langkah_kerja_detail_langkah_kerja_id_foreign` FOREIGN KEY (`langkah_kerja_id`) REFERENCES `trans_langkah_kerja` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja_detail`
--

LOCK TABLES `trans_langkah_kerja_detail` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja_detail` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja_detail` VALUES (1,1,'PT KBN Prima Logistik',10,NULL,'2023-07-25 13:32:16',NULL);
/*!40000 ALTER TABLE `trans_langkah_kerja_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja_detail_pj`
--

DROP TABLE IF EXISTS `trans_langkah_kerja_detail_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja_detail_pj` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `langkah_kerja_detail_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_langkah_kerja_detail_pj_langkah_kerja_detail_id_foreign` (`langkah_kerja_detail_id`),
  KEY `trans_langkah_kerja_detail_pj_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_langkah_kerja_detail_pj_langkah_kerja_detail_id_foreign` FOREIGN KEY (`langkah_kerja_detail_id`) REFERENCES `trans_langkah_kerja_detail` (`id`),
  CONSTRAINT `trans_langkah_kerja_detail_pj_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja_detail_pj`
--

LOCK TABLES `trans_langkah_kerja_detail_pj` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja_detail_pj` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja_detail_pj` VALUES (1,1,16,10,NULL,'2023-07-25 13:32:16',NULL);
/*!40000 ALTER TABLE `trans_langkah_kerja_detail_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_langkah_kerja_members`
--

DROP TABLE IF EXISTS `trans_langkah_kerja_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_langkah_kerja_members` (
  `assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`assignment_id`,`user_id`),
  KEY `trans_langkah_kerja_members_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_langkah_kerja_members_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `trans_langkah_kerja` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_langkah_kerja_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_langkah_kerja_members`
--

LOCK TABLES `trans_langkah_kerja_members` WRITE;
/*!40000 ALTER TABLE `trans_langkah_kerja_members` DISABLE KEYS */;
INSERT INTO `trans_langkah_kerja_members` VALUES (1,10),(1,12),(1,13);
/*!40000 ALTER TABLE `trans_langkah_kerja_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha`
--

DROP TABLE IF EXISTS `trans_lha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_lha_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha`
--

LOCK TABLES `trans_lha` WRITE;
/*!40000 ALTER TABLE `trans_lha` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_cover`
--

DROP TABLE IF EXISTS `trans_lha_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_cover` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_cover_lha_id_foreign` (`lha_id`),
  CONSTRAINT `trans_lha_cover_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_cover`
--

LOCK TABLES `trans_lha_cover` WRITE;
/*!40000 ALTER TABLE `trans_lha_cover` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_inspection`
--

DROP TABLE IF EXISTS `trans_lha_inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_inspection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `background` text NOT NULL,
  `times` text NOT NULL,
  `period` text NOT NULL,
  `goals` text NOT NULL,
  `standard` text NOT NULL,
  `reference` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_inspection_lha_id_foreign` (`lha_id`),
  CONSTRAINT `trans_lha_inspection_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_inspection`
--

LOCK TABLES `trans_lha_inspection` WRITE;
/*!40000 ALTER TABLE `trans_lha_inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_memo`
--

DROP TABLE IF EXISTS `trans_lha_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_memo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `letter_id` bigint(20) unsigned NOT NULL,
  `letter_no` int(11) NOT NULL,
  `letter_format` varchar(255) NOT NULL,
  `letter_date` date NOT NULL,
  `letter_manual` varchar(255) DEFAULT NULL,
  `from` text NOT NULL,
  `regarding` text NOT NULL,
  `info` text NOT NULL,
  `introduction` text NOT NULL,
  `comment` text NOT NULL,
  `discussion` text NOT NULL,
  `followup` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_memo_lha_id_foreign` (`lha_id`),
  KEY `trans_lha_memo_letter_id_foreign` (`letter_id`),
  CONSTRAINT `trans_lha_memo_letter_id_foreign` FOREIGN KEY (`letter_id`) REFERENCES `ref_letters` (`id`),
  CONSTRAINT `trans_lha_memo_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_memo`
--

LOCK TABLES `trans_lha_memo` WRITE;
/*!40000 ALTER TABLE `trans_lha_memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_memo_cc`
--

DROP TABLE IF EXISTS `trans_lha_memo_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_memo_cc` (
  `lha_memo_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `position_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`lha_memo_id`,`user_id`),
  KEY `trans_lha_memo_cc_user_id_foreign` (`user_id`),
  KEY `trans_lha_memo_cc_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_lha_memo_cc_lha_memo_id_foreign` FOREIGN KEY (`lha_memo_id`) REFERENCES `trans_lha_memo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_lha_memo_cc_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_lha_memo_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_memo_cc`
--

LOCK TABLES `trans_lha_memo_cc` WRITE;
/*!40000 ALTER TABLE `trans_lha_memo_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_memo_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_memo_to`
--

DROP TABLE IF EXISTS `trans_lha_memo_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_memo_to` (
  `lha_memo_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `position_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`lha_memo_id`,`user_id`),
  KEY `trans_lha_memo_to_user_id_foreign` (`user_id`),
  KEY `trans_lha_memo_to_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_lha_memo_to_lha_memo_id_foreign` FOREIGN KEY (`lha_memo_id`) REFERENCES `trans_lha_memo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_lha_memo_to_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_lha_memo_to_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_memo_to`
--

LOCK TABLES `trans_lha_memo_to` WRITE;
/*!40000 ALTER TABLE `trans_lha_memo_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_memo_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_result`
--

DROP TABLE IF EXISTS `trans_lha_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_result` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `profile` text DEFAULT NULL,
  `performance` text DEFAULT NULL,
  `case` text DEFAULT NULL,
  `rating` bigint(20) unsigned DEFAULT NULL,
  `weakness` text DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_result_lha_id_foreign` (`lha_id`),
  CONSTRAINT `trans_lha_result_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_result`
--

LOCK TABLES `trans_lha_result` WRITE;
/*!40000 ALTER TABLE `trans_lha_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_resume`
--

DROP TABLE IF EXISTS `trans_lha_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_resume` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `profile` longtext NOT NULL,
  `performance` longtext NOT NULL,
  `rating` longtext NOT NULL,
  `attention` longtext NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_resume_lha_id_foreign` (`lha_id`),
  CONSTRAINT `trans_lha_resume_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_resume`
--

LOCK TABLES `trans_lha_resume` WRITE;
/*!40000 ALTER TABLE `trans_lha_resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_lha_toc`
--

DROP TABLE IF EXISTS `trans_lha_toc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_lha_toc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lha_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL COMMENT 'root,bab,subbab',
  `title` varchar(255) NOT NULL,
  `page` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_lha_toc_lha_id_foreign` (`lha_id`),
  CONSTRAINT `trans_lha_toc_lha_id_foreign` FOREIGN KEY (`lha_id`) REFERENCES `trans_lha` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_lha_toc`
--

LOCK TABLES `trans_lha_toc` WRITE;
/*!40000 ALTER TABLE `trans_lha_toc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_lha_toc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_meetings`
--

DROP TABLE IF EXISTS `trans_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_meetings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `leader_id` bigint(20) unsigned NOT NULL,
  `recorder_id` bigint(20) unsigned NOT NULL,
  `letter_id` bigint(20) unsigned NOT NULL,
  `letter_no` int(11) NOT NULL,
  `letter_date` date NOT NULL,
  `letter_format` varchar(255) NOT NULL,
  `letter_manual` varchar(255) DEFAULT NULL,
  `letter_place` varchar(255) NOT NULL,
  `regarding` varchar(255) NOT NULL,
  `meet_date` date NOT NULL,
  `meet_start` time NOT NULL,
  `meet_end` time NOT NULL,
  `meet_type` varchar(255) NOT NULL DEFAULT 'offline' COMMENT 'offline/online',
  `meet_place` varchar(255) NOT NULL,
  `meet_link` text DEFAULT NULL,
  `meet_agenda` text NOT NULL,
  `first_sentence` varchar(255) NOT NULL,
  `last_sentence` varchar(255) NOT NULL,
  `review_note` text DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.review|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_meetings_leader_id_foreign` (`leader_id`),
  KEY `trans_meetings_recorder_id_foreign` (`recorder_id`),
  KEY `trans_meetings_letter_id_foreign` (`letter_id`),
  CONSTRAINT `trans_meetings_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_meetings_letter_id_foreign` FOREIGN KEY (`letter_id`) REFERENCES `ref_letters` (`id`),
  CONSTRAINT `trans_meetings_recorder_id_foreign` FOREIGN KEY (`recorder_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_meetings`
--

LOCK TABLES `trans_meetings` WRITE;
/*!40000 ALTER TABLE `trans_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_meetings_cc`
--

DROP TABLE IF EXISTS `trans_meetings_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_meetings_cc` (
  `meeting_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`meeting_id`,`user_id`),
  KEY `trans_meetings_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_meetings_cc_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `trans_meetings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_meetings_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_meetings_cc`
--

LOCK TABLES `trans_meetings_cc` WRITE;
/*!40000 ALTER TABLE `trans_meetings_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_meetings_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_meetings_parts`
--

DROP TABLE IF EXISTS `trans_meetings_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_meetings_parts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` bigint(20) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1:Internal,2:Eksternal',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  `presence` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_meetings_parts_meeting_id_foreign` (`meeting_id`),
  KEY `trans_meetings_parts_user_id_foreign` (`user_id`),
  KEY `trans_meetings_parts_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_meetings_parts_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `trans_meetings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_meetings_parts_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_meetings_parts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_meetings_parts`
--

LOCK TABLES `trans_meetings_parts` WRITE;
/*!40000 ALTER TABLE `trans_meetings_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_meetings_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_meetings_recap`
--

DROP TABLE IF EXISTS `trans_meetings_recap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_meetings_recap` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` bigint(20) unsigned NOT NULL,
  `mom` longtext NOT NULL,
  `review_note` text DEFAULT NULL,
  `review_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.review|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_meetings_recap_meeting_id_foreign` (`meeting_id`),
  CONSTRAINT `trans_meetings_recap_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `trans_meetings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_meetings_recap`
--

LOCK TABLES `trans_meetings_recap` WRITE;
/*!40000 ALTER TABLE `trans_meetings_recap` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_meetings_recap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_meetings_recap_cc`
--

DROP TABLE IF EXISTS `trans_meetings_recap_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_meetings_recap_cc` (
  `recap_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`recap_id`,`user_id`),
  KEY `trans_meetings_recap_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_meetings_recap_cc_recap_id_foreign` FOREIGN KEY (`recap_id`) REFERENCES `trans_meetings_recap` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_meetings_recap_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_meetings_recap_cc`
--

LOCK TABLES `trans_meetings_recap_cc` WRITE;
/*!40000 ALTER TABLE `trans_meetings_recap_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_meetings_recap_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo-lhp`
--

DROP TABLE IF EXISTS `trans_memo-lhp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo-lhp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `no_memo` varchar(255) DEFAULT NULL,
  `date_memo` date DEFAULT NULL,
  `from` bigint(20) unsigned DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `opening` longtext DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `closing` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_lhp_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_memo_lhp_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo-lhp`
--

LOCK TABLES `trans_memo-lhp` WRITE;
/*!40000 ALTER TABLE `trans_memo-lhp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo-lhp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo-lhp_to`
--

DROP TABLE IF EXISTS `trans_memo-lhp_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo-lhp_to` (
  `memo_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`memo_id`,`user_id`),
  KEY `trans_memo_lhp_to_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_lhp_to_memo_id_foreign` FOREIGN KEY (`memo_id`) REFERENCES `trans_memo-lhp` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_memo_lhp_to_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo-lhp_to`
--

LOCK TABLES `trans_memo-lhp_to` WRITE;
/*!40000 ALTER TABLE `trans_memo-lhp_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo-lhp_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_closing`
--

DROP TABLE IF EXISTS `trans_memo_closing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_closing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `perihal` longtext DEFAULT NULL,
  `pembuka` longtext DEFAULT NULL,
  `tanggal` date NOT NULL,
  `waktu_awal` time DEFAULT NULL,
  `waktu_akhir` time DEFAULT NULL,
  `acara` longtext DEFAULT NULL,
  `tempat` longtext DEFAULT NULL,
  `penutup` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_closing_summary_id_foreign` (`summary_id`),
  KEY `trans_memo_closing_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_closing_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`),
  CONSTRAINT `trans_memo_closing_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_closing`
--

LOCK TABLES `trans_memo_closing` WRITE;
/*!40000 ALTER TABLE `trans_memo_closing` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_closing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_closing_users`
--

DROP TABLE IF EXISTS `trans_memo_closing_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_closing_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memo_closing_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_closing_users_memo_closing_id_foreign` (`memo_closing_id`),
  KEY `trans_memo_closing_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_closing_users_memo_closing_id_foreign` FOREIGN KEY (`memo_closing_id`) REFERENCES `trans_memo_closing` (`id`),
  CONSTRAINT `trans_memo_closing_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_closing_users`
--

LOCK TABLES `trans_memo_closing_users` WRITE;
/*!40000 ALTER TABLE `trans_memo_closing_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_closing_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_opening`
--

DROP TABLE IF EXISTS `trans_memo_opening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_opening` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `perihal` longtext DEFAULT NULL,
  `pembuka` longtext DEFAULT NULL,
  `tanggal` date NOT NULL,
  `waktu_awal` time DEFAULT NULL,
  `waktu_akhir` time DEFAULT NULL,
  `acara` longtext DEFAULT NULL,
  `tempat` longtext DEFAULT NULL,
  `penutup` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_opening_summary_id_foreign` (`summary_id`),
  KEY `trans_memo_opening_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_opening_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`),
  CONSTRAINT `trans_memo_opening_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_opening`
--

LOCK TABLES `trans_memo_opening` WRITE;
/*!40000 ALTER TABLE `trans_memo_opening` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_opening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_opening_cc`
--

DROP TABLE IF EXISTS `trans_memo_opening_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_opening_cc` (
  `memo_opening_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`memo_opening_id`,`user_id`),
  KEY `trans_memo_opening_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_opening_cc_memo_opening_id_foreign` FOREIGN KEY (`memo_opening_id`) REFERENCES `trans_memo_opening` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_memo_opening_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_opening_cc`
--

LOCK TABLES `trans_memo_opening_cc` WRITE;
/*!40000 ALTER TABLE `trans_memo_opening_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_opening_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_opening_users`
--

DROP TABLE IF EXISTS `trans_memo_opening_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_opening_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memo_opening_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_opening_users_memo_opening_id_foreign` (`memo_opening_id`),
  KEY `trans_memo_opening_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_opening_users_memo_opening_id_foreign` FOREIGN KEY (`memo_opening_id`) REFERENCES `trans_memo_opening` (`id`),
  CONSTRAINT `trans_memo_opening_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_opening_users`
--

LOCK TABLES `trans_memo_opening_users` WRITE;
/*!40000 ALTER TABLE `trans_memo_opening_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_opening_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_tindak_lanjut`
--

DROP TABLE IF EXISTS `trans_memo_tindak_lanjut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_tindak_lanjut` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `no_memo` varchar(255) DEFAULT NULL,
  `date_memo` date DEFAULT NULL,
  `from` bigint(20) unsigned DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `opening` longtext DEFAULT NULL,
  `closing` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_memo_tindak_lanjut_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_memo_tindak_lanjut_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_tindak_lanjut`
--

LOCK TABLES `trans_memo_tindak_lanjut` WRITE;
/*!40000 ALTER TABLE `trans_memo_tindak_lanjut` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_tindak_lanjut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_memo_tindak_lanjut_to`
--

DROP TABLE IF EXISTS `trans_memo_tindak_lanjut_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_memo_tindak_lanjut_to` (
  `memo_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`memo_id`,`user_id`),
  KEY `trans_memo_tindak_lanjut_to_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_memo_tindak_lanjut_to_memo_id_foreign` FOREIGN KEY (`memo_id`) REFERENCES `trans_memo_tindak_lanjut` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_memo_tindak_lanjut_to_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_memo_tindak_lanjut_to`
--

LOCK TABLES `trans_memo_tindak_lanjut_to` WRITE;
/*!40000 ALTER TABLE `trans_memo_tindak_lanjut_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_memo_tindak_lanjut_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_opening`
--

DROP TABLE IF EXISTS `trans_opening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_opening` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_opening_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_opening_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_opening`
--

LOCK TABLES `trans_opening` WRITE;
/*!40000 ALTER TABLE `trans_opening` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_opening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_opening_details`
--

DROP TABLE IF EXISTS `trans_opening_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_opening_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `opening_id` bigint(20) unsigned NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time DEFAULT NULL,
  `time_selesai` tinyint(4) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `flag` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_opening_details_opening_id_foreign` (`opening_id`),
  CONSTRAINT `trans_opening_details_opening_id_foreign` FOREIGN KEY (`opening_id`) REFERENCES `trans_opening` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_opening_details`
--

LOCK TABLES `trans_opening_details` WRITE;
/*!40000 ALTER TABLE `trans_opening_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_opening_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_opening_details_parts`
--

DROP TABLE IF EXISTS `trans_opening_details_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_opening_details_parts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1:Internal,2:Eksternal',
  `detail_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `position_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_opening_details_parts_detail_id_foreign` (`detail_id`),
  KEY `trans_opening_details_parts_user_id_foreign` (`user_id`),
  KEY `trans_opening_details_parts_position_id_foreign` (`position_id`),
  CONSTRAINT `trans_opening_details_parts_detail_id_foreign` FOREIGN KEY (`detail_id`) REFERENCES `trans_opening_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_opening_details_parts_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `ref_positions` (`id`),
  CONSTRAINT `trans_opening_details_parts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_opening_details_parts`
--

LOCK TABLES `trans_opening_details_parts` WRITE;
/*!40000 ALTER TABLE `trans_opening_details_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_opening_details_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_penilaian_kinerja`
--

DROP TABLE IF EXISTS `trans_penilaian_kinerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_penilaian_kinerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|waiting approval|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_penilaian_kinerja_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_penilaian_kinerja_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_penilaian_kinerja`
--

LOCK TABLES `trans_penilaian_kinerja` WRITE;
/*!40000 ALTER TABLE `trans_penilaian_kinerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_penilaian_kinerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_penilaian_kinerja_details`
--

DROP TABLE IF EXISTS `trans_penilaian_kinerja_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_penilaian_kinerja_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `penilaian_kinerja_id` bigint(20) unsigned NOT NULL,
  `parameter_penilaian_id` bigint(20) unsigned NOT NULL,
  `answer` int(11) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_penilaian_kinerja_details`
--

LOCK TABLES `trans_penilaian_kinerja_details` WRITE;
/*!40000 ALTER TABLE `trans_penilaian_kinerja_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_penilaian_kinerja_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_programs`
--

DROP TABLE IF EXISTS `trans_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_programs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `scope` longtext NOT NULL,
  `target` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_programs_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_programs_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_programs`
--

LOCK TABLES `trans_programs` WRITE;
/*!40000 ALTER TABLE `trans_programs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_programs_cc`
--

DROP TABLE IF EXISTS `trans_programs_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_programs_cc` (
  `program_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`program_id`,`user_id`),
  KEY `trans_programs_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_programs_cc_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `trans_programs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_programs_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_programs_cc`
--

LOCK TABLES `trans_programs_cc` WRITE;
/*!40000 ALTER TABLE `trans_programs_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_programs_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_programs_details`
--

DROP TABLE IF EXISTS `trans_programs_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_programs_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `program_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'persiapan' COMMENT 'persiapan|pelaksanaan|penyelesaian',
  `agenda` text NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_programs_details_program_id_foreign` (`program_id`),
  CONSTRAINT `trans_programs_details_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `trans_programs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_programs_details`
--

LOCK TABLES `trans_programs_details` WRITE;
/*!40000 ALTER TABLE `trans_programs_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_programs_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_report_lb_spi`
--

DROP TABLE IF EXISTS `trans_report_lb_spi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_report_lb_spi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `report_no` varchar(255) NOT NULL,
  `report_period` date NOT NULL COMMENT 'period: month year',
  `report_date` date NOT NULL COMMENT 'inspection period: date',
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_report_lb_spi`
--

LOCK TABLES `trans_report_lb_spi` WRITE;
/*!40000 ALTER TABLE `trans_report_lb_spi` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_report_lb_spi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_report_lb_spi_detail`
--

DROP TABLE IF EXISTS `trans_report_lb_spi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_report_lb_spi_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lb_spi_id` bigint(20) unsigned NOT NULL,
  `struktur_organisasi` longtext DEFAULT NULL,
  `kinerja_spi` longtext DEFAULT NULL,
  `penggunaan_anggaran` longtext DEFAULT NULL,
  `pkpt` longtext DEFAULT NULL,
  `pkpk` longtext DEFAULT NULL,
  `pkk` longtext DEFAULT NULL,
  `followup_audit` longtext DEFAULT NULL,
  `penguatan_kualitas_personil` longtext DEFAULT NULL,
  `sdm` longtext DEFAULT NULL,
  `rencana_diklat` longtext DEFAULT NULL,
  `realisasi_diklat` longtext DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_report_lb_spi_detail_lb_spi_id_foreign` (`lb_spi_id`),
  CONSTRAINT `trans_report_lb_spi_detail_lb_spi_id_foreign` FOREIGN KEY (`lb_spi_id`) REFERENCES `trans_report_lb_spi` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_report_lb_spi_detail`
--

LOCK TABLES `trans_report_lb_spi_detail` WRITE;
/*!40000 ALTER TABLE `trans_report_lb_spi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_report_lb_spi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_residual_risk`
--

DROP TABLE IF EXISTS `trans_residual_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_residual_risk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `risk_register_id` bigint(20) unsigned NOT NULL,
  `risk_register_detail_id` bigint(20) unsigned NOT NULL,
  `level_dampak_id` bigint(20) unsigned DEFAULT NULL,
  `level_kemungkinan_id` bigint(20) unsigned DEFAULT NULL,
  `tingkat_resiko_id` bigint(20) unsigned DEFAULT NULL,
  `status_resiko_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_residual_risk_risk_register_id_foreign` (`risk_register_id`),
  KEY `trans_residual_risk_risk_register_detail_id_foreign` (`risk_register_detail_id`),
  KEY `trans_residual_risk_level_dampak_id_foreign` (`level_dampak_id`),
  KEY `trans_residual_risk_level_kemungkinan_id_foreign` (`level_kemungkinan_id`),
  KEY `trans_residual_risk_tingkat_resiko_id_foreign` (`tingkat_resiko_id`),
  KEY `trans_residual_risk_status_resiko_id_foreign` (`status_resiko_id`),
  CONSTRAINT `trans_residual_risk_level_dampak_id_foreign` FOREIGN KEY (`level_dampak_id`) REFERENCES `ref_level_dampak` (`id`),
  CONSTRAINT `trans_residual_risk_level_kemungkinan_id_foreign` FOREIGN KEY (`level_kemungkinan_id`) REFERENCES `ref_level_kemungkinan` (`id`),
  CONSTRAINT `trans_residual_risk_risk_register_detail_id_foreign` FOREIGN KEY (`risk_register_detail_id`) REFERENCES `trans_risk_assessment_register_detail` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_residual_risk_risk_register_id_foreign` FOREIGN KEY (`risk_register_id`) REFERENCES `trans_risk_assessment_register` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_residual_risk_status_resiko_id_foreign` FOREIGN KEY (`status_resiko_id`) REFERENCES `ref_risk_status` (`id`),
  CONSTRAINT `trans_residual_risk_tingkat_resiko_id_foreign` FOREIGN KEY (`tingkat_resiko_id`) REFERENCES `ref_risk_ratings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_residual_risk`
--

LOCK TABLES `trans_residual_risk` WRITE;
/*!40000 ALTER TABLE `trans_residual_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_residual_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_residual_risk_detail`
--

DROP TABLE IF EXISTS `trans_residual_risk_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_residual_risk_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `residual_risk_id` bigint(20) unsigned NOT NULL,
  `perlakuan_resiko` longtext NOT NULL,
  `biaya` longtext NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_residual_risk_detail_residual_risk_id_foreign` (`residual_risk_id`),
  CONSTRAINT `trans_residual_risk_detail_residual_risk_id_foreign` FOREIGN KEY (`residual_risk_id`) REFERENCES `trans_residual_risk` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_residual_risk_detail`
--

LOCK TABLES `trans_residual_risk_detail` WRITE;
/*!40000 ALTER TABLE `trans_residual_risk_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_residual_risk_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_risk_assessment_register`
--

DROP TABLE IF EXISTS `trans_risk_assessment_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_risk_assessment_register` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `periode` date NOT NULL COMMENT 'Bulan/Tahun',
  `unit_kerja_id` bigint(20) unsigned NOT NULL,
  `sasaran` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_risk_assessment_register_unit_kerja_id_foreign` (`unit_kerja_id`),
  CONSTRAINT `trans_risk_assessment_register_unit_kerja_id_foreign` FOREIGN KEY (`unit_kerja_id`) REFERENCES `ref_org_structs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_risk_assessment_register`
--

LOCK TABLES `trans_risk_assessment_register` WRITE;
/*!40000 ALTER TABLE `trans_risk_assessment_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_risk_assessment_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_risk_assessment_register_detail`
--

DROP TABLE IF EXISTS `trans_risk_assessment_register_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_risk_assessment_register_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `risk_register_id` bigint(20) unsigned NOT NULL,
  `kode_resiko_id` bigint(20) unsigned NOT NULL,
  `jenis_resiko_id` bigint(20) unsigned NOT NULL,
  `peristiwa` longtext NOT NULL,
  `penyebab` longtext NOT NULL,
  `dampak` longtext NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_risk_assessment_register_detail_risk_register_id_foreign` (`risk_register_id`),
  KEY `trans_risk_assessment_register_detail_kode_resiko_id_foreign` (`kode_resiko_id`),
  KEY `trans_risk_assessment_register_detail_jenis_resiko_id_foreign` (`jenis_resiko_id`),
  CONSTRAINT `trans_risk_assessment_register_detail_jenis_resiko_id_foreign` FOREIGN KEY (`jenis_resiko_id`) REFERENCES `ref_risk_type` (`id`),
  CONSTRAINT `trans_risk_assessment_register_detail_kode_resiko_id_foreign` FOREIGN KEY (`kode_resiko_id`) REFERENCES `ref_risk_code` (`id`),
  CONSTRAINT `trans_risk_assessment_register_detail_risk_register_id_foreign` FOREIGN KEY (`risk_register_id`) REFERENCES `trans_risk_assessment_register` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_risk_assessment_register_detail`
--

LOCK TABLES `trans_risk_assessment_register_detail` WRITE;
/*!40000 ALTER TABLE `trans_risk_assessment_register_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_risk_assessment_register_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rkia`
--

DROP TABLE IF EXISTS `trans_rkia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rkia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `version` smallint(6) NOT NULL,
  `pic_id` bigint(20) unsigned DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `closing` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|warning.approval|rejected|completed|upgraded',
  `upgrade_reject` longtext DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rkia`
--

LOCK TABLES `trans_rkia` WRITE;
/*!40000 ALTER TABLE `trans_rkia` DISABLE KEYS */;
INSERT INTO `trans_rkia` VALUES (1,2023,2,NULL,'operation',NULL,'draft',NULL,4,16,'2023-07-24 14:55:50','2023-07-27 10:53:50'),(2,2024,0,NULL,'operation',NULL,'draft',NULL,14,NULL,'2023-07-27 10:42:49',NULL),(3,2023,0,NULL,'special',NULL,'draft',NULL,10,NULL,'2023-08-01 11:39:21',NULL);
/*!40000 ALTER TABLE `trans_rkia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rkia_cc`
--

DROP TABLE IF EXISTS `trans_rkia_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rkia_cc` (
  `rkia_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`rkia_id`,`user_id`),
  KEY `trans_rkia_cc_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_rkia_cc_rkia_id_foreign` FOREIGN KEY (`rkia_id`) REFERENCES `trans_rkia` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_rkia_cc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rkia_cc`
--

LOCK TABLES `trans_rkia_cc` WRITE;
/*!40000 ALTER TABLE `trans_rkia_cc` DISABLE KEYS */;
INSERT INTO `trans_rkia_cc` VALUES (1,19);
/*!40000 ALTER TABLE `trans_rkia_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rkia_summary`
--

DROP TABLE IF EXISTS `trans_rkia_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rkia_summary` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rkia_id` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `ict_object_id` bigint(20) unsigned DEFAULT NULL,
  `nonpkpt_object_id` bigint(20) unsigned DEFAULT NULL,
  `pic_id` bigint(20) unsigned NOT NULL,
  `leader_id` bigint(20) unsigned NOT NULL,
  `supervisor_id` bigint(20) unsigned NOT NULL,
  `vp_spi_id` bigint(20) unsigned DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `cost_estimation` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_rkia_summary_rkia_id_foreign` (`rkia_id`),
  KEY `trans_rkia_summary_object_id_foreign` (`object_id`),
  KEY `trans_rkia_summary_ict_object_id_foreign` (`ict_object_id`),
  KEY `trans_rkia_summary_pic_id_foreign` (`pic_id`),
  KEY `trans_rkia_summary_leader_id_foreign` (`leader_id`),
  KEY `trans_rkia_summary_supervisor_id_foreign` (`supervisor_id`),
  KEY `trans_rkia_summary_vp_spi_id_foreign` (`vp_spi_id`),
  CONSTRAINT `trans_rkia_summary_ict_object_id_foreign` FOREIGN KEY (`ict_object_id`) REFERENCES `ref_ict_objects` (`id`),
  CONSTRAINT `trans_rkia_summary_leader_id_foreign` FOREIGN KEY (`leader_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_rkia_summary_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `ref_org_structs` (`id`),
  CONSTRAINT `trans_rkia_summary_pic_id_foreign` FOREIGN KEY (`pic_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_rkia_summary_rkia_id_foreign` FOREIGN KEY (`rkia_id`) REFERENCES `trans_rkia` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_rkia_summary_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `sys_users` (`id`),
  CONSTRAINT `trans_rkia_summary_vp_spi_id_foreign` FOREIGN KEY (`vp_spi_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rkia_summary`
--

LOCK TABLES `trans_rkia_summary` WRITE;
/*!40000 ALTER TABLE `trans_rkia_summary` DISABLE KEYS */;
INSERT INTO `trans_rkia_summary` VALUES (1,1,11,NULL,NULL,8,14,2,NULL,'2023-05-22','2023-06-26','Efektifitas & Efisiensi Atas Kegiatan operasional Di PT KBN Prima Logistik',5000000,9,NULL,'2023-07-25 09:09:43',NULL);
/*!40000 ALTER TABLE `trans_rkia_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rkia_summary_members`
--

DROP TABLE IF EXISTS `trans_rkia_summary_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rkia_summary_members` (
  `summary_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`summary_id`,`user_id`),
  KEY `trans_rkia_summary_members_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_rkia_summary_members_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_rkia_summary_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rkia_summary_members`
--

LOCK TABLES `trans_rkia_summary_members` WRITE;
/*!40000 ALTER TABLE `trans_rkia_summary_members` DISABLE KEYS */;
INSERT INTO `trans_rkia_summary_members` VALUES (1,10),(1,12),(1,13);
/*!40000 ALTER TABLE `trans_rkia_summary_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_surveys_regs`
--

DROP TABLE IF EXISTS `trans_surveys_regs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_surveys_regs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `summary_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|shared|completed',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_surveys_regs_summary_id_foreign` (`summary_id`),
  CONSTRAINT `trans_surveys_regs_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `trans_rkia_summary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_surveys_regs`
--

LOCK TABLES `trans_surveys_regs` WRITE;
/*!40000 ALTER TABLE `trans_surveys_regs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_surveys_regs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_surveys_regs_users`
--

DROP TABLE IF EXISTS `trans_surveys_regs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_surveys_regs_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `survey_reg_id` bigint(20) unsigned NOT NULL,
  `master_survey_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `timer` time DEFAULT NULL,
  `suggestion` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new' COMMENT 'new|draft|done',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_surveys_regs_users_survey_reg_id_foreign` (`survey_reg_id`),
  KEY `trans_surveys_regs_users_master_survey_id_foreign` (`master_survey_id`),
  KEY `trans_surveys_regs_users_user_id_foreign` (`user_id`),
  CONSTRAINT `trans_surveys_regs_users_master_survey_id_foreign` FOREIGN KEY (`master_survey_id`) REFERENCES `ref_surveys` (`id`),
  CONSTRAINT `trans_surveys_regs_users_survey_reg_id_foreign` FOREIGN KEY (`survey_reg_id`) REFERENCES `trans_surveys_regs` (`id`),
  CONSTRAINT `trans_surveys_regs_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_surveys_regs_users`
--

LOCK TABLES `trans_surveys_regs_users` WRITE;
/*!40000 ALTER TABLE `trans_surveys_regs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_surveys_regs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_surveys_regs_users_details`
--

DROP TABLE IF EXISTS `trans_surveys_regs_users_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_surveys_regs_users_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `survey_reg_user_id` bigint(20) unsigned NOT NULL,
  `survey_statement_id` bigint(20) unsigned NOT NULL,
  `answer` int(11) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_surveys_regs_users_details_survey_reg_user_id_foreign` (`survey_reg_user_id`),
  KEY `trans_surveys_regs_users_details_survey_statement_id_foreign` (`survey_statement_id`),
  CONSTRAINT `trans_surveys_regs_users_details_survey_reg_user_id_foreign` FOREIGN KEY (`survey_reg_user_id`) REFERENCES `trans_surveys_regs_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trans_surveys_regs_users_details_survey_statement_id_foreign` FOREIGN KEY (`survey_statement_id`) REFERENCES `ref_surveys_statements` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_surveys_regs_users_details`
--

LOCK TABLES `trans_surveys_regs_users_details` WRITE;
/*!40000 ALTER TABLE `trans_surveys_regs_users_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_surveys_regs_users_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_training_auditor_details`
--

DROP TABLE IF EXISTS `trans_training_auditor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_training_auditor_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `training_id` bigint(20) unsigned NOT NULL,
  `training_institute_id` bigint(20) unsigned NOT NULL,
  `training_type_id` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `biaya` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_training_auditor_details`
--

LOCK TABLES `trans_training_auditor_details` WRITE;
/*!40000 ALTER TABLE `trans_training_auditor_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_training_auditor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_training_auditor_realization`
--

DROP TABLE IF EXISTS `trans_training_auditor_realization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_training_auditor_realization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `training_auditor_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_training_auditor_realization_training_auditor_id_foreign` (`training_auditor_id`),
  CONSTRAINT `trans_training_auditor_realization_training_auditor_id_foreign` FOREIGN KEY (`training_auditor_id`) REFERENCES `trans_training_auditors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_training_auditor_realization`
--

LOCK TABLES `trans_training_auditor_realization` WRITE;
/*!40000 ALTER TABLE `trans_training_auditor_realization` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_training_auditor_realization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_training_auditors`
--

DROP TABLE IF EXISTS `trans_training_auditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_training_auditors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `periode` date NOT NULL COMMENT 'periode: month year',
  `user_id` bigint(20) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_training_auditors`
--

LOCK TABLES `trans_training_auditors` WRITE;
/*!40000 ALTER TABLE `trans_training_auditors` DISABLE KEYS */;
INSERT INTO `trans_training_auditors` VALUES (2,'2023-02-01',16,'CIAE Lembaga BPKP','draft',8,8,'2023-07-27 11:14:03','2023-07-27 11:16:35',NULL),(3,'2023-06-01',16,'QRMP + RMCP Lembaga CRMS','draft',8,NULL,'2023-07-27 11:16:22',NULL,NULL),(4,'2023-03-01',8,'QRMP Lembaga PPA&K','draft',8,8,'2023-07-27 11:18:17','2023-07-27 11:21:52',NULL),(5,'2023-04-01',8,'SNIA Lembaga YPIA','draft',8,NULL,'2023-07-27 11:18:58',NULL,NULL),(6,'2023-03-01',2,'Seminar AAI','draft',8,NULL,'2023-07-27 11:19:50',NULL,NULL),(7,'2023-06-01',2,'QRMP Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:20:35',NULL,NULL),(9,'2023-02-01',14,'Komunikasi & Psikologi Audit Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:27:27',NULL,NULL),(10,'2023-03-01',14,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:47:42',NULL,NULL),(11,'2023-06-01',14,'Seminar & Pengukuhan PIA Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:49:10',NULL,NULL),(12,'2023-11-01',14,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:49:51',NULL,NULL),(13,'2023-11-01',14,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:50:41',NULL,NULL),(14,'2023-03-01',11,'Seminar AAI Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:52:23',NULL,NULL),(15,'2023-07-01',11,'Audit SDM Lembaga PPA&K','draft',8,NULL,'2023-07-27 11:57:51',NULL,NULL),(16,'2023-03-01',5,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-07-27 12:01:56',NULL,NULL),(17,'2023-06-01',5,'Seminar & Pengukuhan PIA Lembaga PPA&K','draft',8,NULL,'2023-07-27 12:02:43',NULL,NULL),(18,'2023-11-01',5,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,NULL,'2023-07-27 12:12:50',NULL,NULL),(19,'2023-11-01',5,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,NULL,'2023-07-27 12:13:52',NULL,NULL),(20,'2023-02-01',10,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,8,'2023-08-02 08:50:21','2023-08-02 08:53:07',NULL),(21,'2023-04-01',10,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,8,'2023-08-02 08:51:32','2023-08-02 08:55:22',NULL),(22,'2023-06-01',10,'Seminar & Pengukuhan PIA Lembaga PPA&K','draft',8,NULL,'2023-08-02 08:55:05',NULL,NULL),(23,'2023-02-01',4,'Komunikasi & Psikologi Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 09:18:11',NULL,NULL),(24,'2023-03-01',4,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 09:19:15',NULL,NULL),(25,'2023-04-01',4,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,NULL,'2023-08-02 09:20:19',NULL,NULL),(26,'2023-06-01',4,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,8,'2023-08-02 09:55:29','2023-08-02 09:55:56',NULL),(27,'2023-09-01',4,'Pengelolaan Tugas-Tugas Audit + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 09:58:49',NULL,NULL),(28,'2023-11-01',4,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 09:59:59',NULL,NULL),(29,'2023-03-01',6,'Dasar-Dasar Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:07:00',NULL,NULL),(30,'2023-05-01',6,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:07:38',NULL,NULL),(31,'2023-07-01',6,'Komunikasi & Psikologi Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:09:14',NULL,NULL),(32,'2023-08-01',6,'Audit Kecurangan + Asesmen','draft',8,NULL,'2023-08-02 10:09:51',NULL,NULL),(33,'2023-09-01',6,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:10:43',NULL,NULL),(34,'2023-11-01',6,'Seminar & Pengukuhan PIA','draft',8,8,'2023-08-02 10:11:22','2023-08-02 10:11:41',NULL),(35,'2023-05-01',11,'Audit SDM Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:18:48',NULL,NULL),(36,'2023-03-01',11,'Seminar AAI','draft',8,NULL,'2023-08-02 10:20:01',NULL,NULL),(37,'2023-03-01',13,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,8,'2023-08-02 10:23:46','2023-08-02 10:24:37',NULL),(38,'2023-06-01',13,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,8,'2023-08-02 10:24:23','2023-08-02 10:26:40',NULL),(39,'2023-07-01',13,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:29:06',NULL,NULL),(40,'2023-11-01',13,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 10:29:38',NULL,NULL),(41,'2023-02-01',15,'Audit Operasional + Asesmen PPA&K','draft',8,NULL,'2023-08-02 10:31:22',NULL,NULL),(42,'2023-04-01',15,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:36:41',NULL,NULL),(43,'2023-11-01',15,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 10:37:04',NULL,NULL),(44,'2023-03-01',12,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:38:11',NULL,NULL),(45,'2023-05-01',12,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:38:51',NULL,NULL),(46,'2023-04-01',12,'Program Matrikulasi PIA Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:39:31',NULL,NULL),(47,'2023-11-01',12,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 10:40:01',NULL,NULL),(48,'2023-03-01',3,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:41:04',NULL,NULL),(49,'2023-05-01',3,'Pengelolaan Tugas-Tugas Audit + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:42:10',NULL,NULL),(50,'2023-04-01',3,'Program Matrikulasi PIA','draft',8,NULL,'2023-08-02 10:42:41',NULL,NULL),(51,'2023-11-01',3,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 10:51:57',NULL,NULL),(52,'2023-01-01',9,'Dasar-Dasar Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:54:35',NULL,NULL),(53,'2023-02-01',9,'Audit Operasional + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:55:41',NULL,NULL),(54,'2023-05-01',9,'Komunikasi & Psikologi Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:56:15',NULL,NULL),(55,'2023-04-01',9,'Prgram Matrikulasi PIA','draft',8,NULL,'2023-08-02 10:57:18',NULL,NULL),(56,'2023-06-01',9,'Audit Kecurangan + Asesmen Lembaga PPA&K','draft',8,NULL,'2023-08-02 10:58:44',NULL,NULL),(57,'2023-07-01',9,'Pengelolaan Tugas-Tugas Audit Lembaga PPA&K','draft',8,NULL,'2023-08-02 11:00:43',NULL,NULL),(58,'2023-11-01',9,'Seminar & Pengukuhan PIA','draft',8,NULL,'2023-08-02 11:02:42',NULL,NULL);
/*!40000 ALTER TABLE `trans_training_auditors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09  5:00:38
