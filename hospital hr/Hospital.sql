-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_token`
--

DROP TABLE IF EXISTS `access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_token` (
  `token_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_token`
--

LOCK TABLES `access_token` WRITE;
/*!40000 ALTER TABLE `access_token` DISABLE KEYS */;
INSERT INTO `access_token` VALUES (57,'5accf85cb6a7f06f0aa2968deadaec1b',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(58,'46ff1d4d07714f046ba07b34bffe0af9',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(59,'ed9d6cba9826fda1beafcd9326be7a86',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(60,'c99763c1833ea0785d9e2b81da3fd28f',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(61,'33fbfaccd6d1cb9143e4129bd919d4b0',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(62,'493e13da5f293ba67a56a0fe3e1fa6cf',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(63,'c4b48e9e2160db09c703041a8fee0a1f',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(64,'d13cdaefd3823c360c959a02a262f71d',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(65,'6c6ff426fd77ea5a2025ce5ed2e42c8a',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(66,'80930065a61ffcdd5cbb75f60932973c',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(67,'94114763cf2e3b020495d8a27096d4ef',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(68,'761052c551c97c9317bc3aa475c85b84',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(69,'7c44ef14131a0ba7c16aa16cef104065',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(70,'96380f3d9542c80d04bdade1cf7635a5',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(71,'bfdc7acfcbf5763fda81945b60961222',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(72,'170a598e51ae8ae2badde20a42fe171d',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(73,'c82c357488c75926a92d8a9608d4b367',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(74,'4d35290c023f407a820f37dbbb1ceb09',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(75,'8d19162776682b695c0f62f3c7a92fec',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(76,'a7ea2cdc9a2be179e19200e593ad5a69',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(77,'c79a554f9832adc01f19682c5d576bc4',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(78,'1c7d95001fa09951a679841c8100ad1f',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(79,'776da1bcdd01ddb3cbf0a37fa13fc5b0',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(80,'d336e88e57c329d0166931292c1fac41',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(81,'37a40f526a6c82fc6110b512802d35bf',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(82,'691ad331771f4109206d58aeee572371',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(83,'9942e458886219960d3344b4a6a6fbec',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(84,'e9939a8b7ccf9f548f0bbb5664981f96',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(85,'f5b27912060d1909bef61fab9d96faae',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(86,'7c5888682f1d449eb1b62f0054a79fbf',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(87,'00dfdc6ac21c4a9da80fd71c990764d1',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(88,'3cce592bc72840ab932ce96d85a194da',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(89,'43fdaa989a644ad683ef4b4d488e8629',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(90,'d6a3cecadacff0dbd6b43b25372cc2a2',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(91,'5570bc5b07b3589f4ef8553bd46eb0d1',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(92,'5570bc5b07b3589f4ef8553bd46eb0d1',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(93,'26c553bd2ee2ab6605d18dfd310d85f9',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(94,'3fd52f81236ed2c37ff91a6696d4e47a',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(95,'893332e9ee67d60d8312b3700c58a359',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(96,'b7844068ade535b2e517df4a40948703',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(97,'179b37a5e1893c3af6b946bd5a1c8625',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(98,'3a47b8a040a83ebbc9194cb255dc668c',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(99,'afa60196afb77dcc2b520ed13a817560',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(100,'7fc6d9b324f8c0a3a1784d04ef132692',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(101,'84e31b291f2bde6b7ceb27af5fe8eee3',NULL,2,'2023-04-28 10:21:49','2024-06-16 11:04:35',1),(102,'644f7700fc144405a13a250746bb6597',NULL,2,'2024-06-11 11:49:55','2024-06-16 11:04:35',1),(104,'1a155ca448e341448ba9452df86066ca',NULL,2,'2024-06-12 05:32:08','2024-06-16 11:04:35',1),(107,'b92e9ab810af4d50b66e94c98b8fee27',NULL,2,'2024-06-12 12:25:33','2024-06-16 11:04:35',1),(108,'c728b08648994a36a4ece5fb5fd512d9',NULL,2,'2024-06-13 10:08:34','2024-06-16 11:04:35',1),(109,'517b690dec75475cb4cecda4ce956109',NULL,2,'2024-06-13 13:00:53','2024-06-16 11:04:35',1),(110,'c3d4b647228b40e6b0f8be67ad875086',NULL,2,'2024-06-16 08:33:46','2024-06-16 11:04:35',1),(111,'911890fcff244847a3f4d9a97788f41b',NULL,2,'2024-06-16 10:55:05','2024-06-16 11:04:35',1),(127,'0cb4b574bd944bda8a63f04df20dae4a',NULL,2,'2024-06-22 07:10:45','2024-06-22 07:10:45',1),(128,'40ec5de67f9e45499322cb09736fa41d',NULL,2,'2024-06-22 07:11:00','2024-06-22 07:11:00',1);
/*!40000 ALTER TABLE `access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_review`
--

DROP TABLE IF EXISTS `archive_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_review` (
  `archive_review_id` int NOT NULL AUTO_INCREMENT COMMENT '档案审核ID',
  `head_nurse` int DEFAULT '0' COMMENT '护士长',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `gender` varchar(64) DEFAULT NULL COMMENT '性别',
  `id_no` varchar(64) DEFAULT NULL COMMENT '身份证号码',
  `marital_status` varchar(64) DEFAULT NULL COMMENT '婚姻状态',
  `native_place` varchar(64) DEFAULT NULL COMMENT '籍贯',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `nation` varchar(64) DEFAULT NULL COMMENT '民族',
  `political_landscape` varchar(64) DEFAULT NULL COMMENT '政治面貌',
  `contact_number` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `e_mail` varchar(64) DEFAULT NULL COMMENT '电子邮箱',
  `home_address` varchar(64) DEFAULT NULL COMMENT '家庭住址',
  `family_contact` varchar(64) DEFAULT NULL COMMENT '家庭联系人',
  `contact_phone_number` varchar(64) DEFAULT NULL COMMENT '联系人电话',
  `date_of_participation_in_work` date DEFAULT NULL COMMENT '参加工作日期',
  `date_of_work_in_the_hospital` date DEFAULT NULL COMMENT '来院工作日期',
  `nursing_age` varchar(64) DEFAULT NULL COMMENT '护龄',
  `education` varchar(64) DEFAULT NULL COMMENT '学历',
  `title` varchar(64) DEFAULT NULL COMMENT '职称',
  `age` varchar(64) DEFAULT NULL COMMENT '年龄',
  `nursing_department` int DEFAULT '0' COMMENT '护理部',
  `audit_status` varchar(64) DEFAULT NULL COMMENT '审核状态',
  `review_comments` text COMMENT '审核意见',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`archive_review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='档案审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_review`
