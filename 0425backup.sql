-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: djangoWatson
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add my news',7,'add_mynews'),(26,'Can change my news',7,'change_mynews'),(27,'Can delete my news',7,'delete_mynews'),(28,'Can view my news',7,'view_mynews'),(29,'Can add my travel',8,'add_mytravel'),(30,'Can change my travel',8,'change_mytravel'),(31,'Can delete my travel',8,'delete_mytravel'),(32,'Can view my travel',8,'view_mytravel'),(33,'Can add goods',9,'add_goods'),(34,'Can change goods',9,'change_goods'),(35,'Can delete goods',9,'delete_goods'),(36,'Can view goods',9,'view_goods'),(37,'Can add message',10,'add_message'),(38,'Can change message',10,'change_message'),(39,'Can delete message',10,'delete_message'),(40,'Can view message',10,'view_message'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add cart',13,'add_cart'),(50,'Can change cart',13,'change_cart'),(51,'Can delete cart',13,'delete_cart'),(52,'Can view cart',13,'view_cart'),(53,'Can add photo',14,'add_photo'),(54,'Can change photo',14,'change_photo'),(55,'Can delete photo',14,'delete_photo'),(56,'Can view photo',14,'view_photo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$PE8bEwgTtcRhhuI99iM9KP$WNSoSkQefyH01UI7Llg0w/bgliXGx9TSIxqnQUdjJc0=','2024-04-16 14:57:30.695960',1,'vincent','','','vincent7955168@gmail.com',1,1,'2024-04-03 06:30:41.625165');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subtitle` int NOT NULL,
  `shipping` int NOT NULL,
  `grandtotle` int NOT NULL,
  `custom_name` varchar(100) NOT NULL,
  `custom_mail` varchar(100) NOT NULL,
  `custom_mobile` varchar(20) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `custom_address` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (1,0,100,100,'ttttt','test1@gmail.com','123246','ATM轉帳','add','2024-04-16 13:22:45.966297'),(2,40400,0,40400,'ttttt','test1@gmail.com','123246','ATM轉帳','add','2024-04-16 13:27:06.613987'),(3,40400,0,40400,'簡連君','ljjain0508@gmail.com','0972143508','ATM轉帳','益新一街130巷6號','2024-04-22 13:15:45.852426'),(4,46689,0,46689,'簡連君','test1@gmail.com','0972143508','ATM轉帳','益新一街130巷6號','2024-04-22 13:18:30.732094'),(5,0,100,100,'簡連君','test1@gmail.com','0972143508','ATM轉帳','益新一街130巷6號','2024-04-22 13:31:27.488297'),(6,1554,100,1654,'aaaaa','test1@gmail.com','0988888888','信用卡','wssfdasf','2024-04-22 14:45:35.157951'),(7,3990,100,4090,'aaaaa','test1@gmail.com','0988888888','信用卡','wssfdasf','2024-04-22 15:33:40.408188'),(8,1554,100,1654,'qqq','test1@gmail.com','123456','信用卡','qaadddd','2024-04-23 13:03:01.818842');
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_order`
--

