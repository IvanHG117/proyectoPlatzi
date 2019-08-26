-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal
-- ------------------------------------------------------
-- Server version	5.7.26

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add entrada',8,'add_entrada'),(30,'Can change entrada',8,'change_entrada'),(31,'Can delete entrada',8,'delete_entrada'),(32,'Can view entrada',8,'view_entrada');
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$giAaFCV9wJyf$9XG7pJ1Hvb9jCuExg7LmvH0k9VEzmUJYrVF8PRJYirY=','2019-08-26 16:41:48.046242',1,'ivan','','','ivan@ivan.com',1,1,'2019-08-19 00:55:53.593636'),(2,'pbkdf2_sha256$120000$FSQy9R1X6quR$YkxvKlQtw6n+Z+vxnYhACnSuTEF7i6RuFHtSz0SGX1k=','2019-08-26 16:30:14.311305',1,'admin','','','admin@admin.com',1,1,'2019-08-24 14:40:02.736204'),(3,'pbkdf2_sha256$120000$BQbrZ8saiRk5$xCENY7Acds1IuiNgnzFzL077vT3JtdWDsEnd2j8YYlU=','2019-08-25 16:03:49.565986',0,'Dominic','Dominic','','dominic@dom.com',0,1,'2019-08-25 16:03:20.215149'),(4,'pbkdf2_sha256$120000$WN4tN4Dn5yxy$sbVMqQ0Y+D2cWO66oVVtWrBhZpDJtcRqckfb/sRGubI=','2019-08-25 16:37:19.532975',0,'Alejandro','Alejandro','','alejandro@al.com',0,1,'2019-08-25 16:37:10.245832'),(5,'pbkdf2_sha256$120000$l3zxZcKFxoHS$dkzoF1Gm2tJnkdmcCJYzMeGoczZXggJeMAbzcZQYpi8=','2019-08-25 16:40:51.264392',0,'Julia','Julia','','julia@jul.com',0,1,'2019-08-25 16:40:38.865257'),(6,'pbkdf2_sha256$120000$mXtswi29ShbS$R9cZ1AKYeCwCcv5nNhUD2ITuj8XL3qbA8nbiteJux6E=','2019-08-26 14:56:49.835318',0,'Paola','Paola','','paola.perez@iot-innovaciones.com',0,1,'2019-08-26 14:56:38.721841');
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
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-24 15:04:36.796343','1','Introducción al Álgebra Líneal',1,'[{\"added\": {}}]',8,2),(2,'2019-08-24 15:55:16.254433','1','Introducción al Álgebra Líneal',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(3,'2019-08-24 15:57:08.932099','1','Introducción al Álgebra Líneal',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(4,'2019-08-24 15:58:58.173954','1','Introducción al Álgebra Líneal',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(5,'2019-08-24 17:17:15.235440','1','Introducción al Álgebra Líneal',2,'[]',8,2),(6,'2019-08-24 17:24:08.215957','2','Titulo:Introducción a la Historia del Álgebra Líneal; Capitulo:1; Parte: 2',1,'[{\"added\": {}}]',8,2),(7,'2019-08-24 17:27:27.143903','2','Titulo:Introducción a la Historia del Álgebra Líneal; Capitulo:1; Parte: 2',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(8,'2019-08-24 17:28:52.653433','2','Titulo:Introducción a la Historia del Álgebra Líneal; Capitulo:1; Parte: 2',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(9,'2019-08-24 17:30:08.559372','2','Titulo:Introducción a la Historia del Álgebra Líneal; Capitulo:1; Parte: 2',2,'[{\"changed\": {\"fields\": [\"entrada\"]}}]',8,2),(10,'2019-08-24 17:38:07.060006','3','Titulo:Espacio Vectorial; Capitulo:Capitulo 1; Parte: 3',1,'[{\"added\": {}}]',8,2),(11,'2019-08-24 17:47:05.323488','4','Titulo:Espacio Vectorial; Capitulo:1; Parte: 3',1,'[{\"added\": {}}]',8,2),(12,'2019-08-24 17:49:39.911683','5','Titulo:Ejemplo de Espacio Vectorial; Capitulo:1; Parte: 4',1,'[{\"added\": {}}]',8,2),(13,'2019-08-24 17:50:30.213419','6','Titulo:Subespacio Vectorial; Capitulo:1; Parte: 5',1,'[{\"added\": {}}]',8,2),(14,'2019-08-24 17:51:51.371146','7','Titulo:Ejemplo de Subespacio; Capitulo:1; Parte: 6',1,'[{\"added\": {}}]',8,2),(15,'2019-08-24 17:53:23.168211','8','Titulo:Ejemplo 2 de subespacio; Capitulo:1; Parte: 7',1,'[{\"added\": {}}]',8,2),(16,'2019-08-24 17:54:21.505019','9','Titulo:Espacios Vectoriales; Capitulo:1; Parte: 8',1,'[{\"added\": {}}]',8,2),(17,'2019-08-24 17:55:06.195909','10','Titulo:Isomorfismo; Capitulo:1; Parte: 9',1,'[{\"added\": {}}]',8,2),(18,'2019-08-24 17:55:57.545983','11','Titulo:Ejemplo de Combinación Lineal; Capitulo:1; Parte: 10',1,'[{\"added\": {}}]',8,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'usuarios','profile'),(8,'entradas','entrada');
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-18 22:53:00.673510'),(2,'auth','0001_initial','2019-08-18 22:53:01.968147'),(3,'admin','0001_initial','2019-08-18 22:53:03.945500'),(4,'admin','0002_logentry_remove_auto_add','2019-08-18 22:53:04.371833'),(5,'admin','0003_logentry_add_action_flag_choices','2019-08-18 22:53:04.408771'),(6,'contenttypes','0002_remove_content_type_name','2019-08-18 22:53:04.668344'),(7,'auth','0002_alter_permission_name_max_length','2019-08-18 22:53:04.769537'),(8,'auth','0003_alter_user_email_max_length','2019-08-18 22:53:04.901748'),(9,'auth','0004_alter_user_username_opts','2019-08-18 22:53:04.934700'),(10,'auth','0005_alter_user_last_login_null','2019-08-18 22:53:05.085052'),(11,'auth','0006_require_contenttypes_0002','2019-08-18 22:53:05.093040'),(12,'auth','0007_alter_validators_add_error_messages','2019-08-18 22:53:05.128984'),(13,'auth','0008_alter_user_username_max_length','2019-08-18 22:53:05.297173'),(14,'auth','0009_alter_user_last_name_max_length','2019-08-18 22:53:05.415376'),(15,'auth','0010_alter_group_name_max_length','2019-08-18 22:53:05.530232'),(16,'auth','0011_update_proxy_permissions','2019-08-18 22:53:05.565178'),(17,'sessions','0001_initial','2019-08-18 22:53:05.786709'),(18,'usuarios','0001_initial','2019-08-18 22:53:06.048248'),(19,'entradas','0001_initial','2019-08-19 01:37:19.927386'),(20,'entradas','0002_entrada_parte','2019-08-24 17:16:44.238849'),(21,'entradas','0003_auto_20190824_1239','2019-08-24 17:41:09.616540');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('yumaijidvh2oeae2qkrzqstbcmwl56la','OGIxMjdhNzVhZmZhMzdlMDg1YzU2MzhkNjQ0NGU3ZGE1YzZkZTJhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTc3MjI0YTE0MTE5OWE1YmU3ZmU5ZjRmY2VkOThjYzk3OTE5Yzg0In0=','2019-09-02 01:26:34.682378'),('z4xtlzjyoi4djk2andubezlc3dcbhfin','ODNmOGI0ZjJhYjczMjM2NzEwZTJiYjRjN2JjYWI1MjFiZWEwNTIxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OGIzZTgzNWFiZGYxYjJmMmY3MjZlOWQ4ZWIxOTc1NmVmZWM4NDIzIn0=','2019-09-09 16:41:48.052235');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas_entrada`
--

DROP TABLE IF EXISTS `entradas_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entradas_entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` longtext NOT NULL,
  `entrada` longtext NOT NULL,
  `tema` longtext NOT NULL,
  `capitulo` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `parte` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas_entrada`
--

LOCK TABLES `entradas_entrada` WRITE;
/*!40000 ALTER TABLE `entradas_entrada` DISABLE KEYS */;
INSERT INTO `entradas_entrada` VALUES (1,'Introducción al Álgebra Líneal','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Verificar si H es un espacio vectorial real con las operaciones</p>\r\n        <p>(u1, u2) + (v1, v2) = (u1 + v1, u2 + v2) </p>\r\n        <p>α(u1, u2) = (αu1, 0) </p>\r\n        <p>Cumple con ser grupo abeliano</p>\r\n      </div>\r\n    </div>\r\n   \r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Al ser <b>grupo abeliano</b> cumple con los primeros 5 axiomas. para más información sobre esto se recomienda leer esta <a href=\"http://www.ehu.eus/juancarlos.gorostizaga/apoyo/estruct_alg.htm\">página</a> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Para seguir con la verificación de los axiomas seguiremos con el axioma 6.</p>\r\n        <p><b>6) </b>α<b>u</b> pertenece a H</p>\r\n        <p>Pertenece porque como podemos observar el resultado del vector por el escalar da como resultado un par ordenado que pertenece al espacio H.</p>\r\n        <p>Por lo tanto el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>7)</b> α(<b>u + v</b>) = α<b>u</b> + α<b>v</b></p>\r\n        <p>α es un escalar, es un numero, no es un vector.</p>\r\n        <p>Al igual que en el ejercicio anterior lo primero que debemos hacer es sustituir la representación de <b>u</b> y <b>v</b> por su representación en componentes:</p>\r\n        <p></b> α(<b>u + v</b>) = α<b>u</b> + α<b>v</b></p>\r\n        <p>α((u1, u2) + (v1, v2)) = α(u1, u2) + α(v1, v2) </p>\r\n        <p>Y procederemos a aplicar el axioma 2 sumando componente a componente del lado izquierdo.</p>\r\n        <p>α(u1 + v1, u2 + v2)</p>\r\n        <p>Y ahora multiplicar el escalar por el vector</p>\r\n        <p>(αu1 + αv1, 0) </p>\r\n        <p>Ahora del lado derecho de la igualdad lo que haremos será multiplicar por el escalar cada vector y luego sumar las componentes resultantes</p>\r\n        <p>α(u1, u2) + α(v1, v2) </p>\r\n        <p>(αu1, 0) + (αv1, 0) </p>\r\n        <p>(αu1 + αv1, 0) </p>\r\n        <p>Como podemos ver el resultado de ambos lados de la igualdad es identico</p>\r\n        <p>(αu1 + αv1, 0) =(αu1 + αv1, 0) </p>\r\n        <p>Por lo que podemos decir que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>8) </b>(α + β)<b>u</b> = α<b>u</b> + β<b>u</b>  </p>\r\n        <p>Para poder demostrar que este axioma se cumple lo primero que hay que hacer es hacer la multiplicación del vector por el escalar del lado izquierdo de la igualdad, dando por resultado:</p>\r\n        <p>α<b>u</b> + β<b>u</b></p>\r\n        <p>procederemos a sustituir la forma del vector a su expresión en par ordenado</p>\r\n        <p>α(u1, u2) + β(u1, u2)</p>\r\n        <p>Realizando la multiplicación da como resultado:</p>\r\n        <p>(αu1, 0) + (βu1, 0)</p>\r\n        <p>Y sumando componente a componente nos queda:</p>\r\n        <p>(αu1 + βu1, 0)</p>\r\n        <p>Procederemos a realizar lo mismo del otro lado de la igualdad, del lado derecho</p>\r\n        <p>α(u1, u2) + β(u1, u2)</p>\r\n        <p>Realizando la multiplicación da como resultado:</p>\r\n        <p>(αu1, 0) + (βu1, 0)</p>\r\n        <p>Y sumando componente a componente nos queda:</p>\r\n        <p>(αu1 + βu1, 0)</p>\r\n        <p>Como podemos ver el resultado de ambos lados de la igualdad es el mismo por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>9) </b>α(β<b>u</b>) = αβ(<b>u</b>)</p>\r\n        <p>Lo primero que se recomienda hacer es sustituir la forma del vector <b>u</b> por su expresión en R2</p>\r\n        <p>α(β(u1, u2)) = αβ(u1,u2) </p>\r\n        <p>Procedemos a realizar la multiplicación de ambos lados de la igualdad:</p>\r\n        <p>α(βu1, 0) = (αβu1,0) </p>\r\n        <p>(αβu1, 0) = (αβu1,0) </p>\r\n        <p>Como podemos ver la igualdad se cumple por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>10) </b>1<b>u</b> = <b>u</b>  </p>\r\n        <p>Este axioma demuestra la existencia del neutro multiplicativo, para demostrarlo bastará con expresar al vector <b>u</b> en su forma de par ordenado y multiplicarlo por el escalar uno, el resultado deberá ser <b>u</b>.</p>\r\n        <p>1(u1, u2) = (u1, u2) </p>\r\n        <p>(1u1, 0) = (u1, u2) </p>\r\n        <p>(u1, 0) = (u1, u2) </p>\r\n        <p>Comparando componente a componente podemos ver que:</p>\r\n        <p>1u1 = u1   La primer componente es igual</p>\r\n        <p>Sin embargo la segunda componente no es igual en ambos lados de la igualdad</p>\r\n        <p>0 != u2 </p>\r\n        <p>Por lo que el axioma no se cumple por lo tanto <b>H no es espacio vectorial.</b></p>\r\n        <p>Es importante ver que aunque se cumplen 9 de 10 axiomas no es espacio vectorial, es condición suficiente que un axioma no se cumpla para que H no sea un espacio vectorial.</p>\r\n      </div>\r\n    </div>','1',1,'2019-08-24 15:04:36.791349',1),(2,'Introducción a la Historia del Álgebra Líneal','<div class=\"row\" id=\"contenido\">\r\n      <div class=\"col\">\r\n        <div class=\"col\">\r\n          <div class=\"card\">\r\n            <div class=\"card-image-medium\">\r\n\r\n              <span class=\"card-title\">Hermann Grassmann</span>\r\n            </div>\r\n            <div class=\"card-content\">\r\n              <p>Para más información se pueden consultar las siguientes ligas:</p>\r\n              <a href=\"http://fcasua.contad.unam.mx/apuntes/interiores/docs/2012/informatica/1/matematicas_I.pdf\">Link 1</a>\r\n              <a href=\"https://nickpgill.github.io/files/2014/07/Algebra-Lineal-y-sus-Aplicaciones-3ra-Edición-David-C.-Lay.pdf\">Link 2</a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"col\" id=\"texto\">\r\n        <p>Las matemáticas son una parte fundamental en la formación de los profesionales de cualquier área, pero sobre todo en los profesionales del área de la ingeniería, en donde los problemas que se resuelven no solo requieren simples sumas y restas si no que requieren un pensamiento lógico el cuál se consigue en base al estudio de las mismas.</p>\r\n        <p>El álgebra lineal es la rama de las matemáticas que estudia conceptos tales como vectores, matrices, sistemas de ecuaciones lineales y en un enfoque más formal, espacios vectoriales y sus transformaciones lineales.</p>\r\n        <p>La historia del algebra lineal se remonta a los años de 1843 cuando William Rowan Hamilton (de quien proviene el uso del termino vector) creo los cuaterniones; y en 1844 fue cuando Hermann Grassmann público su libro Die Lineale Ausdehnnungslehre (la teoría lineal de la extensión).</p>\r\n        <p>En la actualidad el algebra lineal es algo indispensable para muchos académicos, estudiantes y profesionales en muchas áreas. El algebra lineal tiene diversas aplicaciones, tiene aplicaciones desde modelos lineales en la economía e ingeniería, así como en modelos de computadora en el diseño de aviones, en vuelos espaciales y en sistemas de control, en sistemas dinámicos, en procesamiento de imágenes, entre muchas otras aplicaciones. El correcto aprendizaje y sobre todo la correcta comprensión de esta rama de las matemáticas es de gran importancia para cualquier estudiante que desee ser un profesional sobresaliente.</p>\r\n      </div>\r\n    </div>','Historia',1,'2019-08-24 17:24:08.209966',2),(4,'Espacio Vectorial','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Un espacio vectorial es un conjunto no vacio <i>v</i> de objetos llamados vectores en el que estan definidos operaciones, llamadas sumas y multiplicación por un escalar. Sujetos a los siguientes 10 axiomas: </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>1. </b>La suma de <b>u</b> y <b>v</b>, denotada <b>u + v</b> esta en <b>v.</b> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>2. </b><b>u + v</b> = <b>v + u</b> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>3. (u + v) + w</b> = <b>u + (v + w)</b> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>4. </b>Existe un vector cero que pertenece a <b>v</b> tal que:</p>\r\n        <p><b> &nbsp; &nbsp; &nbsp; u + 0 = 0 + u = u</b> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>5. </b>Para cada <b>u</b> en <b>v</b> existe un vector <b>-u</b> tal que:</p>\r\n        <p> &nbsp; &nbsp; &nbsp;<b>u + (-u) = (-u) + u = 0</b></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>6. </b>El multiplo escalar de <b>u</b> por <i>α</i> denotado <b>u</b>α, esta en <b>v.</b></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>7. </b>α<b>(u + v)</b> = α<b>u</b> + α<b>v</b></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>8. </b>(α + β)<b>u</b> = α<b>u</b> + β<b>u</b>  </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>9. </b>α(β<b>u</b>) = αβ<b>u</b></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>10. </b>1<b>u</b> = <b>u</b>  </p>\r\n      </div>\r\n    </div>','Espacio Vectorial',1,'2019-08-24 17:47:05.285547',3),(5,'Ejemplo de Espacio Vectorial','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Demostrar que R2 es un espacio vectorial real con las operaciones:</p>\r\n        <p>(u1, u2) + (v1, v2) = (u1 + v1, u2 + v2)</p>\r\n        <p>α(u1, u2) = (αu1, αu2)</p>\r\n        <p>tal que α pertenece a los reales; <b>u</b> y <b>v</b> pertenecen a R2.</p>\r\n        <p>R2 son todos los pares ordenados (x, y) tales que <i>x</i> y <i>y</i> pertenecen a los reales.</p>\r\n        <p>Demostraremos esto axioma por axioma a continuación:</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>1) u</b> + <b>v</b> pertenecen a V</p>\r\n        <p><b>u</b> + <b>v</b> pertenecen a V porque al sumarlos se suman componente a componente dando como resultado un par ordenado cuyos elementos pertenecen a los reales dado que sus sumandos pertenecen a los reales.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>2) u</b> + <b>v</b> = <b>v</b> + <b>u</b></p>\r\n        <p><b>u</b> es un par ordenado que se representa como <b>u</b> = (u1, u2), esto aplica con <b>v</b> también.</p>\r\n        <p>De acuerdo a la forma en que se ha definido al suma en este espacio vectorial anteriormente lo primero que debemos hacer es sustituir el vector por su representación en R2 para posteriormente sumar componente a componente de <b>u</b> y <b>v</b>.</p>\r\n        <p>(u1, u2) + (v1, v2) = (v1, v2) + (u1, u2)</p>\r\n        <p>Quedando después de la suma como:</p>\r\n        <p>(u1 + v1, u2 + v2) = (v1 + u1, v2 + v2)</p>\r\n        <p>Pero como la suma en los numeros reales es conmutativa, osea que a + b = b +a , entonces podemos decir que las sumas tanto del lado izquierdo como del derecho del igual son iguales; Por lo tanto el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>3) u</b>+(<b>v</b> + <b>w</b>) = (<b>u</b> + <b>v</b>) + <b>w</b></p>\r\n        <p>Lo primero que debemos hacer debería ser sustituir a <b>u,v </b> y <b>w</b> en su forma de par ordenado, no debemos nunca perder de vista que estos son vectores y que tienen una forma de representar \"extendida\".</p>\r\n        <p>Por lo que queda de la siguiente manera:</p>\r\n        <p>(u1, u2) + ((v1, v2) + (w1, w2)) = ((u1, u2) + (v1, v2)) + (w1,w2)</p>\r\n        <p>(u1, u2) + (v1 + w1, v2 + w2) = (u1 + v1, u2 + v2) + (w1, w2) </p>\r\n        <p>Lo que hicimos fue sumar los vectores que estuvieran dentro de un parentesis, como lo fue <b>v</b> y <b>w</b> del lado izquierdo y <b>u, v</b> del lado derecho.</p>\r\n        <p>Por ultimo se suman las componentes del vector faltante.</p>\r\n        <p>(u1 + v1 + w1, u2 + v2 + w2) = (u1 + v1 + w1, u2 + v2 + w2)</p>\r\n        <p>Por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>4) u + 0 = u</b></p>\r\n        <p>No debemos olvidar que este <b>0</b> es el cero vector del espacio vectorial que estamos estudiando, teniendo esto en mente este cero también tendra una representación en R2 formado por dos componentes:</p>\r\n        <p><b>0</b> = (a, b)</p>\r\n        <p>Por lo tanto para poder demostrar el axioma se debe hacer la suma de <b>u + 0</b> y debera dar como resultado <b>u</b>, para esto el vector <b>0</b> debera existir en este espacio vectorial.</p>\r\n        <p>(u1, u2) +(a, b) = (u1, u2) </p>\r\n        <p>Aplicando lo demostrado en el segundo axioma queda:</p>\r\n        <p>(u1 + a , u2 + b) = (u1, u2) </p>\r\n        <p>Para que esto cumpla la primer componente del vector del lado izquierdo debería ser igual a la primer componente del vector del lado derecho, eso también deberá cumplirse con la segunda componente de ambos vectores.</p>\r\n        <p>Por lo que se procedera a hacer lo siguiente:</p>\r\n        <p>u1 + a = u1</p>\r\n        <p>u2 + b = u2</p>\r\n        <p>Y procederemos a despejar <i>a</i> y <i>b</i> de estas igualdades.</p>\r\n        <p>a = u1 - u1      Por lo que a = 0</p>\r\n        <p>b = u2 - u2      Por lo que b = 0</p>\r\n        <p>Por lo tanto el vector <b>0</b> queda formado por las componentes <i>a,b</i> quedando de la siguiente forma:</p>\r\n        <p><b>0</b> = (0, 0)</p>\r\n        <p>Lo que procede es comprobar que realmente <b>u + 0 = u</b></p>\r\n        <p>Por lo que:</p>\r\n        <p>(u1, u2) + (0, 0) = (u1, u2)</p>\r\n        <p>Sumando componente a componente</p>\r\n        <p>(u1 + 0, u2 + 0) = (u1, u2)</p>\r\n        <p>(u1, u2) = (u1, u2)</p>\r\n        <p>Por lo que queda demostrado que el vector <b>0</b> existe y que el axioma se cumple con este vector.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>5) u + (-u) = 0</b></p>\r\n        <p>Para poder demostrar este axioma nos vamos a ayudar del axioma <b>4</b>, la suma de <b>u</b> más un vector negativo debe ser el cero vector.</p>\r\n        <p>La representación de estos vectores en R2 queda de la siguiente manera:</p>\r\n        <p>(u1, u2) + (c, d) = (0, 0) </p>\r\n        <p>Siendo la representación de <b>-u</b> como (c, d)</p>\r\n        <p>Procedemos a sumar componente a componente</p>\r\n        <p>(u1 + c, u2 + d) = (0, 0) </p>\r\n        <p>Al igual que en el axioma <b>4</b> procedemos a igualar las componentes de los vectores:</p>\r\n        <p>u1 + c = 0</p>\r\n        <p>u2 + d = 0</p>\r\n        <p>Despejamos a <i>c</i> y <i>d</i> de las igualdades</p>\r\n        <p>c = -u1 + 0</p>\r\n        <p>d = -u2 + 0</p>\r\n        <p>Por lo que el vector <b>-u</b> queda como:</p>\r\n        <p><b>-u</b> = (-u1. -u2)</p>\r\n        <p>Y finalmente comprobamos que con este nuevo vector el axioma se cumpla</p>\r\n        <p>(u1, u2) + (c, d) = (0, 0) </p>\r\n        <p>(u1 + c, u2 + d) = (0, 0) </p>\r\n        <p>(u1 - u1, u2 - u2) = (0, 0) </p>\r\n        <p>(0, 0) = (0, 0) </p>\r\n        <p>Por lo tanto el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>6)</b> De acuerdo a como esta definida la operación de multiplicación de un vector por un escalar el resultado de esta multiplicación también pertenece a R2 por lo tanto este axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>7)</b> α(<b>u + v</b>) = α<b>u</b> + α<b>v</b></p>\r\n        <p>α es un escalar, es un numero, no es un vector.</p>\r\n        <p>Lo primero que debemos hacer es sustituir la representación de <b>u</b> y <b>v</b> por su representación en componentes:</p>\r\n        <p></b> α(<b>u + v</b>) = α<b>u</b> + α<b>v</b></p>\r\n        <p>α((u1, u2) + (v1, v2)) = α(u1, u2) + α(v1, v2) </p>\r\n        <p>Y procederemos a aplicar el axioma 2 sumando componente a componente del lado izquierdo.</p>\r\n        <p>α(u1 + v1, u2 + v2)</p>\r\n        <p>Y ahora multiplicar el escalar por el vector</p>\r\n        <p>(αu1 + αv1, αu2 + αv2) </p>\r\n        <p>Ahora del lado derecho de la igualdad lo que haremos será multiplicar por el escalar cada vector y luego sumar las componentes resultantes</p>\r\n        <p>(αu1, αu1) + (αv1, αv2) </p>\r\n        <p>(αu1 + αv1, αu2 + αv2)</p>\r\n        <p>Como podemos observar el lado izquiero y derecho de la igualdad son identicas</p>\r\n        <p>(αu1 + αv1, αu2 + αv2) = (αu1 + αv1, αu2 + αv2)</p>\r\n        <p>Por lo tanto el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>8) </b>(α + β)<b>u</b> = α<b>u</b> + β<b>u</b>  </p>\r\n        <p>Para poder demostrar que este axioma se cumple lo primero que hay que hacer es hacer la multiplicación del vector por el escalar del lado izquierdo de la igualdad, dando por resultado:</p>\r\n        <p>α<b>u</b> + β<b>u</b></p>\r\n        <p>procederemos a sustituir la forma del vector a su expresión en R2</p>\r\n        <p>α(u1, u2) + β(u1, u2)</p>\r\n        <p>Si nos fijamos bien, el lado derecho de la igualdad de la expresión original es identica a la expresión anterior por lo que nos queadrá:</p>\r\n        <p>α(u1, u2) + β(u1, u2) = α(u1, u2) + β(u1, u2)</p>\r\n        <p>Por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>9) </b>α(β<b>u</b>) = αβ(<b>u</b>)</p>\r\n        <p>Lo primero que se recomienda hacer es sustituir la forma del vector <b>u</b> por su expresión en R2</p>\r\n        <p>α(β(u1, u2)) = αβ(u1,u2) </p>\r\n        <p>Hacemos la multiplicación del vector por el escalar en ambos lados de la igualdad</p>\r\n        <p>α(βu1, βu2) = (αβu1,αβu2) </p>\r\n        <p>(αβu1, αβu2) = (αβu1,αβu2) </p>\r\n        <p>Por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p><b>10) </b>1<b>u</b> = <b>u</b>  </p>\r\n        <p>Este axioma demuestra la existencia del neutro multiplicativo, para demostrarlo bastará con expresar al vector <b>u</b> en su forma en R2 y multiplicarlo por el escalar uno, el resultado deberá ser <b>u</b>.</p>\r\n        <p>1(u1, u2) = (u1, u2) </p>\r\n        <p>(1u1, 1u2) = (u1, u2) </p>\r\n        <p>(u1, u2) = (u1, u2) </p>\r\n        <p>Por lo que el axioma se cumple.</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Dado que los 10 axiomas se cumplieron podemos concluir que el espacio R2 es un <b>espacio vectorial</b>.</p>\r\n      </div>\r\n    </div>','Espacio Vextorial',1,'2019-08-24 17:49:39.906691',4),(6,'Subespacio Vectorial','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Sea <i>W</i> un subconjunto de un espacio vectorial <i>V</i>. Si <i>W</i> es a su vez un espacio vectorial con respecto a las operaciones de adición y multiplicación definidas en <i>V</i>, se dice entonces que <i>W</i> es un subespacio de <i>V.</i></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h2 class=\"titulo\">Teorema</h2>\r\n        <p>Sea <i>V</i> un espacio vectorial sobre un campo <i>K</i>. Si <i>W</i> es un subconjunto no vacío de <i>V</i>, entonces <i>W</i> será un subespacio de <i>V</i>, si y sólo si, se cumplen las condiciones siguientes:</p>\r\n        <p><b>1)</b> para todo vector <i>u, v</i> que pertenezcan a <i>W</i> entonces (<i>u + v</i>) también pertenecen a <i>W</i></p>\r\n        <p><b>2)</b> Para todo vector <i>u</i> que pertenezca <i>W</i> y para todo α que pertenezca a <i>K</i> entonces (<i>αu</i>) también pertenece a <i>W</i></p>\r\n      </div>\r\n    </div>','Subespacio Vectorial',1,'2019-08-24 17:50:30.210419',5),(7,'Ejemplo de Subespacio','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <h3 class=\"titulo\">Ejemplo</h3>\r\n        <p>Verificar si el conjunto</p>\r\n        <p>L = {(x, 2x, 3x) | x ∈ R} </p>\r\n        <p>Es un subespacio de R3 con las operaciones de adición y multiplicación usuales.</p>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Lo primero que tenemos que verificar que se cumpla es la <b>Cerradura bajo la adición</b> debemos empezar por nombrar dos vecotres <i>u, v</i> que pertenezcan a L.</p>\r\n        <p><i>u</i> = (x1, 2x1, 3x1)</p>\r\n        <p><i>v</i> = (x2, 2x2, 3x2)</p>\r\n        <p>Ahora procederemos a sumar ambos vectores, ya que es la suma habitual procederemos a sumar componente a componente</p>\r\n        <p><i>u + v =</i> (x1 + x2, 2x1 + 2x2, 3x1 + x32) </p>\r\n        <p>Lo anterior lo podemos reescribir de la siguiente manera:</p>\r\n        <p><i>u + v =</i> (x1 + x2, 2(x1 + x2), 3(x1 + x2)) </p>\r\n        <p>La propiedad se cumple</p>\r\n        <p></p>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Lo siguiente es verificar que se cumpla con la propiedad de multiplicación, por lo que procederemos a representar al vector <i>u</i> en su forma de R3 y este siendo multiplicado por α</p>\r\n        <p>α<i>u</i> ∈ <i>W</i></p>\r\n        <p>α(x, 2x, 3x) = (αx, α2x, α3x) </p>\r\n        <p>El resultado pertenece a <i>W</i> por lo tanto la propiedad se cumple.</p>\r\n        <p>Dado que las dos propiedades se cumplen podemos concluir que <b>L es un subespacio vectorial.</b></p>\r\n      </div>\r\n    </div>','Subespacio',1,'2019-08-24 17:51:51.368146',6),(8,'Ejemplo 2 de subespacio','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <h3 class=\"titulo\">Ejemplo</h3>\r\n        <p>Verificar si es subespacio de R3</p>\r\n        <p>D = {(x, y, z) | x-z = -1; x, y, z ∈ R} </p>\r\n        <p>Con las operaciones de adición y multiplicación usuales.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Este tipo de problemas los resolvemos de la misma forma que el anterior, solo que la particularidad de este es que la componente x debe ser expresada en terminos de z</p>\r\n        <p>x - z = -1</p>\r\n        <p>Pero si despejamos a x</p>\r\n        <p>x = z - 1</p>\r\n        <p>Por lo que (x, y, z) pasa a ser  (z + 1, y, z)</p>\r\n        <p>Ahora si con esto en mente procederemos a verificar la primera propiedad.</p>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <p>Debemos verificar que se cumpla la <b>Cerradura bajo la adición</b> debemos empezar por nombrar dos vecotres <i>u, v</i> que pertenezcan a L.</p>\r\n        <p><i>u</i> = (z1 - 1, y1, z1)</p>\r\n        <p><i>v</i> = (z2 - 1, y2, z2)</p>\r\n        <p>Ahora procederemos a sumar ambos vectores, ya que es la suma habitual procederemos a sumar componente a componente</p>\r\n        <p><i>u + v =</i> (z1 + z2 - 2, y1 + y2, z1 + z2) </p>\r\n        <p>Pero no debemos olvidar que la primer componente debe ser la componente en z menos uno, comprobemos que esto aun se cumpla:</p>\r\n        <p>z1 + z2 - 2 != z1 + z2</p>\r\n        <p>No se cumple porque se le esta restando 2 no uno, de acuerdo a la definición dicha arruba debio ser <i>\"z1 + z2 - 1\"</i></p>\r\n        <p>Por lo tanto la propiedad no se cumple por lo que <b>No es un subespacio vectorial.</b></p>\r\n      </div>\r\n    </div>','Ejemplo 2 de subespacio',1,'2019-08-24 17:53:23.166215',7),(9,'Espacios Vectoriales','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Dependencia Lineal</h1>\r\n        <p>Sea <i>A = { v1, v2, ..., vn} </i> un conjunto de vectores. Se dice que <i>A</i> es linealmente independiente si la ecuación</p>\r\n        <p>α1v1 + α2v2 + ... + αnvn = 0</p>\r\n        <p>Solo se satisface cuando α1 = α2 = ... = αn = 0. En caso contrario, es decir, si existen escalares α1, α2, ..., αn no todos nulos, para los cuales se satisface dicha ecuación, entonces se dice que el conjunto <i>A</i> es linealmente dependiente.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Conjunto Gnerador</h1>\r\n        <p>Sea <i>V</i> un espacio vectorial sobre <i>K</i> y sea <i>G = {v1, v2, ..., vn} </i>un conjunto de vectores de <i>V</i>.</p>\r\n        <p>Se dice que <i>G</i> es generador de <i>V</i> si todo vector de <i>V</i> puede expresarse como una combinación lineal de los vectores de <i>G.</i></p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Combinación Líneal</h1>\r\n        <p>Un vector <i>W</i> es una combinación líneal de los vectores <i>v1, v2, v3, ..., vn </i> si pueden ser expresados de la forma: </p>\r\n        <p><i>W = α1v1 + α2v2 + ... + αnvn</i> </p>\r\n        <p>donde α1, α2, ..., αn son escaares.</p>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Base</h1>\r\n        <p>Se define como base de un espacio vectorial <i>V</i>, a cualquier subconjunto <i>B</i> de vectores de <i>V</i> tal que:</p>\r\n        <p><b>1)</b> Cualquier vector de <i>V</i> puede expresarse como una combinación lineal de los vectores de <i>B.</i></p>\r\n        <p><b>2)</b> <i>B</i> es linealmente independiente.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Vector de Coordenadas</h1>\r\n        <p>Sea <i>B = {v1, v2, ..., vn}  </i>una base del espacio vectorial <i>V</i> y sea <i>v</i> un vector cualquiera de <i>V</i> tal que:</p>\r\n        <p><i>v = α1v1 + α2v2 + ...+ αnvn </i></p>\r\n        <p>A los escalares α1, α2, ...,αn se les llama coordenadas de <i>v</i> en la base <i>B</i> y al vector</p>\r\n        <p><i>(v)b = (α1, α2, ...,αn)^T </i></p>\r\n        <p>Se le llama vector de coordenadas de <i>v</i> en la base <i>B.</i></p>\r\n      </div>\r\n    </div>','Dependencias Lineales',1,'2019-08-24 17:54:21.463084',8),(10,'Isomorfismo','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Isomorfismo entre espacios vectoriales</h1>\r\n        <p>Sean <i>U</i> y <i>V</i> dos espacios vectoriales de dimensión finita, definidos sobre un campo <i>K </i>.  Se dice que la función <i>f : U -> V</i> es un isomorfismo de <i>U</i> a <i>V</i>, si <i>f</i> es biyectiva y además cumple con las condiciones siguientes:</p>\r\n        <p><b>1)</b> <i>f(u1 + u2) = f1(u1) + f(u2); para todo u1 y u2 ∈ U </i></p>\r\n        <p><b>2)</b> <i>f(αu) = αf(u); ∀ u ∈ U  y  ∀ α ∈ K  </i></p>\r\n        <p>Los espacios vectoriales isomorfos sólo difieren en la naturaleza de sus elementos, sus propiedades algebraicas son idénticas.</p>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"row\">\r\n      <div class=\"col\">\r\n        <h1 class=\"titulo\">Teoremas</h1>\r\n        <p><b>1)</b> Si <i>V</i> es un espacio vectorial real de dimensión <i>n</i>, entonces <i>V</i> es isomorfo a <i>R^n</i></p>\r\n        <p><b>2)</b> Todo espacio vectorial es isomorfo a sí mismo.</p>\r\n        <p><b>3)</b> Si un espacio vectorial <i>V</i> es isomorfo a otro espacio <i>W</i>, entonces <i>W</i> es isomorfo a <i>V</i>.</p>\r\n        <p><b>4)</b> Si un espacio vectorial <i>U</i> es isomorfo a un espacio <i>V</i> y <i>V</i> es a su vez isomorfo a un espacio <i>W</i> ,entonces <i>U</i> es isomorfo a <i>W.</i></p>\r\n        <p><b>5)</b> Dos espacios vectoriales de igual dimensión son isomorfos.</p>\r\n      </div>\r\n    </div>','Isomorfismo',1,'2019-08-24 17:55:06.193910',9),(11,'Ejemplo de Combinación Lineal','<div class=\"row\">\r\n      <div class=\"col\">\r\n        <h2>Ejemplo combinación Lineal</h2>\r\n        <p>Sean <i>u = (1,2,3)</i> y <i>v=(-1,3,1)</i> vectores de R3. Expresar al vector <i>w = (3,1,3)</i> como una combinación lineal de <i>u</i> y <i>v.</i>  </p>\r\n        <p>Una combinación lineal es como jugar con Legos, supongamos que tenemos dos piezas, una de color verde y una de color azul, y con piezas de esos dos colores debemos hacer figuras, pero ojo, las figuras que hagamos solo podran contener piezas de esos colores, si quisieramos usar piezas de otro color dejaria de ser una combinación lineal. Entonces para hacer una figura necesitamos distinto numero de piezas de color verde y azul, pueden ser una,dos, tres, mil, pero deben ser del mismo color.</p>\r\n        <p>Regresando al ejercicio, debemos formar al vector <i>w</i> a partir de <i>u, v</i>, debemos ver como con estos dos vectores y algun escalar podemos formar a w. </p>\r\n        <p>para esto haremos:</p>\r\n        <p>a(1,2,2) + b(-1,3,1) = (3,1,3) </p>\r\n        <p>Si lo ponemos de este modo sería como una representación en forma de ecuación, entonces debemos buscar el valor de a y b que hagan que se cumpla esta igualdad.</p>\r\n        <p>Multipliquemos a y b por cada vector, y sumemos los vectores resultantes. </p>\r\n        <p>(a, 2a, 2a) + (-b, 3b, b) = (3,1,3) </p>\r\n        <p>Y ahora sumamos, la suma es componente a componente. </p>\r\n        <p>(a - b, 2a + 3b, 2a + b) = (3,1,3) <b>0</b> </p>\r\n        <p>Para que dos vectores sean iguales deben ser iguales componente a componente, por lo que debemos hayar el valor de a y b que hagan que esto se cumpla, plantearemos las siguientes ecuaciones:</p>\r\n        <p>a-b=3     <b>1</b> </p>\r\n        <p>2a+3b=1   <b>2</b> </p>\r\n        <p>2a+b=3    <b>3</b> </p>\r\n        <p>Y con estas igualdades formamos un sistema de ecuaciones, se da por hecho que el alumno ya sabe resolver dichos sistemas, si no se recuerda bien este concepto se recomienda un repaso de este tema.</p>\r\n        <p>Lo siguiente es resolver dicho sistema de ecuaciones, durante este ejemplo se hará por sustitución:</p>\r\n        <p>De <b>1</b> podemos despejar a, por lo que  </p>\r\n        <p>a = b + 3  <b>4</b> </p>\r\n        <p>El valor de <b>4</b> lo podemos sustituir en <b>2</b>  </p>\r\n        <p>2(3 + b) +3b = 1 </p>\r\n        <p>6 + 2b + 3b = 1 </p>\r\n        <p>6 + 5b = 1 </p>\r\n        <p>5b = -5 </p>\r\n        <p>b = -1 </p>\r\n        <p>Este es el valor de b, lo sustituimos en <b>3</b>  </p>\r\n        <p>2a + b = 3</p>\r\n        <p>2a -1 = 3 </p>\r\n        <p>2a = 4 </p>\r\n        <p>a = 2</p>\r\n        <p>Bien, ya con los valores de a y b comprobemos que realmente las igualdades se cumplen sustituyendo esos valores en <b>0.</b> </p>\r\n        <p>(a - b, 2a + 3b, 2a + b) = (3,1,3) <b>0</b> </p>\r\n        <p>(2 - (-1) , 2(2) + 3(-1), 2(2) + (-1)) </p>\r\n        <p>(2 + 1, 4 - 3, 4 -1) </p>\r\n        <p>(3, 1, 3) </p>\r\n        <p>Por lo que vemos que el vector <b>w</b> puede ser formado por combinación lineal de <i>u y v</i>. </p>\r\n      </div>\r\n    </div>','Ejemplo de Combinación Lineal',1,'2019-08-24 17:55:57.542985',10);
/*!40000 ALTER TABLE `entradas_entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_profile`
--

DROP TABLE IF EXISTS `usuarios_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_profile`
--

LOCK TABLES `usuarios_profile` WRITE;
/*!40000 ALTER TABLE `usuarios_profile` DISABLE KEYS */;
INSERT INTO `usuarios_profile` VALUES (1,'2019-08-25 16:03:22.778404',3),(2,'2019-08-25 16:37:10.995652',4),(3,'2019-08-25 16:40:39.342506',5),(4,'2019-08-26 14:56:39.559528',6);
/*!40000 ALTER TABLE `usuarios_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-26 11:42:47
