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

-- Dump completed on 2024-04-06 16:08:09