DROP TABLE IF EXISTS `cart_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `uni_price` int NOT NULL,
  `quantity` int NOT NULL,
  `dtotal` int NOT NULL,
  `dorder_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_order_dorder_id_a9986852_fk_cart_cart_id` (`dorder_id`),
  CONSTRAINT `cart_order_dorder_id_a9986852_fk_cart_cart_id` FOREIGN KEY (`dorder_id`) REFERENCES `cart_cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_order`
--

LOCK TABLES `cart_order` WRITE;
/*!40000 ALTER TABLE `cart_order` DISABLE KEYS */;
INSERT INTO `cart_order` VALUES (1,'iPhone 15 Pro 256G',40400,1,40400,2),(2,'iPhone 15 Pro 256G',40400,1,40400,3),(3,'Jabra Elite 4真無線降噪藍牙耳機',3990,1,3990,4),(4,'iPhone 15 Pro 256G',40400,1,40400,4),(5,'Dynalink Google TV 智慧4K電視盒',2299,1,2299,4),(6,'樂米穀場月光之星1.5kg/6包',1554,1,1554,6),(7,'Jabra Elite 4真無線降噪藍牙耳機',3990,1,3990,7),(8,'樂米穀場月光之星1.5kg/6包',1554,1,1554,8);
/*!40000 ALTER TABLE `cart_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` longtext,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'test','test@gmail.com','test contact','test text','2024-04-07 13:59:04.345039');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'test','M','1990-05-08','test@gmail.com','123456789','test add','a03ab19b866fc585b5cb1812a2f63ca861e7e7643ee5d43fd7106b623725fd67','2024-04-07'),(2,'test1','M','1990-05-08','test1@gmail.com','9999999','test address','a03ab19b866fc585b5cb1812a2f63ca861e7e7643ee5d43fd7106b623725fd67','2024-04-07'),(3,'steve','M','1990-05-08','steve@gmail.com','987456321','123asd','f2e96c124da183c4e1d58c440f0b079b8d6d5b8b2fd39546a824c76502acc7d5','2024-04-07'),(4,'test123','M','1990-05-08','test123@gmail.com','9999999','test add','d7190eb194ff9494625514b6d178c87f99c5973e28c398969d2233f2960a573e','2024-04-16');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-03 07:58:38.258854','1','myNews object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-04-03 07:59:18.994359','2','myNews object (2)',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'cart','cart'),(12,'cart','order'),(10,'contact','message'),(5,'contenttypes','contenttype'),(11,'member','member'),(7,'news','mynews'),(14,'photos','photo'),(9,'product','goods'),(6,'sessions','session'),(8,'travel','mytravel');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-03 06:07:29.479336'),(2,'auth','0001_initial','2024-04-03 06:07:29.926536'),(3,'admin','0001_initial','2024-04-03 06:07:30.032823'),(4,'admin','0002_logentry_remove_auto_add','2024-04-03 06:07:30.039804'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-03 06:07:30.049780'),(6,'contenttypes','0002_remove_content_type_name','2024-04-03 06:07:30.127006'),(7,'auth','0002_alter_permission_name_max_length','2024-04-03 06:07:30.203832'),(8,'auth','0003_alter_user_email_max_length','2024-04-03 06:07:30.265649'),(9,'auth','0004_alter_user_username_opts','2024-04-03 06:07:30.273620'),(10,'auth','0005_alter_user_last_login_null','2024-04-03 06:07:30.326513'),(11,'auth','0006_require_contenttypes_0002','2024-04-03 06:07:30.328530'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-03 06:07:30.337453'),(13,'auth','0008_alter_user_username_max_length','2024-04-03 06:07:30.399322'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-03 06:07:30.457134'),(15,'auth','0010_alter_group_name_max_length','2024-04-03 06:07:30.511990'),(16,'auth','0011_update_proxy_permissions','2024-04-03 06:07:30.520999'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-03 06:07:30.580807'),(18,'sessions','0001_initial','2024-04-03 06:07:30.616712'),(19,'news','0001_initial','2024-04-03 06:47:07.089640'),(20,'travel','0001_initial','2024-04-03 09:02:22.266545'),(21,'product','0001_initial','2024-04-06 07:26:45.873602'),(22,'product','0002_alter_goods_discount','2024-04-07 08:35:16.707675'),(23,'contact','0001_initial','2024-04-07 13:23:24.997404'),(24,'member','0001_initial','2024-04-07 14:50:55.387255'),(25,'cart','0001_initial','2024-04-09 14:30:25.278533'),(26,'photos','0001_initial','2024-04-23 14:10:25.547563');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1sv8wumk9m4rt7m2hzjrp73qzezx141q','.eJw1Tk1rwkAQ_SvLnCykmqzuV06NUCJU0VQKQpLDRicSSCy4m16K_91ZWw8z7w0zb977hQGHje16SMGj88nbeaBpevweIILOZX33g5D664gRHO3V953zkJYlVKM8tU01igYVI2itoR5LQQshOXF-Iq7NnG9m69fDmv4lOo4DPGkdlbBfZZ87lhVf2z1zeHGomcjZROczLmT-Ek4XxgSZoFILI_50S7wU7P3AVRIXjCvyU7ph_KMajQy5lG0l2SsboqB4iI3W__YPWte3O70lRjg:1rweNH:OFZTTyGQOHortTB96RMESrI9uxf_zYoMCok9XfsqEXQ','2024-04-16 09:11:07.343512'),('2f52um1zorsn875zcipai8nai04nqnju','eyJjYXJ0bGlzdCI6W10sIm1lbU1haWwiOiJ0ZXN0MUBnbWFpbC5jb20iLCJpc0FsaXZlIjp0cnVlfQ:1ryvfo:rospHE3IDewRFXEFzxvY9KLj3NDEZT7oE02llBxYZg4','2024-04-22 16:03:40.412192'),('3nw66ouwy684sgn1dbgdnptbcnkcgt45','.eJw1zs1uwyAMB_B38amToo5vaE7bedoTlByAkipqokgN7FL13WfT9GIZg39_HrDk5TdMM_RQ8lb413XB0zGtC3Qwbd_z9JehL_eaO0jhXuZpK9Cfz-Cryuzk6ylclK82jdFXLbg9_KxxxbFpg6iZr8aM7gM5xyRWvndDR4ixDZFCEBgDUsap1w7WkCROsry8X2IoiVYk1Md2q5ihJOteW8hLx_Yg6vagwAT909JKUIhoJ1VjcVFz1XAVCeEjP-rb9ZNcyTRZWqudbO0wPP8B_3daYA:1rwN0O:RibEb0gZdUJ1ENIqCxOShMrekbFRaPXbGmMPT_IqB_M','2024-04-15 14:38:20.748755'),('6ijc6ytylnmd7x1shq3cef4trk96oj8c','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZSwiY2FydGxpc3QiOltdfQ:1ryuvH:Nt1Ovpv-E2zmECjJksr-a7kL2LKICyDvTgJVTLtPcLo','2024-04-22 15:15:35.161206'),('bspqko45zw8qw5aps8oj43unzmhpmk8d','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrwWZ:gb7mhATcyoPLYa8TOqTcUnASRvyxy-7BAAOb1B_esFY','2024-04-17 09:03:15.044069'),('fbk828x8x4x5u6kawqurpbvtzf4jrgac','.eJxVjDsOgzAQRO-yNUIG2cunStJzBrS21-AEg4RNmih3j5HSUM7Mm_eBwGEgv0APiWOqblPIqTRbgAJ8vC_-zdCn_eACRjrSPB6R99HbfKjg0mkyL17PwT5pnbYsWdPudXki5X-N5bBZXh5_9iKYKc757QixaqQj6QRipw11tXIOK4m1U0KyFl3dONuwRGRhtKg1mkzrVilqGb4_5ilGyA:1rwkFW:Xd6ThoOkF7muMDMvXrSbVEu9qTgqdgJL2rmuJlC04GE','2024-04-16 15:27:30.697973'),('fvqlz6kw6hvqvwbxo419itrb7avs2879','e30:1rtq9V:y3Wd-bP0KeGPu1dJjsTgl6TGQU8HqwOFP9TEefkhckI','2024-04-08 15:09:17.508685'),('i44xn1fs963qo9rl9yb62pkod5bi93iv','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZX0:1ruBxT:X_FGCBDxhPBkslzmUxxl_ZnorOvyN4CepgbxY82Qfiw','2024-04-09 14:26:19.780492'),('ibb3ilw0k9juh7bjl63a5poe4ltr76b3','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrvVK:I_o7fOzBsNk4pkMOaryHY7AjsEz9g1KscWVqywe_F6I','2024-04-17 07:57:54.447388'),('lgrohvwaz8p4ulvit7bo2j9yfk6p4tbv','eyJtZW1NYWlsIjoidGVzdDEyM0BnbWFpbC5jb20iLCJpc0FsaXZlIjp0cnVlfQ:1rwfY1:EXz7tmFuz55zcG0WeiDbpwF5pCiyXJlblzm4rweyKnk','2024-04-16 10:26:17.723064'),('oo9d5buupnkvdiv8wjo2hjy8wvpugmfw','.eJw1jcEKwjAMQH-l5Dxk7bZ23UlBERRv4mXdoa7dKHYbbK0g4r8bRS8vLxBenjDY4aSdhwqCXQJd9wNuq3YaIAG3bLy7W6jCHG0CrZ6Dd0uAqq5h-xi1d-ON7Kep95acL0RFzoVGUi7yo4qSd1cVSym5ioIbhkXGpMRB_9okNRz0ddZk512wJMdLQTskZRRpjP50cqNiwTl6WbToghUSPc0y_KaLDnOZlOmv_NWmeb0BLWtBqw:1rwO6x:9oW9RzO1KCyVYhyZ2dm5hyEGq1l6-FO1RuffTghKqAk','2024-04-15 15:49:11.790441'),('qgmj514npt8gvay3173q6logs1bpt11g','.eJxVjDsOgzAQRO-yNULGMsunStJzgihCa3sNTvhI2KSJcvcYKQ3lzLx5H5h57shP0ELkEIvLMKeUm3WGDHy4Tv7N0MZt5wwMbXHyIUJ7f2TQ0x7Hfg-89d6mewGnTpN58XIM9knLsCblEjev8wPJ_2vIu9XydPuzJ8FIYUxvR4hFpRwpJxAbbaiRpXNYKJSuFIq1aGTlbMUKkYXRQmo0idZ1WVLN8P0BCzVLkA:1rwiqM:umvhOLubovqVNsjSZeox7jybS-D5E7B94FhVfZG-NtA','2024-04-16 13:57:26.273678'),('qtfxp60j58b77ddf024gwavhxz01a3f3','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1ruCVv:jH7NtdWTb18qgrF3l93JWv0SJkQP0Q0ASwznSHeNdyw','2024-04-09 15:01:55.484278'),('ritutv0ka052urx6rhoqw9jibattshix','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZX0:1rzd5L:R6zbWw96aFeUGwyJtTO_7uB1W1-h9RkcDQX8DSBi0Dk','2024-04-24 14:24:55.287319'),('s3ptkfn2gub262iitr3i1nhqc4z80ut6','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rruAf:ebPak9h3bI9PLhTm2FlMjz-wsQ9VSrqR8FuxCM_dWrg','2024-04-17 06:32:29.513930'),('thu54lphjpvt90eotj8g8027v0cs2oe4','eyJjYXJ0bGlzdCI6W119:1ruw3g:Fcb-74OH3ELBGsNrzluJce2HNbJuUieiH21k8EgQpe4','2024-04-11 15:39:48.753649'),('wj23vy9jdqbcdo639hzepbz75u2mm0pl','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZSwiY2FydGxpc3QiOltdfQ:1rzFnZ:X4p75iBwz3o7WszEuuoleGql5_Q3cPfJagFwETSHOuw','2024-04-23 13:33:01.823848'),('yez9juj5s8z2w4lx3a0bto8xqru0floj','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZSwiY2FydGxpc3QiOltdfQ:1rytlX:zSnNxQEYyQcA9jzAlviMD1wywDL4d38-vlsPqjPJrOo','2024-04-22 14:01:27.491299');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'花蓮大地震／火車乘客拍到大山崩震撼畫面：以為世紀末日','花蓮縣近海今早發生芮氏7.2大地震，災情持續擴大，1名搭乘火車的台東民眾，被突如其來的劇烈搖晃嚇醒，睜開眼山邊大山崩，又鄰近海，嚇得以為「世界末日了」。\r\n\r\n「可怕到極點。」洪姓乘客說，真的會被眼前景象給嚇壞，當下感覺很不真實，一邊是天崩地裂，一邊又是太平洋，手機地震及海嘯警報不斷響起，在車上你也甚麼都不能動作。\r\n\r\n他說，自己的一早從台北搭6點13分太魯閣號到台東知本，一上車就睡著了，到花蓮突然感覺車身劇烈搖晃，睜開眼發現中央山脈掀起大量揚塵，在走山崩裂，但不知道是地震。\r\n\r\n直到手機地震警報響起，才知道發生大地震了，想不到隔幾秒鐘警報又響，卻是海嘯警報，他趕緊往窗戶看太平洋，真的很怕火車被海嘯吞噬，當下宛如末日災難電影真實上演。\r\n\r\n地震發生後，台鐵目前東線對號列車樹林到台東停駛中，西線對號列車陸續恢復行駛，跨線北半環列車僅行駛至七堵、南半環列車僅行駛至台東。宜蘭線區間車僅行駛至宜蘭。南迴線正常行駛。','https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2024/04/03/realtime/29357278.jpg&x=0&y=0&sw=0&sh=0&sl=W&fw=800&exp=3600&w=930&nt=1','2024-04-03 07:58:38.255829'),(2,'他為何沒死？ 寶林廚師手有米酵菌酸竟沒事 高大成揪疑點','台北市信義區遠百A13「寶林茶室」發生食物中毒事件，台北市政府今（2）日證實在廚師手部、刀具、砧板驗出米酵菌酸毒素；唯採檢日期是3月24日，法醫高大成質疑中毒者19日就到該餐廳用餐，為什麼隔了5天還能在廚師手部驗到、且廚師還沒中毒，恐是中毒事件爆發後，廚師回餐廳清理現場，再度沾到所致。\r\n\r\n\r\n中山醫學大學附設醫院法醫科主任高大成表示，寶林茶室19日就有食客中毒，24日採檢廚師手部以及環境檢體竟還能驗出米酵菌酸毒素，可以確定該中毒案就是米酵菌酸肇禍，且污染源頭侷限在信義區遠百A13「寶林茶室」分店，要找源頭應該看那1項環境檢體的濃度最高，最高的就最接近源頭。\r\n\r\n但對於廚師在5日後採檢手部生物跡象仍驗出陽性反應，如果手部感染毒化物5天沒中毒，太不可思議，5天沒洗手也太不衛生，因而高度質疑是事件爆發後清理現場，把他懷疑遭污染的問題食材清理掉才又接觸到。\r\n\r\n高大成強烈懷疑代班廚師是關鍵人物，可能是代班廚師烹調習慣和之前的廚師不同，把放在角落、正班廚師不愛用的食材拿來使用。\r\n\r\n且他也認為遭米酵菌酸污染的食材可能不是粿仔條，很有可能是調味料，才會造成有人食入濃度高重症死亡，有人症狀輕微，但如果真如他所預測，該事件最應注意的是同一批遭感染的進口調味料，可能還有其他流入市面，必須全面禁用，才能防止又有人誤食中毒。','https://images.chinatimes.com/newsphoto/2024-04-02/1024/20240402002787.jpg','2024-04-03 07:59:18.993363');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_photo`
--

