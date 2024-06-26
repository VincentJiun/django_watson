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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add my news',7,'add_mynews'),(26,'Can change my news',7,'change_mynews'),(27,'Can delete my news',7,'delete_mynews'),(28,'Can view my news',7,'view_mynews'),(29,'Can add my travel',8,'add_mytravel'),(30,'Can change my travel',8,'change_mytravel'),(31,'Can delete my travel',8,'delete_mytravel'),(32,'Can view my travel',8,'view_mytravel'),(33,'Can add goods',9,'add_goods'),(34,'Can change goods',9,'change_goods'),(35,'Can delete goods',9,'delete_goods'),(36,'Can view goods',9,'view_goods'),(37,'Can add message',10,'add_message'),(38,'Can change message',10,'change_message'),(39,'Can delete message',10,'delete_message'),(40,'Can view message',10,'view_message'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add cart',13,'add_cart'),(50,'Can change cart',13,'change_cart'),(51,'Can delete cart',13,'delete_cart'),(52,'Can view cart',13,'view_cart');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$PE8bEwgTtcRhhuI99iM9KP$WNSoSkQefyH01UI7Llg0w/bgliXGx9TSIxqnQUdjJc0=','2024-04-09 14:31:55.481578',1,'vincent','','','vincent7955168@gmail.com',1,1,'2024-04-03 06:30:41.625165');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_order`
--