--

LOCK TABLES `archive_review` WRITE;
/*!40000 ALTER TABLE `archive_review` DISABLE KEYS */;
INSERT INTO `archive_review` VALUES (1,0,1001,'杨豪平','性别1','身份证号码1','婚姻状态1','籍贯1','生日1','民族1','政治面貌1','联系电话1','电子邮箱1','家庭住址1','家庭联系人1','联系人电话1','2023-04-10','2023-04-10','护龄1','学历1','职称1','年龄1',0,'未审核','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2024-06-16 19:04:35','2024-06-22 05:30:37'),(2,0,0,'护士姓名2','性别2','身份证号码2','婚姻状态2','籍贯2','生日2','民族2','政治面貌2','联系电话2','电子邮箱2','家庭住址2','家庭联系人2','联系人电话2','2023-04-10','2023-04-10','护龄2','学历2','职称2','年龄2',0,'审核状态2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(3,0,0,'护士姓名3','性别3','身份证号码3','婚姻状态3','籍贯3','生日3','民族3','政治面貌3','联系电话3','电子邮箱3','家庭住址3','家庭联系人3','联系人电话3','2023-04-10','2023-04-10','护龄3','学历3','职称3','年龄3',0,'审核状态3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(4,0,0,'护士姓名4','性别4','身份证号码4','婚姻状态4','籍贯4','生日4','民族4','政治面貌4','联系电话4','电子邮箱4','家庭住址4','家庭联系人4','联系人电话4','2023-04-10','2023-04-10','护龄4','学历4','职称4','年龄4',0,'审核状态4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(5,0,0,'护士姓名5','性别5','身份证号码5','婚姻状态5','籍贯5','生日5','民族5','政治面貌5','联系电话5','电子邮箱5','家庭住址5','家庭联系人5','联系人电话5','2023-04-10','2023-04-10','护龄5','学历5','职称5','年龄5',0,'审核状态5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(6,0,0,'护士姓名6','性别6','身份证号码6','婚姻状态6','籍贯6','生日6','民族6','政治面貌6','联系电话6','电子邮箱6','家庭住址6','家庭联系人6','联系人电话6','2023-04-10','2023-04-10','护龄6','学历6','职称6','年龄6',0,'审核状态6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(7,0,0,'护士姓名7','性别7','身份证号码7','婚姻状态7','籍贯7','生日7','民族7','政治面貌7','联系电话7','电子邮箱7','家庭住址7','家庭联系人7','联系人电话7','2023-04-10','2023-04-10','护龄7','学历7','职称7','年龄7',0,'审核状态7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(8,0,0,'护士姓名8','性别8','身份证号码8','婚姻状态8','籍贯8','生日8','民族8','政治面貌8','联系电话8','电子邮箱8','家庭住址8','家庭联系人8','联系人电话8','2023-04-10','2023-04-10','护龄8','学历8','职称8','年龄8',0,'审核状态8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2024-06-16 19:04:35','2024-06-16 11:05:14'),(9,0,0,'护士姓名2','性别2','身份证号码2','婚姻状态2','籍贯2','生日2','民族2','政治面貌2','联系电话2','电子邮箱2','家庭住址2','家庭联系人2','联系人电话2','2023-04-10','2023-04-10','护龄2','学历2','职称2','年龄2',1,'审核不通过','',0,'2024-06-22 10:36:13','2024-06-22 02:37:19'),(10,0,1001,'杨豪平','男','身份证号码1','婚姻状态1','籍贯1','生日1','民族1','政治面貌1','联系电话1','电子邮箱1','家庭住址1','家庭联系人1','联系人电话1','2023-04-10','2023-04-10','护龄1','学历1','职称1','10000',1,'通过审核','',0,'2024-06-22 13:33:26','2024-06-22 05:33:26'),(11,0,1001,'杨豪平','男','身份证号码1','婚姻状态1','籍贯1','生日1','民族1','政治面貌1','联系电话1','电子邮箱1','家庭住址1','家庭联系人1','联系人电话1','2023-04-10','2023-04-10','护龄1','学历1','职称1','99',1,'审核不通过','',0,'2024-06-22 14:57:48','2024-06-22 06:57:48');
/*!40000 ALTER TABLE `archive_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `auth_id` int NOT NULL AUTO_INCREMENT,
  `add` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del` int DEFAULT NULL,
  `field_add` varchar(255) DEFAULT NULL,
  `field_get` varchar(255) DEFAULT NULL,
  `field_set` varchar(255) DEFAULT NULL,
  `get` int DEFAULT NULL,
  `mod_name` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `set` int DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `table_nav` bit(1) DEFAULT NULL,
  `table_nav_name` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `user_group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,1,'2024-06-12 18:18:22.000000',1,'','','',1,'系统管理','_blank','','用户管理','/user/table','侧边栏',1,'user',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(2,1,'2024-06-12 18:18:22.000000',1,'','','',1,'系统管理','_blank','','用户组管理','/user_group/table','侧边栏',1,'user_group',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(3,1,'2024-06-12 18:18:22.000000',1,'','','',1,'护士管理','_blank','','护士用户','/nurse_users/table','侧边栏',1,'nurse_users',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(4,1,'2024-06-12 18:18:22.000000',1,'','','',1,'护士管理','_blank','','护士长管理','/head_nurse/table','侧边栏',1,'head_nurse',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(5,1,'2024-06-12 18:18:22.000000',1,'','','',1,'护理部门管理','_blank','','护理部管理','/nursing_department/table','侧边栏',1,'nursing_department',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(6,1,'2024-06-12 18:18:22.000000',1,'','','',1,'科室病区管理','_blank','','科室病区管理','/department_ward/table','侧边栏',1,'department_ward',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(7,1,'2024-06-12 18:18:22.000000',1,'','','',1,'护士档案管理','_blank','','护士档案管理','/nurse_files/table','侧边栏',1,'nurse_files',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(8,1,'2024-06-12 18:18:22.000000',1,'','','',1,'档案审核','_blank','','档案审核管理','/archive_review/table','侧边栏',1,'archive_review',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(10,1,'2024-06-12 18:18:22.000000',1,'','','',1,'机动护士','_blank','','机动护士管理','/mobile_nurse/table','侧边栏',1,'mobile_nurse',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(11,1,'2024-06-12 18:18:22.000000',1,'','','',1,'调配记录','_blank','','调配记录管理','/deployment_record/table','侧边栏',1,'deployment_record',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(12,1,'2024-06-12 18:18:22.000000',1,'','','',1,'变动记录','_blank','','变动记录管理','/change_record/table','侧边栏',1,'change_record',_binary '\0','','2024-06-12 18:18:22.000000','管理员'),(18,0,'2024-06-22 09:54:07.000000',0,'','','',1,'护理部门管理','_blank','','护理部管理','/nursing_department/table','侧边栏',0,'nursing_department',_binary '\0','','2024-06-22 09:53:55.000000','护士用户'),(19,0,'2024-06-22 10:09:26.000000',1,'','','',1,'护士档案管理','_blank','','护士档案管理','/nurse_files/table','侧边栏',1,'nurse_files',_binary '\0','','2024-06-22 10:09:16.000000','护士用户');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_record`
--

DROP TABLE IF EXISTS `change_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_record` (
  `change_record_id` int NOT NULL AUTO_INCREMENT COMMENT '变动记录ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) DEFAULT NULL COMMENT '所属大科',
  `contact_number` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `change_type` varchar(64) DEFAULT NULL COMMENT '变动类型',
  `operator` varchar(64) DEFAULT NULL COMMENT '操作人',
  `change_time` date DEFAULT NULL COMMENT '变动时间',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`change_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='变动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_record`
--

LOCK TABLES `change_record` WRITE;
/*!40000 ALTER TABLE `change_record` DISABLE KEYS */;
INSERT INTO `change_record` VALUES (1,1001,'杨豪平','所属大科1','联系电话1','变动类型1','操作人1','2023-04-10',0,'2024-06-16 19:04:35','2024-06-22 05:56:28'),(2,0,'护士姓名2','所属大科2','联系电话2','变动类型2','操作人2','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(3,0,'护士姓名3','所属大科3','联系电话3','变动类型3','操作人3','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(4,0,'护士姓名4','所属大科4','联系电话4','变动类型4','操作人4','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(5,0,'护士姓名5','所属大科5','联系电话5','变动类型5','操作人5','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(6,0,'护士姓名6','所属大科6','联系电话6','变动类型6','操作人6','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(7,0,'护士姓名7','所属大科7','联系电话7','变动类型7','操作人7','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(8,0,'护士姓名8','所属大科8','联系电话8','变动类型8','操作人8','2023-04-10',0,'2024-06-16 19:04:35','2024-06-16 11:05:36'),(9,0,'护士姓名2','所属大科2','联系电话2','出库','admin','2024-06-22',0,'2024-06-22 14:03:19','2024-06-22 06:03:19'),(10,1001,'杨豪平','所属大科1','联系电话1','出库','admin','2024-06-01',0,'2024-06-22 14:59:26','2024-06-22 06:59:26');
/*!40000 ALTER TABLE `change_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dake_approval`
--

DROP TABLE IF EXISTS `dake_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dake_approval` (
  `dake_approval_id` int NOT NULL AUTO_INCREMENT COMMENT '大科审批ID',
  `ward_head_nurse` int DEFAULT '0' COMMENT '病区护士长',
  `leave_labor_number` varchar(64) DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) DEFAULT NULL COMMENT '休假起止日期',
  `chief_nurse_of_major_department` int DEFAULT '0' COMMENT '大科护士长',
  `date_of_approval_by_dake` date DEFAULT NULL COMMENT '大科批准日期',
  `progress_of_major_department_approval` varchar(64) DEFAULT NULL COMMENT '大科审批进度',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`dake_approval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='大科审批';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dake_approval`
--

LOCK TABLES `dake_approval` WRITE;
/*!40000 ALTER TABLE `dake_approval` DISABLE KEYS */;
INSERT INTO `dake_approval` VALUES (1,0,'请假人工号1','请假人姓名1','病区1','休假原因1','','授权人1','休假起止日期1',0,'2023-04-10','大科审批进度1',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(2,0,'请假人工号2','请假人姓名2','病区2','休假原因2','','授权人2','休假起止日期2',0,'2023-04-10','大科审批进度2',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(3,0,'请假人工号3','请假人姓名3','病区3','休假原因3','','授权人3','休假起止日期3',0,'2023-04-10','大科审批进度3',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(4,0,'请假人工号4','请假人姓名4','病区4','休假原因4','','授权人4','休假起止日期4',0,'2023-04-10','大科审批进度4',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(5,0,'请假人工号5','请假人姓名5','病区5','休假原因5','','授权人5','休假起止日期5',0,'2023-04-10','大科审批进度5',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(6,0,'请假人工号6','请假人姓名6','病区6','休假原因6','','授权人6','休假起止日期6',0,'2023-04-10','大科审批进度6',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(7,0,'请假人工号7','请假人姓名7','病区7','休假原因7','','授权人7','休假起止日期7',0,'2023-04-10','大科审批进度7',0,'2024-06-16 19:04:35','2024-06-16 11:05:47'),(8,0,'请假人工号8','请假人姓名8','病区8','休假原因8','','授权人8','休假起止日期8',0,'2023-04-10','大科审批进度8',0,'2024-06-16 19:04:35','2024-06-16 11:05:47');
/*!40000 ALTER TABLE `dake_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_ward`
--

DROP TABLE IF EXISTS `department_ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_ward` (
  `department_ward_id` int NOT NULL AUTO_INCREMENT COMMENT '科室病区ID',
  `department_name` varchar(64) DEFAULT NULL COMMENT '科室名称',
  `department_type` varchar(64) DEFAULT NULL COMMENT '科室类型',
  `contact_number` varchar(16) DEFAULT NULL COMMENT '联系电话',
  `number_of_nurses` int DEFAULT '0' COMMENT '护士人数',
  `operating_duty` text COMMENT '工作职责',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`department_ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='科室病区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_ward`
--

LOCK TABLES `department_ward` WRITE;
/*!40000 ALTER TABLE `department_ward` DISABLE KEYS */;
INSERT INTO `department_ward` VALUES (1,'科室名称1','科室类型1','67336911844',1,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(2,'科室名称2','科室类型2','223-61963833',2,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(3,'科室名称3','科室类型3','88876138314',3,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(4,'科室名称4','科室类型4','96671101295',4,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(5,'科室名称5','科室类型5','309-84623929',5,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(6,'科室名称6','科室类型6','163-03674942',6,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(7,'科室名称7','科室类型7','6366-06192184',7,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58'),(8,'科室名称8','科室类型8','574-94866896',8,'1',0,'2024-06-16 19:04:35','2024-06-16 11:05:58');
/*!40000 ALTER TABLE `department_ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deployment_record`
--

DROP TABLE IF EXISTS `deployment_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deployment_record` (
  `deployment_record_id` int NOT NULL AUTO_INCREMENT COMMENT '调配记录ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) DEFAULT NULL COMMENT '所属大科',
  `allocation_of_wards` varchar(64) DEFAULT NULL COMMENT '调配病区',
  `start_time` date DEFAULT NULL COMMENT '开始时间',
  `end_time` date DEFAULT NULL COMMENT '结束时间',
  `score` varchar(64) DEFAULT NULL COMMENT '评分',
  `evaluation_content` text COMMENT '评价内容',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`deployment_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='调配记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deployment_record`
--

LOCK TABLES `deployment_record` WRITE;
/*!40000 ALTER TABLE `deployment_record` DISABLE KEYS */;
INSERT INTO `deployment_record` VALUES (1,1001,'杨豪平','所属大科1','调配病区1','2024-06-22','2024-06-22','评分1','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2024-06-16 19:04:35','2024-06-22 05:47:20'),(2,0,'护士姓名2','所属大科2','调配病区2','2023-04-18','2024-06-22','评分2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2024-06-16 19:04:35','2024-06-22 05:47:25'),(3,0,'护士姓名3','所属大科3','调配病区3','2024-06-22','2024-06-22','评分3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2024-06-16 19:04:35','2024-06-22 05:47:32'),(4,0,'护士姓名4','所属大科4','调配病区4','2024-06-22','2023-04-10','评分4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2024-06-16 19:04:35','2024-06-22 05:47:05'),(5,0,'护士姓名5','所属大科5','调配病区5','2024-06-22','2023-04-10','评分5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2024-06-16 19:04:35','2024-06-22 05:47:09'),(6,0,'护士姓名6','所属大科6','调配病区6','2024-06-22','2023-04-10','评分6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2024-06-16 19:04:35','2024-06-22 05:47:16'),(7,0,'护士姓名7','所属大科7','调配病区7','2023-04-10','2023-04-10','评分7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2024-06-16 19:04:35','2024-06-16 11:06:06'),(8,0,'护士姓名8','所属大科8','调配病区8','2023-04-10','2023-04-10','评分8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2024-06-16 19:04:35','2024-06-16 11:06:06'),(9,1001,'杨豪平','所属大科1','调配病区10','2024-06-04','2024-06-22','100','嗯',0,'2024-06-22 14:02:20','2024-06-22 06:02:20'),(10,1001,'杨豪平','所属大科1','调配病区100','2024-06-01','2024-06-22','100','啊啊啊',0,'2024-06-22 14:58:57','2024-06-22 06:58:57');
/*!40000 ALTER TABLE `deployment_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `head_nurse`
--

DROP TABLE IF EXISTS `head_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `head_nurse` (
  `head_nurse_id` int NOT NULL AUTO_INCREMENT COMMENT '护士长ID',
  `nurse_head_job_number` varchar(64) NOT NULL COMMENT '护士长工号',
  `nurse_head_name` varchar(64) DEFAULT NULL COMMENT '护士长姓名',
  `position` varchar(64) DEFAULT NULL COMMENT '职位',
  `examine_state` varchar(16) NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`head_nurse_id`),
  UNIQUE KEY `nurse_head_job_number` (`nurse_head_job_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8mb3 COMMENT='护士长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_nurse`
--

LOCK TABLES `head_nurse` WRITE;
/*!40000 ALTER TABLE `head_nurse` DISABLE KEYS */;
INSERT INTO `head_nurse` VALUES (1,'HN001','金正阳','护士长','已通过',0,1004,'2024-06-12 09:00:00','2024-06-16 11:01:11'),(2,'HN002','潘伟杰','护士长','已通过',0,1005,'2024-06-12 09:00:00','2024-06-16 11:01:14'),(3,'HN003','黄培宇','护士长','已通过',0,1006,'2024-06-12 09:00:00','2024-06-16 11:01:17');
/*!40000 ALTER TABLE `head_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hits`
--

DROP TABLE IF EXISTS `hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hits` (
  `hits_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源字段：',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hits`
--

LOCK TABLES `hits` WRITE;
/*!40000 ALTER TABLE `hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_application`
--

DROP TABLE IF EXISTS `leave_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_application` (
  `leave_application_id` int NOT NULL AUTO_INCREMENT COMMENT '休假申请ID',
  `ward_head_nurse` int DEFAULT '0' COMMENT '病区护士长',
  `leave_labor_number` varchar(64) DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) DEFAULT NULL COMMENT '休假起止日期',
  `leave_duration` varchar(64) DEFAULT NULL COMMENT '请假时长',
  `approval_progress` varchar(64) DEFAULT NULL COMMENT '审批进度',
  `chief_nurse_of_major_department` int DEFAULT '0' COMMENT '大科护士长',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`leave_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='休假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_application`
--

LOCK TABLES `leave_application` WRITE;
/*!40000 ALTER TABLE `leave_application` DISABLE KEYS */;
INSERT INTO `leave_application` VALUES (1,0,'请假人工号1','请假人姓名1','病区1','休假原因1','','授权人1','休假起止日期1','8','审批进度1',0,0,'2023-04-10 17:33:06','2024-06-13 13:23:24'),(2,0,'请假人工号2','请假人姓名2','病区2','休假原因2','','授权人2','休假起止日期2','7','审批进度2',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:13'),(3,0,'请假人工号3','请假人姓名3','病区3','休假原因3','','授权人3','休假起止日期3','6','审批进度3',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:15'),(4,0,'请假人工号4','请假人姓名4','病区4','休假原因4','','授权人4','休假起止日期4','5','审批进度4',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:17'),(5,0,'请假人工号5','请假人姓名5','病区5','休假原因5','','授权人5','休假起止日期5','4','审批进度5',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:20'),(6,0,'请假人工号6','请假人姓名6','病区6','休假原因6','','授权人6','休假起止日期6','3','审批进度6',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:22'),(7,0,'请假人工号7','请假人姓名7','病区7','休假原因7','','授权人7','休假起止日期7','2','审批进度7',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:25'),(8,0,'请假人工号8','请假人姓名8','病区8','休假原因8','','授权人8','休假起止日期8','1','审批进度8',0,0,'2023-04-10 17:33:06','2024-06-13 13:24:28');
/*!40000 ALTER TABLE `leave_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_nurse`
--

DROP TABLE IF EXISTS `mobile_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_nurse` (
  `mobile_nurse_id` int NOT NULL AUTO_INCREMENT COMMENT '机动护士ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) DEFAULT NULL COMMENT '所属大科',
  `state` varchar(64) DEFAULT NULL COMMENT '状态',
  `allocation_of_wards` varchar(64) DEFAULT NULL COMMENT '调配病区',
  `contact_number` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `warehousing_time` date DEFAULT NULL COMMENT '入库时间',
  `deployment_status` varchar(64) DEFAULT NULL COMMENT '调配状态',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`mobile_nurse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='机动护士';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_nurse`
--

LOCK TABLES `mobile_nurse` WRITE;
/*!40000 ALTER TABLE `mobile_nurse` DISABLE KEYS */;
INSERT INTO `mobile_nurse` VALUES (1,1001,'杨豪平','所属大科1','已调配','调配病区100','联系电话1','2024-06-06','调配状态1',0,'2024-06-15 19:04:35','2024-06-22 06:58:32'),(2,0,'护士姓名2','所属大科2','状态2','调配病区2','联系电话2','2023-04-10','调配状态2',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(3,0,'护士姓名3','所属大科3','状态3','调配病区3','联系电话3','2023-04-10','调配状态3',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(4,0,'护士姓名4','所属大科4','状态4','调配病区4','联系电话4','2023-04-10','调配状态4',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(5,0,'护士姓名5','所属大科5','状态5','调配病区5','联系电话5','2023-04-10','调配状态5',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(6,0,'护士姓名6','所属大科6','状态6','调配病区6','联系电话6','2023-04-10','调配状态6',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(7,0,'护士姓名7','所属大科7','状态7','调配病区7','联系电话7','2023-04-10','调配状态7',0,'2024-06-15 19:04:35','2024-06-15 11:04:35'),(8,0,'护士姓名8','所属大科8','状态8','调配病区8','联系电话8','2023-04-10','调配状态8',0,'2024-06-15 19:04:35','2024-06-15 11:04:35');
/*!40000 ALTER TABLE `mobile_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `night_shift_access`
--

DROP TABLE IF EXISTS `night_shift_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `night_shift_access` (
  `night_shift_access_id` int NOT NULL AUTO_INCREMENT COMMENT '夜班准入ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) DEFAULT NULL COMMENT '所属大科',
  `approval_status` varchar(64) DEFAULT NULL COMMENT '审批状态',
  `approved_department` varchar(64) DEFAULT NULL COMMENT '已审批科室',
  `application_date` date DEFAULT NULL COMMENT '申请日期',
  `approval_date` date DEFAULT NULL COMMENT '批准日期',
  `application_materials` varchar(255) DEFAULT NULL COMMENT '申请资料',
  `passed_department` varchar(64) DEFAULT NULL COMMENT '已通过科室',
  `approval_deadline` date DEFAULT NULL COMMENT '审批截止日期',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`night_shift_access_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='夜班准入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `night_shift_access`
--

LOCK TABLES `night_shift_access` WRITE;
/*!40000 ALTER TABLE `night_shift_access` DISABLE KEYS */;
INSERT INTO `night_shift_access` VALUES (1,0,'护士姓名1','所属大科1','审批状态1','已审批科室1','2023-04-10','2023-04-10','','已通过科室1','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(2,0,'护士姓名2','所属大科2','审批状态2','已审批科室2','2023-04-10','2023-04-10','','已通过科室2','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(3,0,'护士姓名3','所属大科3','审批状态3','已审批科室3','2023-04-10','2023-04-10','','已通过科室3','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(4,0,'护士姓名4','所属大科4','审批状态4','已审批科室4','2023-04-10','2023-04-10','','已通过科室4','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(5,0,'护士姓名5','所属大科5','审批状态5','已审批科室5','2023-04-10','2023-04-10','','已通过科室5','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(6,0,'护士姓名6','所属大科6','审批状态6','已审批科室6','2023-04-10','2023-04-10','','已通过科室6','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(7,0,'护士姓名7','所属大科7','审批状态7','已审批科室7','2023-04-10','2023-04-10','','已通过科室7','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21'),(8,0,'护士姓名8','所属大科8','审批状态8','已审批科室8','2023-04-10','2023-04-10','','已通过科室8','2023-04-10',0,'2024-06-14 14:04:35','2024-06-16 11:07:21');
/*!40000 ALTER TABLE `night_shift_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_files`
--

DROP TABLE IF EXISTS `nurse_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse_files` (
  `nurse_files_id` int NOT NULL AUTO_INCREMENT COMMENT '护士档案ID',
  `head_nurse` int DEFAULT '0' COMMENT '护士长',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `gender` varchar(64) DEFAULT NULL COMMENT '性别',
  `id_no` varchar(64) DEFAULT NULL COMMENT '身份证号码',
  `marital_status` varchar(64) DEFAULT NULL COMMENT '婚姻状态',
  `native_place` varchar(64) DEFAULT NULL COMMENT '籍贯',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `nation` varchar(64) DEFAULT NULL COMMENT '民族',
  `political_landscape` varchar(64) DEFAULT NULL COMMENT '政治面貌',
  `contact_number` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `e_mail` varchar(64) DEFAULT NULL COMMENT '电子邮箱',
  `home_address` varchar(64) DEFAULT NULL COMMENT '家庭住址',
  `family_contact` varchar(64) DEFAULT NULL COMMENT '家庭联系人',
  `contact_phone_number` varchar(64) DEFAULT NULL COMMENT '联系人电话',
  `date_of_participation_in_work` date DEFAULT NULL COMMENT '参加工作日期',
  `date_of_work_in_the_hospital` date DEFAULT NULL COMMENT '来院工作日期',
  `nursing_age` varchar(64) DEFAULT NULL COMMENT '护龄',
  `education` varchar(64) DEFAULT NULL COMMENT '学历',
  `title` varchar(64) DEFAULT NULL COMMENT '职称',
  `age` varchar(64) DEFAULT NULL COMMENT '年龄',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`nurse_files_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='护士档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_files`
--

LOCK TABLES `nurse_files` WRITE;
/*!40000 ALTER TABLE `nurse_files` DISABLE KEYS */;
INSERT INTO `nurse_files` VALUES (1,0,1001,'杨豪平','男','身份证号码1','婚姻状态1','籍贯1','生日1','民族1','政治面貌1','联系电话1','电子邮箱1','家庭住址1','家庭联系人1','联系人电话1','2023-04-10','2023-04-10','护龄1','学历1','职称1','99',0,'2024-06-14 14:04:35','2024-06-22 06:56:44'),(2,0,0,'护士姓名2','性别2','身份证号码2','婚姻状态2','籍贯2','生日2','民族2','政治面貌2','联系电话2','电子邮箱2','家庭住址2','家庭联系人2','联系人电话2','2023-04-10','2023-04-10','护龄2','学历2','职称2','年龄2',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(3,0,0,'护士姓名3','性别3','身份证号码3','婚姻状态3','籍贯3','生日3','民族3','政治面貌3','联系电话3','电子邮箱3','家庭住址3','家庭联系人3','联系人电话3','2023-04-10','2023-04-10','护龄3','学历3','职称3','年龄3',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(4,0,0,'护士姓名4','性别4','身份证号码4','婚姻状态4','籍贯4','生日4','民族4','政治面貌4','联系电话4','电子邮箱4','家庭住址4','家庭联系人4','联系人电话4','2023-04-10','2023-04-10','护龄4','学历4','职称4','年龄4',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(5,0,0,'护士姓名5','性别5','身份证号码5','婚姻状态5','籍贯5','生日5','民族5','政治面貌5','联系电话5','电子邮箱5','家庭住址5','家庭联系人5','联系人电话5','2023-04-10','2023-04-10','护龄5','学历5','职称5','年龄5',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(6,0,0,'护士姓名6','性别6','身份证号码6','婚姻状态6','籍贯6','生日6','民族6','政治面貌6','联系电话6','电子邮箱6','家庭住址6','家庭联系人6','联系人电话6','2023-04-10','2023-04-10','护龄6','学历6','职称6','年龄6',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(7,0,0,'护士姓名7','性别7','身份证号码7','婚姻状态7','籍贯7','生日7','民族7','政治面貌7','联系电话7','电子邮箱7','家庭住址7','家庭联系人7','联系人电话7','2023-04-10','2023-04-10','护龄7','学历7','职称7','年龄7',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(8,0,0,'护士姓名8','性别8','身份证号码8','婚姻状态8','籍贯8','生日8','民族8','政治面貌8','联系电话8','电子邮箱8','家庭住址8','家庭联系人8','联系人电话8','2023-04-10','2023-04-10','护龄8','学历8','职称8','年龄8',0,'2024-06-14 14:04:35','2024-06-16 11:07:30'),(9,1,0,'啊大大','男','阿德瓦','12','七点多吊袜带擦','阿萨瓦','企鹅大擦粉底','12五点多哇','1去问问打算擦掉','去外地我擦五千多','出vv但是实际上','阿第三方广东省回到家','啊啊苏阿桑奇人','2024-06-18','2024-06-04','去','去','去','去',0,'2024-06-22 11:06:16','2024-06-22 03:06:16');
/*!40000 ALTER TABLE `nurse_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_transfer`
--

DROP TABLE IF EXISTS `nurse_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse_transfer` (
  `nurse_transfer_id` int NOT NULL AUTO_INCREMENT COMMENT '护士转科ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `current_department` varchar(64) DEFAULT NULL COMMENT '当前科室',
  `transfer_department` varchar(64) DEFAULT NULL COMMENT '转科科室',
  `transfer_time` date DEFAULT NULL COMMENT '转科时间',
  `reason_for_transfer` text COMMENT '转科原因',
  `examine_state` varchar(16) NOT NULL DEFAULT '未审核' COMMENT '审核状态',
  `examine_reply` varchar(16) DEFAULT '' COMMENT '审核回复',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`nurse_transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='护士转科';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_transfer`
--

LOCK TABLES `nurse_transfer` WRITE;
/*!40000 ALTER TABLE `nurse_transfer` DISABLE KEYS */;
INSERT INTO `nurse_transfer` VALUES (1,1001,'杨豪平','当前科室1','转科科室2','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区1','未审核','',0,'2024-06-14 14:04:35','2024-06-22 05:43:42'),(2,0,'护士姓名2','当前科室2','转科科室2','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区2','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(3,0,'护士姓名3','当前科室3','转科科室3','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区3','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(4,0,'护士姓名4','当前科室4','转科科室4','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区4','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(5,0,'护士姓名5','当前科室5','转科科室5','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区5','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(6,0,'护士姓名6','当前科室6','转科科室6','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区6','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(7,0,'护士姓名7','当前科室7','转科科室7','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区7','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52'),(8,0,'护士姓名8','当前科室8','转科科室8','2023-04-10','此处可上传文字、图片、视频、超链接、表格等内容区8','未审核','',0,'2024-06-14 14:04:35','2024-06-16 11:07:52');
/*!40000 ALTER TABLE `nurse_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_users`
--

DROP TABLE IF EXISTS `nurse_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse_users` (
  `nurse_users_id` int NOT NULL AUTO_INCREMENT COMMENT '护士用户ID',
  `nurse_no` varchar(64) NOT NULL COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `current_department` varchar(64) DEFAULT NULL COMMENT '当前科室',
  `examine_state` varchar(16) NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`nurse_users_id`),
  UNIQUE KEY `nurse_no` (`nurse_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='护士用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_users`
--

LOCK TABLES `nurse_users` WRITE;
/*!40000 ALTER TABLE `nurse_users` DISABLE KEYS */;
INSERT INTO `nurse_users` VALUES (1,'N001','杨豪平','外科','已通过',0,1001,'2024-06-14 14:04:35','2024-06-16 11:07:58'),(2,'N002','岑辉杨','内科','已通过',0,1002,'2024-06-14 14:04:35','2024-06-22 05:14:30'),(3,'N003','洪麒星','儿科','已通过',0,1003,'2024-06-14 14:04:35','2024-06-16 11:07:58');
/*!40000 ALTER TABLE `nurse_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nursing_department`
--

DROP TABLE IF EXISTS `nursing_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nursing_department` (
  `nursing_department_id` int NOT NULL AUTO_INCREMENT COMMENT '护理部ID',
  `nursing_department_job_number` varchar(64) NOT NULL COMMENT '护理部工号',
  `name_of_nursing_department` varchar(64) DEFAULT NULL COMMENT '护理部姓名',
  `examine_state` varchar(16) NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`nursing_department_id`),
  UNIQUE KEY `nursing_department_job_number` (`nursing_department_job_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='护理部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nursing_department`
--

LOCK TABLES `nursing_department` WRITE;
/*!40000 ALTER TABLE `nursing_department` DISABLE KEYS */;
INSERT INTO `nursing_department` VALUES (1,'ND001','外科','已通过',0,1001,'2024-06-12 09:00:00','2024-06-12 13:06:07'),(2,'ND002','内科','已通过',0,1002,'2024-06-12 09:00:00','2024-06-12 13:06:07'),(3,'ND003','儿科','已通过',0,1003,'2024-06-12 09:00:00','2024-06-12 13:06:07');
/*!40000 ALTER TABLE `nursing_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nursing_department_approval`
--

DROP TABLE IF EXISTS `nursing_department_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nursing_department_approval` (
  `nursing_department_approval_id` int NOT NULL AUTO_INCREMENT COMMENT '护理部审批ID',
  `ward_head_nurse` int DEFAULT '0' COMMENT '病区护士长',
  `leave_labor_number` varchar(64) DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) DEFAULT NULL COMMENT '休假起止日期',
  `chief_nurse_of_major_department` int DEFAULT '0' COMMENT '大科护士长',
  `date_of_approval_by_dake` date DEFAULT NULL COMMENT '大科批准日期',
  `nursing_department` int DEFAULT '0' COMMENT '护理部',
  `approval_date_of_nursing_department` date DEFAULT NULL COMMENT '护理部批准日期',
  `approval_status` varchar(64) DEFAULT NULL COMMENT '审批状态',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`nursing_department_approval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='护理部审批';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nursing_department_approval`
--

LOCK TABLES `nursing_department_approval` WRITE;
/*!40000 ALTER TABLE `nursing_department_approval` DISABLE KEYS */;
INSERT INTO `nursing_department_approval` VALUES (1,0,'请假人工号1','请假人姓名1','病区1','休假原因1','','授权人1','休假起止日期1',0,'2023-04-10',0,'2023-04-10','审批状态1',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(2,0,'请假人工号2','请假人姓名2','病区2','休假原因2','','授权人2','休假起止日期2',0,'2023-04-10',0,'2023-04-10','审批状态2',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(3,0,'请假人工号3','请假人姓名3','病区3','休假原因3','','授权人3','休假起止日期3',0,'2023-04-10',0,'2023-04-10','审批状态3',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(4,0,'请假人工号4','请假人姓名4','病区4','休假原因4','','授权人4','休假起止日期4',0,'2023-04-10',0,'2023-04-10','审批状态4',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(5,0,'请假人工号5','请假人姓名5','病区5','休假原因5','','授权人5','休假起止日期5',0,'2023-04-10',0,'2023-04-10','审批状态5',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(6,0,'请假人工号6','请假人姓名6','病区6','休假原因6','','授权人6','休假起止日期6',0,'2023-04-10',0,'2023-04-10','审批状态6',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(7,0,'请假人工号7','请假人姓名7','病区7','休假原因7','','授权人7','休假起止日期7',0,'2023-04-10',0,'2023-04-10','审批状态7',0,'2023-04-10 17:33:06','2023-04-10 09:33:06'),(8,0,'请假人工号8','请假人姓名8','病区8','休假原因8','','授权人8','休假起止日期8',0,'2023-04-10',0,'2023-04-10','审批状态8',0,'2023-04-10 17:33:06','2023-04-10 09:33:06');
/*!40000 ALTER TABLE `nursing_department_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialist_admission`
--

DROP TABLE IF EXISTS `specialist_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialist_admission` (
  `specialist_admission_id` int NOT NULL AUTO_INCREMENT COMMENT '专科准入ID',
  `nurse_no` int DEFAULT '0' COMMENT '护士工号',
  `nurse_name` varchar(64) DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) DEFAULT NULL COMMENT '所属大科',
  `approval_status` varchar(64) DEFAULT NULL COMMENT '审批状态',
  `application_date` date DEFAULT NULL COMMENT '申请日期',
  `approval_date` date DEFAULT NULL COMMENT '批准日期',
  `application_materials` varchar(255) DEFAULT NULL COMMENT '申请资料',
  `passed_department` varchar(64) DEFAULT NULL COMMENT '已通过科室',
  `approval_deadline` date DEFAULT NULL COMMENT '审批截止日期',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`specialist_admission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='专科准入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialist_admission`
--

LOCK TABLES `specialist_admission` WRITE;
/*!40000 ALTER TABLE `specialist_admission` DISABLE KEYS */;
INSERT INTO `specialist_admission` VALUES (1,0,'护士姓名1','所属大科1','审批状态1','2024-06-10','2024-06-10','','已通过科室1','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(2,0,'护士姓名2','所属大科2','审批状态2','2024-06-10','2024-06-10','','已通过科室2','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(3,0,'护士姓名3','所属大科3','审批状态3','2024-06-10','2024-06-10','','已通过科室3','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(4,0,'护士姓名4','所属大科4','审批状态4','2024-06-10','2024-06-10','','已通过科室4','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(5,0,'护士姓名5','所属大科5','审批状态5','2024-06-10','2024-06-10','','已通过科室5','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(6,0,'护士姓名6','所属大科6','审批状态6','2024-06-10','2024-06-10','','已通过科室6','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(7,0,'护士姓名7','所属大科7','审批状态7','2024-06-10','2024-06-10','','已通过科室7','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08'),(8,0,'护士姓名8','所属大科8','审批状态8','2024-06-10','2024-06-10','','已通过科室8','2024-06-10',0,'2024-06-16 19:08:55','2024-06-16 11:09:08');
/*!40000 ALTER TABLE `specialist_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload` (
  `upload_id` int NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,'movie.mp4','/upload/movie.mp4','',NULL,0,NULL,'video');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'管理员','2024-06-22 07:11:11','13326134168',0,'admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','',0,'/api/upload/4cc777380cd791233de445bee8345982b3b780b8.jpg','2023-06-16 09:35:13'),(1001,1,'护士用户','2024-06-22 06:50:28','13333333333',0,'yhpshiwo','俨然','bfd59291e825b5f2bbf1eb76569f8fe7','',0,'','2024-06-16 10:52:59'),(1002,1,'岑辉杨','2024-06-22 01:35:04',NULL,0,'','','123456','',0,NULL,'2024-06-16 11:02:45'),(1003,1,'洪麒星','2024-06-16 11:10:30',NULL,0,'','','123456','',0,NULL,'2024-06-16 11:09:44'),(1004,1,'金正阳','2024-06-16 11:10:33',NULL,0,'','','123456','',0,NULL,'2024-06-16 11:09:59'),(1005,1,'潘伟杰','2024-06-16 11:10:39',NULL,0,'','','123456','',0,NULL,'2024-06-16 11:10:27'),(1006,1,'黄培宇','2024-06-16 11:11:03',NULL,0,'','','123456','',0,NULL,'2024-06-16 11:10:57');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group` (
  `group_id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,100,'管理员','可以','','',0,0,'2023-04-10 09:33:06','2024-06-12 12:37:44'),(2,100,'游客',NULL,'','',0,0,'2023-04-10 09:33:06','2023-04-10 09:33:06'),(3,100,'护士用户',NULL,'nurse_users','nurse_users_id',0,0,'2023-04-10 09:33:06','2023-04-10 09:33:06'),(4,100,'护士长',NULL,'head_nurse','head_nurse_id',0,0,'2023-04-10 09:33:07','2023-04-10 09:33:07'),(5,100,'护理部',NULL,'nursing_department','nursing_department_id',0,0,'2023-04-10 09:33:07','2023-04-10 09:33:07');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospital'
--

--
-- Dumping routines for database 'hospital'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22 15:33:50
