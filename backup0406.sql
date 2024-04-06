-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: djangoWatson
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add my news',7,'add_mynews'),(26,'Can change my news',7,'change_mynews'),(27,'Can delete my news',7,'delete_mynews'),(28,'Can view my news',7,'view_mynews'),(29,'Can add my travel',8,'add_mytravel'),(30,'Can change my travel',8,'change_mytravel'),(31,'Can delete my travel',8,'delete_mytravel'),(32,'Can view my travel',8,'view_mytravel'),(33,'Can add goods',9,'add_goods'),(34,'Can change goods',9,'change_goods'),(35,'Can delete goods',9,'delete_goods'),(36,'Can view goods',9,'view_goods');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$PE8bEwgTtcRhhuI99iM9KP$WNSoSkQefyH01UI7Llg0w/bgliXGx9TSIxqnQUdjJc0=','2024-04-03 09:03:15.041699',1,'vincent','','','vincent7955168@gmail.com',1,1,'2024-04-03 06:30:41.625165');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'news','mynews'),(9,'product','goods'),(6,'sessions','session'),(8,'travel','mytravel');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-03 06:07:29.479336'),(2,'auth','0001_initial','2024-04-03 06:07:29.926536'),(3,'admin','0001_initial','2024-04-03 06:07:30.032823'),(4,'admin','0002_logentry_remove_auto_add','2024-04-03 06:07:30.039804'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-03 06:07:30.049780'),(6,'contenttypes','0002_remove_content_type_name','2024-04-03 06:07:30.127006'),(7,'auth','0002_alter_permission_name_max_length','2024-04-03 06:07:30.203832'),(8,'auth','0003_alter_user_email_max_length','2024-04-03 06:07:30.265649'),(9,'auth','0004_alter_user_username_opts','2024-04-03 06:07:30.273620'),(10,'auth','0005_alter_user_last_login_null','2024-04-03 06:07:30.326513'),(11,'auth','0006_require_contenttypes_0002','2024-04-03 06:07:30.328530'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-03 06:07:30.337453'),(13,'auth','0008_alter_user_username_max_length','2024-04-03 06:07:30.399322'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-03 06:07:30.457134'),(15,'auth','0010_alter_group_name_max_length','2024-04-03 06:07:30.511990'),(16,'auth','0011_update_proxy_permissions','2024-04-03 06:07:30.520999'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-03 06:07:30.580807'),(18,'sessions','0001_initial','2024-04-03 06:07:30.616712'),(19,'news','0001_initial','2024-04-03 06:47:07.089640'),(20,'travel','0001_initial','2024-04-03 09:02:22.266545'),(21,'product','0001_initial','2024-04-06 07:26:45.873602');
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
INSERT INTO `django_session` VALUES ('bspqko45zw8qw5aps8oj43unzmhpmk8d','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrwWZ:gb7mhATcyoPLYa8TOqTcUnASRvyxy-7BAAOb1B_esFY','2024-04-17 09:03:15.044069'),('ibb3ilw0k9juh7bjl63a5poe4ltr76b3','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rrvVK:I_o7fOzBsNk4pkMOaryHY7AjsEz9g1KscWVqywe_F6I','2024-04-17 07:57:54.447388'),('s3ptkfn2gub262iitr3i1nhqc4z80ut6','.eJxVjEEOwiAQRe_C2hAgMC0u3XuGZgZmpGpoUtpV491tky50-997f1MDrksZ1sbzMGZ1VVZdfjfC9OJ6gPzE-ph0muoyj6QPRZ-06fuU-X073b-Dgq3stSCA7bygFwMQKWF0QQSsByfBeCYTXSe5Yw_AJpFxBGm3qQ8Be1afL-eTODk:1rruAf:ebPak9h3bI9PLhTm2FlMjz-wsQ9VSrqR8FuxCM_dWrg','2024-04-17 06:32:29.513930');
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
  `discount` double NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
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

-- Dump completed on 2024-04-07 14:49:35