DROP TABLE IF EXISTS `photos_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos_photo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_photo`
--

LOCK TABLES `photos_photo` WRITE;
/*!40000 ALTER TABLE `photos_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `goods_url` varchar(200) NOT NULL,
  `discount` int NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ASUS 14吋商用筆電',27900,'https://img.pchome.com.tw/cs/items/DHAFRC1900HBXUW/000007_1712026119.jpg','https://24h.pchome.com.tw/prod/DHAFRC-1900HBXUW',23900,'2024-04-07'),(2,'國際牌 奈米水離子吹風機',2190,'https://img.pchome.com.tw/cs/items/DMAH02A900AN6LL/000007_1662106214.jpg','https://24h.pchome.com.tw/prod/DMAH02-A900AN6LL',1637,'2024-04-07'),(3,'SONY ZV-1手持握把組合',23980,'https://img.pchome.com.tw/cs/items/DGADGFA900AOMVS/000007_1654135722.jpg','https://24h.pchome.com.tw/store/DGCM3F',21980,'2024-04-07'),(4,'好立善 深海鮭魚油 五入組(120顆x5)',3900,'https://img.pchome.com.tw/cs/items/DBBC0NA9005COZE/000007_1668063682.jpg','https://24h.pchome.com.tw/store/DBDJ0D',1599,'2024-04-07'),(5,'ARIEL/BOLD 4D袋裝洗衣球 任選4包',2720,'https://img.pchome.com.tw/cs/items/DAAK65A900GKTNK/000007_1694487233.jpg','https://24h.pchome.com.tw/prod/DAAK65-A900GKTNK',849,'2024-04-07'),(6,'雅詩蘭黛 特潤超導全方位修護露 100ml',7900,'https://img.pchome.com.tw/cs/items/DDAD2PA900GSKLS/000007_1698827667.jpg','https://24h.pchome.com.tw/prod/DDAD2P-A900GSKLS',2380,'2024-04-07'),(7,'鱷魚皮件 真皮男夾',1980,'https://cs-f.ecimg.tw/cms/creatives/onsale/1e96efd1-289f-4910-89c1-98c73edbd73d.jpeg','https://24h.pchome.com.tw/prod/DIBMY5-A900HBNZF',999,'2024-04-07'),(8,'舒跑運動飲料250ml (24入X3箱)',720,'https://img.pchome.com.tw/cs/items/DBAB9W1900B6WMZ/000007_1711794880.jpg','https://24h.pchome.com.tw/store/DBABH6',507,'2024-04-07'),(9,'GARMIN EPIX Pro 全方位腕錶51mm',35990,'https://img.pchome.com.tw/cs/items/DXAO6HA900GE46K/000007_1686038755.jpg','https://24h.pchome.com.tw/store/DXAO6S',33990,'2024-04-07'),(10,'希捷 One Touch Hub 14TB 超大容量硬碟',10988,'https://img.pchome.com.tw/cs/items/DRAM2KA900FFF0Y/000007_1661333639.jpg','https://24h.pchome.com.tw/prod/DRAM2K-A900FFF0Y',8499,'2024-04-07'),(11,'MagSafe 充電器',1290,'https://img.pchome.com.tw/cs/items/DYAJD21900H0M2D/000007_1710918980.jpg','https://24h.pchome.com.tw/prod/DYAJD2-1900H0M2D',990,'2024-04-07'),(12,'三星 S24 Ultra 軍規防摔保護殼',1390,'https://img.pchome.com.tw/cs/items/DYAH4HA900H2I2U/000007_1708679423.jpg','https://24h.pchome.com.tw/store/DYAGES',990,'2024-04-07'),(13,'飛利浦品昊LED 全光譜護眼檯燈',2699,'https://img.pchome.com.tw/cs/items/DECN0UA900FSZ95/000007_1669950505.jpg','https://24h.pchome.com.tw/prod/DECN0U-A900FSZ95',2199,'2024-04-07'),(14,'HappyLife 窄款雙層書桌',1288,'https://cs-f.ecimg.tw/cms/creatives/onsale/3f7de5fc-e87e-43b5-b0d4-07e002cf55d5.jpeg','https://24h.pchome.com.tw/prod/DQCBAP-A900H4YQD',999,'2024-04-07'),(15,'CHEFBORN  Air蒸氣雲朵全玻璃氣炸鍋',6980,'https://img.pchome.com.tw/cs/items/DMAGZ81900H938O/000007_1708569094.jpg','https://24h.pchome.com.tw/prod/DMAGZ8-1900H938O',3680,'2024-04-07'),(16,'HAG Capisco Puls 人體工學椅_銀河灰',53000,'https://img.pchome.com.tw/cs/items/DCBV0WA900HCFHX/000007_1711608549.jpg','https://24h.pchome.com.tw/prod/DCBV0W-A900HCFHX',39999,'2024-04-07'),(17,'契爾氏 亞馬遜白泥淨緻毛孔面膜',1450,'https://img.pchome.com.tw/cs/items/DDAD8MA900GRO4A/000007_1698308020.jpg','https://24h.pchome.com.tw/prod/DDAD8M-A900GRO4A',759,'2024-04-07'),(18,'NEOFLAM不鏽鋼鍋具8件組',11650,'https://cs-f.ecimg.tw/cms/creatives/onsale/01c6c983-9ed5-4e28-b9e3-6b97a555439b.jpeg','https://24h.pchome.com.tw/store/DEAW63',3880,'2024-04-07'),(19,'PP 石墨烯鞋墊1雙+體護膝1雙組合',9320,'https://img.pchome.com.tw/cs/items/DAARGSA900H528T/000007_1706868871.jpg','https://24h.pchome.com.tw/store/DAARGS',3288,'2024-04-07'),(20,'【灣仔碼頭】玉米豬肉水餃(40顆/包)x4',876,'https://img.pchome.com.tw/cs/items/DBCP3U1900FVRHI/000007_1672363811.jpg','https://24h.pchome.com.tw/store/DBCP4S',788,'2024-04-07'),(21,'TP-Link Archer AX12 WiFi 6 無線路由器',1199,'https://img.pchome.com.tw/cs/items/DRAN09A900GCP4U/000007_1684811224.jpg','https://24h.pchome.com.tw/prod/DRAN09-A900GCP4U',1099,'2024-04-07'),(22,'順造 黑豹無線吸塵洗地機(H200)',29900,'https://img.pchome.com.tw/cs/items/DMBL45A900H0622/000007_1702610414.jpg','https://24h.pchome.com.tw/prod/DMBL45-A900H0622',6999,'2024-04-07'),(23,'OPPO Reno10 Pro 釉紫(12+256)',17990,'https://img.pchome.com.tw/cs/items/DYAV331900GYF7F/000007_1702283796.jpg','https://24h.pchome.com.tw/store/DYAV33',11490,'2024-04-07'),(24,'Petkit佩奇 全自動智能貓砂機MAX',24500,'https://img.pchome.com.tw/cs/items/DEAKN7A900GP95G/000007_1696237249.jpg','https://24h.pchome.com.tw/prod/DEAKN7-A900GP95G',13888,'2024-04-07'),(25,'【Style】韓國3D立體高配人體工學機能電腦椅',4330,'https://cs-f.ecimg.tw/cms/creatives/onsale/a37565e2-ab2c-46bc-9666-6068ae87557e.jpeg','https://24h.pchome.com.tw/prod/DQBJ3B-A900GNUPC',3680,'2024-04-07'),(26,'LE LABO淡香精50ml',7250,'https://img.pchome.com.tw/cs/items/DDAHN9A900GXWWH/000007_1708418024.jpg','https://24h.pchome.com.tw/prod/DDAHN9-A900GXWWH',4499,'2024-04-07'),(27,'雀巢金牌微研磨咖啡隨行包(2gx50入)x3盒',1140,'https://img.pchome.com.tw/cs/items/DBCO361900HD0L0/000007_1712113031.jpg','https://24h.pchome.com.tw/store/DBCO36',867,'2024-04-07'),(28,'泰山強氣泡水 500ml(24入/箱)',499,'https://img.pchome.com.tw/cs/items/DBAG0KA9009ZRQC/000007_1706876303.jpg','https://24h.pchome.com.tw/store/DBAG0K',449,'2024-04-07'),(29,'輝葉 WULA超有力小沙發按摩椅',56800,'https://img.pchome.com.tw/cs/items/DMADFEA900FOT85/000007_1670924882.jpg','https://24h.pchome.com.tw/prod/DMADFE-A900FOT85',19999,'2024-04-07'),(30,'HyRead Gaze Mini+ 閱讀器',6990,'https://img.pchome.com.tw/cs/items/DCBR0NA900HC541/000007_1711416402.jpg','https://24h.pchome.com.tw/prod/DCBR0N-A900HC541',6190,'2024-04-07'),(31,'東芝180公升定頻電冰箱',14900,'https://img.pchome.com.tw/cs/items/DPAC0JA900GP8Y7/000007_1696235213.jpg','https://24h.pchome.com.tw/prod/DPAC0J-A900GP8Y7',9999,'2024-04-07'),(32,'日本 KINCHO 金鳥防蚊掛片150日x3入',1099,'https://img.pchome.com.tw/cs/items/DABE211900B1C0G/000007_1617159563.jpg','https://24h.pchome.com.tw/prod/DABE21-1900B1C0G',1099,'2024-04-07'),(33,'倍力舒 蜂巢凝膠雙背護脊椅',3380,'https://img.pchome.com.tw/cs/items/DAAHAXA900F952V/000007_1656915306.jpg','https://24h.pchome.com.tw/store/DAAHAX',3180,'2024-04-07'),(34,'三花 平口褲3件',620,'https://img.pchome.com.tw/cs/items/DIBUARA900AC0K2/000007_1707129908.jpg','https://24h.pchome.com.tw/store/DIDI3D',199,'2024-04-07'),(35,'WORX 威克士 4V 鋰電迷你精巧起子機',1299,'https://cs-f.ecimg.tw/cms/creatives/onsale/e9d18c5e-2cba-42db-9c3e-fb54a3762fba.jpeg','https://24h.pchome.com.tw/prod/DQBE6R-A900GLT0M',699,'2024-04-07'),(36,'羅技 G502 LIGHTSPEED 高效能無線電競滑鼠',4990,'https://img.pchome.com.tw/cs/items/DCAN8MA900A0F46/000007_1627702070.jpg','https://24h.pchome.com.tw/prod/DCAN8M-A900A0F46',2599,'2024-04-07'),(37,'米森 無加糖分離乳清-可可拿鐵 (500gx2罐)',1750,'https://img.pchome.com.tw/cs/items/DBBZ3N1900GDATL/000007_1701150043.jpg','https://24h.pchome.com.tw/prod/DBBZ3N-1900GDATL',1380,'2024-04-07'),(38,'三陽 JET SL+ 158 ABS+TCS',109800,'https://img.pchome.com.tw/cs/items/DXBK27A900H4FCZ/000007_1706593056.jpg','https://24h.pchome.com.tw/store/DXBK27',109800,'2024-04-07'),(39,'舒潔 棉柔抽取衛生紙100抽x72包',1679,'https://img.pchome.com.tw/cs/items/DAAG0SA900GZBFC/000007_1701938034.jpg','https://24h.pchome.com.tw/prod/DAAG0S-A900GZBFC',999,'2024-04-07'),(40,'ACER Predator 13代HX電競筆電',41100,'https://img.pchome.com.tw/cs/items/DHAEGA1900HAW6H/000007_1712044169.jpg','https://24h.pchome.com.tw/prod/DHAEGA-1900HAW6H',40400,'2024-04-07'),(41,'CASO 14吋5葉片 遙控擺頭DC變頻風扇',1999,'https://img.pchome.com.tw/cs/items/DMAB31A900HA610/000007_1712130732.jpg','https://24h.pchome.com.tw/prod/DMAB31-A900HA610',999,'2024-04-07'),(42,'Dyson Zone 空氣清淨降噪耳機',28900,'https://img.pchome.com.tw/cs/items/DMBF0BA900H1A7H/000002_1703424617.jpg','https://24h.pchome.com.tw/prod/DMBF0B-A900H1A7H',9999,'2024-04-07'),(43,'TP-Link Tapo D230S1 AI智慧無線視訊門鈴',5999,'https://img.pchome.com.tw/cs/items/DRAN3BA900GE982/000007_1699585180.jpg','https://24h.pchome.com.tw/prod/DRAN3B-A900GE982',3299,'2024-04-07'),(44,'Kobo Sage 電子書閱讀器',8599,'https://img.pchome.com.tw/cs/items/DJBO06A900BV75S/000007_1707293741.jpg','https://24h.pchome.com.tw/prod/DJBO06-A900BV75S',8399,'2024-04-07'),(45,'J-bedtime 吸濕排汗舖棉四季涼被',1380,'https://cs-f.ecimg.tw/cms/creatives/onsale/e2071577-a01c-4fc1-b9a4-9567ad0ffb2a.jpeg','https://24h.pchome.com.tw/prod/DEEN06-A900GF967',490,'2024-04-07'),(46,'黴問題 除黴慕斯2入組',1699,'https://img.pchome.com.tw/cs/items/DAAZAAA900FAYMJ/000007_1710987202.jpg','https://24h.pchome.com.tw/prod/DAAZAA-A900FAYMJ',599,'2024-04-07'),(47,'國際牌 4-5坪變頻分離式空調',30900,'https://img.pchome.com.tw/cs/items/DPAFCP1900G4ID3/000007_1678443620.jpg','https://24h.pchome.com.tw/prod/DPAFCP-1900G4ID3',27000,'2024-04-07'),(48,'櫻桃爺爺 蔥花原味牛軋餅禮盒(20入)',309,'https://img.pchome.com.tw/cs/items/DBARFNA900HB4AI/000007_1710399355.jpg','https://24h.pchome.com.tw/store/DBARFN',259,'2024-04-07'),(49,'ASUS  16吋效能筆電',23999,'https://img.pchome.com.tw/cs/items/DHAFOB1900GZGQB/000007_1702462073.jpg','https://24h.pchome.com.tw/prod/DHAFOB-1900GZGQB',20900,'2024-04-07'),(50,'DJI OSMO ACTION 4全能套裝+配件大禮包',23318,'https://img.pchome.com.tw/cs/items/DGCS3J1900H31U2/000007_1705565402.jpg','https://24h.pchome.com.tw/prod/DGCS3J-1900H31U2',19880,'2024-04-07'),(51,'惠而浦 250公升變頻雙門冰箱',21300,'https://img.pchome.com.tw/cs/items/DPAC4QA900H9U2B/000007_1709274890.jpg','https://24h.pchome.com.tw/prod/DPAC4Q-A900H9U2B',13900,'2024-04-07'),(52,'MAKITA 牧田 18V鋰電充電電池',6000,'https://cs-f.ecimg.tw/cms/creatives/onsale/36c7d510-5e41-4ec0-acee-ff26bb12a993.jpeg','https://24h.pchome.com.tw/prod/DECA05-A900FTWBE',3599,'2024-04-07'),(53,'SK-II 青春露330ml',8990,'https://img.pchome.com.tw/cs/items/DDAD2OA900GAXK3/000007_1705971069.jpg','https://24h.pchome.com.tw/prod/DDAD2O-A900GAXK3',4880,'2024-04-07'),(54,'克潮靈 集水袋補充包x36入',948,'https://img.pchome.com.tw/cs/items/DABE2BA900GHB20/000007_1689646139.jpg','https://24h.pchome.com.tw/prod/DABE2B-A900GHB20',639,'2024-04-07'),(55,'HyperX CloudX Flight 無線電競耳機',3990,'https://img.pchome.com.tw/cs/items/DCAYUTA900GPDN0/000007_1696327577.jpg','https://24h.pchome.com.tw/prod/DCAYUT-A900GPDN0',1890,'2024-04-07'),(56,'金車礦沛氣泡水585ml(24罐X3箱)',1543,'https://img.pchome.com.tw/cs/items/DBAG4T1900BVO6Y/000007_1708391285.jpg','https://24h.pchome.com.tw/prod/DBAG4T-1900BVO6Y',864,'2024-04-07'),(57,'樂歌 智慧記憶電動升降桌',14999,'https://cs-f.ecimg.tw/cms/creatives/onsale/a9c8e79c-b81f-4acf-87cb-9e59451d0a5b.jpeg','https://24h.pchome.com.tw/prod/DEDD8V-A900FIHNG',10999,'2024-04-07'),(58,'【PP 波瑟楓妮】石墨烯塑崩褲氣動版2件組',4980,'https://img.pchome.com.tw/cs/items/DICIC5A900GB7F1/000007_1683702654.jpg','https://24h.pchome.com.tw/store/DICIC5',4083,'2024-04-07'),(59,'完膳營養素-無糖不甜(250mlx24入)x2',3500,'https://img.pchome.com.tw/cs/items/DBBA0Y1900APZIY/000007_1669016708.jpg','https://24h.pchome.com.tw/store/DBBW0A',2780,'2024-04-07'),(60,'【Philo 飛樂】多功能智能打氣機 TP20',1980,'https://img.pchome.com.tw/cs/items/DEBB8WA900GGJNN/000007_1688614463.jpg','https://24h.pchome.com.tw/prod/DEBB8W-A900GGJNN',990,'2024-04-07'),(61,'Oral-B 3D智能藍芽電動牙刷 Smart4000',7999,'https://img.pchome.com.tw/cs/items/DMBA0KA9008VPEY/000007_1623328152.jpg','https://24h.pchome.com.tw/store/DMBA0K',2290,'2024-04-07'),(62,'Dyson HD15 吹風機 黑鋼色',14600,'https://img.pchome.com.tw/cs/items/DMBP01A900GHY1V/000007_1689648878.jpg','https://24h.pchome.com.tw/prod/DMBP01-A900GHY1V',11900,'2024-04-07'),(63,'創見 2TB 25H3 2.5吋軍規防震硬碟',2599,'https://img.pchome.com.tw/cs/items/DSABKOA900A4GHG/000007_1615975571.jpg','https://24h.pchome.com.tw/prod/DSABKO-A900A4GHG',2499,'2024-04-07'),(64,'日落恩賜 葉黃素+山桑子軟膠囊(60粒x4瓶)',4400,'https://img.pchome.com.tw/cs/items/DBAZ091900AQZ1I/000007_1709781440.jpg','https://24h.pchome.com.tw/store/DBAZ09',1299,'2024-04-07'),(65,'【好氣氛家居】舒適生活透氣網布電腦椅',1075,'https://cs-f.ecimg.tw/cms/creatives/onsale/eb8f9a2d-4a28-45e7-a339-6b0bf06eaa19.jpeg','https://24h.pchome.com.tw/prod/DQBJ1Z-A900H5T5X',860,'2024-04-07'),(66,'chicco Trolleyme城市旅人秒收手推車',6500,'https://img.pchome.com.tw/cs/items/DWAE3LA900GI3DO/000007_1693900511.jpg','https://24h.pchome.com.tw/prod/DWAE3L-A900GI3DO',3890,'2024-04-07'),(67,'犀牛盾機能快扣背帶手機掛繩組合',1330,'https://img.pchome.com.tw/cs/items/DYARNUA900G59YY/000007_1700194156.jpg','https://24h.pchome.com.tw/store/DYBL00',1170,'2024-04-07'),(68,'OPPO A98 5G (8G+256G)夢幻藍',11990,'https://cs-f.ecimg.tw/cms/creatives/onsale/18b01795-4205-4aeb-84da-5d0275ab89c4.jpeg','https://24h.pchome.com.tw/store/DYAV3A',7690,'2024-04-07'),(69,'Nikon Z30 16-50+50-250mm 雙鏡組 公司貨',35900,'https://img.pchome.com.tw/cs/items/DGCB78A900FBAK4/000007_1658372154.jpg','https://24h.pchome.com.tw/store/DGCB78',31800,'2024-04-07'),(70,'倍潔雅 純萃抽取衛生紙(150抽x80包)',869,'https://img.pchome.com.tw/cs/items/DABL02A900AW4JZ/000007_1698028274.jpg','https://24h.pchome.com.tw/prod/DABL02-A900AW4JZ',869,'2024-04-07'),(71,'雅詩蘭黛 小棕亮眼霜加倍組',5800,'https://img.pchome.com.tw/cs/items/DDAD2P1900GZDYF/000007_1702001250.jpg','https://24h.pchome.com.tw/prod/DDAD2P-1900GZDYF',1999,'2024-04-07'),(72,'UCC 職人珈琲-金質炭燒咖啡豆400gx4包',1676,'https://img.pchome.com.tw/cs/items/DBATC01900G5TTK/000007_1706878184.jpg','https://24h.pchome.com.tw/store/DBATC0',679,'2024-04-07'),(73,'HP 三合一連續供墨複合機',4990,'https://img.pchome.com.tw/cs/items/DCAEEKA900GBM4D/000007_1698774813.jpg','https://24h.pchome.com.tw/prod/DCAEEK-A900GBM4D',4790,'2024-04-07'),(74,'聯想 i5 W11專業版電腦',19900,'https://img.pchome.com.tw/cs/items/DSAM1I1900HBIS3/000007_1710837584.jpg','https://24h.pchome.com.tw/prod/DSAM1I-1900HBIS3',17990,'2024-04-07'),(75,'ASTONE GTR N21碳纖維全罩式安全帽',6300,'https://img.pchome.com.tw/cs/items/DEAV9BA900H98KR/000007_1708654799.jpg','https://24h.pchome.com.tw/store/DEAV9B',3300,'2024-04-07'),(76,'勝算-限量劉潤印簽金句筆記本',450,'https://img.pchome.com.tw/cs/items/DJAD3JA900H3KWU/000007_1707125174.jpg','https://24h.pchome.com.tw/prod/DJAD3J-A900H3KWU',313,'2024-04-07'),(77,'Kobo Sage 電子書閱讀器',8599,'https://img.pchome.com.tw/cs/items/DJBO06A900BV75S/000007_1707293741.jpg','https://24h.pchome.com.tw/prod/DJBO06-A900BV75S',8399,'2024-04-07'),(78,'SABA 3.6L即熱式濾淨開飲機',5490,'https://img.pchome.com.tw/cs/items/DMAWHT1900H8TIS/000007_1708483330.jpg','https://24h.pchome.com.tw/prod/DMAWHT-1900H8TIS',2990,'2024-04-07'),(79,'【Discovery Adventures】都會旅行後背包-黑',3680,'https://img.pchome.com.tw/cs/items/DIBMZMA900AHNWM/000007_1690853222.jpg','https://24h.pchome.com.tw/store/DIBMYG',500,'2024-04-07'),(80,'義大利Giaretti 微電腦全自動製冰機',5980,'https://img.pchome.com.tw/cs/items/DMAY4V1900H9CFM/000007_1709535302.jpg','https://24h.pchome.com.tw/prod/DMAY4V-1900H9CFM',2699,'2024-04-07'),(81,'Osner 多動向3段速充電式除毛球機-海洋藍',1680,'https://img.pchome.com.tw/cs/items/DMAL4JA900HAVN5/000007_1710396659.jpg','https://24h.pchome.com.tw/prod/DMAL4J-A900HAVN5',699,'2024-04-07'),(82,'國際牌 32公升微電腦變頻微波爐NN-ST65J',5790,'https://img.pchome.com.tw/cs/items/DMBJ7PA900H9PEQ/000007_1709197565.jpg','https://24h.pchome.com.tw/prod/DMBJ7P-A900H9PEQ',4399,'2024-04-07'),(83,'羅技MX Mechanical 鍵盤',4990,'https://img.pchome.com.tw/cs/items/DSAR0VA900F7PHH/000007_1671526819.jpg','https://24h.pchome.com.tw/prod/DSAR0V-A900F7PHH',4690,'2024-04-07'),(84,'美津濃 慢跑鞋',1680,'https://cs-f.ecimg.tw/cms/creatives/onsale/f9c35807-1488-4c57-9c13-e9e9041a585c.jpeg','https://24h.pchome.com.tw/store/DXAXFL',990,'2024-04-07'),(85,'大研生醫 動易動膠原蛋白UCII(30粒x4盒)',11992,'https://img.pchome.com.tw/cs/items/DBBA4Y1900BK03K/000007_1626016120.jpg','https://24h.pchome.com.tw/store/DBDF00',5950,'2024-04-07'),(86,'寶拉珍選 2%水楊酸精華液118ml 2入組',2360,'https://img.pchome.com.tw/cs/items/DDDE031900GYG87/000007_1701248242.jpg','https://24h.pchome.com.tw/store/DDDE03',1770,'2024-04-07'),(87,'BenQ EX2710Q 27型 2K電競螢幕',7988,'https://img.pchome.com.tw/cs/items/DSABF3A900H4AX0/000007_1706520758.jpg','https://24h.pchome.com.tw/prod/DSABF3-A900H4AX0',6988,'2024-04-07'),(88,'石頭 S8 MaxV Ultra AI旗艦掃拖機皇',66999,'https://img.pchome.com.tw/cs/items/DMBL1CA900HB7EG/000007_1710470738.jpg','https://24h.pchome.com.tw/prod/DMBL1C-A900HB7EG',36888,'2024-04-07'),(89,'MUJI 無印良品 空氣循環風扇',3190,'https://cs-f.ecimg.tw/cms/creatives/onsale/2400b683-7933-4dd2-9497-47e45c49a172.jpeg','https://24h.pchome.com.tw/prod/DEDK40-A900B4P7V',2711,'2024-04-07'),(90,'MAKITA 牧田 18V鋰電充電電池 6.0Ah',6000,'https://img.pchome.com.tw/cs/items/DECA05A900FTWBE/000007_1670565950.jpg','https://24h.pchome.com.tw/prod/DECA05-A900FTWBE',3599,'2024-04-07'),(91,'有錢人的書櫃總有一本心理學書',380,'https://img.pchome.com.tw/cs/items/DJAD3JA900H9K5A/000007_1709030132.jpg','https://24h.pchome.com.tw/prod/DJAD3J-A900H9K5A',264,'2024-04-07'),(92,'WOAWOA 足弓減壓鞋墊',618,'https://img.pchome.com.tw/cs/items/DICGFDA900EY9EQ/000007_1707218290.jpg','https://24h.pchome.com.tw/store/DICN34',599,'2024-04-07'),(93,'添寧 復健敢動褲M/L-XL',1800,'https://img.pchome.com.tw/cs/items/DAAU0PA900GC6BS/000007_1684310945.jpg','https://24h.pchome.com.tw/prod/DAAU0P-A900GC6BS',1199,'2024-04-07'),(94,'LG gram 15.6吋輕薄文書筆電',32900,'https://img.pchome.com.tw/cs/items/DHAM3WA900HB9QK/000007_1710497744.jpg','https://24h.pchome.com.tw/prod/DHAM3W-A900HB9QK',24700,'2024-04-07'),(95,'SHARP AQUOS sense8 5G (8G/256G)',14990,'https://img.pchome.com.tw/cs/items/DYAW3NA900GXELT/000007_1700212617.jpg','https://24h.pchome.com.tw/store/DYAW9P',13480,'2024-04-07'),(96,'三體系列(Kobo電子書)',803,'https://img.pchome.com.tw/cs/items/DJBQ0HD900G6RHU/000007_1711620979.jpg','https://24h.pchome.com.tw/prod/DJBQ0H-D900G6RHU',602,'2024-04-07'),(97,'Dynalink Google TV 智慧4K電視盒',2299,'https://img.pchome.com.tw/cs/items/DMAAA0A900H4AN9/000007_1706519081.jpg','https://24h.pchome.com.tw/prod/DMAAA0-A900H4AN9',1549,'2024-04-07'),(98,'iPhone 15 Pro 256G',40400,'https://cs-f.ecimg.tw/cms/creatives/onsale/18d385c8-0297-4cfa-b3b5-bc634cb39e72.jpeg','https://24h.pchome.com.tw/store/DYAJ2U',38099,'2024-04-07'),(99,'樂米穀場月光之星1.5kg/6包',1554,'https://img.pchome.com.tw/cs/items/DBBY0K1900G2T3I/000007_1683169242.jpg','https://24h.pchome.com.tw/store/DBBY7L',799,'2024-04-07'),(100,'Jabra Elite 4真無線降噪藍牙耳機',3990,'https://img.pchome.com.tw/cs/items/DYBF02A900HAZ0R/000007_1710301858.jpg','https://24h.pchome.com.tw/store/DYAQAR',2699,'2024-04-07');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `discount` int NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,'水里新地標飯店！住白色城堡眺南投絕美山景、嗑沖繩飯糰，雙人房免1800元',6001,6001,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403152256-31889f57.jpg','水里新地標飯店！住白色城堡眺南投絕美山景、嗑沖繩飯糰，雙人房免1800元','2024-04-06 06:30:00.000000'),(2,'「台版雷門」藏百年土地公廟！２公尺高大紅燈籠高高掛，台東全新打卡點＋１',7760,7760,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327174201-f3f72794.jpg','「台版雷門」藏百年土地公廟！２公尺高大紅燈籠高高掛，台東全新打卡點＋１','2024-04-06 06:30:00.000000'),(3,'【獨家】連抽５大旅宿住宿券！《食尚玩家》APP超狂好康，再送4000元鍋物券',2831,2831,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403120637-e8dc40e6.jpg','【獨家】連抽５大旅宿住宿券！《食尚玩家》APP超狂好康，再送4000元鍋物券','2024-04-03 14:00:00.000000'),(4,'亞洲住宿CP值榜單出爐！台灣這裡最便宜，日本「隱藏版賞櫻城市」每晚２千多',1220,1220,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403133241-c7902267.jpg','亞洲住宿CP值榜單出爐！台灣這裡最便宜，日本「隱藏版賞櫻城市」每晚２千多','2024-04-03 13:26:00.000000'),(5,'奇美《從拉斐爾到梵谷》保證有票！10家「住宿加門票」優惠，搭高鐵省1620元',9704,9704,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403121357-834cd7c5.jpg','奇美《從拉斐爾到梵谷》保證有票！10家「住宿加門票」優惠，搭高鐵省1620元','2024-04-03 11:56:00.000000'),(6,'下午茶買一送一！台南「飛天小女警飯店」募集紅球照，還要送一卡通、玩偶',1911,1911,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402150822-54c2cbdb.jpg','下午茶買一送一！台南「飛天小女警飯店」募集紅球照，還要送一卡通、玩偶','2024-04-02 15:14:00.000000'),(7,'一泊二食加採果免1500元！宜蘭捷絲旅推懶人春遊優惠，還有黃色小鴨湯泡到飽',5975,5975,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402135709-c91c8c5f.jpg','一泊二食加採果免1500元！宜蘭捷絲旅推懶人春遊優惠，還有黃色小鴨湯泡到飽','2024-04-02 13:44:00.000000'),(8,'熊大、兔兔快閃環球！打卡６大夢幻場景、集章免費拿禮品，再轉300種新扭蛋',8789,8789,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402123950-1f38aba6.jpg','熊大、兔兔快閃環球！打卡６大夢幻場景、集章免費拿禮品，再轉300種新扭蛋','2024-04-02 13:40:00.000000'),(9,'全台最大咖啡市集「這２天」在高雄！240家台日泰世界冠軍咖啡、風格美食逛爆',5180,5180,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402132815-9572b687.jpg','全台最大咖啡市集「這２天」在高雄！240家台日泰世界冠軍咖啡、風格美食逛爆','2024-04-02 11:00:00.000000'),(10,'【獨家】一泊三食吃翻！桃園親子飯店優惠省爆，還可玩高爾夫、小孩免費入住',1194,1194,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401213716-90a25b23.jpg','【獨家】一泊三食吃翻！桃園親子飯店優惠省爆，還可玩高爾夫、小孩免費入住','2024-04-02 11:00:00.000000'),(11,'12歲以下免門票！全台最強「國家森林遊樂區」TOP15，負離子、芬多精免費吸爆',6399,6399,'https://cc.tvbs.com.tw/img/program/upload/2023/07/06/20230706122316-f33f2e95.jpg','12歲以下免門票！全台最強「國家森林遊樂區」TOP15，負離子、芬多精免費吸爆','2024-04-01 16:00:00.000000'),(12,'真的怕你餓！高雄超狂飯店「一泊三食」加無限冰淇淋，包吃包住每人千元有找',1922,1922,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401131456-390ac639.jpg','真的怕你餓！高雄超狂飯店「一泊三食」加無限冰淇淋，包吃包住每人千元有找','2024-04-01 13:13:00.000000'),(13,'「台灣龍珠」基隆嶼限時開放中！報名方式、行程費用、必遊景點１篇全看懂',5562,5562,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401131032-8e6b7e92.jpg','「台灣龍珠」基隆嶼限時開放中！報名方式、行程費用、必遊景點１篇全看懂','2024-04-01 12:00:00.000000'),(14,'快Tag你的禿頭朋友！日本超有哽３大「體驗旅行」：信念生髮之旅、娃娃幫你玩',7643,7643,'https://cc.tvbs.com.tw/img/program/upload/2024/03/19/20240319174616-9b41e259.jpg','快Tag你的禿頭朋友！日本超有哽３大「體驗旅行」：信念生髮之旅、娃娃幫你玩','2024-03-31 06:30:00.000000'),(15,'試營運就暴紅！全新「台版小瑞士」祕境藏在這，先搶靠窗沙發區賞絕美山景',3140,3140,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329172051-415cc7f9.jpg','試營運就暴紅！全新「台版小瑞士」祕境藏在這，先搶靠窗沙發區賞絕美山景','2024-03-30 06:30:00.000000'),(16,'低調到超容易錯過！日月潭「清水模民宿」藏超美浴池，窗景旁泡湯秒飛京都',7895,7895,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328154940-ef64db17.jpg','低調到超容易錯過！日月潭「清水模民宿」藏超美浴池，窗景旁泡湯秒飛京都','2024-03-30 06:30:00.000000'),(17,'免費拍爆「台北室內小森林」！典藏逾500種花草、多肉盆栽，還有超萌山丘駱駝',9663,9663,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329151656-b4229147.jpg','免費拍爆「台北室內小森林」！典藏逾500種花草、多肉盆栽，還有超萌山丘駱駝','2024-03-29 15:00:00.000000'),(18,'嘉義新飯店4/1開！33層高「福容voco」設施、房價曝，館內還有天空步道',7408,7408,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325101754-41b43ce1.jpg','嘉義新飯店4/1開！33層高「福容voco」設施、房價曝，館內還有天空步道','2024-03-29 12:00:00.000000'),(19,'「台版星空圖書館」在這！７層樓ㄇ字形書牆超壯觀，搶拍清水模建築湖面倒影',3204,3204,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329115446-5e696ff1.jpg','「台版星空圖書館」在這！７層樓ㄇ字形書牆超壯觀，搶拍清水模建築湖面倒影','2024-03-29 11:00:00.000000'),(20,'巨大紅球「這天」現身台南！展出日期、10大地點曝，14年再訪台民眾好期待',2930,2930,'https://cc.tvbs.com.tw/img/program/upload/2024/03/03/20240303161418-55bb5ad4.jpg','巨大紅球「這天」現身台南！展出日期、10大地點曝，14年再訪台民眾好期待','2024-03-28 15:00:00.000000'),(21,'100元入園加吃冰！「全台最美冰店」門票調降還可折消費，加碼體驗夜間導覽',3451,3451,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328141018-33bdb95e.jpg','100元入園加吃冰！「全台最美冰店」門票調降還可折消費，加碼體驗夜間導覽','2024-03-28 13:10:00.000000'),(22,'衝台南住每晚免800元！一甲子老宅睡１晚，獨享明亮和室、花園陽台',2610,2610,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328113525-89f0855a.jpg','衝台南住每晚免800元！一甲子老宅睡１晚，獨享明亮和室、花園陽台','2024-03-28 11:00:00.000000'),(23,'台南熱氣球嘉年華「這２天」登場！賞喔熊氣球、限定光雕秀，加碼逛週末市集',7830,7830,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327155440-8ab4fe7b.jpg','台南熱氣球嘉年華「這２天」登場！賞喔熊氣球、限定光雕秀，加碼逛週末市集','2024-03-27 16:00:00.000000'),(24,'史努比陪你搭機！星宇航空「SNOOPY航班」這天起開飛，逾30款備品好想擁有',6722,6722,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327134728-bf2a2d41.jpg','史努比陪你搭機！星宇航空「SNOOPY航班」這天起開飛，逾30款備品好想擁有','2024-03-27 13:48:00.000000'),(25,'０元免費拍！高雄神祕「花旗木園區」快閃開放，「這角度」拍出偽富士山美照',8829,8829,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327144246-4fd1b427.jpg','０元免費拍！高雄神祕「花旗木園區」快閃開放，「這角度」拍出偽富士山美照','2024-03-27 13:27:00.000000'),(26,'在高空吃米其林台菜！華航聯手美福「米香」端15道飛機餐，這些航線吃得到',8632,8632,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327112539-7b5de33b.jpg','在高空吃米其林台菜！華航聯手美福「米香」端15道飛機餐，這些航線吃得到','2024-03-27 11:30:00.000000'),(27,'體驗全台唯一打小人！嘉義「隱藏版財神廟」４亮點：巨大鈔票牆、聖筊發財金',5505,5505,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327120152-f4196843.jpg','體驗全台唯一打小人！嘉義「隱藏版財神廟」４亮點：巨大鈔票牆、聖筊發財金','2024-03-27 11:00:00.000000'),(28,'日本最萌貓狗展「這天」登台！３大亮點一次看：78件木雕作品、14米擁抱貓貓',2339,2339,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326171600-c29827e6.jpg','日本最萌貓狗展「這天」登台！３大亮點一次看：78件木雕作品、14米擁抱貓貓','2024-03-26 17:00:00.000000'),(29,'山海美景在眼前！入住金瓜石森林民宿放空，還能挑命定香氛、嘗無菜單料理',9459,9459,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326120958-21df561c.jpg','山海美景在眼前！入住金瓜石森林民宿放空，還能挑命定香氛、嘗無菜單料理','2024-03-26 12:07:00.000000'),(30,'全台最南端「露營市集」僅３天！逛爆百家露營、風格美食，還有１日限定煙火',1238,1238,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326125754-df5477c4.jpg','全台最南端「露營市集」僅３天！逛爆百家露營、風格美食，還有１日限定煙火','2024-03-26 11:00:00.000000'),(31,'現領7957元！帛琉祭台灣人專屬福利，4/1起每週「這天」出發送現金',3214,3214,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326101429-d1aa876d.jpg','現領7957元！帛琉祭台灣人專屬福利，4/1起每週「這天」出發送現金','2024-03-26 10:15:00.000000'),(32,'百年日式老宅變全新「山林祕境園區」！３大亮點：森林景觀、米其林蔬食進駐',9025,9025,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326100908-50afd21f.jpg','百年日式老宅變全新「山林祕境園區」！３大亮點：森林景觀、米其林蔬食進駐','2024-03-25 17:00:00.000000'),(33,'宜蘭「頭城夜市」搬家新開幕！每週限１天逛百攤，加碼宜蘭10大夜市營業時間',9534,9534,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325130322-7b71217c.jpg','宜蘭「頭城夜市」搬家新開幕！每週限１天逛百攤，加碼宜蘭10大夜市營業時間','2024-03-25 12:32:00.000000'),(34,'【新開店】「神祕藍色城堡」變夢幻甜點屋！低消100元待整天，美到秒飛歐洲',8585,8585,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325112516-40dce47f.jpg','【新開店】「神祕藍色城堡」變夢幻甜點屋！低消100元待整天，美到秒飛歐洲','2024-03-25 10:00:00.000000'),(35,'【獨家】晚餐Buffet免費！「溪頭福華」再送賞螢祕境導覽、鬆餅，現賺3300元',3595,3595,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325081258-fc6b06b1.jpg','【獨家】晚餐Buffet免費！「溪頭福華」再送賞螢祕境導覽、鬆餅，現賺3300元','2024-03-25 08:13:00.000000'),(36,'30分鐘朝聖３層瀑布！宜蘭「新手級森林步道」近距離賞飛瀑美景、吸爆芬多精',1047,1047,'https://cc.tvbs.com.tw/img/program/upload/2024/03/20/20240320185304-5c46dc97.jpg','30分鐘朝聖３層瀑布！宜蘭「新手級森林步道」近距離賞飛瀑美景、吸爆芬多精','2024-03-24 06:30:00.000000');
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 22:20:08
