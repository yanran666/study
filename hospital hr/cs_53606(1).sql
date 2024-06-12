/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : cs_53606

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 12/06/2024 18:27:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token`  (
  `token_id` int unsigned NOT NULL COMMENT '临时访问牌ID',
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '临时访问牌',
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `maxage` int(0) NOT NULL DEFAULT 2 COMMENT '最大寿命：默认2小时',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
  `user_id` int unsigned NOT NULL COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '登陆访问时长' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES (57, '5accf85cb6a7f06f0aa2968deadaec1b', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (58, '46ff1d4d07714f046ba07b34bffe0af9', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (59, 'ed9d6cba9826fda1beafcd9326be7a86', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (60, 'c99763c1833ea0785d9e2b81da3fd28f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (61, '33fbfaccd6d1cb9143e4129bd919d4b0', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (62, '493e13da5f293ba67a56a0fe3e1fa6cf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (63, 'c4b48e9e2160db09c703041a8fee0a1f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (64, 'd13cdaefd3823c360c959a02a262f71d', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (65, '6c6ff426fd77ea5a2025ce5ed2e42c8a', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (66, '80930065a61ffcdd5cbb75f60932973c', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (67, '94114763cf2e3b020495d8a27096d4ef', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (68, '761052c551c97c9317bc3aa475c85b84', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (69, '7c44ef14131a0ba7c16aa16cef104065', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (70, '96380f3d9542c80d04bdade1cf7635a5', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (71, 'bfdc7acfcbf5763fda81945b60961222', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (72, '170a598e51ae8ae2badde20a42fe171d', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (73, 'c82c357488c75926a92d8a9608d4b367', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (74, '4d35290c023f407a820f37dbbb1ceb09', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (75, '8d19162776682b695c0f62f3c7a92fec', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (76, 'a7ea2cdc9a2be179e19200e593ad5a69', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (77, 'c79a554f9832adc01f19682c5d576bc4', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (78, '1c7d95001fa09951a679841c8100ad1f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (79, '776da1bcdd01ddb3cbf0a37fa13fc5b0', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (80, 'd336e88e57c329d0166931292c1fac41', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (81, '37a40f526a6c82fc6110b512802d35bf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (82, '691ad331771f4109206d58aeee572371', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (83, '9942e458886219960d3344b4a6a6fbec', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (84, 'e9939a8b7ccf9f548f0bbb5664981f96', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (85, 'f5b27912060d1909bef61fab9d96faae', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (86, '7c5888682f1d449eb1b62f0054a79fbf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (87, '00dfdc6ac21c4a9da80fd71c990764d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (88, '3cce592bc72840ab932ce96d85a194da', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (89, '43fdaa989a644ad683ef4b4d488e8629', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (90, 'd6a3cecadacff0dbd6b43b25372cc2a2', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (91, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (92, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (93, '26c553bd2ee2ab6605d18dfd310d85f9', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (94, '3fd52f81236ed2c37ff91a6696d4e47a', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (95, '893332e9ee67d60d8312b3700c58a359', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (96, 'b7844068ade535b2e517df4a40948703', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (97, '179b37a5e1893c3af6b946bd5a1c8625', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (98, '3a47b8a040a83ebbc9194cb255dc668c', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (99, 'afa60196afb77dcc2b520ed13a817560', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (100, '7fc6d9b324f8c0a3a1784d04ef132692', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (101, '84e31b291f2bde6b7ceb27af5fe8eee3', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (102, '644f7700fc144405a13a250746bb6597', NULL, 2, '2024-06-11 19:49:55', '2024-06-11 19:49:55', 1);
INSERT INTO `access_token` VALUES (104, '1a155ca448e341448ba9452df86066ca', NULL, 2, '2024-06-12 13:32:08', '2024-06-12 13:32:08', 1);
INSERT INTO `access_token` VALUES (105, 'b365cf49b6e4480f92f25d54f02dabb1', NULL, 2, '2024-06-12 18:19:47', '2024-06-12 18:19:47', 1);

-- ----------------------------
-- Table structure for archive_review
-- ----------------------------
DROP TABLE IF EXISTS `archive_review`;
CREATE TABLE `archive_review`  (
  `archive_review_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '档案审核ID',
  `head_nurse` int(0) DEFAULT 0 COMMENT '护士长',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `gender` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `id_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '身份证号码',
  `marital_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '婚姻状态',
  `native_place` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '籍贯',
  `birthday` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生日',
  `nation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '民族',
  `political_landscape` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '政治面貌',
  `contact_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `e_mail` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电子邮箱',
  `home_address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '家庭住址',
  `family_contact` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '家庭联系人',
  `contact_phone_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系人电话',
  `date_of_participation_in_work` date DEFAULT NULL COMMENT '参加工作日期',
  `date_of_work_in_the_hospital` date DEFAULT NULL COMMENT '来院工作日期',
  `nursing_age` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护龄',
  `education` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学历',
  `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '职称',
  `age` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '年龄',
  `nursing_department` int(0) DEFAULT 0 COMMENT '护理部',
  `audit_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '审核状态',
  `review_comments` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '审核意见',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`archive_review_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '档案审核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archive_review
-- ----------------------------
INSERT INTO `archive_review` VALUES (1, 0, 0, '护士姓名1', '性别1', '身份证号码1', '婚姻状态1', '籍贯1', '生日1', '民族1', '政治面貌1', '联系电话1', '电子邮箱1', '家庭住址1', '家庭联系人1', '联系人电话1', '2023-04-10', '2023-04-10', '护龄1', '学历1', '职称1', '年龄1', 0, '审核状态1', '此处可上传文字、图片、视频、超链接、表格等内容区1', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (2, 0, 0, '护士姓名2', '性别2', '身份证号码2', '婚姻状态2', '籍贯2', '生日2', '民族2', '政治面貌2', '联系电话2', '电子邮箱2', '家庭住址2', '家庭联系人2', '联系人电话2', '2023-04-10', '2023-04-10', '护龄2', '学历2', '职称2', '年龄2', 0, '审核状态2', '此处可上传文字、图片、视频、超链接、表格等内容区2', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (3, 0, 0, '护士姓名3', '性别3', '身份证号码3', '婚姻状态3', '籍贯3', '生日3', '民族3', '政治面貌3', '联系电话3', '电子邮箱3', '家庭住址3', '家庭联系人3', '联系人电话3', '2023-04-10', '2023-04-10', '护龄3', '学历3', '职称3', '年龄3', 0, '审核状态3', '此处可上传文字、图片、视频、超链接、表格等内容区3', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (4, 0, 0, '护士姓名4', '性别4', '身份证号码4', '婚姻状态4', '籍贯4', '生日4', '民族4', '政治面貌4', '联系电话4', '电子邮箱4', '家庭住址4', '家庭联系人4', '联系人电话4', '2023-04-10', '2023-04-10', '护龄4', '学历4', '职称4', '年龄4', 0, '审核状态4', '此处可上传文字、图片、视频、超链接、表格等内容区4', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (5, 0, 0, '护士姓名5', '性别5', '身份证号码5', '婚姻状态5', '籍贯5', '生日5', '民族5', '政治面貌5', '联系电话5', '电子邮箱5', '家庭住址5', '家庭联系人5', '联系人电话5', '2023-04-10', '2023-04-10', '护龄5', '学历5', '职称5', '年龄5', 0, '审核状态5', '此处可上传文字、图片、视频、超链接、表格等内容区5', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (6, 0, 0, '护士姓名6', '性别6', '身份证号码6', '婚姻状态6', '籍贯6', '生日6', '民族6', '政治面貌6', '联系电话6', '电子邮箱6', '家庭住址6', '家庭联系人6', '联系人电话6', '2023-04-10', '2023-04-10', '护龄6', '学历6', '职称6', '年龄6', 0, '审核状态6', '此处可上传文字、图片、视频、超链接、表格等内容区6', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (7, 0, 0, '护士姓名7', '性别7', '身份证号码7', '婚姻状态7', '籍贯7', '生日7', '民族7', '政治面貌7', '联系电话7', '电子邮箱7', '家庭住址7', '家庭联系人7', '联系人电话7', '2023-04-10', '2023-04-10', '护龄7', '学历7', '职称7', '年龄7', 0, '审核状态7', '此处可上传文字、图片、视频、超链接、表格等内容区7', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `archive_review` VALUES (8, 0, 0, '护士姓名8', '性别8', '身份证号码8', '婚姻状态8', '籍贯8', '生日8', '民族8', '政治面貌8', '联系电话8', '电子邮箱8', '家庭住址8', '家庭联系人8', '联系人电话8', '2023-04-10', '2023-04-10', '护龄8', '学历8', '职称8', '年龄8', 0, '审核状态8', '此处可上传文字、图片、视频、超链接、表格等内容区8', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `auth_id` int(0) NOT NULL AUTO_INCREMENT,
  `add` int(0) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del` int(0) DEFAULT NULL,
  `field_add` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_get` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `field_set` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `get` int(0) DEFAULT NULL,
  `mod_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `set` int(0) DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `table_nav` bit(1) DEFAULT NULL,
  `table_nav_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `user_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (1, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '系统管理', '_blank', '', '用户管理', '/user/table', '侧边栏', 1, 'user', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (2, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '系统管理', '_blank', '', '用户组管理', '/user_group/table', '侧边栏', 1, 'user_group', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (3, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护士管理', '_blank', '', '护士用户', '/nurse_users/table', '侧边栏', 1, 'nurse_users', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (4, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护士管理', '_blank', '', '护士长管理', '/head_nurse/table', '侧边栏', 1, 'head_nurse', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (5, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护理部门管理', '_blank', '', '护理部管理', '/nursing_department/table', '侧边栏', 1, 'nursing_department', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (6, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '科室病区管理', '_blank', '', '科室病区管理', '/department_ward/table', '侧边栏', 1, 'department_ward', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (7, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护士档案管理', '_blank', '', '护士档案管理', '/nurse_files/table', '侧边栏', 1, 'nurse_files', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (8, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '档案审核', '_blank', '', '档案审核管理', '/archive_review/table', '侧边栏', 1, 'archive_review', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (9, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护士转科', '_blank', '', '护士转科管理', '/nurse_transfer/table', '侧边栏', 1, 'nurse_transfer', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (10, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '机动护士', '_blank', '', '机动护士管理', '/mobile_nurse/table', '侧边栏', 1, 'mobile_nurse', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (11, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '调配记录', '_blank', '', '调配记录管理', '/deployment_record/table', '侧边栏', 1, 'deployment_record', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (12, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '变动记录', '_blank', '', '变动记录管理', '/change_record/table', '侧边栏', 1, 'change_record', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (13, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '专科准入', '_blank', '', '专科准入管理', '/specialist_admission/table', '侧边栏', 1, 'specialist_admission', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (14, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '夜班准入', '_blank', '', '夜班准入管理', '/night_shift_access/table', '侧边栏', 1, 'night_shift_access', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (15, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '休假申请', '_blank', '', '休假申请管理', '/leave_application/table', '侧边栏', 1, 'leave_application', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (16, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '大科审批', '_blank', '', '大科审批管理', '/dake_approval/table', '侧边栏', 1, 'dake_approval', b'0', '', '2024-06-12 18:18:22.000000', '管理员');
INSERT INTO `auth` VALUES (17, 1, '2024-06-12 18:18:22.000000', 1, '', '', '', 1, '护理部审批', '_blank', '', '护理部审批管理', '/nursing_department_approval/table', '侧边栏', 1, 'nursing_department_approval', b'0', '', '2024-06-12 18:18:22.000000', '管理员');

-- ----------------------------
-- Table structure for change_record
-- ----------------------------
DROP TABLE IF EXISTS `change_record`;
CREATE TABLE `change_record`  (
  `change_record_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '变动记录ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所属大科',
  `contact_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `change_type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '变动类型',
  `operator` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '操作人',
  `change_time` date DEFAULT NULL COMMENT '变动时间',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`change_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '变动记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of change_record
-- ----------------------------
INSERT INTO `change_record` VALUES (1, 0, '护士姓名1', '所属大科1', '联系电话1', '变动类型1', '操作人1', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (2, 0, '护士姓名2', '所属大科2', '联系电话2', '变动类型2', '操作人2', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (3, 0, '护士姓名3', '所属大科3', '联系电话3', '变动类型3', '操作人3', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (4, 0, '护士姓名4', '所属大科4', '联系电话4', '变动类型4', '操作人4', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (5, 0, '护士姓名5', '所属大科5', '联系电话5', '变动类型5', '操作人5', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (6, 0, '护士姓名6', '所属大科6', '联系电话6', '变动类型6', '操作人6', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (7, 0, '护士姓名7', '所属大科7', '联系电话7', '变动类型7', '操作人7', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `change_record` VALUES (8, 0, '护士姓名8', '所属大科8', '联系电话8', '变动类型8', '操作人8', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for dake_approval
-- ----------------------------
DROP TABLE IF EXISTS `dake_approval`;
CREATE TABLE `dake_approval`  (
  `dake_approval_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '大科审批ID',
  `ward_head_nurse` int(0) DEFAULT 0 COMMENT '病区护士长',
  `leave_labor_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假起止日期',
  `chief_nurse_of_major_department` int(0) DEFAULT 0 COMMENT '大科护士长',
  `date_of_approval_by_dake` date DEFAULT NULL COMMENT '大科批准日期',
  `progress_of_major_department_approval` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '大科审批进度',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`dake_approval_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '大科审批' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dake_approval
-- ----------------------------
INSERT INTO `dake_approval` VALUES (1, 0, '请假人工号1', '请假人姓名1', '病区1', '休假原因1', '', '授权人1', '休假起止日期1', 0, '2023-04-10', '大科审批进度1', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (2, 0, '请假人工号2', '请假人姓名2', '病区2', '休假原因2', '', '授权人2', '休假起止日期2', 0, '2023-04-10', '大科审批进度2', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (3, 0, '请假人工号3', '请假人姓名3', '病区3', '休假原因3', '', '授权人3', '休假起止日期3', 0, '2023-04-10', '大科审批进度3', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (4, 0, '请假人工号4', '请假人姓名4', '病区4', '休假原因4', '', '授权人4', '休假起止日期4', 0, '2023-04-10', '大科审批进度4', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (5, 0, '请假人工号5', '请假人姓名5', '病区5', '休假原因5', '', '授权人5', '休假起止日期5', 0, '2023-04-10', '大科审批进度5', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (6, 0, '请假人工号6', '请假人姓名6', '病区6', '休假原因6', '', '授权人6', '休假起止日期6', 0, '2023-04-10', '大科审批进度6', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (7, 0, '请假人工号7', '请假人姓名7', '病区7', '休假原因7', '', '授权人7', '休假起止日期7', 0, '2023-04-10', '大科审批进度7', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `dake_approval` VALUES (8, 0, '请假人工号8', '请假人姓名8', '病区8', '休假原因8', '', '授权人8', '休假起止日期8', 0, '2023-04-10', '大科审批进度8', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for department_ward
-- ----------------------------
DROP TABLE IF EXISTS `department_ward`;
CREATE TABLE `department_ward`  (
  `department_ward_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '科室病区ID',
  `department_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '科室名称',
  `department_type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '科室类型',
  `contact_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `number_of_nurses` int(0) DEFAULT 0 COMMENT '护士人数',
  `operating_duty` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '工作职责',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`department_ward_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '科室病区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department_ward
-- ----------------------------
INSERT INTO `department_ward` VALUES (1, '科室名称1', '科室类型1', '67336911844', 1, '此处可上传文字、图片、视频、超链接、表格等内容区1', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (2, '科室名称2', '科室类型2', '223-61963833', 2, '此处可上传文字、图片、视频、超链接、表格等内容区2', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (3, '科室名称3', '科室类型3', '88876138314', 3, '此处可上传文字、图片、视频、超链接、表格等内容区3', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (4, '科室名称4', '科室类型4', '96671101295', 4, '此处可上传文字、图片、视频、超链接、表格等内容区4', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (5, '科室名称5', '科室类型5', '309-84623929', 5, '此处可上传文字、图片、视频、超链接、表格等内容区5', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (6, '科室名称6', '科室类型6', '163-03674942', 6, '此处可上传文字、图片、视频、超链接、表格等内容区6', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (7, '科室名称7', '科室类型7', '6366-06192184', 7, '此处可上传文字、图片、视频、超链接、表格等内容区7', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `department_ward` VALUES (8, '科室名称8', '科室类型8', '574-94866896', 8, '此处可上传文字、图片、视频、超链接、表格等内容区8', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');

-- ----------------------------
-- Table structure for deployment_record
-- ----------------------------
DROP TABLE IF EXISTS `deployment_record`;
CREATE TABLE `deployment_record`  (
  `deployment_record_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '调配记录ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所属大科',
  `allocation_of_wards` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '调配病区',
  `start_time` date DEFAULT NULL COMMENT '开始时间',
  `end_time` date DEFAULT NULL COMMENT '结束时间',
  `score` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '评分',
  `evaluation_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '评价内容',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`deployment_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '调配记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deployment_record
-- ----------------------------
INSERT INTO `deployment_record` VALUES (1, 0, '护士姓名1', '所属大科1', '调配病区1', '2023-04-10', '2023-04-10', '评分1', '此处可上传文字、图片、视频、超链接、表格等内容区1', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (2, 0, '护士姓名2', '所属大科2', '调配病区2', '2023-04-10', '2023-04-10', '评分2', '此处可上传文字、图片、视频、超链接、表格等内容区2', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (3, 0, '护士姓名3', '所属大科3', '调配病区3', '2023-04-10', '2023-04-10', '评分3', '此处可上传文字、图片、视频、超链接、表格等内容区3', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (4, 0, '护士姓名4', '所属大科4', '调配病区4', '2023-04-10', '2023-04-10', '评分4', '此处可上传文字、图片、视频、超链接、表格等内容区4', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (5, 0, '护士姓名5', '所属大科5', '调配病区5', '2023-04-10', '2023-04-10', '评分5', '此处可上传文字、图片、视频、超链接、表格等内容区5', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (6, 0, '护士姓名6', '所属大科6', '调配病区6', '2023-04-10', '2023-04-10', '评分6', '此处可上传文字、图片、视频、超链接、表格等内容区6', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (7, 0, '护士姓名7', '所属大科7', '调配病区7', '2023-04-10', '2023-04-10', '评分7', '此处可上传文字、图片、视频、超链接、表格等内容区7', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `deployment_record` VALUES (8, 0, '护士姓名8', '所属大科8', '调配病区8', '2023-04-10', '2023-04-10', '评分8', '此处可上传文字、图片、视频、超链接、表格等内容区8', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for head_nurse
-- ----------------------------
DROP TABLE IF EXISTS `head_nurse`;
CREATE TABLE `head_nurse`  (
  `head_nurse_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护士长ID',
  `nurse_head_job_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '护士长工号',
  `nurse_head_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士长姓名',
  `position` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '职位',
  `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(0) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`head_nurse_id`) USING BTREE,
  UNIQUE INDEX `nurse_head_job_number`(`nurse_head_job_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护士长' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hits
-- ----------------------------
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits`  (
  `hits_id` int unsigned NOT NULL COMMENT '点赞ID：',
  `user_id` int unsigned NOT NULL COMMENT '点赞人：',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源字段：',
  `source_id` int unsigned NOT NULL COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '用户点击' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leave_application
-- ----------------------------
DROP TABLE IF EXISTS `leave_application`;
CREATE TABLE `leave_application`  (
  `leave_application_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '休假申请ID',
  `ward_head_nurse` int(0) DEFAULT 0 COMMENT '病区护士长',
  `leave_labor_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假起止日期',
  `leave_duration` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假时长',
  `approval_progress` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '审批进度',
  `chief_nurse_of_major_department` int(0) DEFAULT 0 COMMENT '大科护士长',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`leave_application_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '休假申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_application
-- ----------------------------
INSERT INTO `leave_application` VALUES (1, 0, '请假人工号1', '请假人姓名1', '病区1', '休假原因1', '', '授权人1', '休假起止日期1', '请假时长1', '审批进度1', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (2, 0, '请假人工号2', '请假人姓名2', '病区2', '休假原因2', '', '授权人2', '休假起止日期2', '请假时长2', '审批进度2', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (3, 0, '请假人工号3', '请假人姓名3', '病区3', '休假原因3', '', '授权人3', '休假起止日期3', '请假时长3', '审批进度3', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (4, 0, '请假人工号4', '请假人姓名4', '病区4', '休假原因4', '', '授权人4', '休假起止日期4', '请假时长4', '审批进度4', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (5, 0, '请假人工号5', '请假人姓名5', '病区5', '休假原因5', '', '授权人5', '休假起止日期5', '请假时长5', '审批进度5', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (6, 0, '请假人工号6', '请假人姓名6', '病区6', '休假原因6', '', '授权人6', '休假起止日期6', '请假时长6', '审批进度6', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (7, 0, '请假人工号7', '请假人姓名7', '病区7', '休假原因7', '', '授权人7', '休假起止日期7', '请假时长7', '审批进度7', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `leave_application` VALUES (8, 0, '请假人工号8', '请假人姓名8', '病区8', '休假原因8', '', '授权人8', '休假起止日期8', '请假时长8', '审批进度8', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for mobile_nurse
-- ----------------------------
DROP TABLE IF EXISTS `mobile_nurse`;
CREATE TABLE `mobile_nurse`  (
  `mobile_nurse_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '机动护士ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所属大科',
  `state` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '状态',
  `allocation_of_wards` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '调配病区',
  `contact_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `warehousing_time` date DEFAULT NULL COMMENT '入库时间',
  `deployment_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '调配状态',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`mobile_nurse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '机动护士' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mobile_nurse
-- ----------------------------
INSERT INTO `mobile_nurse` VALUES (1, 0, '护士姓名1', '所属大科1', '状态1', '调配病区1', '联系电话1', '2023-04-10', '调配状态1', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (2, 0, '护士姓名2', '所属大科2', '状态2', '调配病区2', '联系电话2', '2023-04-10', '调配状态2', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (3, 0, '护士姓名3', '所属大科3', '状态3', '调配病区3', '联系电话3', '2023-04-10', '调配状态3', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (4, 0, '护士姓名4', '所属大科4', '状态4', '调配病区4', '联系电话4', '2023-04-10', '调配状态4', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (5, 0, '护士姓名5', '所属大科5', '状态5', '调配病区5', '联系电话5', '2023-04-10', '调配状态5', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (6, 0, '护士姓名6', '所属大科6', '状态6', '调配病区6', '联系电话6', '2023-04-10', '调配状态6', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (7, 0, '护士姓名7', '所属大科7', '状态7', '调配病区7', '联系电话7', '2023-04-10', '调配状态7', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `mobile_nurse` VALUES (8, 0, '护士姓名8', '所属大科8', '状态8', '调配病区8', '联系电话8', '2023-04-10', '调配状态8', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for night_shift_access
-- ----------------------------
DROP TABLE IF EXISTS `night_shift_access`;
CREATE TABLE `night_shift_access`  (
  `night_shift_access_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '夜班准入ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所属大科',
  `approval_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '审批状态',
  `approved_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '已审批科室',
  `application_date` date DEFAULT NULL COMMENT '申请日期',
  `approval_date` date DEFAULT NULL COMMENT '批准日期',
  `application_materials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '申请资料',
  `passed_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '已通过科室',
  `approval_deadline` date DEFAULT NULL COMMENT '审批截止日期',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`night_shift_access_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '夜班准入' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of night_shift_access
-- ----------------------------
INSERT INTO `night_shift_access` VALUES (1, 0, '护士姓名1', '所属大科1', '审批状态1', '已审批科室1', '2023-04-10', '2023-04-10', '', '已通过科室1', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (2, 0, '护士姓名2', '所属大科2', '审批状态2', '已审批科室2', '2023-04-10', '2023-04-10', '', '已通过科室2', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (3, 0, '护士姓名3', '所属大科3', '审批状态3', '已审批科室3', '2023-04-10', '2023-04-10', '', '已通过科室3', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (4, 0, '护士姓名4', '所属大科4', '审批状态4', '已审批科室4', '2023-04-10', '2023-04-10', '', '已通过科室4', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (5, 0, '护士姓名5', '所属大科5', '审批状态5', '已审批科室5', '2023-04-10', '2023-04-10', '', '已通过科室5', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (6, 0, '护士姓名6', '所属大科6', '审批状态6', '已审批科室6', '2023-04-10', '2023-04-10', '', '已通过科室6', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (7, 0, '护士姓名7', '所属大科7', '审批状态7', '已审批科室7', '2023-04-10', '2023-04-10', '', '已通过科室7', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `night_shift_access` VALUES (8, 0, '护士姓名8', '所属大科8', '审批状态8', '已审批科室8', '2023-04-10', '2023-04-10', '', '已通过科室8', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for nurse_files
-- ----------------------------
DROP TABLE IF EXISTS `nurse_files`;
CREATE TABLE `nurse_files`  (
  `nurse_files_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护士档案ID',
  `head_nurse` int(0) DEFAULT 0 COMMENT '护士长',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `gender` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `id_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '身份证号码',
  `marital_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '婚姻状态',
  `native_place` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '籍贯',
  `birthday` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生日',
  `nation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '民族',
  `political_landscape` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '政治面貌',
  `contact_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `e_mail` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电子邮箱',
  `home_address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '家庭住址',
  `family_contact` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '家庭联系人',
  `contact_phone_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系人电话',
  `date_of_participation_in_work` date DEFAULT NULL COMMENT '参加工作日期',
  `date_of_work_in_the_hospital` date DEFAULT NULL COMMENT '来院工作日期',
  `nursing_age` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护龄',
  `education` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学历',
  `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '职称',
  `age` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '年龄',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`nurse_files_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护士档案' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nurse_files
-- ----------------------------
INSERT INTO `nurse_files` VALUES (1, 0, 0, '护士姓名1', '性别1', '身份证号码1', '婚姻状态1', '籍贯1', '生日1', '民族1', '政治面貌1', '联系电话1', '电子邮箱1', '家庭住址1', '家庭联系人1', '联系人电话1', '2023-04-10', '2023-04-10', '护龄1', '学历1', '职称1', '年龄1', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (2, 0, 0, '护士姓名2', '性别2', '身份证号码2', '婚姻状态2', '籍贯2', '生日2', '民族2', '政治面貌2', '联系电话2', '电子邮箱2', '家庭住址2', '家庭联系人2', '联系人电话2', '2023-04-10', '2023-04-10', '护龄2', '学历2', '职称2', '年龄2', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (3, 0, 0, '护士姓名3', '性别3', '身份证号码3', '婚姻状态3', '籍贯3', '生日3', '民族3', '政治面貌3', '联系电话3', '电子邮箱3', '家庭住址3', '家庭联系人3', '联系人电话3', '2023-04-10', '2023-04-10', '护龄3', '学历3', '职称3', '年龄3', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (4, 0, 0, '护士姓名4', '性别4', '身份证号码4', '婚姻状态4', '籍贯4', '生日4', '民族4', '政治面貌4', '联系电话4', '电子邮箱4', '家庭住址4', '家庭联系人4', '联系人电话4', '2023-04-10', '2023-04-10', '护龄4', '学历4', '职称4', '年龄4', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (5, 0, 0, '护士姓名5', '性别5', '身份证号码5', '婚姻状态5', '籍贯5', '生日5', '民族5', '政治面貌5', '联系电话5', '电子邮箱5', '家庭住址5', '家庭联系人5', '联系人电话5', '2023-04-10', '2023-04-10', '护龄5', '学历5', '职称5', '年龄5', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (6, 0, 0, '护士姓名6', '性别6', '身份证号码6', '婚姻状态6', '籍贯6', '生日6', '民族6', '政治面貌6', '联系电话6', '电子邮箱6', '家庭住址6', '家庭联系人6', '联系人电话6', '2023-04-10', '2023-04-10', '护龄6', '学历6', '职称6', '年龄6', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (7, 0, 0, '护士姓名7', '性别7', '身份证号码7', '婚姻状态7', '籍贯7', '生日7', '民族7', '政治面貌7', '联系电话7', '电子邮箱7', '家庭住址7', '家庭联系人7', '联系人电话7', '2023-04-10', '2023-04-10', '护龄7', '学历7', '职称7', '年龄7', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');
INSERT INTO `nurse_files` VALUES (8, 0, 0, '护士姓名8', '性别8', '身份证号码8', '婚姻状态8', '籍贯8', '生日8', '民族8', '政治面貌8', '联系电话8', '电子邮箱8', '家庭住址8', '家庭联系人8', '联系人电话8', '2023-04-10', '2023-04-10', '护龄8', '学历8', '职称8', '年龄8', 0, '2023-04-10 17:33:05', '2023-04-10 17:33:05');

-- ----------------------------
-- Table structure for nurse_transfer
-- ----------------------------
DROP TABLE IF EXISTS `nurse_transfer`;
CREATE TABLE `nurse_transfer`  (
  `nurse_transfer_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护士转科ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `current_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '当前科室',
  `transfer_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '转科科室',
  `transfer_time` date DEFAULT NULL COMMENT '转科时间',
  `reason_for_transfer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '转科原因',
  `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '未审核' COMMENT '审核状态',
  `examine_reply` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '审核回复',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`nurse_transfer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护士转科' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nurse_transfer
-- ----------------------------
INSERT INTO `nurse_transfer` VALUES (1, 0, '护士姓名1', '当前科室1', '转科科室1', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区1', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (2, 0, '护士姓名2', '当前科室2', '转科科室2', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区2', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (3, 0, '护士姓名3', '当前科室3', '转科科室3', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区3', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (4, 0, '护士姓名4', '当前科室4', '转科科室4', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区4', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (5, 0, '护士姓名5', '当前科室5', '转科科室5', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区5', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (6, 0, '护士姓名6', '当前科室6', '转科科室6', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区6', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (7, 0, '护士姓名7', '当前科室7', '转科科室7', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区7', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nurse_transfer` VALUES (8, 0, '护士姓名8', '当前科室8', '转科科室8', '2023-04-10', '此处可上传文字、图片、视频、超链接、表格等内容区8', '未审核', '', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for nurse_users
-- ----------------------------
DROP TABLE IF EXISTS `nurse_users`;
CREATE TABLE `nurse_users`  (
  `nurse_users_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护士用户ID',
  `nurse_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `current_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '当前科室',
  `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(0) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`nurse_users_id`) USING BTREE,
  UNIQUE INDEX `nurse_no`(`nurse_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护士用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nursing_department
-- ----------------------------
DROP TABLE IF EXISTS `nursing_department`;
CREATE TABLE `nursing_department`  (
  `nursing_department_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护理部ID',
  `nursing_department_job_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '护理部工号',
  `name_of_nursing_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护理部姓名',
  `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(0) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`nursing_department_id`) USING BTREE,
  UNIQUE INDEX `nursing_department_job_number`(`nursing_department_job_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护理部' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nursing_department_approval
-- ----------------------------
DROP TABLE IF EXISTS `nursing_department_approval`;
CREATE TABLE `nursing_department_approval`  (
  `nursing_department_approval_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '护理部审批ID',
  `ward_head_nurse` int(0) DEFAULT 0 COMMENT '病区护士长',
  `leave_labor_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人工号',
  `please_provide_the_dummys_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请假人姓名',
  `inpatient_area` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '病区',
  `reason_for_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假原因',
  `application_materials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '申请资料',
  `authorized_person` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '授权人',
  `starting_and_ending_dates_of_vacation` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '休假起止日期',
  `chief_nurse_of_major_department` int(0) DEFAULT 0 COMMENT '大科护士长',
  `date_of_approval_by_dake` date DEFAULT NULL COMMENT '大科批准日期',
  `nursing_department` int(0) DEFAULT 0 COMMENT '护理部',
  `approval_date_of_nursing_department` date DEFAULT NULL COMMENT '护理部批准日期',
  `approval_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '审批状态',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`nursing_department_approval_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '护理部审批' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nursing_department_approval
-- ----------------------------
INSERT INTO `nursing_department_approval` VALUES (1, 0, '请假人工号1', '请假人姓名1', '病区1', '休假原因1', '', '授权人1', '休假起止日期1', 0, '2023-04-10', 0, '2023-04-10', '审批状态1', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (2, 0, '请假人工号2', '请假人姓名2', '病区2', '休假原因2', '', '授权人2', '休假起止日期2', 0, '2023-04-10', 0, '2023-04-10', '审批状态2', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (3, 0, '请假人工号3', '请假人姓名3', '病区3', '休假原因3', '', '授权人3', '休假起止日期3', 0, '2023-04-10', 0, '2023-04-10', '审批状态3', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (4, 0, '请假人工号4', '请假人姓名4', '病区4', '休假原因4', '', '授权人4', '休假起止日期4', 0, '2023-04-10', 0, '2023-04-10', '审批状态4', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (5, 0, '请假人工号5', '请假人姓名5', '病区5', '休假原因5', '', '授权人5', '休假起止日期5', 0, '2023-04-10', 0, '2023-04-10', '审批状态5', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (6, 0, '请假人工号6', '请假人姓名6', '病区6', '休假原因6', '', '授权人6', '休假起止日期6', 0, '2023-04-10', 0, '2023-04-10', '审批状态6', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (7, 0, '请假人工号7', '请假人姓名7', '病区7', '休假原因7', '', '授权人7', '休假起止日期7', 0, '2023-04-10', 0, '2023-04-10', '审批状态7', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `nursing_department_approval` VALUES (8, 0, '请假人工号8', '请假人姓名8', '病区8', '休假原因8', '', '授权人8', '休假起止日期8', 0, '2023-04-10', 0, '2023-04-10', '审批状态8', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for specialist_admission
-- ----------------------------
DROP TABLE IF EXISTS `specialist_admission`;
CREATE TABLE `specialist_admission`  (
  `specialist_admission_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '专科准入ID',
  `nurse_no` int(0) DEFAULT 0 COMMENT '护士工号',
  `nurse_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '护士姓名',
  `major_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所属大科',
  `approval_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '审批状态',
  `application_date` date DEFAULT NULL COMMENT '申请日期',
  `approval_date` date DEFAULT NULL COMMENT '批准日期',
  `application_materials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '申请资料',
  `passed_department` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '已通过科室',
  `approval_deadline` date DEFAULT NULL COMMENT '审批截止日期',
  `recommend` int(0) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`specialist_admission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '专科准入' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specialist_admission
-- ----------------------------
INSERT INTO `specialist_admission` VALUES (1, 0, '护士姓名1', '所属大科1', '审批状态1', '2023-04-10', '2023-04-10', '', '已通过科室1', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (2, 0, '护士姓名2', '所属大科2', '审批状态2', '2023-04-10', '2023-04-10', '', '已通过科室2', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (3, 0, '护士姓名3', '所属大科3', '审批状态3', '2023-04-10', '2023-04-10', '', '已通过科室3', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (4, 0, '护士姓名4', '所属大科4', '审批状态4', '2023-04-10', '2023-04-10', '', '已通过科室4', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (5, 0, '护士姓名5', '所属大科5', '审批状态5', '2023-04-10', '2023-04-10', '', '已通过科室5', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (6, 0, '护士姓名6', '所属大科6', '审批状态6', '2023-04-10', '2023-04-10', '', '已通过科室6', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (7, 0, '护士姓名7', '所属大科7', '审批状态7', '2023-04-10', '2023-04-10', '', '已通过科室7', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `specialist_admission` VALUES (8, 0, '护士姓名8', '所属大科8', '审批状态8', '2023-04-10', '2023-04-10', '', '已通过科室8', '2023-04-10', 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `upload_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(0) DEFAULT 0 COMMENT '父级ID',
  `dir` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, 'movie.mp4', '/upload/movie.mp4', '', NULL, 0, NULL, 'video');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` mediumint unsigned NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint unsigned NOT NULL COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '上次登录时间：',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint unsigned NOT NULL COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint unsigned NOT NULL COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户账户：用于保存用户登录信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, '管理员', '2023-04-07 16:29:25', NULL, 0, 'admin', 'admin', 'bfd59291e825b5f2bbf1eb76569f8fe7', '', 0, '/api/upload/admin_avatar.jpg', '2023-04-28 17:35:13');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `group_id` mediumint unsigned NOT NULL COMMENT '用户组ID：[0,8388607]',
  `display` smallint unsigned NOT NULL COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源字段：',
  `source_id` int unsigned NOT NULL COMMENT '来源ID：',
  `register` smallint unsigned COMMENT '注册位置:',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户组：用于用户前端身份和鉴权' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, 100, '管理员', NULL, '', '', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `user_group` VALUES (2, 100, '游客', NULL, '', '', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `user_group` VALUES (3, 100, '护士用户', NULL, 'nurse_users', 'nurse_users_id', 0, 0, '2023-04-10 17:33:06', '2023-04-10 17:33:06');
INSERT INTO `user_group` VALUES (4, 100, '护士长', NULL, 'head_nurse', 'head_nurse_id', 0, 0, '2023-04-10 17:33:07', '2023-04-10 17:33:07');
INSERT INTO `user_group` VALUES (5, 100, '护理部', NULL, 'nursing_department', 'nursing_department_id', 0, 0, '2023-04-10 17:33:07', '2023-04-10 17:33:07');

SET FOREIGN_KEY_CHECKS = 1;
