SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------
INSERT INTO `cms_apicustom` VALUES (3, 'test_api', 'test_api', 'save_add', NULL, NULL, NULL, NULL, 'test_api', '<p>test api</p>', NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------
INSERT INTO `cms_apikey` VALUES (1, '5895cd204b99e0cf8b9878d6d7296062', 0, 'active', '2021-04-24 11:24:55', NULL);
INSERT INTO `cms_apikey` VALUES (2, '39eca0ba7cf20cacc0c68ff1ee1834f8', 0, 'active', '2021-04-25 03:23:15', NULL);

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime NULL DEFAULT NULL,
  `email_recipient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-04-05 23:10:48', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id_cms_users` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 308 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-04-05 23:11:18', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-04-06 02:08:37', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data santri at Module Generator', '', 1, '2021-04-06 02:36:08', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/kelas/add-save', 'Add New Data  at kelas', '', 1, '2021-04-06 02:47:16', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/kelas/add-save', 'Add New Data  at kelas', '', 1, '2021-04-06 02:47:21', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/kelas/add-save', 'Add New Data  at kelas', '', 1, '2021-04-06 02:47:27', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/ruang/add-save', 'Add New Data  at ruang', '', 1, '2021-04-06 02:47:40', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/ruang/add-save', 'Add New Data  at ruang', '', 1, '2021-04-06 02:47:45', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/ruang/add-save', 'Add New Data  at ruang', '', 1, '2021-04-06 02:47:51', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/ruang/add-save', 'Add New Data  at ruang', '', 1, '2021-04-06 02:47:57', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/add-save', 'Add New Data saiful at santri', '', 1, '2021-04-06 03:16:25', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/edit-save/1', 'Update data saiful at santri', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_kelas</td><td>3</td><td>1</td></tr><tr><td>id_ruang</td><td>4</td><td>1</td></tr></tbody></table>', 1, '2021-04-06 03:18:43', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data hafalansantri at Statistic Builder', '', 1, '2021-04-06 03:19:18', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/1', 'Update data hafalansantri at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-04-06 03:20:47', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-04-06 05:40:47', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan/add/1', 'Try add data at setoranhafalan', '', 1, '2021-04-06 09:05:05', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan/add/1', 'Try add data at setoranhafalan', '', 1, '2021-04-06 09:05:25', NULL);