LOCK TABLES `cart_order` WRITE;
/*!40000 ALTER TABLE `cart_order` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'test','M','1990-05-08','test@gmail.com','123456789','test add','a03ab19b866fc585b5cb1812a2f63ca861e7e7643ee5d43fd7106b623725fd67','2024-04-07'),(2,'test1','M','1990-05-08','test1@gmail.com','9999999','test address','a03ab19b866fc585b5cb1812a2f63ca861e7e7643ee5d43fd7106b623725fd67','2024-04-07'),(3,'steve','M','1990-05-08','steve@gmail.com','987456321','123asd','f2e96c124da183c4e1d58c440f0b079b8d6d5b8b2fd39546a824c76502acc7d5','2024-04-07');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'cart','cart'),(12,'cart','order'),(10,'contact','message'),(5,'contenttypes','contenttype'),(11,'member','member'),(7,'news','mynews'),(9,'product','goods'),(6,'sessions','session'),(8,'travel','mytravel');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-03 06:07:29.479336'),(2,'auth','0001_initial','2024-04-03 06:07:29.926536'),(3,'admin','0001_initial','2024-04-03 06:07:30.032823'),(4,'admin','0002_logentry_remove_auto_add','2024-04-03 06:07:30.039804'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-03 06:07:30.049780'),(6,'contenttypes','0002_remove_content_type_name','2024-04-03 06:07:30.127006'),(7,'auth','0002_alter_permission_name_max_length','2024-04-03 06:07:30.203832'),(8,'auth','0003_alter_user_email_max_length','2024-04-03 06:07:30.265649'),(9,'auth','0004_alter_user_username_opts','2024-04-03 06:07:30.273620'),(10,'auth','0005_alter_user_last_login_null','2024-04-03 06:07:30.326513'),(11,'auth','0006_require_contenttypes_0002','2024-04-03 06:07:30.328530'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-03 06:07:30.337453'),(13,'auth','0008_alter_user_username_max_length','2024-04-03 06:07:30.399322'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-03 06:07:30.457134'),(15,'auth','0010_alter_group_name_max_length','2024-04-03 06:07:30.511990'),(16,'auth','0011_update_proxy_permissions','2024-04-03 06:07:30.520999'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-03 06:07:30.580807'),(18,'sessions','0001_initial','2024-04-03 06:07:30.616712'),(19,'news','0001_initial','2024-04-03 06:47:07.089640'),(20,'travel','0001_initial','2024-04-03 09:02:22.266545'),(21,'product','0001_initial','2024-04-06 07:26:45.873602'),(22,'product','0002_alter_goods_discount','2024-04-07 08:35:16.707675'),(23,'contact','0001_initial','2024-04-07 13:23:24.997404'),(24,'member','0001_initial','2024-04-07 14:50:55.387255'),(25,'cart','0001_initial','2024-04-09 14:30:25.278533');
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
INSERT INTO `django_session` VALUES ('bspqko45zw8qw5aps8oj43unzmhpmk8d','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrwWZ:gb7mhATcyoPLYa8TOqTcUnASRvyxy-7BAAOb1B_esFY','2024-04-17 09:03:15.044069'),('fvqlz6kw6hvqvwbxo419itrb7avs2879','e30:1rtq9V:y3Wd-bP0KeGPu1dJjsTgl6TGQU8HqwOFP9TEefkhckI','2024-04-08 15:09:17.508685'),('i44xn1fs963qo9rl9yb62pkod5bi93iv','eyJtZW1NYWlsIjoidGVzdDFAZ21haWwuY29tIiwiaXNBbGl2ZSI6dHJ1ZX0:1ruBxT:X_FGCBDxhPBkslzmUxxl_ZnorOvyN4CepgbxY82Qfiw','2024-04-09 14:26:19.780492'),('ibb3ilw0k9juh7bjl63a5poe4ltr76b3','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrvVK:I_o7fOzBsNk4pkMOaryHY7AjsEz9g1KscWVqywe_F6I','2024-04-17 07:57:54.447388'),('qtfxp60j58b77ddf024gwavhxz01a3f3','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1ruCVv:jH7NtdWTb18qgrF3l93JWv0SJkQP0Q0ASwznSHeNdyw','2024-04-09 15:01:55.484278'),('s3ptkfn2gub262iitr3i1nhqc4z80ut6','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rruAf:ebPak9h3bI9PLhTm2FlMjz-wsQ9VSrqR8FuxCM_dWrg','2024-04-17 06:32:29.513930'),('thu54lphjpvt90eotj8g8027v0cs2oe4','eyJjYXJ0bGlzdCI6W119:1ruw3g:Fcb-74OH3ELBGsNrzluJce2HNbJuUieiH21k8EgQpe4','2024-04-11 15:39:48.753649');
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
INSERT INTO `news` VALUES (1,'?梯憭批???怨?銋恥?憭批控撏拚??潛?ｇ?隞亦銝??急','?梯蝮??瘚瑚??拍?瘞?.2憭批???賣????游之嚗??銋頠??唳瘞嚗◤蝒??嗡????????????澆控?之撅勗援嚗??啗?瘚瘀???隞亦????乩??r\n\r\n??璆菟??揪憪?摰Ｚ牧嚗???鋡怎?鞊∠策??嚗銝?閬箏?銝?撖佗?銝?憭拙援?啗?嚗????臬云撟單?嚗?璈??瘚瑕霅血銝?輯絲嚗頠?雿??獐?賭??賢?雿r\n\r\n隞牧嚗撌梁?銝?拙??啣???暺?3?云擳舫??唳?交嚗?銝?撠梁??嚗?梯蝒?死頠澈????嚗???潛銝剖亢撅梯??韏瑕之??憛蛛??刻粥撅勗援鋆?雿??仿??臬?r\n\r\n?游???圈?霅血?輯絲嚗??仿??潛?憭批??嚗銝?嗾蝘?霅血?嚗?舀絲?航郎?梧?隞?蝺?蝒?云撟單?嚗????頠◤瘚瑕?嚗銝?憒?亦??敶梁?撖虫?瞍r\n\r\n?圈??潛?敺??圈?桀??梁?撠???璅寞??啣?勗?擏葉嚗正蝺???頠蝥敺抵?擏?頝函????啣?頠?銵??喃??萸??????擏?唳???剔??????擏摰??餈渡?甇?虜銵???,'https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2024/04/03/realtime/29357278.jpg&x=0&y=0&sw=0&sh=0&sl=W&fw=800&exp=3600&w=930&nt=1','2024-04-03 07:58:38.255829'),(2,'隞雿?甇鳴? 撖嗆?撱葦??蝐喲?蝡?鈭?擃之???','?啣?撣縑蝢拙??A13?窄?摰扎???拐葉瘥?隞塚??啣?撣摨?嚗?嚗霅祕?典?撣急??具??瑯?輸??箇掖?菔??豢?蝝??舀瑼Ｘ?3??4?伐?瘜擃之?釭?葉瘥?9?亙停?啗府擗輒?券?嚗隞暻潮?鈭?憭拚??賢撱葦?撽??撱葦??銝剜?嚗??臭葉瘥?隞嗥??澆?嚗?撣怠?擗輒皜??曉嚗?摨行移?唳??氬r\n\r\n\r\n銝剖控?怠飛憭批飛?身?恍瘜蝘蜓隞駁?憭扳?銵函內嚗窄?摰?9?亙停??摰Ｖ葉瘥?24?交瑼Ｗ?撣急??其誑?憓炎擃??撽蝐喲?瘥?嚗隞亦Ⅱ摰府銝剜?獢停?舐掖?菔??貉?蝳?銝情???凋噸?靽∠儔??A13?窄?摰扎?摨?閬皞?府?1?憓炎擃?瞈漲?擃??擃?撠望??亥?皞?r\n\r\n雿??澆?撣怠5?亙??⊥炎??頝∟情隞??粹?批???憒????瘥???憭拇?銝剜?嚗云銝?降嚗?憭拇?瘣?銋云銝?????摨西釭?鈭辣?敺???湛????瑞??剜情????憌?皜????閫詨?r\n\r\n擃之?撥??誨?剖?撣急?鈭箇嚗?賣隞?撱葦?寡矽蝧????撱葦銝?嚗??曉閫?迤?剖?撣思?????靘蝙?具r\n\r\n銝?銋??粹蝐喲?瘙⊥?????賭??舐窒隞?嚗???賣隤踹???????犖憌瞈漲擃??香鈭∴??犖??頛凝嚗?憒???隞??葫嚗府鈭辣??釣???臬?銝?寥???脣隤踹???航???嗡?瘚撣嚗???Ｙ??剁???脫迫??鈭箄炊憌葉瘥?,'https://images.chinatimes.com/newsphoto/2024-04-02/1024/20240402002787.jpg','2024-04-03 07:59:18.993363');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
INSERT INTO `product` VALUES (1,'ASUS 14???函???,27900,'https://img.pchome.com.tw/cs/items/DHAFRC1900HBXUW/000007_1712026119.jpg','https://24h.pchome.com.tw/prod/DHAFRC-1900HBXUW',23900,'2024-04-07'),(2,'????憟掖瘞湧摮憸冽?',2190,'https://img.pchome.com.tw/cs/items/DMAH02A900AN6LL/000007_1662106214.jpg','https://24h.pchome.com.tw/prod/DMAH02-A900AN6LL',1637,'2024-04-07'),(3,'SONY ZV-1???⊥?蝯?',23980,'https://img.pchome.com.tw/cs/items/DGADGFA900AOMVS/000007_1654135722.jpg','https://24h.pchome.com.tw/store/DGCM3F',21980,'2024-04-07'),(4,'憟賜???瘛望絲擙剝?瘝?鈭蝯?120憿5)',3900,'https://img.pchome.com.tw/cs/items/DBBC0NA9005COZE/000007_1668063682.jpg','https://24h.pchome.com.tw/store/DBDJ0D',1599,'2024-04-07'),(5,'ARIEL/BOLD 4D鋡?瘣﹝??隞駁4??,2720,'https://img.pchome.com.tw/cs/items/DAAK65A900GKTNK/000007_1694487233.jpg','https://24h.pchome.com.tw/prod/DAAK65-A900GKTNK',849,'2024-04-07'),(6,'?帘?剝? ?寞膜頞??冽雿耨霅琿 100ml',7900,'https://img.pchome.com.tw/cs/items/DDAD2PA900GSKLS/000007_1698827667.jpg','https://24h.pchome.com.tw/prod/DDAD2P-A900GSKLS',2380,'2024-04-07'),(7,'敼琿??桐辣 ??瑕冗',1980,'https://cs-f.ecimg.tw/cms/creatives/onsale/1e96efd1-289f-4910-89c1-98c73edbd73d.jpeg','https://24h.pchome.com.tw/prod/DIBMY5-A900HBNZF',999,'2024-04-07'),(8,'????憌脫?250ml (24?出3蝞?',720,'https://img.pchome.com.tw/cs/items/DBAB9W1900B6WMZ/000007_1711794880.jpg','https://24h.pchome.com.tw/store/DBABH6',507,'2024-04-07'),(9,'GARMIN EPIX Pro ?冽雿???1mm',35990,'https://img.pchome.com.tw/cs/items/DXAO6HA900GE46K/000007_1686038755.jpg','https://24h.pchome.com.tw/store/DXAO6S',33990,'2024-04-07'),(10,'撣 One Touch Hub 14TB 頞之摰寥?蝖祉?',10988,'https://img.pchome.com.tw/cs/items/DRAM2KA900FFF0Y/000007_1661333639.jpg','https://24h.pchome.com.tw/prod/DRAM2K-A900FFF0Y',8499,'2024-04-07'),(11,'MagSafe ???,1290,'https://img.pchome.com.tw/cs/items/DYAJD21900H0M2D/000007_1710918980.jpg','https://24h.pchome.com.tw/prod/DYAJD2-1900H0M2D',990,'2024-04-07'),(12,'銝? S24 Ultra 頠??脫?靽風畾?,1390,'https://img.pchome.com.tw/cs/items/DYAH4HA900H2I2U/000007_1708679423.jpg','https://24h.pchome.com.tw/store/DYAGES',990,'2024-04-07'),(13,'憌瘚血??ED ?典?霅風?潭狗??,2699,'https://img.pchome.com.tw/cs/items/DECN0UA900FSZ95/000007_1669950505.jpg','https://24h.pchome.com.tw/prod/DECN0U-A900FSZ95',2199,'2024-04-07'),(14,'HappyLife 蝒狡?惜?豢?',1288,'https://cs-f.ecimg.tw/cms/creatives/onsale/3f7de5fc-e87e-43b5-b0d4-07e002cf55d5.jpeg','https://24h.pchome.com.tw/prod/DQCBAP-A900H4YQD',999,'2024-04-07'),(15,'CHEFBORN  Air?豢除?脫?函?除?賊?',6980,'https://img.pchome.com.tw/cs/items/DMAGZ81900H938O/000007_1708569094.jpg','https://24h.pchome.com.tw/prod/DMAGZ8-1900H938O',3680,'2024-04-07'),(16,'HAG Capisco Puls 鈭粹?撌亙飛璊?瘝喟',53000,'https://img.pchome.com.tw/cs/items/DCBV0WA900HCFHX/000007_1711608549.jpg','https://24h.pchome.com.tw/prod/DCBV0W-A900HCFHX',39999,'2024-04-07'),(17,'憟瘞?鈭收?瘜交楊蝺餅?摮??,1450,'https://img.pchome.com.tw/cs/items/DDAD8MA900GRO4A/000007_1698308020.jpg','https://24h.pchome.com.tw/prod/DDAD8M-A900GRO4A',759,'2024-04-07'),(18,'NEOFLAM銝?潮???隞嗥?',11650,'https://cs-f.ecimg.tw/cms/creatives/onsale/01c6c983-9ed5-4e28-b9e3-6b97a555439b.jpeg','https://24h.pchome.com.tw/store/DEAW63',3880,'2024-04-07'),(19,'PP ?喳◢?舫?憓???擃風??????,9320,'https://img.pchome.com.tw/cs/items/DAARGSA900H528T/000007_1706868871.jpg','https://24h.pchome.com.tw/store/DAARGS',3288,'2024-04-07'),(20,'?隞Ⅳ?准?蝐唾惇?偌擗?40憿???x4',876,'https://img.pchome.com.tw/cs/items/DBCP3U1900FVRHI/000007_1672363811.jpg','https://24h.pchome.com.tw/store/DBCP4S',788,'2024-04-07'),(21,'TP-Link Archer AX12 WiFi 6 ?∠?頝舐??,1199,'https://img.pchome.com.tw/cs/items/DRAN09A900GCP4U/000007_1684811224.jpg','https://24h.pchome.com.tw/prod/DRAN09-A900GCP4U',1099,'2024-04-07'),(22,'??暺措?∠??詨△瘣璈?H200)',29900,'https://img.pchome.com.tw/cs/items/DMBL45A900H0622/000007_1702610414.jpg','https://24h.pchome.com.tw/prod/DMBL45-A900H0622',6999,'2024-04-07'),(23,'OPPO Reno10 Pro ?換(12+256)',17990,'https://img.pchome.com.tw/cs/items/DYAV331900GYF7F/000007_1702283796.jpg','https://24h.pchome.com.tw/store/DYAV33',11490,'2024-04-07'),(24,'Petkit雿拙? ?刻??質???MAX',24500,'https://img.pchome.com.tw/cs/items/DEAKN7A900GP95G/000007_1696237249.jpg','https://24h.pchome.com.tw/prod/DEAKN7-A900GP95G',13888,'2024-04-07'),(25,'?tyle????D蝡?擃?鈭粹?撌亙飛璈?餉璊?,4330,'https://cs-f.ecimg.tw/cms/creatives/onsale/a37565e2-ab2c-46bc-9666-6068ae87557e.jpeg','https://24h.pchome.com.tw/prod/DQBJ3B-A900GNUPC',3680,'2024-04-07'),(26,'LE LABO瘛⊿?蝎?0ml',7250,'https://img.pchome.com.tw/cs/items/DDAHN9A900GXWWH/000007_1708418024.jpg','https://24h.pchome.com.tw/prod/DDAHN9-A900GXWWH',4499,'2024-04-07'),(27,'?撌ａ??凝?ㄗ??刻???2gx50??x3??,1140,'https://img.pchome.com.tw/cs/items/DBCO361900HD0L0/000007_1712113031.jpg','https://24h.pchome.com.tw/store/DBCO36',867,'2024-04-07'),(28,'瘜啣控撘瑟除瘜⊥偌 500ml(24??蝞?',499,'https://img.pchome.com.tw/cs/items/DBAG0KA9009ZRQC/000007_1706876303.jpg','https://24h.pchome.com.tw/store/DBAG0K',449,'2024-04-07'),(29,'頛? WULA頞???瘝?璊?,56800,'https://img.pchome.com.tw/cs/items/DMADFEA900FOT85/000007_1670924882.jpg','https://24h.pchome.com.tw/prod/DMADFE-A900FOT85',19999,'2024-04-07'),(30,'HyRead Gaze Mini+ ?梯???,6990,'https://img.pchome.com.tw/cs/items/DCBR0NA900HC541/000007_1711416402.jpg','https://24h.pchome.com.tw/prod/DCBR0N-A900HC541',6190,'2024-04-07'),(31,'?梯?180?砍?摰?餃蝞?,14900,'https://img.pchome.com.tw/cs/items/DPAC0JA900GP8Y7/000007_1696235213.jpg','https://24h.pchome.com.tw/prod/DPAC0J-A900GP8Y7',9999,'2024-04-07'),(32,'?交 KINCHO ?野?脰???150?台3??,1099,'https://img.pchome.com.tw/cs/items/DABE211900B1C0G/000007_1617159563.jpg','https://24h.pchome.com.tw/prod/DABE21-1900B1C0G',1099,'2024-04-07'),(33,'?????楷????霅瑁?璊?,3380,'https://img.pchome.com.tw/cs/items/DAAHAXA900F952V/000007_1656915306.jpg','https://24h.pchome.com.tw/store/DAAHAX',3180,'2024-04-07'),(34,'銝 撟喳銴?隞?,620,'https://img.pchome.com.tw/cs/items/DIBUARA900AC0K2/000007_1707129908.jpg','https://24h.pchome.com.tw/store/DIDI3D',199,'2024-04-07'),(35,'WORX 憡?憯?4V ?圈餈瑚?蝎曉概韏瑕?璈?,1299,'https://cs-f.ecimg.tw/cms/creatives/onsale/e9d18c5e-2cba-42db-9c3e-fb54a3762fba.jpeg','https://24h.pchome.com.tw/prod/DQBE6R-A900GLT0M',699,'2024-04-07'),(36,'蝢? G502 LIGHTSPEED 擃??賜蝺蝡嗆?曌?,4990,'https://img.pchome.com.tw/cs/items/DCAN8MA900A0F46/000007_1627702070.jpg','https://24h.pchome.com.tw/prod/DCAN8M-A900A0F46',2599,'2024-04-07'),(37,'蝐單ㄝ ?∪?蝟??Ｖ像皜??臬?輸 (500gx2蝵?',1750,'https://img.pchome.com.tw/cs/items/DBBZ3N1900GDATL/000007_1701150043.jpg','https://24h.pchome.com.tw/prod/DBBZ3N-1900GDATL',1380,'2024-04-07'),(38,'銝 JET SL+ 158 ABS+TCS',109800,'https://img.pchome.com.tw/cs/items/DXBK27A900H4FCZ/000007_1706593056.jpg','https://24h.pchome.com.tw/store/DXBK27',109800,'2024-04-07'),(39,'?? 璉??賢?銵?蝝?00?綞72??,1679,'https://img.pchome.com.tw/cs/items/DAAG0SA900GZBFC/000007_1701938034.jpg','https://24h.pchome.com.tw/prod/DAAG0S-A900GZBFC',999,'2024-04-07'),(40,'ACER Predator 13隞ΕX?餌奎蝑',41100,'https://img.pchome.com.tw/cs/items/DHAEGA1900HAW6H/000007_1712044169.jpg','https://24h.pchome.com.tw/prod/DHAEGA-1900HAW6H',40400,'2024-04-07'),(41,'CASO 14???? ??粹DC霈憸冽?',1999,'https://img.pchome.com.tw/cs/items/DMAB31A900HA610/000007_1712130732.jpg','https://24h.pchome.com.tw/prod/DMAB31-A900HA610',999,'2024-04-07'),(42,'Dyson Zone 蝛箸除皜楊??單?',28900,'https://img.pchome.com.tw/cs/items/DMBF0BA900H1A7H/000002_1703424617.jpg','https://24h.pchome.com.tw/prod/DMBF0B-A900H1A7H',9999,'2024-04-07'),(43,'TP-Link Tapo D230S1 AI?箸?∠?閬????,5999,'https://img.pchome.com.tw/cs/items/DRAN3BA900GE982/000007_1699585180.jpg','https://24h.pchome.com.tw/prod/DRAN3B-A900GE982',3299,'2024-04-07'),(44,'Kobo Sage ?餃??賊霈??,8599,'https://img.pchome.com.tw/cs/items/DJBO06A900BV75S/000007_1707293741.jpg','https://24h.pchome.com.tw/prod/DJBO06-A900BV75S',8399,'2024-04-07'),(45,'J-bedtime ?豢??????迤瘨潸◤',1380,'https://cs-f.ecimg.tw/cms/creatives/onsale/e2071577-a01c-4fc1-b9a4-9567ad0ffb2a.jpeg','https://24h.pchome.com.tw/prod/DEEN06-A900GF967',490,'2024-04-07'),(46,'暺游?憿??日輕?2?亦?',1699,'https://img.pchome.com.tw/cs/items/DAAZAAA900FAYMJ/000007_1710987202.jpg','https://24h.pchome.com.tw/prod/DAAZAA-A900FAYMJ',599,'2024-04-07'),(47,'????4-5?芾??餃??Ｗ?蝛箄矽',30900,'https://img.pchome.com.tw/cs/items/DPAFCP1900G4ID3/000007_1678443620.jpg','https://24h.pchome.com.tw/prod/DPAFCP-1900G4ID3',27000,'2024-04-07'),(48,'瑹餅??箇 ?亥???擗旨??20??',309,'https://img.pchome.com.tw/cs/items/DBARFNA900HB4AI/000007_1710399355.jpg','https://24h.pchome.com.tw/store/DBARFN',259,'2024-04-07'),(49,'ASUS  16???賜???,23999,'https://img.pchome.com.tw/cs/items/DHAFOB1900GZGQB/000007_1702462073.jpg','https://24h.pchome.com.tw/prod/DHAFOB-1900GZGQB',20900,'2024-04-07'),(50,'DJI OSMO ACTION 4?刻憟?+?辣憭抒旨??,23318,'https://img.pchome.com.tw/cs/items/DGCS3J1900H31U2/000007_1705565402.jpg','https://24h.pchome.com.tw/prod/DGCS3J-1900H31U2',19880,'2024-04-07'),(51,'?策 250?砍?霈???啁拳',21300,'https://img.pchome.com.tw/cs/items/DPAC4QA900H9U2B/000007_1709274890.jpg','https://24h.pchome.com.tw/prod/DPAC4Q-A900H9U2B',13900,'2024-04-07'),(52,'MAKITA ?抒 18V?圈??餅?',6000,'https://cs-f.ecimg.tw/cms/creatives/onsale/36c7d510-5e41-4ec0-acee-ff26bb12a993.jpeg','https://24h.pchome.com.tw/prod/DECA05-A900FTWBE',3599,'2024-04-07'),(53,'SK-II ???30ml',8990,'https://img.pchome.com.tw/cs/items/DDAD2OA900GAXK3/000007_1705971069.jpg','https://24h.pchome.com.tw/prod/DDAD2O-A900GAXK3',4880,'2024-04-07'),(54,'?蔭???偌鋡???x36??,948,'https://img.pchome.com.tw/cs/items/DABE2BA900GHB20/000007_1689646139.jpg','https://24h.pchome.com.tw/prod/DABE2B-A900GHB20',639,'2024-04-07'),(55,'HyperX CloudX Flight ?∠??餌奎?單?',3990,'https://img.pchome.com.tw/cs/items/DCAYUTA900GPDN0/000007_1696327577.jpg','https://24h.pchome.com.tw/prod/DCAYUT-A900GPDN0',1890,'2024-04-07'),(56,'??蝷行?瘞?部瘞?85ml(24蝵3蝞?',1543,'https://img.pchome.com.tw/cs/items/DBAG4T1900BVO6Y/000007_1708391285.jpg','https://24h.pchome.com.tw/prod/DBAG4T-1900BVO6Y',864,'2024-04-07'),(57,'璅? ?箸閮?餃???獢?,14999,'https://cs-f.ecimg.tw/cms/creatives/onsale/a9c8e79c-b81f-4acf-87cb-9e59451d0a5b.jpeg','https://24h.pchome.com.tw/prod/DEDD8V-A900FIHNG',10999,'2024-04-07'),(58,'?P 瘜Ｙ?璆旨?憓函憛援銴脫除??2隞嗥?',4980,'https://img.pchome.com.tw/cs/items/DICIC5A900GB7F1/000007_1683702654.jpg','https://24h.pchome.com.tw/store/DICIC5',4083,'2024-04-07'),(59,'摰??蝝??∠?銝?(250mlx24??x2',3500,'https://img.pchome.com.tw/cs/items/DBBA0Y1900APZIY/000007_1669016708.jpg','https://24h.pchome.com.tw/store/DBBW0A',2780,'2024-04-07'),(60,'?hilo 憌?????箄?除璈?TP20',1980,'https://img.pchome.com.tw/cs/items/DEBB8WA900GGJNN/000007_1688614463.jpg','https://24h.pchome.com.tw/prod/DEBB8W-A900GGJNN',990,'2024-04-07'),(61,'Oral-B 3D?箄??餃?? Smart4000',7999,'https://img.pchome.com.tw/cs/items/DMBA0KA9008VPEY/000007_1623328152.jpg','https://24h.pchome.com.tw/store/DMBA0K',2290,'2024-04-07'),(62,'Dyson HD15 ?寥◢璈?暺??,14600,'https://img.pchome.com.tw/cs/items/DMBP01A900GHY1V/000007_1689648878.jpg','https://24h.pchome.com.tw/prod/DMBP01-A900GHY1V',11900,'2024-04-07'),(63,'?菔? 2TB 25H3 2.5??閬?′蝣?,2599,'https://img.pchome.com.tw/cs/items/DSABKOA900A4GHG/000007_1615975571.jpg','https://24h.pchome.com.tw/prod/DSABKO-A900A4GHG',2499,'2024-04-07'),(64,'?亥?抵? ??蝝?撅望?摮???(60蝎4??',4400,'https://img.pchome.com.tw/cs/items/DBAZ091900AQZ1I/000007_1709781440.jpg','https://24h.pchome.com.tw/store/DBAZ09',1299,'2024-04-07'),(65,'?末瘞??摰嗅????拍?瘣駁除蝬脣??餉璊?,1075,'https://cs-f.ecimg.tw/cms/creatives/onsale/eb8f9a2d-4a28-45e7-a339-6b0bf06eaa19.jpeg','https://24h.pchome.com.tw/prod/DQBJ1Z-A900H5T5X',860,'2024-04-07'),(66,'chicco Trolleyme???犖蝘?頠?,6500,'https://img.pchome.com.tw/cs/items/DWAE3LA900GI3DO/000007_1693900511.jpg','https://24h.pchome.com.tw/prod/DWAE3L-A900GI3DO',3890,'2024-04-07'),(67,'??璈敹急?葆???鼎蝯?',1330,'https://img.pchome.com.tw/cs/items/DYARNUA900G59YY/000007_1700194156.jpg','https://24h.pchome.com.tw/store/DYBL00',1170,'2024-04-07'),(68,'OPPO A98 5G (8G+256G)憭Ｗ劂??,11990,'https://cs-f.ecimg.tw/cms/creatives/onsale/18b01795-4205-4aeb-84da-5d0275ab89c4.jpeg','https://24h.pchome.com.tw/store/DYAV3A',7690,'2024-04-07'),(69,'Nikon Z30 16-50+50-250mm ?蝯??砍鞎?,35900,'https://img.pchome.com.tw/cs/items/DGCB78A900FBAK4/000007_1658372154.jpg','https://24h.pchome.com.tw/store/DGCB78',31800,'2024-04-07'),(70,'????蝝??賢?銵?蝝?150?綞80??',869,'https://img.pchome.com.tw/cs/items/DABL02A900AW4JZ/000007_1698028274.jpg','https://24h.pchome.com.tw/prod/DABL02-A900AW4JZ',869,'2024-04-07'),(71,'?帘?剝? 撠?鈭桃????',5800,'https://img.pchome.com.tw/cs/items/DDAD2P1900GZDYF/000007_1702001250.jpg','https://24h.pchome.com.tw/prod/DDAD2P-1900GZDYF',1999,'2024-04-07'),(72,'UCC ?瑚犖?-?釭?剔??鞊?00gx4??,1676,'https://img.pchome.com.tw/cs/items/DBATC01900G5TTK/000007_1706878184.jpg','https://24h.pchome.com.tw/store/DBATC0',679,'2024-04-07'),(73,'HP 銝?銝???靘◢銴?璈?,4990,'https://img.pchome.com.tw/cs/items/DCAEEKA900GBM4D/000007_1698774813.jpg','https://24h.pchome.com.tw/prod/DCAEEK-A900GBM4D',4790,'2024-04-07'),(74,'?舀 i5 W11撠平???,19900,'https://img.pchome.com.tw/cs/items/DSAM1I1900HBIS3/000007_1710837584.jpg','https://24h.pchome.com.tw/prod/DSAM1I-1900HBIS3',17990,'2024-04-07'),(75,'ASTONE GTR N21蝣喟?蝬剖蝵拙?摰撣?,6300,'https://img.pchome.com.tw/cs/items/DEAV9BA900H98KR/000007_1708654799.jpg','https://24h.pchome.com.tw/store/DEAV9B',3300,'2024-04-07'),(76,'??-???膜?啁偷?蝑???,450,'https://img.pchome.com.tw/cs/items/DJAD3JA900H3KWU/000007_1707125174.jpg','https://24h.pchome.com.tw/prod/DJAD3J-A900H3KWU',313,'2024-04-07'),(77,'Kobo Sage ?餃??賊霈??,8599,'https://img.pchome.com.tw/cs/items/DJBO06A900BV75S/000007_1707293741.jpg','https://24h.pchome.com.tw/prod/DJBO06-A900BV75S',8399,'2024-04-07'),(78,'SABA 3.6L?喟撘蕪瘛券?憌脫?',5490,'https://img.pchome.com.tw/cs/items/DMAWHT1900H8TIS/000007_1708483330.jpg','https://24h.pchome.com.tw/prod/DMAWHT-1900H8TIS',2990,'2024-04-07'),(79,'?iscovery Adventures???銵???-暺?,3680,'https://img.pchome.com.tw/cs/items/DIBMZMA900AHNWM/000007_1690853222.jpg','https://24h.pchome.com.tw/store/DIBMYG',500,'2024-04-07'),(80,'蝢拙之?咒iaretti 敺桅?血?芸?鋆賢璈?,5980,'https://img.pchome.com.tw/cs/items/DMAY4V1900H9CFM/000007_1709535302.jpg','https://24h.pchome.com.tw/prod/DMAY4V-1900H9CFM',2699,'2024-04-07'),(81,'Osner 憭???畾菟??餃??斗???-瘚瑟???,1680,'https://img.pchome.com.tw/cs/items/DMAL4JA900HAVN5/000007_1710396659.jpg','https://24h.pchome.com.tw/prod/DMAL4J-A900HAVN5',699,'2024-04-07'),(82,'????32?砍?敺桅?西??餃凝瘜Ｙ?NN-ST65J',5790,'https://img.pchome.com.tw/cs/items/DMBJ7PA900H9PEQ/000007_1709197565.jpg','https://24h.pchome.com.tw/prod/DMBJ7P-A900H9PEQ',4399,'2024-04-07'),(83,'蝢?MX Mechanical ?萇',4990,'https://img.pchome.com.tw/cs/items/DSAR0VA900F7PHH/000007_1671526819.jpg','https://24h.pchome.com.tw/prod/DSAR0V-A900F7PHH',4690,'2024-04-07'),(84,'蝢揖瞈??Ｚ???,1680,'https://cs-f.ecimg.tw/cms/creatives/onsale/f9c35807-1488-4c57-9c13-e9e9041a585c.jpeg','https://24h.pchome.com.tw/store/DXAXFL',990,'2024-04-07'),(85,'憭抒?? ???????磊CII(30蝎4??',11992,'https://img.pchome.com.tw/cs/items/DBBA4Y1900BK03K/000007_1626016120.jpg','https://24h.pchome.com.tw/store/DBDF00',5950,'2024-04-07'),(86,'撖嗆?? 2%瘞湔??貊移?舀雯118ml 2?亦?',2360,'https://img.pchome.com.tw/cs/items/DDDE031900GYG87/000007_1701248242.jpg','https://24h.pchome.com.tw/store/DDDE03',1770,'2024-04-07'),(87,'BenQ EX2710Q 27??2K?餌奎?Ｗ?',7988,'https://img.pchome.com.tw/cs/items/DSABF3A900H4AX0/000007_1706520758.jpg','https://24h.pchome.com.tw/prod/DSABF3-A900H4AX0',6988,'2024-04-07'),(88,'?喲 S8 MaxV Ultra AI???璈?',66999,'https://img.pchome.com.tw/cs/items/DMBL1CA900HB7EG/000007_1710470738.jpg','https://24h.pchome.com.tw/prod/DMBL1C-A900HB7EG',36888,'2024-04-07'),(89,'MUJI ?∪?臬? 蝛箸除敺芰憸冽?',3190,'https://cs-f.ecimg.tw/cms/creatives/onsale/2400b683-7933-4dd2-9497-47e45c49a172.jpeg','https://24h.pchome.com.tw/prod/DEDK40-A900B4P7V',2711,'2024-04-07'),(90,'MAKITA ?抒 18V?圈??餅? 6.0Ah',6000,'https://img.pchome.com.tw/cs/items/DECA05A900FTWBE/000007_1670565950.jpg','https://24h.pchome.com.tw/prod/DECA05-A900FTWBE',3599,'2024-04-07'),(91,'?鈭箇??豢?蝮賣?銝?砍??飛??,380,'https://img.pchome.com.tw/cs/items/DJAD3JA900H9K5A/000007_1709030132.jpg','https://24h.pchome.com.tw/prod/DJAD3J-A900H9K5A',264,'2024-04-07'),(92,'WOAWOA 頞喳?皜???',618,'https://img.pchome.com.tw/cs/items/DICGFDA900EY9EQ/000007_1707218290.jpg','https://24h.pchome.com.tw/store/DICN34',599,'2024-04-07'),(93,'瘛餃祐 敺拙?Ｗ?銴清/L-XL',1800,'https://img.pchome.com.tw/cs/items/DAAU0PA900GC6BS/000007_1684310945.jpg','https://24h.pchome.com.tw/prod/DAAU0P-A900GC6BS',1199,'2024-04-07'),(94,'LG gram 15.6?????貊???,32900,'https://img.pchome.com.tw/cs/items/DHAM3WA900HB9QK/000007_1710497744.jpg','https://24h.pchome.com.tw/prod/DHAM3W-A900HB9QK',24700,'2024-04-07'),(95,'SHARP AQUOS sense8 5G (8G/256G)',14990,'https://img.pchome.com.tw/cs/items/DYAW3NA900GXELT/000007_1700212617.jpg','https://24h.pchome.com.tw/store/DYAW9P',13480,'2024-04-07'),(96,'銝?蝟餃?(Kobo?餃???',803,'https://img.pchome.com.tw/cs/items/DJBQ0HD900G6RHU/000007_1711620979.jpg','https://24h.pchome.com.tw/prod/DJBQ0H-D900G6RHU',602,'2024-04-07'),(97,'Dynalink Google TV ?箸4K?餉???,2299,'https://img.pchome.com.tw/cs/items/DMAAA0A900H4AN9/000007_1706519081.jpg','https://24h.pchome.com.tw/prod/DMAAA0-A900H4AN9',1549,'2024-04-07'),(98,'iPhone 15 Pro 256G',40400,'https://cs-f.ecimg.tw/cms/creatives/onsale/18d385c8-0297-4cfa-b3b5-bc634cb39e72.jpeg','https://24h.pchome.com.tw/store/DYAJ2U',38099,'2024-04-07'),(99,'璅掖蝛?湔?????.5kg/6??,1554,'https://img.pchome.com.tw/cs/items/DBBY0K1900G2T3I/000007_1683169242.jpg','https://24h.pchome.com.tw/store/DBBY7L',799,'2024-04-07'),(100,'Jabra Elite 4?蝺??芾??單?',3990,'https://img.pchome.com.tw/cs/items/DYBF02A900HAZ0R/000007_1710301858.jpg','https://24h.pchome.com.tw/store/DYAQAR',2699,'2024-04-07');
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
INSERT INTO `travel` VALUES (1,'瘞湧??啣璅ㄞ摨?雿?脣??∠??蝯?撅望??瘝鼎憌舐陸嚗?鈭箸??800??,6001,6001,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403152256-31889f57.jpg','瘞湧??啣璅ㄞ摨?雿?脣??∠??蝯?撅望??瘝鼎憌舐陸嚗?鈭箸??800??,'2024-04-06 06:30:00.000000'),(2,'??????曉僑??砍?嚗??砍偕擃之蝝?蝐?擃?嚗?勗?唳??⊿?嚗?',7760,7760,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327174201-f3f72794.jpg','??????曉僑??砍?嚗??砍偕擃之蝝?蝐?擃?嚗?勗?唳??⊿?嚗?','2024-04-06 06:30:00.000000'),(3,'?摰嗚?嚗之?挪雿挪?賂???撠摰嗚PP頞?憟賢熒嚗???000???拙',2831,2831,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403120637-e8dc40e6.jpg','?摰嗚?嚗之?挪雿挪?賂???撠摰嗚PP頞?憟賢熒嚗???000???拙','2024-04-03 14:00:00.000000'),(4,'鈭散雿挪CP?潭??桀???啁?ㄐ?靘踹?嚗?研??鞈姣????????',1220,1220,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403133241-c7902267.jpg','鈭散雿挪CP?潭??桀???啁?ㄐ?靘踹?嚗?研??鞈姣????????','2024-04-03 13:26:00.000000'),(5,'憟??????曉璇菔健??霅?蟡剁?10摰嗚?摰踹??蟡具???剝??萇?1620??,9704,9704,'https://cc.tvbs.com.tw/img/program/upload/2024/04/03/20240403121357-834cd7c5.jpg','憟??????曉璇菔健??霅?蟡剁?10摰嗚?摰踹??蟡具???剝??萇?1620??,'2024-04-03 11:56:00.000000'),(6,'銝??嗉眺銝??嚗??憭拙?憟唾郎憌臬??????嚗?閬??⊿??,1911,1911,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402150822-54c2cbdb.jpg','銝??嗉眺銝??嚗??憭拙?憟唾郎憌臬??????嚗?閬??⊿??,'2024-04-02 15:14:00.000000'),(7,'銝瘜?憌??⊥???500??摰?瑞結??嗡犖?仿??芣?嚗????脣?暾冽僖瘜∪憌?,5975,5975,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402135709-c91c8c5f.jpg','銝瘜?憌??⊥???500??摰?瑞結??嗡犖?仿??芣?嚗????脣?暾冽僖瘜∪憌?,'2024-04-02 13:44:00.000000'),(8,'?之???翰????嚗之憭Ｗ劂?湔??蝡?鞎餅蝳桀?嚗?頧?00蝔格?剛?',8789,8789,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402123950-1f38aba6.jpg','?之???翰????嚗之憭Ｗ劂?湔??蝡?鞎餅蝳桀?嚗?頧?00蝔格?剛?','2024-04-02 13:40:00.000000'),(9,'?典?憭批??∪???憭押擃?嚗?40摰嗅?交陸銝?????◢?潛?憌?',5180,5180,'https://cc.tvbs.com.tw/img/program/upload/2024/04/02/20240402132815-9572b687.jpg','?典?憭批??∪???憭押擃?嚗?40摰嗅?交陸銝?????◢?潛?憌?','2024-04-02 11:00:00.000000'),(10,'?摰嗚?瘜?憌?蝧鳴?獢?閬芸?憌臬??芣???嚗??舐擃憭怒?摮拙?鞎餃雿?,1194,1194,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401213716-90a25b23.jpg','?摰嗚?瘜?憌?蝧鳴?獢?閬芸?憌臬??芣???嚗??舐擃憭怒?摮拙?鞎餃雿?,'2024-04-02 11:00:00.000000'),(11,'12甇脖誑銝??蟡剁??典?撘瑯?摰嗆ㄝ??璅??OP15嚗??Ｗ??憭移?祥?貊?',6399,6399,'https://cc.tvbs.com.tw/img/program/upload/2023/07/06/20230706122316-f33f2e95.jpg','12甇脖誑銝??蟡剁??典?撘瑯?摰嗆ㄝ??璅??OP15嚗??Ｗ??憭移?祥?貊?','2024-04-01 16:00:00.000000'),(12,'????擗?擃?頞?憌臬???瘜?憌??⊿??唳?瘛?????瘥犖???',1922,1922,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401131456-390ac639.jpg','????擗?擃?頞?憌臬???瘜?憌??⊿??唳?瘛?????瘥犖???','2024-04-01 13:13:00.000000'),(13,'??????飲???銝哨??勗??孵???蝔祥?具??暺?蝭??',5562,5562,'https://cc.tvbs.com.tw/img/program/upload/2024/04/01/20240401131032-8e6b7e92.jpg','??????飲???銝哨??勗??孵???蝔祥?具??暺?蝭??','2024-04-01 12:00:00.000000'),(14,'敹俊ag雿?蝳輸??嚗?祈??嚗之??撽?銵?靽∪艙?垣銋???憡鼠雿',7643,7643,'https://cc.tvbs.com.tw/img/program/upload/2024/03/19/20240319174616-9b41e259.jpg','敹俊ag雿?蝳輸??嚗?祈??嚗之??撽?銵?靽∪艙?垣銋???憡鼠雿','2024-03-31 06:30:00.000000'),(15,'閰衣??停?渡?嚗?啜???ㄚ??憓??券????瘝?鞈?蝢控??,3140,3140,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329172051-415cc7f9.jpg','閰衣??停?渡?嚗?啜???ㄚ??憓??券????瘝?鞈?蝢控??,'2024-03-30 06:30:00.000000'),(16,'雿矽?啗?摰寞??舫?嚗?蔬??瘞湔芋瘞挪??頞?瘚湔?嚗??舀?瘜⊥僖蝘?鈭祇',7895,7895,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328154940-ef64db17.jpg','雿矽?啗?摰寞??舫?嚗?蔬??瘞湔芋瘞挪??頞?瘚湔?嚗??舀?瘜⊥僖蝘?鈭祇','2024-03-30 06:30:00.000000'),(17,'?祥????恕?批?璉格????貉???00蝔株?????踝???頞?撅曹?擏梢?',9663,9663,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329151656-b4229147.jpg','?祥????恕?批?璉格????貉???00蝔株?????踝???頞?撅曹?擏梢?','2024-03-29 15:00:00.000000'),(18,'?儔?圈ㄞ摨?/1??33撅日???摰靶oco?身?賬?寞?嚗尹?折??予蝛箸郊??,7408,7408,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325101754-41b43ce1.jpg','?儔?圈ㄞ摨?/1??33撅日???摰靶oco?身?賬?寞?嚗尹?折??予蝛箸郊??,'2024-03-29 12:00:00.000000'),(19,'???蝛箏??賊尹???嚗惜璅?摮耦?貊?頞ㄞ閫嚗??瘞湔芋撱箇?皝?蔣',3204,3204,'https://cc.tvbs.com.tw/img/program/upload/2024/03/29/20240329115446-5e696ff1.jpg','???蝛箏??賊尹???嚗惜璅?摮耦?貊?頞ㄞ閫嚗??瘞湔芋撱箇?皝?蔣','2024-03-29 11:00:00.000000'),(20,'撌典之蝝??予?頨怠??撅?交???0憭批暺?嚗?4撟游?閮芸瘞憟賣?敺?,2930,2930,'https://cc.tvbs.com.tw/img/program/upload/2024/03/03/20240303161418-55bb5ad4.jpg','撌典之蝝??予?頨怠??撅?交???0憭批暺?嚗?4撟游?閮芸瘞憟賣?敺?,'2024-03-28 15:00:00.000000'),(21,'100????嚗?唳?蝢摨?蟡刻矽???舀?瘨祥嚗?蝣潮?撽???閬?,3451,3451,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328141018-33bdb95e.jpg','100????嚗?唳?蝢摨?蟡刻矽???舀?瘨祥嚗?蝣潮?撽???閬?,'2024-03-28 13:10:00.000000'),(22,'銵??瘥???00??銝?脣????∴????其澈?漁?恕????,2610,2610,'https://cc.tvbs.com.tw/img/program/upload/2024/03/28/20240328113525-89f0855a.jpg','銵??瘥???00??銝?脣????∴????其澈?漁?恕????,'2024-03-28 11:00:00.000000'),(23,'?啣??望除??撟渲??憭押?湛?鞈??除??摰???嚗?蝣潮望撣?',7830,7830,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327155440-8ab4fe7b.jpg','?啣??望除??撟渲??憭押?湛?鞈??除??摰???嚗?蝣潮望撣?','2024-03-27 16:00:00.000000'),(24,'?脣瘥雿璈????芰征?NOOPY?芰?予韏琿?憌???0甈曉??末?單???,6722,6722,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327134728-bf2a2d41.jpg','?脣瘥雿璈????芰征?NOOPY?芰?予韏琿?憌???0甈曉??末?單???,'2024-03-27 13:48:00.000000'),(25,'嚗??祥??擃?蟡??????翰???橘???摨艾??箏撖ㄚ撅梁???,8829,8829,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327144246-4fd1b427.jpg','嚗??祥??擃?蟡??????翰???橘???摨艾??箏撖ㄚ撅梁???,'2024-03-27 13:27:00.000000'),(26,'?券?蝛箏?蝐喳????航?舀?蝢??掖擐垢15??璈?嚗??芰?????,8632,8632,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327112539-7b5de33b.jpg','?券?蝛箏?蝐喳????航?舀?蝢??掖擐垢15??璈?嚗??芰?????,'2024-03-27 11:30:00.000000'),(27,'擃??典?臭???鈭綽??儔???鞎∠?撱?鈭桅?嚗楊憭折?蟡函???蝑鞎⊿?',5505,5505,'https://cc.tvbs.com.tw/img/program/upload/2024/03/27/20240327120152-f4196843.jpg','擃??典?臭???鈭綽??儔???鞎∠?撱?鈭桅?嚗楊憭折?蟡函???蝑鞎⊿?','2024-03-27 11:00:00.000000'),(28,'?交??????予??堆?嚗之鈭桅?銝甈∠?嚗?8隞嗆????4蝐單??梯?鞎?,2339,2339,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326171600-c29827e6.jpg','?交??????予??堆?嚗之鈭桅?銝甈∠?嚗?8隞嗆????4蝐單??梯?鞎?,'2024-03-26 17:00:00.000000'),(29,'撅望絲蝢?函???乩????單ㄝ??摰踵蝛綽???摰?瘞??∟??格???,9459,9459,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326120958-21df561c.jpg','撅望絲蝢?函???乩????單ㄝ??摰踵蝛綽???摰?瘞??∟??格???,'2024-03-26 12:07:00.000000'),(30,'?典??垢?????嚗予嚗??曉振?脩??◢?潛?憌???嚗???',1238,1238,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326125754-df5477c4.jpg','?典??垢?????嚗予嚗??曉振?脩??◢?潛?憌???嚗???','2024-03-26 11:00:00.000000'),(31,'?暸?7957??撣?蟡剖??犖撠惇蝳嚗?/1韏瑟??晞予??潮??,3214,3214,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326101429-d1aa876d.jpg','?暸?7957??撣?蟡剖??犖撠惇蝳嚗?/1韏瑟??晞予??潮??,'2024-03-26 10:15:00.000000'),(32,'?曉僑?亙???霈?啜控??憓????嚗之鈭桅?嚗ㄝ?閫?掖?嗆??祇??脤?',9025,9025,'https://cc.tvbs.com.tw/img/program/upload/2024/03/26/20240326100908-50afd21f.jpg','?曉僑?亙???霈?啜控??憓????嚗之鈭桅?嚗ㄝ?閫?掖?嗆??祇??脤?','2024-03-25 17:00:00.000000'),(33,'摰???撣摰嗆??嚗??梢?嚗予??歹??Ⅳ摰10憭批?撣?璆剜???,9534,9534,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325130322-7b71217c.jpg','摰???撣摰嗆??嚗??梢?嚗予??歹??Ⅳ摰10憭批?撣?璆剜???,'2024-03-25 12:32:00.000000'),(34,'?????蟡??脣??～?憭Ｗ劂??撅?雿?100???游予嚗??啁?憌?瘣?,8585,8585,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325112516-40dce47f.jpg','?????蟡??脣??～?憭Ｗ劂??撅?雿?100???游予嚗??啁?憌?瘣?,'2024-03-25 10:00:00.000000'),(35,'?摰嗚?擗uffet?祥嚗漯?剔??胯????Ｙ?憓?閬賬?擗??曇竟3300??,3595,3595,'https://cc.tvbs.com.tw/img/program/upload/2024/03/25/20240325081258-fc6b06b1.jpg','?摰嗚?擗uffet?祥嚗漯?剔??胯????Ｙ?憓?閬賬?擗??曇竟3300??,'2024-03-25 08:13:00.000000'),(36,'30????嚗惜??嚗??准??璉格?甇仿???頝鞈????胯?憭移',1047,1047,'https://cc.tvbs.com.tw/img/program/upload/2024/03/20/20240320185304-5c46dc97.jpg','30????嚗惜??嚗??准??璉格?甇仿???頝鞈????胯?憭移','2024-03-24 06:30:00.000000');
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

-- Dump completed on 2024-04-11 23:31:34
