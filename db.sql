-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schoolmgmt
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendence_attendence`
--

DROP TABLE IF EXISTS `attendence_attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendence_attendence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` longtext NOT NULL,
  `ex_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence_attendence`
--

LOCK TABLES `attendence_attendence` WRITE;
/*!40000 ALTER TABLE `attendence_attendence` DISABLE KEYS */;
INSERT INTO `attendence_attendence` VALUES (1,'12','2019-06-08',1);
/*!40000 ALTER TABLE `attendence_attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'students');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,52);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add parents',7,'add_parents'),(26,'Can change parents',7,'change_parents'),(27,'Can delete parents',7,'delete_parents'),(28,'Can view parents',7,'view_parents'),(29,'Can add parent',7,'add_parent'),(30,'Can change parent',7,'change_parent'),(31,'Can delete parent',7,'delete_parent'),(32,'Can view parent',7,'view_parent'),(33,'Can add department',8,'add_department'),(34,'Can change department',8,'change_department'),(35,'Can delete department',8,'delete_department'),(36,'Can view department',8,'view_department'),(37,'Can add course',9,'add_course'),(38,'Can change course',9,'change_course'),(39,'Can delete course',9,'delete_course'),(40,'Can view course',9,'view_course'),(41,'Can add teacher',10,'add_teacher'),(42,'Can change teacher',10,'change_teacher'),(43,'Can delete teacher',10,'delete_teacher'),(44,'Can view teacher',10,'view_teacher'),(45,'Can add subject',11,'add_subject'),(46,'Can change subject',11,'change_subject'),(47,'Can delete subject',11,'delete_subject'),(48,'Can view subject',11,'view_subject'),(49,'Can add student',12,'add_student'),(50,'Can change student',12,'change_student'),(51,'Can delete student',12,'delete_student'),(52,'Can view student',12,'view_student'),(53,'Can add attendence',13,'add_attendence'),(54,'Can change attendence',13,'change_attendence'),(55,'Can delete attendence',13,'delete_attendence'),(56,'Can view attendence',13,'view_attendence'),(57,'Can add exam',14,'add_exam'),(58,'Can change exam',14,'change_exam'),(59,'Can delete exam',14,'delete_exam'),(60,'Can view exam',14,'view_exam'),(61,'Can add result',15,'add_result'),(62,'Can change result',15,'change_result'),(63,'Can delete result',15,'delete_result'),(64,'Can view result',15,'view_result');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$UkXGhzmhQJJq$mLA+dO+yawee0NjzduEj6xxBztg4oOHtc0P01BQZee8=','2019-06-09 10:18:52.784876',1,'admin','','','',1,1,'2019-06-05 09:01:32.245525'),(2,'pbkdf2_sha256$150000$VWD0MIe5aX4O$RRf1YVlN6mblgKhQ+S/1PZUIOTttBNCLSixa1u7ZSR0=','2019-06-13 16:21:45.857853',1,'sarika','','','',1,1,'2019-06-05 12:46:07.000000'),(3,'pbkdf2_sha256$150000$uwM0sQQDedjA$713blJC/oFJ0aFhz8nYTfsitjJFnvGf4tTVVqnsP6ZI=',NULL,0,'tqs','training','institiute','tqpp@gmail.com',0,1,'2019-06-05 12:49:50.000000'),(4,'pbkdf2_sha256$150000$haV1JkXtMPwH$wknWQYE/6cSWjjHD0cHSS8bHaZcx44N5xhpSZfr25Dk=','2019-06-08 16:55:13.915853',0,'user-teacher','teacher','profile','',1,1,'2019-06-08 16:52:08.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (2,4,53),(3,4,54),(1,4,56);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_department`
--

DROP TABLE IF EXISTS `departments_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departments_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_department`
--

LOCK TABLES `departments_department` WRITE;
/*!40000 ALTER TABLE `departments_department` DISABLE KEYS */;
INSERT INTO `departments_department` VALUES (1,'Pharmacy');
/*!40000 ALTER TABLE `departments_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-06-05 09:32:44.819582','1','Parent object (1)',1,'[{\"added\": {}}]',7,1),(2,'2019-06-05 09:32:50.493994','1','Parent object (1)',2,'[]',7,1),(3,'2019-06-05 12:46:08.099960','2','sarika',1,'[{\"added\": {}}]',4,1),(4,'2019-06-05 12:48:16.595054','1','students',1,'[{\"added\": {}}]',3,1),(5,'2019-06-05 12:48:56.971236','2','sarika',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\", \"groups\"]}}]',4,1),(6,'2019-06-05 12:49:51.200073','3','tqs',1,'[{\"added\": {}}]',4,1),(7,'2019-06-05 12:51:24.343512','3','tqs',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]',4,1),(8,'2019-06-08 16:52:08.713243','4','user-teacher',1,'[{\"added\": {}}]',4,1),(9,'2019-06-08 16:54:58.847518','4','user-teacher',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"is_staff\", \"user_permissions\", \"last_login\"]}}]',4,1),(10,'2019-06-08 16:55:45.412413','1','Attendence object (1)',1,'[{\"added\": {}}]',13,4),(11,'2019-06-09 10:49:15.414060','1','Student object (1)',1,'[{\"added\": {}}]',12,1),(12,'2019-06-13 16:22:15.243623','1','Department object (1)',1,'[{\"added\": {}}]',8,2),(13,'2019-06-13 16:22:31.797385','1','Department object (1)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(13,'attendence','attendence'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'courses','course'),(8,'departments','department'),(14,'exams','exam'),(7,'parents','parent'),(15,'results','result'),(6,'sessions','session'),(12,'students','student'),(11,'subjects','subject'),(10,'teachers','teacher');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-05 08:55:24.253279'),(2,'auth','0001_initial','2019-06-05 08:55:28.951229'),(3,'admin','0001_initial','2019-06-05 08:55:56.306536'),(4,'admin','0002_logentry_remove_auto_add','2019-06-05 08:56:02.029443'),(5,'admin','0003_logentry_add_action_flag_choices','2019-06-05 08:56:02.185707'),(6,'contenttypes','0002_remove_content_type_name','2019-06-05 08:56:06.364795'),(7,'auth','0002_alter_permission_name_max_length','2019-06-05 08:56:13.223975'),(8,'auth','0003_alter_user_email_max_length','2019-06-05 08:56:17.762951'),(9,'auth','0004_alter_user_username_opts','2019-06-05 08:56:17.903581'),(10,'auth','0005_alter_user_last_login_null','2019-06-05 08:56:20.475735'),(11,'auth','0006_require_contenttypes_0002','2019-06-05 08:56:20.757272'),(12,'auth','0007_alter_validators_add_error_messages','2019-06-05 08:56:20.929142'),(13,'auth','0008_alter_user_username_max_length','2019-06-05 08:56:24.344307'),(14,'auth','0009_alter_user_last_name_max_length','2019-06-05 08:56:28.038866'),(15,'auth','0010_alter_group_name_max_length','2019-06-05 08:56:30.885015'),(16,'auth','0011_update_proxy_permissions','2019-06-05 08:56:30.994384'),(17,'sessions','0001_initial','2019-06-05 08:56:32.159345'),(18,'parents','0001_initial','2019-06-05 09:24:24.735213'),(19,'parents','0002_auto_20190605_1501','2019-06-05 09:31:57.318915'),(20,'courses','0001_initial','2019-06-05 12:20:11.096260'),(21,'departments','0001_initial','2019-06-05 12:20:12.007171'),(22,'subjects','0001_initial','2019-06-05 12:20:13.158920'),(23,'teachers','0001_initial','2019-06-05 12:20:14.318832'),(24,'attendence','0001_initial','2019-06-05 12:41:08.290098'),(25,'exams','0001_initial','2019-06-05 12:41:09.169020'),(26,'results','0001_initial','2019-06-05 12:41:10.078766'),(27,'students','0001_initial','2019-06-05 12:41:10.832427'),(28,'students','0002_student_user','2019-06-09 10:46:01.230515');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8plkr1vur5h24wf60k63lgenx5xtdhij','ZjNkNjg3NjBhNDljZTEyOWVkOWNlMmIzNzMyMzI5NTg2Y2JhODBjMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTQ2YjQ0YjlkYzRkZmNhMWQyZGM4ODIzYmU3MDA1YmFjNDMxOTU0In0=','2019-06-27 16:21:45.994939');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams_exam`
--

DROP TABLE IF EXISTS `exams_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exams_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `subject_id` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `ex_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams_exam`
--

LOCK TABLES `exams_exam` WRITE;
/*!40000 ALTER TABLE `exams_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents_parent`
--

DROP TABLE IF EXISTS `parents_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parents_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `mail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_parent`
--

LOCK TABLES `parents_parent` WRITE;
/*!40000 ALTER TABLE `parents_parent` DISABLE KEYS */;
INSERT INTO `parents_parent` VALUES (1,'sudhakar','sudhakar@gmail.com'),(2,'',''),(3,'',''),(4,'',''),(5,'',''),(6,'',''),(7,'',''),(8,'','');
/*!40000 ALTER TABLE `parents_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results_result`
--

DROP TABLE IF EXISTS `results_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `results_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` longtext NOT NULL,
  `exam_id` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtained_marks` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results_result`
--

LOCK TABLES `results_result` WRITE;
/*!40000 ALTER TABLE `results_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `results_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_student`
--

DROP TABLE IF EXISTS `students_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `gender` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `email_id` longtext NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `password` longtext NOT NULL,
  `address` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `students_student_user_id_56286dbb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_student`
--

LOCK TABLES `students_student` WRITE;
/*!40000 ALTER TABLE `students_student` DISABLE KEYS */;
INSERT INTO `students_student` VALUES (1,'scott','male','123456789','mmmm',1,1,'scott@password','asdsad',2);
/*!40000 ALTER TABLE `students_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects_subject`
--

DROP TABLE IF EXISTS `subjects_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subjects_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_subject`
--

LOCK TABLES `subjects_subject` WRITE;
/*!40000 ALTER TABLE `subjects_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_teacher`
--

DROP TABLE IF EXISTS `teachers_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teachers_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `gender` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `email_id` longtext NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `password` longtext NOT NULL,
  `address` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_teacher`
--

LOCK TABLES `teachers_teacher` WRITE;
/*!40000 ALTER TABLE `teachers_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14  0:31:07