INSERT INTO `cms_logs` VALUES (18, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'admin@crudbooster.com login with IP Address 192.168.0.189', '', 1, '2021-04-06 17:19:17', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login with IP Address 127.0.0.1', '', 1, '2021-04-06 22:43:01', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2021-04/kisspng_cdr_coreldraw_yup_motif_batik_5b14fe01dbe5135031778015281024019007.jpg</td></tr><tr><td>password</td><td>$2y$10$1Z/RdTRmgBTEdcfRcTkER.Is6.TSP9t3wH3LJodOGl6bOGgIX.DNu</td><td>$2y$10$2OziUz92V4j6U9VkEncsuu8OsO55VzlPn.HM1ZuIp/nu5peCTluRq</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2021-04-06 22:44:14', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Setoran Hafalan at Menu Management', '', 1, '2021-04-06 22:55:55', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data saiful anwar at Users Management', '', 1, '2021-04-06 22:56:56', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 22:57:15', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:16', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:17', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:17', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:18', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:18', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:19', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:20', NULL);
INSERT INTO `cms_logs` VALUES (31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:20', NULL);
INSERT INTO `cms_logs` VALUES (32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:21', NULL);
INSERT INTO `cms_logs` VALUES (33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:23', NULL);
INSERT INTO `cms_logs` VALUES (34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:23', NULL);
INSERT INTO `cms_logs` VALUES (35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:24', NULL);
INSERT INTO `cms_logs` VALUES (36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:24', NULL);
INSERT INTO `cms_logs` VALUES (37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:25', NULL);
INSERT INTO `cms_logs` VALUES (38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:26', NULL);
INSERT INTO `cms_logs` VALUES (39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:26', NULL);
INSERT INTO `cms_logs` VALUES (40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:27', NULL);
INSERT INTO `cms_logs` VALUES (41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:27', NULL);
INSERT INTO `cms_logs` VALUES (42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:28', NULL);
INSERT INTO `cms_logs` VALUES (43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:33', NULL);
INSERT INTO `cms_logs` VALUES (44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:34', NULL);
INSERT INTO `cms_logs` VALUES (45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:34', NULL);
INSERT INTO `cms_logs` VALUES (46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:35', NULL);
INSERT INTO `cms_logs` VALUES (47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:36', NULL);
INSERT INTO `cms_logs` VALUES (48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:36', NULL);
INSERT INTO `cms_logs` VALUES (49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:37', NULL);
INSERT INTO `cms_logs` VALUES (50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:37', NULL);
INSERT INTO `cms_logs` VALUES (51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:38', NULL);
INSERT INTO `cms_logs` VALUES (52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:39', NULL);
INSERT INTO `cms_logs` VALUES (53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:39', NULL);
INSERT INTO `cms_logs` VALUES (54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:40', NULL);
INSERT INTO `cms_logs` VALUES (55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:41', NULL);
INSERT INTO `cms_logs` VALUES (56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:41', NULL);
INSERT INTO `cms_logs` VALUES (57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:42', NULL);
INSERT INTO `cms_logs` VALUES (58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:42', NULL);
INSERT INTO `cms_logs` VALUES (59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:43', NULL);
INSERT INTO `cms_logs` VALUES (60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:44', NULL);
INSERT INTO `cms_logs` VALUES (61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:45', NULL);
INSERT INTO `cms_logs` VALUES (62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:46', NULL);
INSERT INTO `cms_logs` VALUES (63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:46', NULL);
INSERT INTO `cms_logs` VALUES (64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:47', NULL);
INSERT INTO `cms_logs` VALUES (65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:47', NULL);
INSERT INTO `cms_logs` VALUES (66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:48', NULL);
INSERT INTO `cms_logs` VALUES (67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:48', NULL);
INSERT INTO `cms_logs` VALUES (68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:49', NULL);
INSERT INTO `cms_logs` VALUES (69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:50', NULL);
INSERT INTO `cms_logs` VALUES (70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:51', NULL);
INSERT INTO `cms_logs` VALUES (71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:57', NULL);
INSERT INTO `cms_logs` VALUES (72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:57', NULL);
INSERT INTO `cms_logs` VALUES (73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:58', NULL);
INSERT INTO `cms_logs` VALUES (74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:58', NULL);
INSERT INTO `cms_logs` VALUES (75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:57:59', NULL);
INSERT INTO `cms_logs` VALUES (76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:00', NULL);
INSERT INTO `cms_logs` VALUES (77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:00', NULL);
INSERT INTO `cms_logs` VALUES (78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:01', NULL);
INSERT INTO `cms_logs` VALUES (79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:01', NULL);
INSERT INTO `cms_logs` VALUES (80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:02', NULL);
INSERT INTO `cms_logs` VALUES (81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:14', NULL);
INSERT INTO `cms_logs` VALUES (82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:15', NULL);
INSERT INTO `cms_logs` VALUES (83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:15', NULL);
INSERT INTO `cms_logs` VALUES (84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:16', NULL);
INSERT INTO `cms_logs` VALUES (85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:16', NULL);
INSERT INTO `cms_logs` VALUES (86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:17', NULL);
INSERT INTO `cms_logs` VALUES (87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:18', NULL);
INSERT INTO `cms_logs` VALUES (88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:18', NULL);
INSERT INTO `cms_logs` VALUES (89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:19', NULL);
INSERT INTO `cms_logs` VALUES (90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:19', NULL);
INSERT INTO `cms_logs` VALUES (91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:21', NULL);
INSERT INTO `cms_logs` VALUES (92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:21', NULL);
INSERT INTO `cms_logs` VALUES (93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:22', NULL);
INSERT INTO `cms_logs` VALUES (94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:23', NULL);
INSERT INTO `cms_logs` VALUES (95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:23', NULL);
INSERT INTO `cms_logs` VALUES (96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:24', NULL);
INSERT INTO `cms_logs` VALUES (97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:24', NULL);
INSERT INTO `cms_logs` VALUES (98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:25', NULL);
INSERT INTO `cms_logs` VALUES (99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:25', NULL);
INSERT INTO `cms_logs` VALUES (100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:26', NULL);
INSERT INTO `cms_logs` VALUES (101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 22:58:44', NULL);
INSERT INTO `cms_logs` VALUES (102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:45', NULL);
INSERT INTO `cms_logs` VALUES (103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:45', NULL);
INSERT INTO `cms_logs` VALUES (104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:46', NULL);
INSERT INTO `cms_logs` VALUES (105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:46', NULL);
INSERT INTO `cms_logs` VALUES (106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:47', NULL);
INSERT INTO `cms_logs` VALUES (107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:48', NULL);
INSERT INTO `cms_logs` VALUES (108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:48', NULL);
INSERT INTO `cms_logs` VALUES (109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:49', NULL);
INSERT INTO `cms_logs` VALUES (110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:49', NULL);
INSERT INTO `cms_logs` VALUES (111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:51', NULL);
INSERT INTO `cms_logs` VALUES (112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:52', NULL);
INSERT INTO `cms_logs` VALUES (113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:52', NULL);
INSERT INTO `cms_logs` VALUES (114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:53', NULL);
INSERT INTO `cms_logs` VALUES (115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:54', NULL);
INSERT INTO `cms_logs` VALUES (116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:54', NULL);
INSERT INTO `cms_logs` VALUES (117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:55', NULL);
INSERT INTO `cms_logs` VALUES (118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:56', NULL);
INSERT INTO `cms_logs` VALUES (119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:56', NULL);
INSERT INTO `cms_logs` VALUES (120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:58:57', NULL);
INSERT INTO `cms_logs` VALUES (121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:02', NULL);
INSERT INTO `cms_logs` VALUES (122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:03', NULL);
INSERT INTO `cms_logs` VALUES (123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:03', NULL);
INSERT INTO `cms_logs` VALUES (124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:04', NULL);
INSERT INTO `cms_logs` VALUES (125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:05', NULL);
INSERT INTO `cms_logs` VALUES (126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:06', NULL);
INSERT INTO `cms_logs` VALUES (127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:06', NULL);
INSERT INTO `cms_logs` VALUES (128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:07', NULL);
INSERT INTO `cms_logs` VALUES (129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:07', NULL);
INSERT INTO `cms_logs` VALUES (130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 22:59:08', NULL);
INSERT INTO `cms_logs` VALUES (131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/7', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Module</td><td>Controller & Method</td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2021-04-06 22:59:35', NULL);
INSERT INTO `cms_logs` VALUES (132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>setoranhafalan</td><td>Setoran Hafalan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:00:34', NULL);
INSERT INTO `cms_logs` VALUES (133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/7', 'Delete data Setoran Hafalan at Menu Management', '', 1, '2021-04-06 23:00:43', NULL);
INSERT INTO `cms_logs` VALUES (134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:00:54', NULL);
INSERT INTO `cms_logs` VALUES (135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:00:57', NULL);
INSERT INTO `cms_logs` VALUES (136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:01:20', NULL);
INSERT INTO `cms_logs` VALUES (137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:28', NULL);
INSERT INTO `cms_logs` VALUES (138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:28', NULL);
INSERT INTO `cms_logs` VALUES (139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:29', NULL);
INSERT INTO `cms_logs` VALUES (140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:30', NULL);
INSERT INTO `cms_logs` VALUES (141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:30', NULL);
INSERT INTO `cms_logs` VALUES (142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:31', NULL);
INSERT INTO `cms_logs` VALUES (143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:31', NULL);
INSERT INTO `cms_logs` VALUES (144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:32', NULL);
INSERT INTO `cms_logs` VALUES (145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:32', NULL);
INSERT INTO `cms_logs` VALUES (146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:33', NULL);
INSERT INTO `cms_logs` VALUES (147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:34', NULL);
INSERT INTO `cms_logs` VALUES (148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:35', NULL);
INSERT INTO `cms_logs` VALUES (149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:36', NULL);
INSERT INTO `cms_logs` VALUES (150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:36', NULL);
INSERT INTO `cms_logs` VALUES (151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:37', NULL);
INSERT INTO `cms_logs` VALUES (152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:37', NULL);
INSERT INTO `cms_logs` VALUES (153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:38', NULL);
INSERT INTO `cms_logs` VALUES (154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:39', NULL);
INSERT INTO `cms_logs` VALUES (155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:39', NULL);
INSERT INTO `cms_logs` VALUES (156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:40', NULL);
INSERT INTO `cms_logs` VALUES (157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:46', NULL);
INSERT INTO `cms_logs` VALUES (158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:46', NULL);
INSERT INTO `cms_logs` VALUES (159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:47', NULL);
INSERT INTO `cms_logs` VALUES (160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:48', NULL);
INSERT INTO `cms_logs` VALUES (161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:49', NULL);
INSERT INTO `cms_logs` VALUES (162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:49', NULL);
INSERT INTO `cms_logs` VALUES (163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:50', NULL);
INSERT INTO `cms_logs` VALUES (164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:51', NULL);
INSERT INTO `cms_logs` VALUES (165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:51', NULL);
INSERT INTO `cms_logs` VALUES (166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:01:52', NULL);
INSERT INTO `cms_logs` VALUES (167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:01:53', NULL);
INSERT INTO `cms_logs` VALUES (168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:02:08', NULL);
INSERT INTO `cms_logs` VALUES (169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:03:31', NULL);
INSERT INTO `cms_logs` VALUES (170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:04:16', NULL);
INSERT INTO `cms_logs` VALUES (171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com logout', '', 2, '2021-04-06 23:06:31', NULL);
INSERT INTO `cms_logs` VALUES (172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 23:06:39', NULL);
INSERT INTO `cms_logs` VALUES (173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:06:44', NULL);
INSERT INTO `cms_logs` VALUES (174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:06:51', NULL);
INSERT INTO `cms_logs` VALUES (175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:06:55', NULL);
INSERT INTO `cms_logs` VALUES (176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com logout', '', 2, '2021-04-06 23:12:11', NULL);
INSERT INTO `cms_logs` VALUES (177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 23:12:20', NULL);
INSERT INTO `cms_logs` VALUES (178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:12:26', NULL);
INSERT INTO `cms_logs` VALUES (179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:13:05', NULL);
INSERT INTO `cms_logs` VALUES (180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com logout', '', 2, '2021-04-06 23:13:16', NULL);
INSERT INTO `cms_logs` VALUES (181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 23:13:32', NULL);
INSERT INTO `cms_logs` VALUES (182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:13:37', NULL);
INSERT INTO `cms_logs` VALUES (183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:13:41', NULL);
INSERT INTO `cms_logs` VALUES (184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:16:36', NULL);
INSERT INTO `cms_logs` VALUES (185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:16:57', NULL);
INSERT INTO `cms_logs` VALUES (186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:17:36', NULL);
INSERT INTO `cms_logs` VALUES (187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:17:40', NULL);
INSERT INTO `cms_logs` VALUES (188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/5', 'Update data hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:20:27', NULL);
INSERT INTO `cms_logs` VALUES (189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:21:02', NULL);
INSERT INTO `cms_logs` VALUES (190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Setoran Hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:21:21', NULL);
INSERT INTO `cms_logs` VALUES (191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/4', 'Update data santri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:21:33', NULL);
INSERT INTO `cms_logs` VALUES (192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/2', 'Update data kelas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2021-04-06 23:21:46', NULL);
INSERT INTO `cms_logs` VALUES (193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/3', 'Update data ruang at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:21:56', NULL);
INSERT INTO `cms_logs` VALUES (194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:22:08', NULL);
INSERT INTO `cms_logs` VALUES (195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:22:15', NULL);
INSERT INTO `cms_logs` VALUES (196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/5', 'Update data hafalan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2021-04-06 23:22:42', NULL);
INSERT INTO `cms_logs` VALUES (197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan', 'Try view the data :name at setoranhafalan', '', 2, '2021-04-06 23:22:49', NULL);
INSERT INTO `cms_logs` VALUES (198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com logout', '', 2, '2021-04-06 23:49:36', NULL);
INSERT INTO `cms_logs` VALUES (199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 23:49:58', NULL);
INSERT INTO `cms_logs` VALUES (200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com logout', '', 2, '2021-04-06 23:50:33', NULL);
INSERT INTO `cms_logs` VALUES (201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-06 23:51:03', NULL);
INSERT INTO `cms_logs` VALUES (202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login with IP Address 127.0.0.1', '', 1, '2021-04-07 06:15:30', NULL);
INSERT INTO `cms_logs` VALUES (203, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login with IP Address 192.168.0.189', '', 2, '2021-04-07 06:44:55', NULL);
INSERT INTO `cms_logs` VALUES (204, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5 Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login with IP Address 192.168.0.189', '', 2, '2021-04-07 06:55:59', NULL);
INSERT INTO `cms_logs` VALUES (205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login with IP Address 127.0.0.1', '', 1, '2021-04-07 14:10:33', NULL);
INSERT INTO `cms_logs` VALUES (206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan/delete/10', 'Mencoba menghapus  data pada setoranhafalan', '', 1, '2021-04-07 23:51:36', NULL);
INSERT INTO `cms_logs` VALUES (207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/setoranhafalan/delete/23', 'Mencoba menghapus  data pada setoranhafalan', '', 1, '2021-04-07 23:52:32', NULL);
INSERT INTO `cms_logs` VALUES (208, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-08 00:15:37', NULL);
INSERT INTO `cms_logs` VALUES (209, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5 Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-08 00:31:12', NULL);
INSERT INTO `cms_logs` VALUES (210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-08 05:05:26', NULL);
INSERT INTO `cms_logs` VALUES (211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-08 06:20:26', NULL);
INSERT INTO `cms_logs` VALUES (212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-08 06:20:31', NULL);
INSERT INTO `cms_logs` VALUES (213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Tambah data baru Laporan pada Statistic Builder', '', 1, '2021-04-08 06:21:14', NULL);
INSERT INTO `cms_logs` VALUES (214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/2', 'Memperbaharui data Laporan pada Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>laporan</td><td></td></tr></tbody></table>', 1, '2021-04-08 09:57:49', NULL);
INSERT INTO `cms_logs` VALUES (215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Tambah data baru laporan test pada Menu Management', '', 1, '2021-04-08 10:00:17', NULL);
INSERT INTO `cms_logs` VALUES (216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/add-save', 'Tambah data baru Anwar pada santri', '', 1, '2021-04-08 12:49:44', NULL);
INSERT INTO `cms_logs` VALUES (217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/add-save', 'Tambah data baru Arif pada santri', '', 1, '2021-04-08 12:49:55', NULL);
INSERT INTO `cms_logs` VALUES (218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/add-save', 'Tambah data baru Setiawan pada santri', '', 1, '2021-04-08 12:50:11', NULL);
INSERT INTO `cms_logs` VALUES (219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-08 12:59:47', NULL);
INSERT INTO `cms_logs` VALUES (220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-08 13:00:01', NULL);
INSERT INTO `cms_logs` VALUES (221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-08 13:00:32', NULL);
INSERT INTO `cms_logs` VALUES (222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-08 13:00:37', NULL);
INSERT INTO `cms_logs` VALUES (223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-08 13:01:29', NULL);
INSERT INTO `cms_logs` VALUES (224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-08 13:03:56', NULL);
INSERT INTO `cms_logs` VALUES (225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-08 13:18:22', NULL);
INSERT INTO `cms_logs` VALUES (226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-08 13:19:10', NULL);
INSERT INTO `cms_logs` VALUES (227, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-08 14:31:35', NULL);
INSERT INTO `cms_logs` VALUES (228, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-08 21:16:44', NULL);
INSERT INTO `cms_logs` VALUES (229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-09 05:00:17', NULL);
INSERT INTO `cms_logs` VALUES (230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-09 07:23:57', NULL);
INSERT INTO `cms_logs` VALUES (231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-09 08:15:24', NULL);
INSERT INTO `cms_logs` VALUES (232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-09 08:16:10', NULL);
INSERT INTO `cms_logs` VALUES (233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-09 08:16:18', NULL);
INSERT INTO `cms_logs` VALUES (234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-09 08:16:24', NULL);
INSERT INTO `cms_logs` VALUES (235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-09 08:18:19', NULL);
INSERT INTO `cms_logs` VALUES (236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/8', 'Menghapus data laporanHafalan pada Menu Management', '', 1, '2021-04-09 08:43:58', NULL);
INSERT INTO `cms_logs` VALUES (237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-09 18:48:49', NULL);
INSERT INTO `cms_logs` VALUES (238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-09 18:48:53', NULL);
INSERT INTO `cms_logs` VALUES (239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-10 04:55:56', NULL);
INSERT INTO `cms_logs` VALUES (240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-10 05:27:43', NULL);
INSERT INTO `cms_logs` VALUES (241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-10 05:27:48', NULL);
INSERT INTO `cms_logs` VALUES (242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/halaqoh/add-save', 'Tambah data baru tes pada halaqoh', '', 1, '2021-04-10 09:45:43', NULL);
INSERT INTO `cms_logs` VALUES (243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/halaqoh/add-save', 'Tambah data baru  pada halaqoh', '', 1, '2021-04-10 09:58:10', NULL);
INSERT INTO `cms_logs` VALUES (244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/halaqoh/add-save', 'Tambah data baru  pada halaqoh', '', 1, '2021-04-10 14:22:59', NULL);
INSERT INTO `cms_logs` VALUES (245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/halaqoh/add-save', 'Tambah data baru  pada halaqoh', '', 1, '2021-04-10 14:23:25', NULL);
INSERT INTO `cms_logs` VALUES (246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-10 21:51:41', NULL);
INSERT INTO `cms_logs` VALUES (247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/edit-save/4', 'Memperbaharui data Setiawan pada santri', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_halaqoh</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2021-04-10 23:22:22', NULL);
INSERT INTO `cms_logs` VALUES (248, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-11 14:26:05', NULL);
INSERT INTO `cms_logs` VALUES (249, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5 Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful@admin.com login dengan IP Address 192.168.0.189', '', 1, '2021-04-11 16:15:25', NULL);
INSERT INTO `cms_logs` VALUES (250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-11 23:29:45', NULL);
INSERT INTO `cms_logs` VALUES (251, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-12 00:05:52', NULL);
INSERT INTO `cms_logs` VALUES (252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-12 08:37:46', NULL);
INSERT INTO `cms_logs` VALUES (253, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-12 18:17:15', NULL);
INSERT INTO `cms_logs` VALUES (254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/santri/edit-save/3', 'Memperbaharui data Arif pada santri', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_halaqoh</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2021-04-13 02:14:44', NULL);
INSERT INTO `cms_logs` VALUES (255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-13 02:14:58', NULL);
INSERT INTO `cms_logs` VALUES (256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost:8000/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-13 02:15:03', NULL);
INSERT INTO `cms_logs` VALUES (257, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-13 02:51:40', NULL);
INSERT INTO `cms_logs` VALUES (258, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-14 17:43:12', NULL);
INSERT INTO `cms_logs` VALUES (259, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/laravel/crudgenerator/crud/public/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-14 22:01:01', NULL);
INSERT INTO `cms_logs` VALUES (260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost:8000/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 2, '2021-04-17 08:38:29', NULL);
INSERT INTO `cms_logs` VALUES (261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost:8000/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-17 08:38:38', NULL);
INSERT INTO `cms_logs` VALUES (262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost:8000/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-17 08:38:42', NULL);
INSERT INTO `cms_logs` VALUES (263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-17 15:58:00', NULL);
INSERT INTO `cms_logs` VALUES (264, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-17 19:06:35', NULL);
INSERT INTO `cms_logs` VALUES (265, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-17 22:33:54', NULL);
INSERT INTO `cms_logs` VALUES (266, '192.168.0.104', 'Mozilla/5.0 (Linux; Android 10; SM-A107F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful@admin.com login dengan IP Address 192.168.0.104', '', 1, '2021-04-18 05:40:31', NULL);
INSERT INTO `cms_logs` VALUES (267, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-18 05:48:13', NULL);
INSERT INTO `cms_logs` VALUES (268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/santri/delete/4', 'Menghapus data Setiawan pada santri', '', 1, '2021-04-18 09:03:58', NULL);
INSERT INTO `cms_logs` VALUES (269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/santri/delete/3', 'Menghapus data Arif pada santri', '', 1, '2021-04-18 09:04:04', NULL);
INSERT INTO `cms_logs` VALUES (270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/users/add-save', 'Tambah data baru Samiudin pada Users Management', '', 1, '2021-04-18 09:14:10', NULL);
INSERT INTO `cms_logs` VALUES (271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-18 09:14:21', NULL);
INSERT INTO `cms_logs` VALUES (272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/user-login', 'samidroid11@gmail.com login dengan IP Address 127.0.0.1', '', 3, '2021-04-18 09:15:11', NULL);
INSERT INTO `cms_logs` VALUES (273, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-18 11:00:16', NULL);
INSERT INTO `cms_logs` VALUES (274, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/logout', 'saiful.coder@gmail.com keluar', '', 2, '2021-04-18 11:05:07', NULL);
INSERT INTO `cms_logs` VALUES (275, '192.168.0.189', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'http://192.168.0.153/admin/user-login', 'saiful.coder@gmail.com login dengan IP Address 192.168.0.189', '', 2, '2021-04-18 11:05:12', NULL);
INSERT INTO `cms_logs` VALUES (276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-18 12:18:49', NULL);
INSERT INTO `cms_logs` VALUES (277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-24 11:21:19', NULL);
INSERT INTO `cms_logs` VALUES (278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'samidroid11@gmail.com login dengan IP Address 127.0.0.1', '', 3, '2021-04-25 03:45:51', NULL);
INSERT INTO `cms_logs` VALUES (279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-28 01:25:07', NULL);
INSERT INTO `cms_logs` VALUES (280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-28 02:00:14', NULL);
INSERT INTO `cms_logs` VALUES (281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-28 02:01:00', NULL);
INSERT INTO `cms_logs` VALUES (282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-28 02:01:10', NULL);
INSERT INTO `cms_logs` VALUES (283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/logout', 'saiful@admin.com keluar', '', 1, '2021-04-28 02:01:47', NULL);
INSERT INTO `cms_logs` VALUES (284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-28 02:01:58', NULL);
INSERT INTO `cms_logs` VALUES (285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-30 06:08:52', NULL);
INSERT INTO `cms_logs` VALUES (286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-30 13:19:09', NULL);
INSERT INTO `cms_logs` VALUES (287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-04-30 15:31:21', NULL);
INSERT INTO `cms_logs` VALUES (288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost/admin/user-login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-05-02 18:22:37', NULL);
INSERT INTO `cms_logs` VALUES (289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost:8000/admin/login', 'saiful@admin.com login dengan IP Address 127.0.0.1', '', 1, '2021-05-02 19:28:12', NULL);
INSERT INTO `cms_logs` VALUES (290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Tambah data baru test pada Statistic Builder', '', 1, '2021-05-02 19:47:43', NULL);
INSERT INTO `cms_logs` VALUES (291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/16', 'Menghapus data hafalan pada Module Generator', '', 1, '2021-05-02 19:49:21', NULL);
INSERT INTO `cms_logs` VALUES (292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/20', 'Menghapus data Login Orang Tua pada Module Generator', '', 1, '2021-05-02 19:49:43', NULL);
INSERT INTO `cms_logs` VALUES (293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/19', 'Menghapus data halaqoh pada Module Generator', '', 1, '2021-05-02 19:49:55', NULL);
INSERT INTO `cms_logs` VALUES (294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 1, '2022-07-29 13:42:55', NULL);
INSERT INTO `cms_logs` VALUES (295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 1, '2022-07-29 13:53:08', NULL);
INSERT INTO `cms_logs` VALUES (296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/kelas/edit-save/3', 'Memperbaharui data  pada kelas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>Kelas 3</td><td>Kelas 3 A</td></tr><tr><td>ruang</td><td></td><td></td></tr></tbody></table>', 1, '2022-07-29 13:57:27', NULL);
INSERT INTO `cms_logs` VALUES (297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/kelas/edit-save/2', 'Memperbaharui data  pada kelas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>Kelas 2</td><td>Kelas 2 A</td></tr><tr><td>ruang</td><td></td><td></td></tr></tbody></table>', 1, '2022-07-29 13:57:33', NULL);
INSERT INTO `cms_logs` VALUES (298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/kelas/edit-save/1', 'Memperbaharui data  pada kelas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>Kelas 1</td><td>Kelas 1 A</td></tr><tr><td>ruang</td><td></td><td></td></tr></tbody></table>', 1, '2022-07-29 13:57:39', NULL);
INSERT INTO `cms_logs` VALUES (299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/tahfizh/add-save', 'Tambah data baru  pada Tahfizh', '', 1, '2022-07-29 18:31:38', NULL);
INSERT INTO `cms_logs` VALUES (300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/tahfizh/edit-save/1', 'Memperbaharui data  pada Tahfizh', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ke_surat</td><td>100</td><td>2</td></tr><tr><td>ke_ayat</td><td></td><td>10</td></tr><tr><td>tot_halaman</td><td>107</td><td>200</td></tr></tbody></table>', 1, '2022-07-29 18:38:09', NULL);
INSERT INTO `cms_logs` VALUES (301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/tahfizh/add-save', 'Tambah data baru  pada Tahfizh', '', 1, '2022-07-29 18:42:42', NULL);
INSERT INTO `cms_logs` VALUES (302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/users/edit-save/1', 'Memperbaharui data Super Admin pada Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$Jznc/DBFO8a1riQcKBs5f.GUppqEv1JX0YPMtplO6T9wzf4jpv7HS</td><td>$2y$10$fz8S.BA6ZJa0ootFLw5uHu.OhAzsIjxjBTmuazfJOQyw8Wy4W8/9O</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2022-07-29 21:12:01', NULL);
INSERT INTO `cms_logs` VALUES (303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/logout', 'saiful.coder@gmail.com keluar', '', 1, '2022-07-29 21:12:08', NULL);
INSERT INTO `cms_logs` VALUES (304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/login', 'saiful.coder@gmail.com login dengan IP Address 127.0.0.1', '', 1, '2022-07-29 21:12:14', NULL);
INSERT INTO `cms_logs` VALUES (305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/statistic_builder/delete/3', 'Menghapus data test pada Statistic Builder', '', 1, '2022-07-29 21:12:31', NULL);
INSERT INTO `cms_logs` VALUES (306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/statistic_builder/delete/2', 'Menghapus data Laporan pada Statistic Builder', '', 1, '2022-07-29 21:12:34', NULL);
INSERT INTO `cms_logs` VALUES (307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://setoran-hafalan-laravel.test/admin/statistic_builder/delete/1', 'Menghapus data hafalansantri pada Statistic Builder', '', 1, '2022-07-29 21:12:36', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int NULL DEFAULT NULL,
  `sorting` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (2, 'kelas', 'Route', 'AdminKelasControllerGetIndex', 'normal', 'fa fa-gear', 0, 1, 0, 1, 2, '2021-04-06 02:40:44', '2021-04-06 23:21:46');
INSERT INTO `cms_menus` VALUES (3, 'ruang', 'Route', 'AdminRuangControllerGetIndex', 'normal', 'fa fa-play-circle-o', 0, 0, 0, 1, 2, '2021-04-06 02:42:46', '2021-04-06 23:21:56');
INSERT INTO `cms_menus` VALUES (4, 'santri', 'Route', 'AdminSantriControllerGetIndex', 'normal', 'fa fa-user', 0, 1, 0, 1, 4, '2021-04-06 02:43:42', '2021-04-06 23:21:33');
INSERT INTO `cms_menus` VALUES (6, 'Setoran Hafalan', 'Route', 'AdminSetoranhafalanControllerGetIndex', 'normal', 'fa fa-book', 0, 0, 0, 1, 1, '2021-04-06 04:44:06', '2021-04-06 23:21:21');
INSERT INTO `cms_menus` VALUES (9, 'laporan test', 'Statistic', 'statistic_builder/show/laporan', 'normal', NULL, 0, 1, 1, 1, 1, '2021-04-08 10:00:17', NULL);
INSERT INTO `cms_menus` VALUES (12, 'Tahfizh', 'Route', 'AdminTahfizhControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 8, '2022-07-29 14:03:29', NULL);
INSERT INTO `cms_menus` VALUES (13, 'Laporan', 'Route', 'AdminLaporanControllerGetIndex', NULL, 'fa fa-table', 0, 1, 0, 1, 9, '2022-07-29 18:44:36', NULL);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int NULL DEFAULT NULL,
  `id_cms_privileges` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (1, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (8, 7, 2);
INSERT INTO `cms_menus_privileges` VALUES (19, 6, 1);
INSERT INTO `cms_menus_privileges` VALUES (20, 6, 2);
INSERT INTO `cms_menus_privileges` VALUES (21, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (22, 4, 2);
INSERT INTO `cms_menus_privileges` VALUES (23, 2, 1);
INSERT INTO `cms_menus_privileges` VALUES (24, 2, 2);
INSERT INTO `cms_menus_privileges` VALUES (25, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (26, 3, 2);
INSERT INTO `cms_menus_privileges` VALUES (27, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (28, 8, 1);
INSERT INTO `cms_menus_privileges` VALUES (29, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (30, 9, 2);
INSERT INTO `cms_menus_privileges` VALUES (31, 10, 1);
INSERT INTO `cms_menus_privileges` VALUES (32, 11, 1);
INSERT INTO `cms_menus_privileges` VALUES (33, 12, 1);
INSERT INTO `cms_menus_privileges` VALUES (34, 13, 1);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-04-05 23:10:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'santri', 'fa fa-user', 'siswa', 'siswa', 'AdminSiswaController', 0, 0, '2021-04-06 02:17:33', NULL, '2021-04-06 02:36:08');
INSERT INTO `cms_moduls` VALUES (13, 'kelas', 'fa fa-gear', 'kelas', 'kelas', 'AdminKelasController', 0, 0, '2021-04-06 02:40:44', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (14, 'ruang', 'fa fa-play-circle-o', 'ruang', 'ruang', 'AdminRuangController', 0, 0, '2021-04-06 02:42:46', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (15, 'santri', 'fa fa-user', 'santri', 'santri', 'AdminSantriController', 0, 0, '2021-04-06 02:43:42', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (16, 'hafalan', 'fa fa-book', 'hafalan', 'hafalan', 'AdminHafalanController', 0, 0, '2021-04-06 02:45:22', NULL, '2021-05-02 19:49:21');
INSERT INTO `cms_moduls` VALUES (17, 'setoranhafalan', 'fa fa-book', 'setoranhafalan', 'santri', 'AdminSetoranhafalanController', 0, 0, '2021-04-06 04:44:06', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (18, 'laporanHafalan', 'fa fa-table', 'laporanhafalan', 'hafalan', 'AdminLaporanhafalanController', 0, 0, '2021-04-08 06:24:35', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (19, 'halaqoh', 'fa fa-envelope-o', 'halaqoh', 'halaqoh', 'AdminHalaqohController', 0, 0, '2021-04-10 05:28:37', NULL, '2021-05-02 19:49:55');
INSERT INTO `cms_moduls` VALUES (20, 'Login Orang Tua', 'fa fa-user-md', 'Login_Ortu', 'users_login', 'AdminLoginOrtuController', 0, 0, '2021-04-28 02:17:05', NULL, '2021-05-02 19:49:43');
INSERT INTO `cms_moduls` VALUES (21, 'Tahfizh', 'fa fa-book', 'tahfizh', 'tahfizh', 'AdminTahfizhController', 0, 0, '2022-07-29 14:03:29', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (22, 'Laporan', 'fa fa-table', 'laporan', 'tahfizh', 'AdminLaporanController', 0, 0, '2022-07-29 18:44:36', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-red', '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges` VALUES (2, 'Ustads', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (3, 'Admin', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (4, 'Orang Tua', 0, 'skin-blue-light', NULL, NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int NULL DEFAULT NULL,
  `id_cms_moduls` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (1, 1, 0, 0, 0, 0, 1, 1, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (2, 1, 1, 1, 1, 1, 1, 2, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (3, 0, 1, 1, 1, 1, 1, 3, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (4, 1, 1, 1, 1, 1, 1, 4, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (5, 1, 1, 1, 1, 1, 1, 5, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (6, 1, 1, 1, 1, 1, 1, 6, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (7, 1, 1, 1, 1, 1, 1, 7, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (8, 1, 1, 1, 1, 1, 1, 8, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (9, 1, 1, 1, 1, 1, 1, 9, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (10, 1, 1, 1, 1, 1, 1, 10, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (11, 1, 0, 1, 0, 1, 1, 11, '2021-04-05 23:10:48', NULL);
INSERT INTO `cms_privileges_roles` VALUES (12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (36, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (37, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (38, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (39, 1, 1, 1, 1, 1, 2, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (40, 1, 1, 1, 1, 1, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (41, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (42, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (43, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (44, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (45, 1, 0, 0, 0, 0, 4, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (46, 1, 0, 0, 0, 0, 4, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (47, 1, 0, 0, 0, 0, 4, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (48, 1, 0, 0, 0, 0, 4, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (49, 1, 0, 0, 0, 0, 4, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (50, 1, 0, 0, 0, 0, 4, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (51, 1, 0, 0, 0, 0, 4, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (52, 1, 0, 0, 0, 0, 4, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (53, 1, 0, 0, 0, 0, 4, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (54, 1, 1, 1, 1, 1, 1, 21, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (55, 1, 1, 1, 1, 1, 1, 22, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content_input_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-04-05 23:10:48', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-04-05 23:10:48', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-04-05 23:10:48', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-04-05 23:10:48', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'Setoran Hafalan', 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-04-05 23:10:48', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', NULL, 'upload_image', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', 'uploads/2021-04/b411f6f275dba88adf027d06cad442c9.png', 'upload_image', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-04-05 23:10:48', NULL, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int NULL DEFAULT NULL,
  `componentID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------
INSERT INTO `cms_statistic_components` VALUES (1, 1, '46cab6a1a31a9436bd1c949458ac7a66', 'panelcustom', 'area5', 0, NULL, '{\"name\":\"Nama\",\"type\":\"controller\",\"value\":null}', '2021-04-06 03:19:52', NULL);
INSERT INTO `cms_statistic_components` VALUES (3, 2, '728387f3dccc798074a63106ad3e736d', 'chartarea', NULL, 0, 'Untitled', NULL, '2021-04-08 09:57:34', NULL);
INSERT INTO `cms_statistic_components` VALUES (4, 2, '171cabed7ebfb5e3a319a8399ab952cc', 'panelcustom', NULL, 0, 'Untitled', NULL, '2021-04-08 09:57:41', NULL);
INSERT INTO `cms_statistic_components` VALUES (5, 2, 'e4e2575a79ee97e7f497ac8ae74e42f5', 'table', 'area5', 0, NULL, '{\"name\":\"Laporan Hafalan\",\"sql\":\"call laporan\"}', '2021-04-08 09:58:23', NULL);

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'Super Admin', 'uploads/1/2021-04/kisspng_cdr_coreldraw_yup_motif_batik_5b14fe01dbe5135031778015281024019007.jpg', 'saiful.coder@gmail.com', '$2y$10$fz8S.BA6ZJa0ootFLw5uHu.OhAzsIjxjBTmuazfJOQyw8Wy4W8/9O', 1, '2021-04-05 23:10:48', '2022-07-29 21:12:01', 'Active');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for hafalan
-- ----------------------------
DROP TABLE IF EXISTS `hafalan`;
CREATE TABLE `hafalan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_santri` int NOT NULL,
  `id_ustads` int NOT NULL,
  `id_surat` int NOT NULL,
  `ayat_dari` int NOT NULL,
  `ayat_ke` int NOT NULL,
  `tgl` datetime NULL DEFAULT current_timestamp,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `khatam` int NOT NULL DEFAULT 0,
  `stat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `jenis` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `halaman` int NULL DEFAULT NULL,
  `juz` int NULL DEFAULT NULL,
  `hal_dr` int NULL DEFAULT NULL,
  `hal_ke` int NULL DEFAULT NULL,
  `status_juz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khatam_juz` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxs`(`id_santri` ASC) USING BTREE,
  INDEX `idxu`(`id_ustads` ASC) USING BTREE,
  INDEX `idxr`(`id_surat` ASC) USING BTREE,
  INDEX `idxj`(`juz` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hafalan
-- ----------------------------
INSERT INTO `hafalan` VALUES (1, 1, 1, 1, 1, 7, '2021-03-01 22:37:33', NULL, 1, 'ok', 1, 1, 1, 1, 1, 1, '1', 1);
INSERT INTO `hafalan` VALUES (2, 1, 1, 2, 1, 30, '2021-04-17 22:38:07', NULL, 1, '218', 1, 1, 2, 1, 1, 2, '1', 1);
INSERT INTO `hafalan` VALUES (3, 1, 1, 2, 31, 64, '2021-04-17 22:38:51', NULL, 1, '218', 1, 1, 4, 1, 2, 4, '1', 1);
INSERT INTO `hafalan` VALUES (4, 1, 1, 2, 65, 100, '2021-04-18 05:23:11', NULL, 1, '218', 1, 1, 15, 1, 4, 15, '1', 1);
INSERT INTO `hafalan` VALUES (5, 1, 1, 2, 101, 174, '2021-04-18 05:23:43', NULL, 1, '218', 1, 1, 20, 1, 15, 20, '1', 1);
INSERT INTO `hafalan` VALUES (6, 1, 1, 2, 175, 210, '2021-04-18 05:28:02', NULL, 1, '218', 1, 1, 16, 2, 20, 16, 'ok', 1);
INSERT INTO `hafalan` VALUES (7, 1, 1, 2, 211, 286, '2021-04-18 05:28:30', NULL, 1, '218', 1, 1, 20, 2, 16, 20, 'ok', 1);
INSERT INTO `hafalan` VALUES (15, 1, 3, 3, 1, 6, '2021-04-18 09:47:40', NULL, 1, 'ok', 1, NULL, 1, 3, 1, 1, '6', 0);
INSERT INTO `hafalan` VALUES (19, 1, 3, 3, 7, 40, '2021-04-18 09:58:03', NULL, 1, 'ok', 1, NULL, 2, 3, 2, 2, '6', 0);
INSERT INTO `hafalan` VALUES (20, 1, 3, 2, 102, 218, '2021-04-18 09:59:51', NULL, 0, '218', 2, NULL, 1, 1, 1, 1, '1', 0);
INSERT INTO `hafalan` VALUES (21, 1, 3, 3, 41, 103, '2021-04-18 10:13:14', NULL, 1, 'ok', 1, NULL, 3, 3, 3, 3, '6', 0);
INSERT INTO `hafalan` VALUES (22, 1, 2, 3, 104, 118, '2021-04-18 11:10:57', NULL, 1, 'ok', 1, NULL, 5, 3, 4, 5, '6', 0);
INSERT INTO `hafalan` VALUES (23, 1, 1, 3, 119, 200, '2021-04-30 13:20:00', NULL, 1, 'ok', 1, NULL, 6, 3, 6, 6, '6', 0);
INSERT INTO `hafalan` VALUES (24, 1, 1, 4, 1, 176, '2021-05-02 19:56:38', NULL, 1, 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for hafalan_juz_temp
-- ----------------------------
DROP TABLE IF EXISTS `hafalan_juz_temp`;
CREATE TABLE `hafalan_juz_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_santri` int NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ruang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `juz` int NULL DEFAULT NULL,
  `halaman` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_juz` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khatam_juz` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hafalan_juz_temp
-- ----------------------------
INSERT INTO `hafalan_juz_temp` VALUES (4, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (5, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (6, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (7, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (8, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (9, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (10, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (11, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (12, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (13, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (14, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (15, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (16, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (17, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (18, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (19, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (20, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (21, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (22, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (23, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (24, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (25, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (26, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (27, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');
INSERT INTO `hafalan_juz_temp` VALUES (28, 1, 'saiful', 'Kelas 1', 'Ruang A', 1, '1', '1', '1');
INSERT INTO `hafalan_juz_temp` VALUES (29, 1, 'saiful', 'Kelas 1', 'Ruang A', 2, '16', 'ok', '1');
INSERT INTO `hafalan_juz_temp` VALUES (30, 1, 'saiful', 'Kelas 1', 'Ruang A', 3, '1', '5', '0');

-- ----------------------------
-- Table structure for hafalan_temp
-- ----------------------------
DROP TABLE IF EXISTS `hafalan_temp`;
CREATE TABLE `hafalan_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_santri` int NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ruang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_surat` int NULL DEFAULT NULL,
  `nama_surat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jml_ayat` int NULL DEFAULT NULL,
  `stat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khatam` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hafalan_temp
-- ----------------------------

-- ----------------------------
-- Table structure for halaman
-- ----------------------------
DROP TABLE IF EXISTS `halaman`;
CREATE TABLE `halaman`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_halaman` int NULL DEFAULT NULL,
  `juz` int NULL DEFAULT NULL,
  `surat` int NULL DEFAULT NULL,
  `ayat` int NULL DEFAULT NULL,
  `halaman` int NULL DEFAULT NULL,
  `nilai` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxnilai`(`nilai` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 605 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of halaman
-- ----------------------------
INSERT INTO `halaman` VALUES (1, 1, 1, 1, 1, 0, 10001);
INSERT INTO `halaman` VALUES (2, 2, 1, 2, 1, 1, 20001);
INSERT INTO `halaman` VALUES (3, 3, 1, 2, 6, 2, 20006);
INSERT INTO `halaman` VALUES (4, 4, 1, 2, 17, 3, 20017);
INSERT INTO `halaman` VALUES (5, 5, 1, 2, 25, 4, 20025);
INSERT INTO `halaman` VALUES (6, 6, 1, 2, 30, 5, 20030);
INSERT INTO `halaman` VALUES (7, 7, 1, 2, 38, 6, 20038);
INSERT INTO `halaman` VALUES (8, 8, 1, 2, 49, 7, 20049);
INSERT INTO `halaman` VALUES (9, 9, 1, 2, 58, 8, 20058);
INSERT INTO `halaman` VALUES (10, 10, 1, 2, 62, 9, 20062);
INSERT INTO `halaman` VALUES (11, 11, 1, 2, 70, 10, 20070);
INSERT INTO `halaman` VALUES (12, 12, 1, 2, 77, 11, 20077);
INSERT INTO `halaman` VALUES (13, 13, 1, 2, 84, 12, 20084);
INSERT INTO `halaman` VALUES (14, 14, 1, 2, 89, 13, 20089);
INSERT INTO `halaman` VALUES (15, 15, 1, 2, 94, 14, 20094);
INSERT INTO `halaman` VALUES (16, 16, 1, 2, 102, 15, 20102);
INSERT INTO `halaman` VALUES (17, 17, 1, 2, 106, 16, 20106);
INSERT INTO `halaman` VALUES (18, 18, 1, 2, 113, 17, 20113);
INSERT INTO `halaman` VALUES (19, 19, 1, 2, 120, 18, 20120);
INSERT INTO `halaman` VALUES (20, 20, 1, 2, 127, 19, 20127);
INSERT INTO `halaman` VALUES (21, 21, 1, 2, 135, 20, 20135);
INSERT INTO `halaman` VALUES (22, 22, 2, 2, 142, 1, 20142);
INSERT INTO `halaman` VALUES (23, 23, 2, 2, 146, 2, 20146);
INSERT INTO `halaman` VALUES (24, 24, 2, 2, 154, 3, 20154);
INSERT INTO `halaman` VALUES (25, 25, 2, 2, 164, 4, 20164);
INSERT INTO `halaman` VALUES (26, 26, 2, 2, 170, 5, 20170);
INSERT INTO `halaman` VALUES (27, 27, 2, 2, 177, 6, 20177);
INSERT INTO `halaman` VALUES (28, 28, 2, 2, 182, 7, 20182);
INSERT INTO `halaman` VALUES (29, 29, 2, 2, 187, 8, 20187);
INSERT INTO `halaman` VALUES (30, 30, 2, 2, 191, 9, 20191);
INSERT INTO `halaman` VALUES (31, 31, 2, 2, 197, 10, 20197);
INSERT INTO `halaman` VALUES (32, 32, 2, 2, 203, 11, 20203);
INSERT INTO `halaman` VALUES (33, 33, 2, 2, 211, 12, 20211);
INSERT INTO `halaman` VALUES (34, 34, 2, 2, 216, 13, 20216);
INSERT INTO `halaman` VALUES (35, 35, 2, 2, 220, 14, 20220);
INSERT INTO `halaman` VALUES (36, 36, 2, 2, 225, 15, 20225);
INSERT INTO `halaman` VALUES (37, 37, 2, 2, 231, 16, 20231);
INSERT INTO `halaman` VALUES (38, 38, 2, 2, 234, 17, 20234);
INSERT INTO `halaman` VALUES (39, 39, 2, 2, 238, 18, 20238);
INSERT INTO `halaman` VALUES (40, 40, 2, 2, 246, 19, 20246);
INSERT INTO `halaman` VALUES (41, 41, 2, 2, 249, 20, 20249);
INSERT INTO `halaman` VALUES (42, 42, 3, 2, 253, 1, 20253);
INSERT INTO `halaman` VALUES (43, 43, 3, 2, 257, 2, 20257);
INSERT INTO `halaman` VALUES (44, 44, 3, 2, 260, 3, 20260);
INSERT INTO `halaman` VALUES (45, 45, 3, 2, 265, 4, 20265);
INSERT INTO `halaman` VALUES (46, 46, 3, 2, 270, 5, 20270);
INSERT INTO `halaman` VALUES (47, 47, 3, 2, 275, 6, 20275);
INSERT INTO `halaman` VALUES (48, 48, 3, 2, 282, 7, 20282);
INSERT INTO `halaman` VALUES (49, 49, 3, 2, 283, 8, 20283);
INSERT INTO `halaman` VALUES (50, 50, 3, 3, 1, 9, 30001);
INSERT INTO `halaman` VALUES (51, 51, 3, 3, 10, 10, 30010);
INSERT INTO `halaman` VALUES (52, 52, 3, 3, 16, 11, 30016);
INSERT INTO `halaman` VALUES (53, 53, 3, 3, 23, 12, 30023);
INSERT INTO `halaman` VALUES (54, 54, 3, 3, 30, 13, 30030);
INSERT INTO `halaman` VALUES (55, 55, 3, 3, 38, 14, 30038);
INSERT INTO `halaman` VALUES (56, 56, 3, 3, 46, 15, 30046);
INSERT INTO `halaman` VALUES (57, 57, 3, 3, 53, 16, 30053);
INSERT INTO `halaman` VALUES (58, 58, 3, 3, 62, 17, 30062);
INSERT INTO `halaman` VALUES (59, 59, 3, 3, 71, 18, 30071);
INSERT INTO `halaman` VALUES (60, 60, 3, 3, 78, 19, 30078);
INSERT INTO `halaman` VALUES (61, 61, 3, 3, 84, 20, 30084);
INSERT INTO `halaman` VALUES (62, 62, 4, 3, 92, 1, 30092);
INSERT INTO `halaman` VALUES (63, 63, 4, 3, 101, 2, 30101);
INSERT INTO `halaman` VALUES (64, 64, 4, 3, 109, 3, 30109);
INSERT INTO `halaman` VALUES (65, 65, 4, 3, 116, 4, 30116);
INSERT INTO `halaman` VALUES (66, 66, 4, 3, 122, 5, 30122);
INSERT INTO `halaman` VALUES (67, 67, 4, 3, 133, 6, 30133);
INSERT INTO `halaman` VALUES (68, 68, 4, 3, 141, 7, 30141);
INSERT INTO `halaman` VALUES (69, 69, 4, 3, 149, 8, 30149);
INSERT INTO `halaman` VALUES (70, 70, 4, 3, 154, 9, 30154);
INSERT INTO `halaman` VALUES (71, 71, 4, 3, 158, 10, 30158);
INSERT INTO `halaman` VALUES (72, 72, 4, 3, 166, 11, 30166);
INSERT INTO `halaman` VALUES (73, 73, 4, 3, 174, 12, 30174);
INSERT INTO `halaman` VALUES (74, 74, 4, 3, 181, 13, 30181);
INSERT INTO `halaman` VALUES (75, 75, 4, 3, 187, 14, 30187);
INSERT INTO `halaman` VALUES (76, 76, 4, 3, 195, 15, 30195);
INSERT INTO `halaman` VALUES (77, 77, 4, 4, 1, 16, 40001);
INSERT INTO `halaman` VALUES (78, 78, 4, 4, 7, 17, 40007);
INSERT INTO `halaman` VALUES (79, 79, 4, 4, 12, 18, 40012);
INSERT INTO `halaman` VALUES (80, 80, 4, 4, 15, 19, 40015);
INSERT INTO `halaman` VALUES (81, 81, 4, 4, 20, 20, 40020);
INSERT INTO `halaman` VALUES (82, 82, 5, 4, 24, 1, 40024);
INSERT INTO `halaman` VALUES (83, 83, 5, 4, 27, 2, 40027);
INSERT INTO `halaman` VALUES (84, 84, 5, 4, 34, 3, 40034);
INSERT INTO `halaman` VALUES (85, 85, 5, 4, 38, 4, 40038);
INSERT INTO `halaman` VALUES (86, 86, 5, 4, 45, 5, 40045);
INSERT INTO `halaman` VALUES (87, 87, 5, 4, 52, 6, 40052);
INSERT INTO `halaman` VALUES (88, 88, 5, 4, 60, 7, 40060);
INSERT INTO `halaman` VALUES (89, 89, 5, 4, 66, 8, 40066);
INSERT INTO `halaman` VALUES (90, 90, 5, 4, 75, 9, 40075);
INSERT INTO `halaman` VALUES (91, 91, 5, 4, 80, 10, 40080);
INSERT INTO `halaman` VALUES (92, 92, 5, 4, 87, 11, 40087);
INSERT INTO `halaman` VALUES (93, 93, 5, 4, 92, 12, 40092);
INSERT INTO `halaman` VALUES (94, 94, 5, 4, 95, 13, 40095);
INSERT INTO `halaman` VALUES (95, 95, 5, 4, 102, 14, 40102);
INSERT INTO `halaman` VALUES (96, 96, 5, 4, 106, 15, 40106);
INSERT INTO `halaman` VALUES (97, 97, 5, 4, 114, 16, 40114);
INSERT INTO `halaman` VALUES (98, 98, 5, 4, 122, 17, 40122);
INSERT INTO `halaman` VALUES (99, 99, 5, 4, 128, 18, 40128);
INSERT INTO `halaman` VALUES (100, 100, 5, 4, 135, 19, 40135);
INSERT INTO `halaman` VALUES (101, 101, 5, 4, 141, 20, 40141);
INSERT INTO `halaman` VALUES (102, 102, 6, 4, 148, 1, 40148);
INSERT INTO `halaman` VALUES (103, 103, 6, 4, 155, 2, 40155);
INSERT INTO `halaman` VALUES (104, 104, 6, 4, 163, 3, 40163);
INSERT INTO `halaman` VALUES (105, 105, 6, 4, 171, 4, 40171);
INSERT INTO `halaman` VALUES (106, 106, 6, 4, 176, 5, 40176);
INSERT INTO `halaman` VALUES (107, 107, 6, 5, 3, 6, 50003);
INSERT INTO `halaman` VALUES (108, 108, 6, 5, 6, 7, 50006);
INSERT INTO `halaman` VALUES (109, 109, 6, 5, 10, 8, 50010);
INSERT INTO `halaman` VALUES (110, 110, 6, 5, 14, 9, 50014);
INSERT INTO `halaman` VALUES (111, 111, 6, 5, 18, 10, 50018);
INSERT INTO `halaman` VALUES (112, 112, 6, 5, 24, 11, 50024);
INSERT INTO `halaman` VALUES (113, 113, 6, 5, 32, 12, 50032);
INSERT INTO `halaman` VALUES (114, 114, 6, 5, 37, 13, 50037);
INSERT INTO `halaman` VALUES (115, 115, 6, 5, 42, 14, 50042);
INSERT INTO `halaman` VALUES (116, 116, 6, 5, 46, 15, 50046);
INSERT INTO `halaman` VALUES (117, 117, 6, 5, 51, 16, 50051);
INSERT INTO `halaman` VALUES (118, 118, 6, 5, 58, 17, 50058);
INSERT INTO `halaman` VALUES (119, 119, 6, 5, 65, 18, 50065);
INSERT INTO `halaman` VALUES (120, 120, 6, 5, 71, 19, 50071);
INSERT INTO `halaman` VALUES (121, 121, 6, 5, 77, 20, 50077);
INSERT INTO `halaman` VALUES (122, 122, 7, 5, 83, 1, 50083);
INSERT INTO `halaman` VALUES (123, 123, 7, 5, 90, 2, 50090);
INSERT INTO `halaman` VALUES (124, 124, 7, 5, 96, 3, 50096);
INSERT INTO `halaman` VALUES (125, 125, 7, 5, 104, 4, 50104);
INSERT INTO `halaman` VALUES (126, 126, 7, 5, 109, 5, 50109);
INSERT INTO `halaman` VALUES (127, 127, 7, 5, 114, 6, 50114);
INSERT INTO `halaman` VALUES (128, 128, 7, 6, 1, 7, 60001);
INSERT INTO `halaman` VALUES (129, 129, 7, 6, 9, 8, 60009);
INSERT INTO `halaman` VALUES (130, 130, 7, 6, 19, 9, 60019);
INSERT INTO `halaman` VALUES (131, 131, 7, 6, 28, 10, 60028);
INSERT INTO `halaman` VALUES (132, 132, 7, 6, 36, 11, 60036);
INSERT INTO `halaman` VALUES (133, 133, 7, 6, 45, 12, 60045);
INSERT INTO `halaman` VALUES (134, 134, 7, 6, 53, 13, 60053);
INSERT INTO `halaman` VALUES (135, 135, 7, 6, 60, 14, 60060);
INSERT INTO `halaman` VALUES (136, 136, 7, 6, 69, 15, 60069);
INSERT INTO `halaman` VALUES (137, 137, 7, 6, 74, 16, 60074);
INSERT INTO `halaman` VALUES (138, 138, 7, 6, 82, 17, 60082);
INSERT INTO `halaman` VALUES (139, 139, 7, 6, 91, 18, 60091);
INSERT INTO `halaman` VALUES (140, 140, 7, 6, 95, 19, 60095);
INSERT INTO `halaman` VALUES (141, 141, 7, 6, 102, 20, 60102);
INSERT INTO `halaman` VALUES (142, 142, 8, 6, 111, 1, 60111);
INSERT INTO `halaman` VALUES (143, 143, 8, 6, 119, 2, 60119);
INSERT INTO `halaman` VALUES (144, 144, 8, 6, 125, 3, 60125);
INSERT INTO `halaman` VALUES (145, 145, 8, 6, 132, 4, 60132);
INSERT INTO `halaman` VALUES (146, 146, 8, 6, 138, 5, 60138);
INSERT INTO `halaman` VALUES (147, 147, 8, 6, 143, 6, 60143);
INSERT INTO `halaman` VALUES (148, 148, 8, 6, 147, 7, 60147);
INSERT INTO `halaman` VALUES (149, 149, 8, 6, 152, 8, 60152);
INSERT INTO `halaman` VALUES (150, 150, 8, 6, 158, 9, 60158);
INSERT INTO `halaman` VALUES (151, 151, 8, 7, 1, 10, 70001);
INSERT INTO `halaman` VALUES (152, 152, 8, 7, 12, 11, 70012);
INSERT INTO `halaman` VALUES (153, 153, 8, 7, 23, 12, 70023);
INSERT INTO `halaman` VALUES (154, 154, 8, 7, 31, 13, 70031);
INSERT INTO `halaman` VALUES (155, 155, 8, 7, 38, 14, 70038);
INSERT INTO `halaman` VALUES (156, 156, 8, 7, 44, 15, 70044);
INSERT INTO `halaman` VALUES (157, 157, 8, 7, 52, 16, 70052);
INSERT INTO `halaman` VALUES (158, 158, 8, 7, 58, 17, 70058);
INSERT INTO `halaman` VALUES (159, 159, 8, 7, 68, 18, 70068);
INSERT INTO `halaman` VALUES (160, 160, 8, 7, 74, 19, 70074);
INSERT INTO `halaman` VALUES (161, 161, 8, 7, 82, 20, 70082);
INSERT INTO `halaman` VALUES (162, 162, 9, 7, 88, 1, 70088);
INSERT INTO `halaman` VALUES (163, 163, 9, 7, 96, 2, 70096);
INSERT INTO `halaman` VALUES (164, 164, 9, 7, 105, 3, 70105);
INSERT INTO `halaman` VALUES (165, 165, 9, 7, 121, 4, 70121);
INSERT INTO `halaman` VALUES (166, 166, 9, 7, 131, 5, 70131);
INSERT INTO `halaman` VALUES (167, 167, 9, 7, 138, 6, 70138);
INSERT INTO `halaman` VALUES (168, 168, 9, 7, 144, 7, 70144);
INSERT INTO `halaman` VALUES (169, 169, 9, 7, 150, 8, 70150);
INSERT INTO `halaman` VALUES (170, 170, 9, 7, 156, 9, 70156);
INSERT INTO `halaman` VALUES (171, 171, 9, 7, 160, 10, 70160);
INSERT INTO `halaman` VALUES (172, 172, 9, 7, 164, 11, 70164);
INSERT INTO `halaman` VALUES (173, 173, 9, 7, 171, 12, 70171);
INSERT INTO `halaman` VALUES (174, 174, 9, 7, 179, 13, 70179);
INSERT INTO `halaman` VALUES (175, 175, 9, 7, 188, 14, 70188);
INSERT INTO `halaman` VALUES (176, 176, 9, 7, 196, 15, 70196);
INSERT INTO `halaman` VALUES (177, 177, 9, 8, 1, 16, 80001);
INSERT INTO `halaman` VALUES (178, 178, 9, 8, 9, 17, 80009);
INSERT INTO `halaman` VALUES (179, 179, 9, 8, 17, 18, 80017);
INSERT INTO `halaman` VALUES (180, 180, 9, 8, 26, 19, 80026);
INSERT INTO `halaman` VALUES (181, 181, 9, 8, 34, 20, 80034);
INSERT INTO `halaman` VALUES (182, 182, 10, 8, 41, 1, 80041);
INSERT INTO `halaman` VALUES (183, 183, 10, 8, 46, 2, 80046);
INSERT INTO `halaman` VALUES (184, 184, 10, 8, 53, 3, 80053);
INSERT INTO `halaman` VALUES (185, 185, 10, 8, 62, 4, 80062);
INSERT INTO `halaman` VALUES (186, 186, 10, 8, 70, 5, 80070);
INSERT INTO `halaman` VALUES (187, 187, 10, 9, 1, 6, 90001);
INSERT INTO `halaman` VALUES (188, 188, 10, 9, 7, 7, 90007);
INSERT INTO `halaman` VALUES (189, 189, 10, 9, 14, 8, 90014);
INSERT INTO `halaman` VALUES (190, 190, 10, 9, 21, 9, 90021);
INSERT INTO `halaman` VALUES (191, 191, 10, 9, 27, 10, 90027);
INSERT INTO `halaman` VALUES (192, 192, 10, 9, 32, 11, 90032);
INSERT INTO `halaman` VALUES (193, 193, 10, 9, 37, 12, 90037);
INSERT INTO `halaman` VALUES (194, 194, 10, 9, 41, 13, 90041);
INSERT INTO `halaman` VALUES (195, 195, 10, 9, 48, 14, 90048);
INSERT INTO `halaman` VALUES (196, 196, 10, 9, 55, 15, 90055);
INSERT INTO `halaman` VALUES (197, 197, 10, 9, 62, 16, 90062);
INSERT INTO `halaman` VALUES (198, 198, 10, 9, 69, 17, 90069);
INSERT INTO `halaman` VALUES (199, 199, 10, 9, 73, 18, 90073);
INSERT INTO `halaman` VALUES (200, 200, 10, 9, 80, 19, 90080);
INSERT INTO `halaman` VALUES (201, 201, 10, 9, 87, 20, 90087);
INSERT INTO `halaman` VALUES (202, 202, 11, 9, 94, 1, 90094);
INSERT INTO `halaman` VALUES (203, 203, 11, 9, 100, 2, 90100);
INSERT INTO `halaman` VALUES (204, 204, 11, 9, 107, 3, 90107);
INSERT INTO `halaman` VALUES (205, 205, 11, 9, 112, 4, 90112);
INSERT INTO `halaman` VALUES (206, 206, 11, 9, 118, 5, 90118);
INSERT INTO `halaman` VALUES (207, 207, 11, 9, 123, 6, 90123);
INSERT INTO `halaman` VALUES (208, 208, 11, 10, 1, 7, 100001);
INSERT INTO `halaman` VALUES (209, 209, 11, 10, 7, 8, 100007);
INSERT INTO `halaman` VALUES (210, 210, 11, 10, 15, 9, 100015);
INSERT INTO `halaman` VALUES (211, 211, 11, 10, 21, 10, 100021);
INSERT INTO `halaman` VALUES (212, 212, 11, 10, 26, 11, 100026);
INSERT INTO `halaman` VALUES (213, 213, 11, 10, 34, 12, 100034);
INSERT INTO `halaman` VALUES (214, 214, 11, 10, 43, 13, 100043);
INSERT INTO `halaman` VALUES (215, 215, 11, 10, 54, 14, 100054);
INSERT INTO `halaman` VALUES (216, 216, 11, 10, 62, 15, 100062);
INSERT INTO `halaman` VALUES (217, 217, 11, 10, 71, 16, 100071);
INSERT INTO `halaman` VALUES (218, 218, 11, 10, 79, 17, 100079);
INSERT INTO `halaman` VALUES (219, 219, 11, 10, 89, 18, 100089);
INSERT INTO `halaman` VALUES (220, 220, 11, 10, 98, 19, 100098);
INSERT INTO `halaman` VALUES (221, 221, 11, 10, 107, 20, 100107);
INSERT INTO `halaman` VALUES (222, 222, 12, 11, 6, 1, 110006);
INSERT INTO `halaman` VALUES (223, 223, 12, 11, 13, 2, 110013);
INSERT INTO `halaman` VALUES (224, 224, 12, 11, 20, 3, 110020);
INSERT INTO `halaman` VALUES (225, 225, 12, 11, 29, 4, 110029);
INSERT INTO `halaman` VALUES (226, 226, 12, 11, 38, 5, 110038);
INSERT INTO `halaman` VALUES (227, 227, 12, 11, 46, 6, 110046);
INSERT INTO `halaman` VALUES (228, 228, 12, 11, 54, 7, 110054);
INSERT INTO `halaman` VALUES (229, 229, 12, 11, 63, 8, 110063);
INSERT INTO `halaman` VALUES (230, 230, 12, 11, 72, 9, 110072);
INSERT INTO `halaman` VALUES (231, 231, 12, 11, 82, 10, 110082);
INSERT INTO `halaman` VALUES (232, 232, 12, 11, 89, 11, 110089);
INSERT INTO `halaman` VALUES (233, 233, 12, 11, 98, 12, 110098);
INSERT INTO `halaman` VALUES (234, 234, 12, 11, 109, 13, 110109);
INSERT INTO `halaman` VALUES (235, 235, 12, 11, 118, 14, 110118);
INSERT INTO `halaman` VALUES (236, 236, 12, 12, 5, 15, 120005);
INSERT INTO `halaman` VALUES (237, 237, 12, 12, 15, 16, 120015);
INSERT INTO `halaman` VALUES (238, 238, 12, 12, 23, 17, 120023);
INSERT INTO `halaman` VALUES (239, 239, 12, 12, 31, 18, 120031);
INSERT INTO `halaman` VALUES (240, 240, 12, 12, 38, 19, 120038);
INSERT INTO `halaman` VALUES (241, 241, 12, 12, 44, 20, 120044);
INSERT INTO `halaman` VALUES (242, 242, 13, 12, 53, 1, 120053);
INSERT INTO `halaman` VALUES (243, 243, 13, 12, 64, 2, 120064);
INSERT INTO `halaman` VALUES (244, 244, 13, 12, 70, 3, 120070);
INSERT INTO `halaman` VALUES (245, 245, 13, 12, 79, 4, 120079);
INSERT INTO `halaman` VALUES (246, 246, 13, 12, 87, 5, 120087);
INSERT INTO `halaman` VALUES (247, 247, 13, 12, 96, 6, 120096);
INSERT INTO `halaman` VALUES (248, 248, 13, 12, 104, 7, 120104);
INSERT INTO `halaman` VALUES (249, 249, 13, 13, 1, 8, 130001);
INSERT INTO `halaman` VALUES (250, 250, 13, 13, 6, 9, 130006);
INSERT INTO `halaman` VALUES (251, 251, 13, 13, 14, 10, 130014);
INSERT INTO `halaman` VALUES (252, 252, 13, 13, 19, 11, 130019);
INSERT INTO `halaman` VALUES (253, 253, 13, 13, 29, 12, 130029);
INSERT INTO `halaman` VALUES (254, 254, 13, 13, 35, 13, 130035);
INSERT INTO `halaman` VALUES (255, 255, 13, 13, 43, 14, 130043);
INSERT INTO `halaman` VALUES (256, 256, 13, 14, 6, 15, 140006);
INSERT INTO `halaman` VALUES (257, 257, 13, 14, 11, 16, 140011);
INSERT INTO `halaman` VALUES (258, 258, 13, 14, 19, 17, 140019);
INSERT INTO `halaman` VALUES (259, 259, 13, 14, 25, 18, 140025);
INSERT INTO `halaman` VALUES (260, 260, 13, 14, 34, 19, 140034);
INSERT INTO `halaman` VALUES (261, 261, 13, 14, 43, 20, 140043);
INSERT INTO `halaman` VALUES (262, 262, 14, 15, 1, 1, 150001);
INSERT INTO `halaman` VALUES (263, 263, 14, 15, 16, 2, 150016);
INSERT INTO `halaman` VALUES (264, 264, 14, 15, 32, 3, 150032);
INSERT INTO `halaman` VALUES (265, 265, 14, 15, 52, 4, 150052);
INSERT INTO `halaman` VALUES (266, 266, 14, 15, 71, 5, 150071);
INSERT INTO `halaman` VALUES (267, 267, 14, 15, 91, 6, 150091);
INSERT INTO `halaman` VALUES (268, 268, 14, 16, 7, 7, 160007);
INSERT INTO `halaman` VALUES (269, 269, 14, 16, 15, 8, 160015);
INSERT INTO `halaman` VALUES (270, 270, 14, 16, 27, 9, 160027);
INSERT INTO `halaman` VALUES (271, 271, 14, 16, 35, 10, 160035);
INSERT INTO `halaman` VALUES (272, 272, 14, 16, 43, 11, 160043);
INSERT INTO `halaman` VALUES (273, 273, 14, 16, 55, 12, 160055);
INSERT INTO `halaman` VALUES (274, 274, 14, 16, 65, 13, 160065);
INSERT INTO `halaman` VALUES (275, 275, 14, 16, 73, 14, 160073);
INSERT INTO `halaman` VALUES (276, 276, 14, 16, 80, 15, 160080);
INSERT INTO `halaman` VALUES (277, 277, 14, 16, 88, 16, 160088);
INSERT INTO `halaman` VALUES (278, 278, 14, 16, 94, 17, 160094);
INSERT INTO `halaman` VALUES (279, 279, 14, 16, 103, 18, 160103);
INSERT INTO `halaman` VALUES (280, 280, 14, 16, 111, 19, 160111);
INSERT INTO `halaman` VALUES (281, 281, 14, 16, 119, 20, 160119);
INSERT INTO `halaman` VALUES (282, 282, 15, 17, 1, 1, 170001);
INSERT INTO `halaman` VALUES (283, 283, 15, 17, 8, 2, 170008);
INSERT INTO `halaman` VALUES (284, 284, 15, 17, 18, 3, 170018);
INSERT INTO `halaman` VALUES (285, 285, 15, 17, 28, 4, 170028);
INSERT INTO `halaman` VALUES (286, 286, 15, 17, 39, 5, 170039);
INSERT INTO `halaman` VALUES (287, 287, 15, 17, 50, 6, 170050);
INSERT INTO `halaman` VALUES (288, 288, 15, 17, 59, 7, 170059);
INSERT INTO `halaman` VALUES (289, 289, 15, 17, 67, 8, 170067);
INSERT INTO `halaman` VALUES (290, 290, 15, 17, 76, 9, 170076);
INSERT INTO `halaman` VALUES (291, 291, 15, 17, 87, 10, 170087);
INSERT INTO `halaman` VALUES (292, 292, 15, 17, 97, 11, 170097);
INSERT INTO `halaman` VALUES (293, 293, 15, 17, 105, 12, 170105);
INSERT INTO `halaman` VALUES (294, 294, 15, 18, 5, 13, 180005);
INSERT INTO `halaman` VALUES (295, 295, 15, 18, 16, 14, 180016);
INSERT INTO `halaman` VALUES (296, 296, 15, 18, 21, 15, 180021);
INSERT INTO `halaman` VALUES (297, 297, 15, 18, 28, 16, 180028);
INSERT INTO `halaman` VALUES (298, 298, 15, 18, 35, 17, 180035);
INSERT INTO `halaman` VALUES (299, 299, 15, 18, 46, 18, 180046);
INSERT INTO `halaman` VALUES (300, 300, 15, 18, 54, 19, 180054);
INSERT INTO `halaman` VALUES (301, 301, 15, 18, 62, 20, 180062);
INSERT INTO `halaman` VALUES (302, 302, 16, 18, 75, 1, 180075);
INSERT INTO `halaman` VALUES (303, 303, 16, 18, 84, 2, 180084);
INSERT INTO `halaman` VALUES (304, 304, 16, 18, 98, 3, 180098);
INSERT INTO `halaman` VALUES (305, 305, 16, 19, 1, 4, 190001);
INSERT INTO `halaman` VALUES (306, 306, 16, 19, 12, 5, 190012);
INSERT INTO `halaman` VALUES (307, 307, 16, 19, 26, 6, 190026);
INSERT INTO `halaman` VALUES (308, 308, 16, 19, 39, 7, 190039);
INSERT INTO `halaman` VALUES (309, 309, 16, 19, 52, 8, 190052);
INSERT INTO `halaman` VALUES (310, 310, 16, 19, 65, 9, 190065);
INSERT INTO `halaman` VALUES (311, 311, 16, 19, 77, 10, 190077);
INSERT INTO `halaman` VALUES (312, 312, 16, 19, 96, 11, 190096);
INSERT INTO `halaman` VALUES (313, 313, 16, 20, 13, 12, 200013);
INSERT INTO `halaman` VALUES (314, 314, 16, 20, 38, 13, 200038);
INSERT INTO `halaman` VALUES (315, 315, 16, 20, 52, 14, 200052);
INSERT INTO `halaman` VALUES (316, 316, 16, 20, 65, 15, 200065);
INSERT INTO `halaman` VALUES (317, 317, 16, 20, 77, 16, 200077);
INSERT INTO `halaman` VALUES (318, 318, 16, 20, 88, 17, 200088);
INSERT INTO `halaman` VALUES (319, 319, 16, 20, 99, 18, 200099);
INSERT INTO `halaman` VALUES (320, 320, 16, 20, 114, 19, 200114);
INSERT INTO `halaman` VALUES (321, 321, 16, 20, 126, 20, 200126);
INSERT INTO `halaman` VALUES (322, 322, 17, 21, 1, 1, 210001);
INSERT INTO `halaman` VALUES (323, 323, 17, 21, 11, 2, 210011);
INSERT INTO `halaman` VALUES (324, 324, 17, 21, 25, 3, 210025);
INSERT INTO `halaman` VALUES (325, 325, 17, 21, 36, 4, 210036);
INSERT INTO `halaman` VALUES (326, 326, 17, 21, 45, 5, 210045);
INSERT INTO `halaman` VALUES (327, 327, 17, 21, 58, 6, 210058);
INSERT INTO `halaman` VALUES (328, 328, 17, 21, 73, 7, 210073);
INSERT INTO `halaman` VALUES (329, 329, 17, 21, 82, 8, 210082);
INSERT INTO `halaman` VALUES (330, 330, 17, 21, 91, 9, 210091);
INSERT INTO `halaman` VALUES (331, 331, 17, 21, 102, 10, 210102);
INSERT INTO `halaman` VALUES (332, 332, 17, 22, 1, 11, 220001);
INSERT INTO `halaman` VALUES (333, 333, 17, 22, 6, 12, 220006);
INSERT INTO `halaman` VALUES (334, 334, 17, 22, 16, 13, 220016);
INSERT INTO `halaman` VALUES (335, 335, 17, 22, 24, 14, 220024);
INSERT INTO `halaman` VALUES (336, 336, 17, 22, 31, 15, 220031);
INSERT INTO `halaman` VALUES (337, 337, 17, 22, 39, 16, 220039);
INSERT INTO `halaman` VALUES (338, 338, 17, 22, 47, 17, 220047);
INSERT INTO `halaman` VALUES (339, 339, 17, 22, 56, 18, 220056);
INSERT INTO `halaman` VALUES (340, 340, 17, 22, 65, 19, 220065);
INSERT INTO `halaman` VALUES (341, 341, 17, 22, 73, 20, 220073);
INSERT INTO `halaman` VALUES (342, 342, 18, 23, 1, 1, 230001);
INSERT INTO `halaman` VALUES (343, 343, 18, 23, 18, 2, 230018);
INSERT INTO `halaman` VALUES (344, 344, 18, 23, 28, 3, 230028);
INSERT INTO `halaman` VALUES (345, 345, 18, 23, 43, 4, 230043);
INSERT INTO `halaman` VALUES (346, 346, 18, 23, 60, 5, 230060);
INSERT INTO `halaman` VALUES (347, 347, 18, 23, 75, 6, 230075);
INSERT INTO `halaman` VALUES (348, 348, 18, 23, 90, 7, 230090);
INSERT INTO `halaman` VALUES (349, 349, 18, 23, 105, 8, 230105);
INSERT INTO `halaman` VALUES (350, 350, 18, 24, 1, 9, 240001);
INSERT INTO `halaman` VALUES (351, 351, 18, 24, 11, 10, 240011);
INSERT INTO `halaman` VALUES (352, 352, 18, 24, 21, 11, 240021);
INSERT INTO `halaman` VALUES (353, 353, 18, 24, 28, 12, 240028);
INSERT INTO `halaman` VALUES (354, 354, 18, 24, 32, 13, 240032);
INSERT INTO `halaman` VALUES (355, 355, 18, 24, 37, 14, 240037);
INSERT INTO `halaman` VALUES (356, 356, 18, 24, 44, 15, 240044);
INSERT INTO `halaman` VALUES (357, 357, 18, 24, 54, 16, 240054);
INSERT INTO `halaman` VALUES (358, 358, 18, 24, 59, 17, 240059);
INSERT INTO `halaman` VALUES (359, 359, 18, 24, 62, 18, 240062);
INSERT INTO `halaman` VALUES (360, 360, 18, 25, 3, 19, 250003);
INSERT INTO `halaman` VALUES (361, 361, 18, 25, 12, 20, 250012);
INSERT INTO `halaman` VALUES (362, 362, 19, 25, 21, 1, 250021);
INSERT INTO `halaman` VALUES (363, 363, 19, 25, 33, 2, 250033);
INSERT INTO `halaman` VALUES (364, 364, 19, 25, 44, 3, 250044);
INSERT INTO `halaman` VALUES (365, 365, 19, 25, 56, 4, 250056);
INSERT INTO `halaman` VALUES (366, 366, 19, 25, 68, 5, 250068);
INSERT INTO `halaman` VALUES (367, 367, 19, 26, 1, 6, 260001);
INSERT INTO `halaman` VALUES (368, 368, 19, 26, 20, 7, 260020);
INSERT INTO `halaman` VALUES (369, 369, 19, 26, 40, 8, 260040);
INSERT INTO `halaman` VALUES (370, 370, 19, 26, 61, 9, 260061);
INSERT INTO `halaman` VALUES (371, 371, 19, 26, 84, 10, 260084);
INSERT INTO `halaman` VALUES (372, 372, 19, 26, 112, 11, 260112);
INSERT INTO `halaman` VALUES (373, 373, 19, 26, 137, 12, 260137);
INSERT INTO `halaman` VALUES (374, 374, 19, 26, 160, 13, 260160);
INSERT INTO `halaman` VALUES (375, 375, 19, 26, 184, 14, 260184);
INSERT INTO `halaman` VALUES (376, 376, 19, 26, 207, 15, 260207);
INSERT INTO `halaman` VALUES (377, 377, 19, 27, 1, 16, 270001);
INSERT INTO `halaman` VALUES (378, 378, 19, 27, 14, 17, 270014);
INSERT INTO `halaman` VALUES (379, 379, 19, 27, 23, 18, 270023);
INSERT INTO `halaman` VALUES (380, 380, 19, 27, 36, 19, 270036);
INSERT INTO `halaman` VALUES (381, 381, 19, 27, 45, 20, 270045);
INSERT INTO `halaman` VALUES (382, 382, 20, 27, 56, 1, 270056);
INSERT INTO `halaman` VALUES (383, 383, 20, 27, 64, 2, 270064);
INSERT INTO `halaman` VALUES (384, 384, 20, 27, 77, 3, 270077);
INSERT INTO `halaman` VALUES (385, 385, 20, 27, 89, 4, 270089);
INSERT INTO `halaman` VALUES (386, 386, 20, 28, 6, 5, 280006);
INSERT INTO `halaman` VALUES (387, 387, 20, 28, 14, 6, 280014);
INSERT INTO `halaman` VALUES (388, 388, 20, 28, 22, 7, 280022);
INSERT INTO `halaman` VALUES (389, 389, 20, 28, 29, 8, 280029);
INSERT INTO `halaman` VALUES (390, 390, 20, 28, 36, 9, 280036);
INSERT INTO `halaman` VALUES (391, 391, 20, 28, 44, 10, 280044);
INSERT INTO `halaman` VALUES (392, 392, 20, 28, 51, 11, 280051);
INSERT INTO `halaman` VALUES (393, 393, 20, 28, 60, 12, 280060);
INSERT INTO `halaman` VALUES (394, 394, 20, 28, 71, 13, 280071);
INSERT INTO `halaman` VALUES (395, 395, 20, 28, 78, 14, 280078);
INSERT INTO `halaman` VALUES (396, 396, 20, 28, 85, 15, 280085);
INSERT INTO `halaman` VALUES (397, 397, 20, 29, 7, 16, 290007);
INSERT INTO `halaman` VALUES (398, 398, 20, 29, 15, 17, 290015);
INSERT INTO `halaman` VALUES (399, 399, 20, 29, 24, 18, 290024);
INSERT INTO `halaman` VALUES (400, 400, 20, 29, 31, 19, 290031);
INSERT INTO `halaman` VALUES (401, 401, 20, 29, 39, 20, 290039);
INSERT INTO `halaman` VALUES (402, 402, 21, 29, 46, 1, 290046);
INSERT INTO `halaman` VALUES (403, 403, 21, 29, 53, 2, 290053);
INSERT INTO `halaman` VALUES (404, 404, 21, 29, 64, 3, 290064);
INSERT INTO `halaman` VALUES (405, 405, 21, 30, 6, 4, 300006);
INSERT INTO `halaman` VALUES (406, 406, 21, 30, 16, 5, 300016);
INSERT INTO `halaman` VALUES (407, 407, 21, 30, 25, 6, 300025);
INSERT INTO `halaman` VALUES (408, 408, 21, 30, 33, 7, 300033);
INSERT INTO `halaman` VALUES (409, 409, 21, 30, 42, 8, 300042);
INSERT INTO `halaman` VALUES (410, 410, 21, 30, 51, 9, 300051);
INSERT INTO `halaman` VALUES (411, 411, 21, 31, 1, 10, 310001);
INSERT INTO `halaman` VALUES (412, 412, 21, 31, 12, 11, 310012);
INSERT INTO `halaman` VALUES (413, 413, 21, 31, 20, 12, 310020);
INSERT INTO `halaman` VALUES (414, 414, 21, 31, 29, 13, 310029);
INSERT INTO `halaman` VALUES (415, 415, 21, 32, 1, 14, 320001);
INSERT INTO `halaman` VALUES (416, 416, 21, 32, 12, 15, 320012);
INSERT INTO `halaman` VALUES (417, 417, 21, 32, 21, 16, 320021);
INSERT INTO `halaman` VALUES (418, 418, 21, 33, 1, 17, 330001);
INSERT INTO `halaman` VALUES (419, 419, 21, 33, 7, 18, 330007);
INSERT INTO `halaman` VALUES (420, 420, 21, 33, 16, 19, 330016);
INSERT INTO `halaman` VALUES (421, 421, 21, 33, 23, 20, 330023);
INSERT INTO `halaman` VALUES (422, 422, 22, 33, 31, 1, 330031);
INSERT INTO `halaman` VALUES (423, 423, 22, 33, 36, 2, 330036);
INSERT INTO `halaman` VALUES (424, 424, 22, 33, 44, 3, 330044);
INSERT INTO `halaman` VALUES (425, 425, 22, 33, 51, 4, 330051);
INSERT INTO `halaman` VALUES (426, 426, 22, 33, 55, 5, 330055);
INSERT INTO `halaman` VALUES (427, 427, 22, 33, 63, 6, 330063);
INSERT INTO `halaman` VALUES (428, 428, 22, 34, 1, 7, 340001);
INSERT INTO `halaman` VALUES (429, 429, 22, 34, 8, 8, 340008);
INSERT INTO `halaman` VALUES (430, 430, 22, 34, 15, 9, 340015);
INSERT INTO `halaman` VALUES (431, 431, 22, 34, 23, 10, 340023);
INSERT INTO `halaman` VALUES (432, 432, 22, 34, 32, 11, 340032);
INSERT INTO `halaman` VALUES (433, 433, 22, 34, 40, 12, 340040);
INSERT INTO `halaman` VALUES (434, 434, 22, 34, 49, 13, 340049);
INSERT INTO `halaman` VALUES (435, 435, 22, 35, 4, 14, 350004);
INSERT INTO `halaman` VALUES (436, 436, 22, 35, 12, 15, 350012);
INSERT INTO `halaman` VALUES (437, 437, 22, 35, 19, 16, 350019);
INSERT INTO `halaman` VALUES (438, 438, 22, 35, 31, 17, 350031);
INSERT INTO `halaman` VALUES (439, 439, 22, 35, 39, 18, 350039);
INSERT INTO `halaman` VALUES (440, 440, 22, 35, 45, 19, 350045);
INSERT INTO `halaman` VALUES (441, 441, 22, 36, 13, 20, 360013);
INSERT INTO `halaman` VALUES (442, 442, 23, 36, 28, 1, 360028);
INSERT INTO `halaman` VALUES (443, 443, 23, 36, 41, 2, 360041);
INSERT INTO `halaman` VALUES (444, 444, 23, 36, 55, 3, 360055);
INSERT INTO `halaman` VALUES (445, 445, 23, 36, 71, 4, 360071);
INSERT INTO `halaman` VALUES (446, 446, 23, 37, 1, 5, 370001);
INSERT INTO `halaman` VALUES (447, 447, 23, 37, 25, 6, 370025);
INSERT INTO `halaman` VALUES (448, 448, 23, 37, 52, 7, 370052);
INSERT INTO `halaman` VALUES (449, 449, 23, 37, 77, 8, 370077);
INSERT INTO `halaman` VALUES (450, 450, 23, 37, 103, 9, 370103);
INSERT INTO `halaman` VALUES (451, 451, 23, 37, 127, 10, 370127);
INSERT INTO `halaman` VALUES (452, 452, 23, 37, 154, 11, 370154);
INSERT INTO `halaman` VALUES (453, 453, 23, 38, 1, 12, 380001);
INSERT INTO `halaman` VALUES (454, 454, 23, 38, 17, 13, 380017);
INSERT INTO `halaman` VALUES (455, 455, 23, 38, 27, 14, 380027);
INSERT INTO `halaman` VALUES (456, 456, 23, 38, 43, 15, 380043);
INSERT INTO `halaman` VALUES (457, 457, 23, 38, 62, 16, 380062);
INSERT INTO `halaman` VALUES (458, 458, 23, 38, 84, 17, 380084);
INSERT INTO `halaman` VALUES (459, 459, 23, 39, 6, 18, 390006);
INSERT INTO `halaman` VALUES (460, 460, 23, 39, 11, 19, 390011);
INSERT INTO `halaman` VALUES (461, 461, 23, 39, 22, 20, 390022);
INSERT INTO `halaman` VALUES (462, 462, 24, 39, 32, 1, 390032);
INSERT INTO `halaman` VALUES (463, 463, 24, 39, 41, 2, 390041);
INSERT INTO `halaman` VALUES (464, 464, 24, 39, 48, 3, 390048);
INSERT INTO `halaman` VALUES (465, 465, 24, 39, 57, 4, 390057);
INSERT INTO `halaman` VALUES (466, 466, 24, 39, 68, 5, 390068);
INSERT INTO `halaman` VALUES (467, 467, 24, 39, 75, 6, 390075);
INSERT INTO `halaman` VALUES (468, 468, 24, 40, 8, 7, 400008);
INSERT INTO `halaman` VALUES (469, 469, 24, 40, 17, 8, 400017);
INSERT INTO `halaman` VALUES (470, 470, 24, 40, 26, 9, 400026);
INSERT INTO `halaman` VALUES (471, 471, 24, 40, 34, 10, 400034);
INSERT INTO `halaman` VALUES (472, 472, 24, 40, 41, 11, 400041);
INSERT INTO `halaman` VALUES (473, 473, 24, 40, 50, 12, 400050);
INSERT INTO `halaman` VALUES (474, 474, 24, 40, 59, 13, 400059);
INSERT INTO `halaman` VALUES (475, 475, 24, 40, 67, 14, 400067);
INSERT INTO `halaman` VALUES (476, 476, 24, 40, 78, 15, 400078);
INSERT INTO `halaman` VALUES (477, 477, 24, 41, 1, 16, 410001);
INSERT INTO `halaman` VALUES (478, 478, 24, 41, 12, 17, 410012);
INSERT INTO `halaman` VALUES (479, 479, 24, 41, 21, 18, 410021);
INSERT INTO `halaman` VALUES (480, 480, 24, 41, 30, 19, 410030);
INSERT INTO `halaman` VALUES (481, 481, 24, 41, 39, 20, 410039);
INSERT INTO `halaman` VALUES (482, 482, 25, 41, 47, 1, 410047);
INSERT INTO `halaman` VALUES (483, 483, 25, 42, 1, 2, 420001);
INSERT INTO `halaman` VALUES (484, 484, 25, 42, 11, 3, 420011);
INSERT INTO `halaman` VALUES (485, 485, 25, 42, 16, 4, 420016);
INSERT INTO `halaman` VALUES (486, 486, 25, 42, 23, 5, 420023);
INSERT INTO `halaman` VALUES (487, 487, 25, 42, 32, 6, 420032);
INSERT INTO `halaman` VALUES (488, 488, 25, 42, 45, 7, 420045);
INSERT INTO `halaman` VALUES (489, 489, 25, 42, 52, 8, 420052);
INSERT INTO `halaman` VALUES (490, 490, 25, 43, 11, 9, 430011);
INSERT INTO `halaman` VALUES (491, 491, 25, 43, 23, 10, 430023);
INSERT INTO `halaman` VALUES (492, 492, 25, 43, 34, 11, 430034);
INSERT INTO `halaman` VALUES (493, 493, 25, 43, 48, 12, 430048);
INSERT INTO `halaman` VALUES (494, 494, 25, 43, 61, 13, 430061);
INSERT INTO `halaman` VALUES (495, 495, 25, 43, 74, 14, 430074);
INSERT INTO `halaman` VALUES (496, 496, 25, 44, 1, 15, 440001);
INSERT INTO `halaman` VALUES (497, 497, 25, 44, 19, 16, 440019);
INSERT INTO `halaman` VALUES (498, 498, 25, 44, 40, 17, 440040);
INSERT INTO `halaman` VALUES (499, 499, 25, 45, 1, 18, 450001);
INSERT INTO `halaman` VALUES (500, 500, 25, 45, 14, 19, 450014);
INSERT INTO `halaman` VALUES (501, 501, 25, 45, 23, 20, 450023);
INSERT INTO `halaman` VALUES (502, 502, 26, 45, 33, 1, 450033);
INSERT INTO `halaman` VALUES (503, 503, 26, 46, 6, 2, 460006);
INSERT INTO `halaman` VALUES (504, 504, 26, 46, 15, 3, 460015);
INSERT INTO `halaman` VALUES (505, 505, 26, 46, 21, 4, 460021);
INSERT INTO `halaman` VALUES (506, 506, 26, 46, 29, 5, 460029);
INSERT INTO `halaman` VALUES (507, 507, 26, 47, 1, 6, 470001);
INSERT INTO `halaman` VALUES (508, 508, 26, 47, 12, 7, 470012);
INSERT INTO `halaman` VALUES (509, 509, 26, 47, 20, 8, 470020);
INSERT INTO `halaman` VALUES (510, 510, 26, 47, 30, 9, 470030);
INSERT INTO `halaman` VALUES (511, 511, 26, 48, 1, 10, 480001);
INSERT INTO `halaman` VALUES (512, 512, 26, 48, 10, 11, 480010);
INSERT INTO `halaman` VALUES (513, 513, 26, 48, 16, 12, 480016);
INSERT INTO `halaman` VALUES (514, 514, 26, 48, 24, 13, 480024);
INSERT INTO `halaman` VALUES (515, 515, 26, 48, 29, 14, 480029);
INSERT INTO `halaman` VALUES (516, 516, 26, 49, 5, 15, 490005);
INSERT INTO `halaman` VALUES (517, 517, 26, 49, 12, 16, 490012);
INSERT INTO `halaman` VALUES (518, 518, 26, 50, 1, 17, 500001);
INSERT INTO `halaman` VALUES (519, 519, 26, 50, 16, 18, 500016);
INSERT INTO `halaman` VALUES (520, 520, 26, 50, 36, 19, 500036);
INSERT INTO `halaman` VALUES (521, 521, 26, 51, 7, 20, 510007);
INSERT INTO `halaman` VALUES (522, 522, 27, 51, 31, 1, 510031);
INSERT INTO `halaman` VALUES (523, 523, 27, 51, 52, 2, 510052);
INSERT INTO `halaman` VALUES (524, 524, 27, 52, 15, 3, 520015);
INSERT INTO `halaman` VALUES (525, 525, 27, 52, 32, 4, 520032);
INSERT INTO `halaman` VALUES (526, 526, 27, 53, 1, 5, 530001);
INSERT INTO `halaman` VALUES (527, 527, 27, 53, 27, 6, 530027);
INSERT INTO `halaman` VALUES (528, 528, 27, 53, 45, 7, 530045);
INSERT INTO `halaman` VALUES (529, 529, 27, 54, 7, 8, 540007);
INSERT INTO `halaman` VALUES (530, 530, 27, 54, 28, 9, 540028);
INSERT INTO `halaman` VALUES (531, 531, 27, 54, 50, 10, 540050);
INSERT INTO `halaman` VALUES (532, 532, 27, 55, 17, 11, 550017);
INSERT INTO `halaman` VALUES (533, 533, 27, 55, 41, 12, 550041);
INSERT INTO `halaman` VALUES (534, 534, 27, 55, 68, 13, 550068);
INSERT INTO `halaman` VALUES (535, 535, 27, 56, 17, 14, 560017);
INSERT INTO `halaman` VALUES (536, 536, 27, 56, 51, 15, 560051);
INSERT INTO `halaman` VALUES (537, 537, 27, 56, 77, 16, 560077);
INSERT INTO `halaman` VALUES (538, 538, 27, 57, 4, 17, 570004);
INSERT INTO `halaman` VALUES (539, 539, 27, 57, 12, 18, 570012);
INSERT INTO `halaman` VALUES (540, 540, 27, 57, 19, 19, 570019);
INSERT INTO `halaman` VALUES (541, 541, 27, 57, 25, 20, 570025);
INSERT INTO `halaman` VALUES (542, 542, 28, 58, 1, 1, 580001);
INSERT INTO `halaman` VALUES (543, 543, 28, 58, 7, 2, 580007);
INSERT INTO `halaman` VALUES (544, 544, 28, 58, 12, 3, 580012);
INSERT INTO `halaman` VALUES (545, 545, 28, 58, 22, 4, 580022);
INSERT INTO `halaman` VALUES (546, 546, 28, 59, 4, 5, 590004);
INSERT INTO `halaman` VALUES (547, 547, 28, 59, 10, 6, 590010);
INSERT INTO `halaman` VALUES (548, 548, 28, 59, 17, 7, 590017);
INSERT INTO `halaman` VALUES (549, 549, 28, 60, 1, 8, 600001);
INSERT INTO `halaman` VALUES (550, 550, 28, 60, 6, 9, 600006);
INSERT INTO `halaman` VALUES (551, 551, 28, 60, 12, 10, 600012);
INSERT INTO `halaman` VALUES (552, 552, 28, 61, 6, 11, 610006);
INSERT INTO `halaman` VALUES (553, 553, 28, 62, 1, 12, 620001);
INSERT INTO `halaman` VALUES (554, 554, 28, 62, 9, 13, 620009);
INSERT INTO `halaman` VALUES (555, 555, 28, 63, 5, 14, 630005);
INSERT INTO `halaman` VALUES (556, 556, 28, 64, 1, 15, 640001);
INSERT INTO `halaman` VALUES (557, 557, 28, 64, 10, 16, 640010);
INSERT INTO `halaman` VALUES (558, 558, 28, 65, 1, 17, 650001);
INSERT INTO `halaman` VALUES (559, 559, 28, 65, 6, 18, 650006);
INSERT INTO `halaman` VALUES (560, 560, 28, 66, 1, 19, 660001);
INSERT INTO `halaman` VALUES (561, 561, 28, 66, 8, 20, 660008);
INSERT INTO `halaman` VALUES (562, 562, 29, 67, 1, 1, 670001);
INSERT INTO `halaman` VALUES (563, 563, 29, 67, 13, 2, 670013);
INSERT INTO `halaman` VALUES (564, 564, 29, 67, 27, 3, 670027);
INSERT INTO `halaman` VALUES (565, 565, 29, 68, 16, 4, 680016);
INSERT INTO `halaman` VALUES (566, 566, 29, 68, 43, 5, 680043);
INSERT INTO `halaman` VALUES (567, 567, 29, 69, 9, 6, 690009);
INSERT INTO `halaman` VALUES (568, 568, 29, 69, 35, 7, 690035);
INSERT INTO `halaman` VALUES (569, 569, 29, 70, 11, 8, 700011);
INSERT INTO `halaman` VALUES (570, 570, 29, 70, 40, 9, 700040);
INSERT INTO `halaman` VALUES (571, 571, 29, 71, 11, 10, 710011);
INSERT INTO `halaman` VALUES (572, 572, 29, 72, 1, 11, 720001);
INSERT INTO `halaman` VALUES (573, 573, 29, 72, 14, 12, 720014);
INSERT INTO `halaman` VALUES (574, 574, 29, 73, 1, 13, 730001);
INSERT INTO `halaman` VALUES (575, 575, 29, 73, 20, 14, 730020);
INSERT INTO `halaman` VALUES (576, 576, 29, 74, 18, 15, 740018);
INSERT INTO `halaman` VALUES (577, 577, 29, 74, 48, 16, 740048);
INSERT INTO `halaman` VALUES (578, 578, 29, 75, 20, 17, 750020);
INSERT INTO `halaman` VALUES (579, 579, 29, 76, 6, 18, 760006);
INSERT INTO `halaman` VALUES (580, 580, 29, 76, 26, 19, 760026);
INSERT INTO `halaman` VALUES (581, 581, 29, 77, 20, 20, 770020);
INSERT INTO `halaman` VALUES (582, 582, 30, 78, 1, 1, 780001);
INSERT INTO `halaman` VALUES (583, 583, 30, 78, 31, 2, 780031);
INSERT INTO `halaman` VALUES (584, 584, 30, 79, 16, 3, 790016);
INSERT INTO `halaman` VALUES (585, 585, 30, 80, 1, 4, 800001);
INSERT INTO `halaman` VALUES (586, 586, 30, 81, 1, 5, 810001);
INSERT INTO `halaman` VALUES (587, 587, 30, 82, 1, 6, 820001);
INSERT INTO `halaman` VALUES (588, 588, 30, 83, 7, 7, 830007);
INSERT INTO `halaman` VALUES (589, 589, 30, 83, 35, 8, 830035);
INSERT INTO `halaman` VALUES (590, 590, 30, 85, 1, 9, 850001);
INSERT INTO `halaman` VALUES (591, 591, 30, 86, 1, 10, 860001);
INSERT INTO `halaman` VALUES (592, 592, 30, 87, 16, 11, 870016);
INSERT INTO `halaman` VALUES (593, 593, 30, 89, 1, 12, 890001);
INSERT INTO `halaman` VALUES (594, 594, 30, 89, 24, 13, 890024);
INSERT INTO `halaman` VALUES (595, 595, 30, 91, 1, 14, 910001);
INSERT INTO `halaman` VALUES (596, 596, 30, 92, 15, 15, 920015);
INSERT INTO `halaman` VALUES (597, 597, 30, 95, 1, 16, 950001);
INSERT INTO `halaman` VALUES (598, 598, 30, 97, 1, 17, 970001);
INSERT INTO `halaman` VALUES (599, 599, 30, 98, 8, 18, 980008);
INSERT INTO `halaman` VALUES (600, 600, 30, 100, 10, 19, 1000010);
INSERT INTO `halaman` VALUES (601, 601, 30, 103, 1, 20, 1030001);
INSERT INTO `halaman` VALUES (602, 602, 30, 106, 1, 21, 1060001);
INSERT INTO `halaman` VALUES (603, 603, 30, 109, 1, 22, 1090001);
INSERT INTO `halaman` VALUES (604, 604, 30, 112, 1, 23, 1120001);

-- ----------------------------
-- Table structure for halaqoh
-- ----------------------------
DROP TABLE IF EXISTS `halaqoh`;
CREATE TABLE `halaqoh`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_halaqoh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_ustads` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of halaqoh
-- ----------------------------
INSERT INTO `halaqoh` VALUES (1, 'coba', 2);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hostid` int NULL DEFAULT NULL,
  `itemname` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `itemvalue` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 'A', 10);
INSERT INTO `history` VALUES (1, 'B', 3);
INSERT INTO `history` VALUES (2, 'A', 9);
INSERT INTO `history` VALUES (2, 'C', 40);
INSERT INTO `history` VALUES (2, 'D', 5);
INSERT INTO `history` VALUES (3, 'A', 14);
INSERT INTO `history` VALUES (3, 'B', 67);
INSERT INTO `history` VALUES (3, 'D', 8);

-- ----------------------------
-- Table structure for juz
-- ----------------------------
DROP TABLE IF EXISTS `juz`;
CREATE TABLE `juz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_surat` int NULL DEFAULT NULL,
  `juz` int NULL DEFAULT NULL,
  `surat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ayat` int NULL DEFAULT NULL,
  `nilai` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of juz
-- ----------------------------
INSERT INTO `juz` VALUES (1, 2, 1, 'Al Baqarah 141', 141, 2141);
INSERT INTO `juz` VALUES (2, 2, 2, 'Al Baqarah 252', 252, 2252);
INSERT INTO `juz` VALUES (3, 3, 3, 'Al Imran 92', 92, 3092);
INSERT INTO `juz` VALUES (4, 4, 4, 'An Nisaa 23', 23, 4023);
INSERT INTO `juz` VALUES (5, 4, 5, 'An Nisaa 147', 147, 4147);
INSERT INTO `juz` VALUES (6, 5, 6, 'Al Ma’idah 81', 81, 5081);
INSERT INTO `juz` VALUES (7, 6, 7, 'Al Am’am 110', 110, 6110);
INSERT INTO `juz` VALUES (8, 7, 8, 'Al A’raf 87', 87, 7087);
INSERT INTO `juz` VALUES (9, 8, 9, 'Al Anfal 40', 40, 8040);
INSERT INTO `juz` VALUES (10, 9, 10, 'At Tauba 92', 92, 9092);
INSERT INTO `juz` VALUES (11, 11, 11, 'Hud 5', 5, 11005);
INSERT INTO `juz` VALUES (12, 12, 12, 'Yusuf 52', 52, 12052);
INSERT INTO `juz` VALUES (13, 14, 13, 'Ibrahim 52', 52, 14052);
INSERT INTO `juz` VALUES (14, 16, 14, 'AnNahl 128', 128, 16128);
INSERT INTO `juz` VALUES (15, 18, 15, 'Al Kahf 74', 74, 18074);
INSERT INTO `juz` VALUES (16, 20, 16, 'Ta Ha 135', 135, 20135);
INSERT INTO `juz` VALUES (17, 22, 17, 'Al Hajj 78', 78, 22078);
INSERT INTO `juz` VALUES (18, 25, 18, 'AlFurqan 20', 20, 25020);
INSERT INTO `juz` VALUES (19, 27, 19, 'AnNaml 55', 55, 27055);
INSERT INTO `juz` VALUES (20, 29, 20, 'AlAnkabut 45', 45, 29045);
INSERT INTO `juz` VALUES (21, 33, 21, 'Al Azhab 30', 30, 33030);
INSERT INTO `juz` VALUES (22, 36, 22, 'Ya Sin 27', 27, 36027);
INSERT INTO `juz` VALUES (23, 39, 23, 'AzZumar 31', 31, 39031);
INSERT INTO `juz` VALUES (24, 41, 24, 'Fussilat 46', 46, 41046);
INSERT INTO `juz` VALUES (25, 45, 25, 'AlJathiya 37', 37, 45037);
INSERT INTO `juz` VALUES (26, 51, 26, 'Az Zariyat 30', 30, 51030);
INSERT INTO `juz` VALUES (27, 57, 27, 'AlHadid 29', 29, 57029);
INSERT INTO `juz` VALUES (28, 66, 28, 'AtTahrim 12', 12, 66012);
INSERT INTO `juz` VALUES (29, 77, 29, 'AlMursalat 50', 50, 77050);
INSERT INTO `juz` VALUES (30, 114, 30, 'AnNas 6', 6, 114006);

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ruang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 'Kelas 1 A', NULL);
INSERT INTO `kelas` VALUES (2, 'Kelas 2 A', NULL);
INSERT INTO `kelas` VALUES (3, 'Kelas 3 A', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (3, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (4, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (5, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (6, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (7, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (8, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (9, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (10, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (11, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (12, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (13, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (14, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (15, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (16, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (17, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (18, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (19, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (20, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (21, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (22, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (23, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (24, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (25, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (26, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (27, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (28, '2021_05_02_194521_create_cms_apicustom_table', 0);
INSERT INTO `migrations` VALUES (29, '2021_05_02_194521_create_cms_apikey_table', 0);
INSERT INTO `migrations` VALUES (30, '2021_05_02_194521_create_cms_dashboard_table', 0);
INSERT INTO `migrations` VALUES (31, '2021_05_02_194521_create_cms_email_queues_table', 0);
INSERT INTO `migrations` VALUES (32, '2021_05_02_194521_create_cms_email_templates_table', 0);
INSERT INTO `migrations` VALUES (33, '2021_05_02_194521_create_cms_logs_table', 0);
INSERT INTO `migrations` VALUES (34, '2021_05_02_194521_create_cms_menus_table', 0);
INSERT INTO `migrations` VALUES (35, '2021_05_02_194521_create_cms_menus_privileges_table', 0);
INSERT INTO `migrations` VALUES (36, '2021_05_02_194521_create_cms_moduls_table', 0);
INSERT INTO `migrations` VALUES (37, '2021_05_02_194521_create_cms_notifications_table', 0);
INSERT INTO `migrations` VALUES (38, '2021_05_02_194521_create_cms_privileges_table', 0);
INSERT INTO `migrations` VALUES (39, '2021_05_02_194521_create_cms_privileges_roles_table', 0);
INSERT INTO `migrations` VALUES (40, '2021_05_02_194521_create_cms_settings_table', 0);
INSERT INTO `migrations` VALUES (41, '2021_05_02_194521_create_cms_statistic_components_table', 0);
INSERT INTO `migrations` VALUES (42, '2021_05_02_194521_create_cms_statistics_table', 0);
INSERT INTO `migrations` VALUES (43, '2021_05_02_194521_create_cms_users_table', 0);
INSERT INTO `migrations` VALUES (44, '2021_05_02_194521_create_failed_jobs_table', 0);
INSERT INTO `migrations` VALUES (45, '2021_05_02_194521_create_hafalan_table', 0);
INSERT INTO `migrations` VALUES (46, '2021_05_02_194521_create_hafalan_juz_temp_table', 0);
INSERT INTO `migrations` VALUES (47, '2021_05_02_194521_create_hafalan_temp_table', 0);
INSERT INTO `migrations` VALUES (48, '2021_05_02_194521_create_halaman_table', 0);
INSERT INTO `migrations` VALUES (49, '2021_05_02_194521_create_halaqoh_table', 0);
INSERT INTO `migrations` VALUES (50, '2021_05_02_194521_create_history_table', 0);
INSERT INTO `migrations` VALUES (51, '2021_05_02_194521_create_juz_table', 0);
INSERT INTO `migrations` VALUES (52, '2021_05_02_194521_create_kelas_table', 0);
INSERT INTO `migrations` VALUES (53, '2021_05_02_194521_create_ruang_table', 0);
INSERT INTO `migrations` VALUES (54, '2021_05_02_194521_create_santri_table', 0);
INSERT INTO `migrations` VALUES (55, '2021_05_02_194521_create_surat_table', 0);
INSERT INTO `migrations` VALUES (56, '2021_05_02_194521_create_test_api_table', 0);
INSERT INTO `migrations` VALUES (57, '2021_05_02_194521_create_users_table', 0);
INSERT INTO `migrations` VALUES (58, '2021_05_02_194521_create_users_login_table', 0);
INSERT INTO `migrations` VALUES (59, '2021_05_02_195744_create_cms_apicustom_table', 0);
INSERT INTO `migrations` VALUES (60, '2021_05_02_195744_create_cms_apikey_table', 0);
INSERT INTO `migrations` VALUES (61, '2021_05_02_195744_create_cms_dashboard_table', 0);
INSERT INTO `migrations` VALUES (62, '2021_05_02_195744_create_cms_email_queues_table', 0);
INSERT INTO `migrations` VALUES (63, '2021_05_02_195744_create_cms_email_templates_table', 0);
INSERT INTO `migrations` VALUES (64, '2021_05_02_195744_create_cms_logs_table', 0);
INSERT INTO `migrations` VALUES (65, '2021_05_02_195744_create_cms_menus_table', 0);
INSERT INTO `migrations` VALUES (66, '2021_05_02_195744_create_cms_menus_privileges_table', 0);
INSERT INTO `migrations` VALUES (67, '2021_05_02_195744_create_cms_moduls_table', 0);
INSERT INTO `migrations` VALUES (68, '2021_05_02_195744_create_cms_notifications_table', 0);
INSERT INTO `migrations` VALUES (69, '2021_05_02_195744_create_cms_privileges_table', 0);
INSERT INTO `migrations` VALUES (70, '2021_05_02_195744_create_cms_privileges_roles_table', 0);
INSERT INTO `migrations` VALUES (71, '2021_05_02_195744_create_cms_settings_table', 0);
INSERT INTO `migrations` VALUES (72, '2021_05_02_195744_create_cms_statistic_components_table', 0);
INSERT INTO `migrations` VALUES (73, '2021_05_02_195744_create_cms_statistics_table', 0);
INSERT INTO `migrations` VALUES (74, '2021_05_02_195744_create_cms_users_table', 0);
INSERT INTO `migrations` VALUES (75, '2021_05_02_195744_create_failed_jobs_table', 0);
INSERT INTO `migrations` VALUES (76, '2021_05_02_195744_create_hafalan_table', 0);
INSERT INTO `migrations` VALUES (77, '2021_05_02_195744_create_hafalan_juz_temp_table', 0);
INSERT INTO `migrations` VALUES (78, '2021_05_02_195744_create_hafalan_temp_table', 0);
INSERT INTO `migrations` VALUES (79, '2021_05_02_195744_create_halaman_table', 0);
INSERT INTO `migrations` VALUES (80, '2021_05_02_195744_create_halaqoh_table', 0);
INSERT INTO `migrations` VALUES (81, '2021_05_02_195744_create_history_table', 0);
INSERT INTO `migrations` VALUES (82, '2021_05_02_195744_create_juz_table', 0);
INSERT INTO `migrations` VALUES (83, '2021_05_02_195744_create_kelas_table', 0);
INSERT INTO `migrations` VALUES (84, '2021_05_02_195744_create_ruang_table', 0);
INSERT INTO `migrations` VALUES (85, '2021_05_02_195744_create_santri_table', 0);
INSERT INTO `migrations` VALUES (86, '2021_05_02_195744_create_surat_table', 0);
INSERT INTO `migrations` VALUES (87, '2021_05_02_195744_create_test_api_table', 0);
INSERT INTO `migrations` VALUES (88, '2021_05_02_195744_create_users_table', 0);
INSERT INTO `migrations` VALUES (89, '2021_05_02_195744_create_users_login_table', 0);
INSERT INTO `migrations` VALUES (90, '2021_05_02_195811_create_cms_apicustom_table', 0);
INSERT INTO `migrations` VALUES (91, '2021_05_02_195811_create_cms_apikey_table', 0);
INSERT INTO `migrations` VALUES (92, '2021_05_02_195811_create_cms_dashboard_table', 0);
INSERT INTO `migrations` VALUES (93, '2021_05_02_195811_create_cms_email_queues_table', 0);
INSERT INTO `migrations` VALUES (94, '2021_05_02_195811_create_cms_email_templates_table', 0);
INSERT INTO `migrations` VALUES (95, '2021_05_02_195811_create_cms_logs_table', 0);
INSERT INTO `migrations` VALUES (96, '2021_05_02_195811_create_cms_menus_table', 0);
INSERT INTO `migrations` VALUES (97, '2021_05_02_195811_create_cms_menus_privileges_table', 0);
INSERT INTO `migrations` VALUES (98, '2021_05_02_195811_create_cms_moduls_table', 0);
INSERT INTO `migrations` VALUES (99, '2021_05_02_195811_create_cms_notifications_table', 0);
INSERT INTO `migrations` VALUES (100, '2021_05_02_195811_create_cms_privileges_table', 0);
INSERT INTO `migrations` VALUES (101, '2021_05_02_195811_create_cms_privileges_roles_table', 0);
INSERT INTO `migrations` VALUES (102, '2021_05_02_195811_create_cms_settings_table', 0);
INSERT INTO `migrations` VALUES (103, '2021_05_02_195811_create_cms_statistic_components_table', 0);
INSERT INTO `migrations` VALUES (104, '2021_05_02_195811_create_cms_statistics_table', 0);
INSERT INTO `migrations` VALUES (105, '2021_05_02_195811_create_cms_users_table', 0);
INSERT INTO `migrations` VALUES (106, '2021_05_02_195811_create_failed_jobs_table', 0);
INSERT INTO `migrations` VALUES (107, '2021_05_02_195811_create_hafalan_table', 0);
INSERT INTO `migrations` VALUES (108, '2021_05_02_195811_create_hafalan_juz_temp_table', 0);
INSERT INTO `migrations` VALUES (109, '2021_05_02_195811_create_hafalan_temp_table', 0);
INSERT INTO `migrations` VALUES (110, '2021_05_02_195811_create_halaman_table', 0);
INSERT INTO `migrations` VALUES (111, '2021_05_02_195811_create_halaqoh_table', 0);
INSERT INTO `migrations` VALUES (112, '2021_05_02_195811_create_history_table', 0);
INSERT INTO `migrations` VALUES (113, '2021_05_02_195811_create_juz_table', 0);
INSERT INTO `migrations` VALUES (114, '2021_05_02_195811_create_kelas_table', 0);
INSERT INTO `migrations` VALUES (115, '2021_05_02_195811_create_ruang_table', 0);
INSERT INTO `migrations` VALUES (116, '2021_05_02_195811_create_santri_table', 0);
INSERT INTO `migrations` VALUES (117, '2021_05_02_195811_create_surat_table', 0);
INSERT INTO `migrations` VALUES (118, '2021_05_02_195811_create_test_api_table', 0);
INSERT INTO `migrations` VALUES (119, '2021_05_02_195811_create_users_table', 0);
INSERT INTO `migrations` VALUES (120, '2021_05_02_195811_create_users_login_table', 0);

-- ----------------------------
-- Table structure for ruang
-- ----------------------------
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ruang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ruang
-- ----------------------------
INSERT INTO `ruang` VALUES (1, 'Ruang A');
INSERT INTO `ruang` VALUES (2, 'Ruang B');
INSERT INTO `ruang` VALUES (3, 'Ruang C');
INSERT INTO `ruang` VALUES (4, 'Ruang D');

-- ----------------------------
-- Table structure for santri
-- ----------------------------
DROP TABLE IF EXISTS `santri`;
CREATE TABLE `santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `id_kelas` int NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of santri
-- ----------------------------
INSERT INTO `santri` VALUES (1, '1', 'saiful', 1, 'aktif');
INSERT INTO `santri` VALUES (2, '2', 'Anwar', 2, 'aktif');

-- ----------------------------
-- Table structure for surat
-- ----------------------------
DROP TABLE IF EXISTS `surat`;
CREATE TABLE `surat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ayat` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of surat
-- ----------------------------
INSERT INTO `surat` VALUES (1, 'Al-Fatihah', 7);
INSERT INTO `surat` VALUES (2, 'Al-Baqarah', 286);
INSERT INTO `surat` VALUES (3, 'Ali \'Imran', 200);
INSERT INTO `surat` VALUES (4, 'An-Nisa\'', 176);
INSERT INTO `surat` VALUES (5, 'Al-Ma\'idah', 120);
INSERT INTO `surat` VALUES (6, 'Al-An\'am', 165);
INSERT INTO `surat` VALUES (7, 'Al-A’raf', 206);
INSERT INTO `surat` VALUES (8, 'Al-Anfal', 75);
INSERT INTO `surat` VALUES (9, 'At-Taubah', 129);
INSERT INTO `surat` VALUES (10, 'Yunus', 109);
INSERT INTO `surat` VALUES (11, 'Hud', 123);
INSERT INTO `surat` VALUES (12, 'Yusuf', 111);
INSERT INTO `surat` VALUES (13, 'Ar-Ra’d', 43);
INSERT INTO `surat` VALUES (14, 'Ibrahim', 52);
INSERT INTO `surat` VALUES (15, 'Al-Hijr', 99);
INSERT INTO `surat` VALUES (16, 'An-Nahl', 128);
INSERT INTO `surat` VALUES (17, 'Al-Isra\'', 111);
INSERT INTO `surat` VALUES (18, 'Al-Kahf', 110);
INSERT INTO `surat` VALUES (19, 'Maryam', 98);
INSERT INTO `surat` VALUES (20, 'Ta Ha', 135);
INSERT INTO `surat` VALUES (21, 'Al-Anbiya', 112);
INSERT INTO `surat` VALUES (22, 'Al-Hajj', 78);
INSERT INTO `surat` VALUES (23, 'Al-Mu’minun', 118);
INSERT INTO `surat` VALUES (24, 'An-Nur', 64);
INSERT INTO `surat` VALUES (25, 'Al-Furqan', 77);
INSERT INTO `surat` VALUES (26, 'Asy-Syu\'ara\'', 227);
INSERT INTO `surat` VALUES (27, 'An-Naml', 93);
INSERT INTO `surat` VALUES (28, 'Al-Qasas', 88);
INSERT INTO `surat` VALUES (29, 'Al-\'Ankabut', 69);
INSERT INTO `surat` VALUES (30, 'Ar-Rum', 60);
INSERT INTO `surat` VALUES (31, 'Luqman', 34);
INSERT INTO `surat` VALUES (32, 'As-Sajdah', 30);
INSERT INTO `surat` VALUES (33, 'Al-Ahzab', 73);
INSERT INTO `surat` VALUES (34, 'Saba’', 54);
INSERT INTO `surat` VALUES (35, 'Fatir', 45);
INSERT INTO `surat` VALUES (36, 'Ya Sin', 83);
INSERT INTO `surat` VALUES (37, 'As-Saffat', 182);
INSERT INTO `surat` VALUES (38, 'Sad', 88);
INSERT INTO `surat` VALUES (39, 'Az-Zumar', 75);
INSERT INTO `surat` VALUES (40, 'Al-Mu’min', 85);
INSERT INTO `surat` VALUES (41, 'Fussilat', 54);
INSERT INTO `surat` VALUES (42, 'Asy-Syura', 53);
INSERT INTO `surat` VALUES (43, 'Az-Zukhruf', 89);
INSERT INTO `surat` VALUES (44, 'Ad-Dukhan', 59);
INSERT INTO `surat` VALUES (45, 'Al-Jasiyah', 37);
INSERT INTO `surat` VALUES (46, 'Al-Ahqaf', 35);
INSERT INTO `surat` VALUES (47, 'Muhammad', 38);
INSERT INTO `surat` VALUES (48, 'Al-Fath', 29);
INSERT INTO `surat` VALUES (49, 'Al-Hujurat', 18);
INSERT INTO `surat` VALUES (50, 'Qaf', 45);
INSERT INTO `surat` VALUES (51, 'Az-Zariyat', 60);
INSERT INTO `surat` VALUES (52, 'At-Tur', 49);
INSERT INTO `surat` VALUES (53, 'An-Najm', 62);
INSERT INTO `surat` VALUES (54, 'Al-Qamar', 55);
INSERT INTO `surat` VALUES (55, 'Ar-Rahman', 78);
INSERT INTO `surat` VALUES (56, 'Al-Waqi’ah', 96);
INSERT INTO `surat` VALUES (57, 'Al-Hadid', 29);
INSERT INTO `surat` VALUES (58, 'Al-Mujadilah', 22);
INSERT INTO `surat` VALUES (59, 'Al-Hasyr', 24);
INSERT INTO `surat` VALUES (60, 'Al-Mumtahanah', 13);
INSERT INTO `surat` VALUES (61, 'As-Saff', 14);
INSERT INTO `surat` VALUES (62, 'Al-Jumu’ah', 11);
INSERT INTO `surat` VALUES (63, 'Al-Munafiqun', 11);
INSERT INTO `surat` VALUES (64, 'At-Tagabun', 18);
INSERT INTO `surat` VALUES (65, 'At-Talaq', 12);
INSERT INTO `surat` VALUES (66, 'At-Tahrim', 12);
INSERT INTO `surat` VALUES (67, 'Al-Mulk', 30);
INSERT INTO `surat` VALUES (68, 'Al-Qalam', 52);
INSERT INTO `surat` VALUES (69, 'Al-Haqqah', 52);
INSERT INTO `surat` VALUES (70, 'Al-Ma’arij', 44);
INSERT INTO `surat` VALUES (71, 'Nuh', 28);
INSERT INTO `surat` VALUES (72, 'Al-Jinn', 28);
INSERT INTO `surat` VALUES (73, 'Al-Muzzammil', 20);
INSERT INTO `surat` VALUES (74, 'Al-Muddassir', 56);
INSERT INTO `surat` VALUES (75, 'Al-Qiyamah', 40);
INSERT INTO `surat` VALUES (76, 'Al-Insan', 31);
INSERT INTO `surat` VALUES (77, 'Al-Mursalat', 50);
INSERT INTO `surat` VALUES (78, 'An-Naba’', 40);
INSERT INTO `surat` VALUES (79, 'An-Nazi’at', 46);
INSERT INTO `surat` VALUES (80, 'Abasa', 42);
INSERT INTO `surat` VALUES (81, 'At-Takwir', 29);
INSERT INTO `surat` VALUES (82, 'Al-Infitar', 19);
INSERT INTO `surat` VALUES (83, 'Al-Tatfif', 36);
INSERT INTO `surat` VALUES (84, 'Al-Insyiqaq', 25);
INSERT INTO `surat` VALUES (85, 'Al-Buruj', 22);
INSERT INTO `surat` VALUES (86, 'At-Tariq', 17);
INSERT INTO `surat` VALUES (87, 'Al-A’la', 19);
INSERT INTO `surat` VALUES (88, 'Al-Gasyiyah', 26);
INSERT INTO `surat` VALUES (89, 'Al-Fajr', 30);
INSERT INTO `surat` VALUES (90, 'Al-Balad', 20);
INSERT INTO `surat` VALUES (91, 'Asy-Syams', 15);
INSERT INTO `surat` VALUES (92, 'Al-Lail', 21);
INSERT INTO `surat` VALUES (93, 'Ad-Duha', 11);
INSERT INTO `surat` VALUES (94, 'Al-Insyirah', 8);
INSERT INTO `surat` VALUES (95, 'At-Tin', 8);
INSERT INTO `surat` VALUES (96, 'Al-\'Alaq', 19);
INSERT INTO `surat` VALUES (97, 'Al-Qadr', 5);
INSERT INTO `surat` VALUES (98, 'Al-Bayyinah', 8);
INSERT INTO `surat` VALUES (99, 'Az-Zalzalah', 8);
INSERT INTO `surat` VALUES (100, 'Al-\'Adiyat', 11);
INSERT INTO `surat` VALUES (101, 'Al-Qari\'ah', 11);
INSERT INTO `surat` VALUES (102, 'At-Takasur', 8);
INSERT INTO `surat` VALUES (103, 'Al-\'Asr', 3);
INSERT INTO `surat` VALUES (104, 'Al-Humazah', 9);
INSERT INTO `surat` VALUES (105, 'Al-Fil', 5);
INSERT INTO `surat` VALUES (106, 'Quraisy', 4);
INSERT INTO `surat` VALUES (107, 'Al-Ma’un', 7);
INSERT INTO `surat` VALUES (108, 'Al-Kausar', 3);
INSERT INTO `surat` VALUES (109, 'Al-Kafirun', 6);
INSERT INTO `surat` VALUES (110, 'An-Nasr', 3);
INSERT INTO `surat` VALUES (111, 'Al-Lahab', 5);
INSERT INTO `surat` VALUES (112, 'Al-Ikhlas', 4);
INSERT INTO `surat` VALUES (113, 'Al-Falaq', 5);
INSERT INTO `surat` VALUES (114, 'An-Nas', 6);

-- ----------------------------
-- Table structure for tahfizh
-- ----------------------------
DROP TABLE IF EXISTS `tahfizh`;
CREATE TABLE `tahfizh`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_santri` int NULL DEFAULT NULL,
  `dr_surat` int NULL DEFAULT NULL,
  `dr_ayat` int NULL DEFAULT NULL,
  `ke_surat` int NULL DEFAULT NULL,
  `ke_ayat` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `tot_halaman` int NULL DEFAULT NULL,
  `tgl` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tahfizh
-- ----------------------------
INSERT INTO `tahfizh` VALUES (1, 1, 1, 1, 2, 10, '2022-07-29 18:31:38', 200, '2022-07-29');
INSERT INTO `tahfizh` VALUES (2, 2, 44, 10, 44, 50, '2022-07-29 18:42:42', 50, '2022-07-27');

-- ----------------------------
-- Table structure for test_api
-- ----------------------------
DROP TABLE IF EXISTS `test_api`;
CREATE TABLE `test_api`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_api
-- ----------------------------
INSERT INTO `test_api` VALUES (1, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (2, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (3, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (4, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (5, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (6, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (7, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (8, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (9, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (10, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (11, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (12, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (13, 'saiful', 'solo');
INSERT INTO `test_api` VALUES (14, 'saiful', 'solo');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for users_login
-- ----------------------------
DROP TABLE IF EXISTS `users_login`;
CREATE TABLE `users_login`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_santri` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_login
-- ----------------------------
INSERT INTO `users_login` VALUES (1, 'Super Admin juozz', 'uploads/1/2021-04/kisspng_cdr_coreldraw_yup_motif_batik_5b14fe01dbe5135031778015281024019007.jpg', 'saiful@admin.com', '$2y$10$2OziUz92V4j6U9VkEncsuu8OsO55VzlPn.HM1ZuIp/nu5peCTluRq', 1, '2021-04-05 23:10:48', '2021-04-06 22:44:14', 'Active', NULL);
INSERT INTO `users_login` VALUES (2, 'saiful anwar', 'uploads/1/2021-04/kisspng_cdr_coreldraw_yup_motif_batik_5b14fe01dbe5135031778015281024019007.jpg', 'saiful.coder@gmail.com', '$2y$10$tn.Ve4l5ZjTZ.ZtAUyvCx.t1FP7JB2nHZFYeDhvhqQcNFFMUAVPTG', 2, '2021-04-06 22:56:56', NULL, NULL, NULL);
INSERT INTO `users_login` VALUES (3, 'Samiudin', 'uploads/1/2021-04/1200px_laravelsvg.png', 'samidroid11@gmail.com', '$2y$10$B.K4hGDwWgPq9SiAH9/4heAH7F6MfnaqWD9V8tNXUULNVbRhTQNMq', 2, '2021-04-18 09:14:10', NULL, NULL, NULL);

-- ----------------------------
-- Procedure structure for hello
-- ----------------------------
DROP PROCEDURE IF EXISTS `hello`;
delimiter ;;
CREATE PROCEDURE `hello`()
BEGIN
SELECT "Hello World!";
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for laporan
-- ----------------------------
DROP PROCEDURE IF EXISTS `laporan`;
delimiter ;;
CREATE PROCEDURE `laporan`()
BEGIN
	#Routine body goes here...
SET @sql = NULL;
TRUNCATE TABLE hafalan_temp;

insert into hafalan_temp (id_santri, nama, kelas, ruang, id_surat, nama_surat, jml_ayat, stat, khatam)
SELECT hafalan.id_santri, santri.nama, kelas.kelas, ruang.ruang, hafalan.id_surat, surat.nama, surat.ayat, hafalan.stat, hafalan.khatam
FROM
hafalan
LEFT JOIN santri ON hafalan.id_santri = santri.id
LEFT JOIN kelas ON santri.id_kelas = kelas.id
LEFT JOIN ruang ON santri.id_ruang = ruang.id
LEFT JOIN surat ON hafalan.id_surat = surat.id
group by id_surat, id_santri;


SELECT
    GROUP_CONCAT(DISTINCT 
    CONCAT('max(CASE WHEN id_surat= ', id, ' THEN stat ELSE null END) AS ', 'surat_ke', id))

INTO @sql
FROM
  surat;

SET @sql = CONCAT('SELECT nama, kelas, ruang, ', @sql, ' 
                  FROM hafalan_temp
                   GROUP BY id_santri');

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for laporan_juz
-- ----------------------------
DROP PROCEDURE IF EXISTS `laporan_juz`;
delimiter ;;
CREATE PROCEDURE `laporan_juz`()
BEGIN
	#Routine body goes here...
SET @sql = NULL;
TRUNCATE TABLE hafalan_temp;

insert into hafalan_juz_temp (id_santri, nama, kelas, ruang, juz, halaman,  status_juz, khatam_juz)
SELECT hafalan.id_santri, santri.nama, kelas.kelas, ruang.ruang, hafalan.juz,  hafalan.hal_ke , hafalan.status_juz, hafalan.khatam_juz
FROM
hafalan
LEFT JOIN santri ON hafalan.id_santri = santri.id
LEFT JOIN kelas ON santri.id_kelas = kelas.id
LEFT JOIN ruang ON santri.id_ruang = ruang.id
LEFT JOIN juz ON hafalan.juz = juz.juz
where hafalan.jenis = 1
group by juz, id_santri;


SELECT
    GROUP_CONCAT(DISTINCT 
    CONCAT('max(CASE WHEN juz= ', juz, ' THEN status_juz ELSE null END) AS ', 'Juz', juz))

INTO @sql
FROM
  juz;

SET @sql = CONCAT('SELECT nama, kelas, ruang, ', @sql, ' 
                  FROM hafalan_juz_temp
                   GROUP BY id_santri');

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_laporan
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_laporan`;
delimiter ;;
CREATE PROCEDURE `sp_laporan`(IN `dr_tanggal` VARCHAR(10),IN `ke_tanggal` VARCHAR(10))
BEGIN
SET @sql = NULL;
SELECT
    GROUP_CONCAT(DISTINCT 
    CONCAT('SUM(CASE WHEN tgl = "', 
    tgl, '" THEN tot_halaman ELSE 0 END) AS "'
    , tgl,'"'))
INTO @sql
FROM
  tahfizh;
-- SELECT @sql;

SET @sql = CONCAT('SELECT 
	santri.nis, 
	santri.nama, 
	kelas.kelas,
	', @sql, ' ,
	sum(tot_halaman) as total_halaman
	FROM
	tahfizh
	LEFT JOIN
	santri
	ON 
		tahfizh.id_santri = santri.id
	LEFT JOIN
	kelas
	ON 
		santri.id_kelas = kelas.id
		where tgl BETWEEN "',dr_tanggal,'" and "',ke_tanggal,'"
GROUP BY
	id_santri');
-- SELECT @sql;
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for tes
-- ----------------------------
DROP PROCEDURE IF EXISTS `tes`;
delimiter ;;
CREATE PROCEDURE `tes`(IN `dr_tanggal` VARCHAR(7),IN `ke_tanggal` VARCHAR(7))
BEGIN
SET @sql = NULL;
SELECT
    GROUP_CONCAT(DISTINCT 
    CONCAT('SUM(CASE WHEN tgl = "', 
    tgl, '" THEN tot_halaman ELSE 0 END) AS "'
    , tgl,'"'))
INTO @sql
FROM
  tahfizh;
-- SELECT @sql;

SET @sql = CONCAT('SELECT 
	santri.nis, 
	santri.nama, 
	kelas.kelas,
	', @sql, ' ,
	sum(tot_halaman) as total_halaman
	FROM
	tahfizh
	LEFT JOIN
	santri
	ON 
		tahfizh.id_santri = santri.id
	LEFT JOIN
	kelas
	ON 
		santri.id_kelas = kelas.id
GROUP BY
	id_santri');
-- SELECT @sql;
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
