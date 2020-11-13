/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : spot_admin

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 13/11/2020 15:54:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for filemanager_setting
-- ----------------------------
DROP TABLE IF EXISTS `filemanager_setting`;
CREATE TABLE `filemanager_setting`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of filemanager_setting
-- ----------------------------
INSERT INTO `filemanager_setting` VALUES (1, 'roots', 'default', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (2, 'conn', 'default', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (3, 'allowUpload', '1', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (4, 'allowRename', '1', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (5, 'allowCreateDir', '1', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (6, 'allowDelete', '0', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (7, 'allowMove', '1', '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `filemanager_setting` VALUES (8, 'allowDownload', '1', '2020-08-01 16:17:12', '2020-08-01 16:17:12');

-- ----------------------------
-- Table structure for goadmin_e_authors
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_e_authors`;
CREATE TABLE `goadmin_e_authors`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_e_authors
-- ----------------------------
INSERT INTO `goadmin_e_authors` VALUES (1, 'Adam', 'Ondricka', 'abogisich@example.net', '1989-11-20', '1975-10-05 01:47:51');
INSERT INTO `goadmin_e_authors` VALUES (2, 'Eileen', 'Abbott', 'etreutel@example.net', '1985-02-24', '2009-01-12 19:22:24');
INSERT INTO `goadmin_e_authors` VALUES (3, 'Ebony', 'Mante', 'pagac.marc@example.net', '1982-04-06', '1998-03-18 09:28:58');
INSERT INTO `goadmin_e_authors` VALUES (4, 'Breanne', 'Nienow', 'osinski.domenico@example.net', '2007-10-21', '2004-05-07 21:06:14');
INSERT INTO `goadmin_e_authors` VALUES (5, 'Eliane', 'Rosenbaum', 'zhessel@example.net', '1996-01-23', '1979-05-24 01:52:18');
INSERT INTO `goadmin_e_authors` VALUES (6, 'Bradford', 'Erdman', 'francesca.stark@example.net', '2000-02-22', '1985-04-04 03:23:30');
INSERT INTO `goadmin_e_authors` VALUES (7, 'Isidro', 'Hudson', 'sandy.gusikowski@example.com', '2004-09-08', '1979-07-30 08:29:20');
INSERT INTO `goadmin_e_authors` VALUES (8, 'Albina', 'Hand', 'zlind@example.net', '2014-03-02', '1996-10-01 11:25:22');
INSERT INTO `goadmin_e_authors` VALUES (9, 'Andrew', 'Haley', 'schaden.deborah@example.net', '1984-08-25', '1979-06-25 20:54:46');
INSERT INTO `goadmin_e_authors` VALUES (10, 'Lafayette', 'Koch', 'camron.gleason@example.net', '2005-05-26', '1989-06-17 11:15:02');
INSERT INTO `goadmin_e_authors` VALUES (11, 'Lincoln', 'Carroll', 'elsa99@example.org', '2007-11-09', '2014-05-05 20:06:45');
INSERT INTO `goadmin_e_authors` VALUES (12, 'Joesph', 'Erdman', 'danny.rath@example.net', '1987-05-20', '1992-08-13 00:10:15');
INSERT INTO `goadmin_e_authors` VALUES (13, 'Gayle', 'Dach', 'lrice@example.org', '1978-10-17', '1987-08-11 09:51:54');
INSERT INTO `goadmin_e_authors` VALUES (14, 'Amira', 'Langosh', 'zbogan@example.net', '2003-06-03', '2000-03-01 05:01:53');
INSERT INTO `goadmin_e_authors` VALUES (15, 'Gaston', 'Kshlerin', 'fprosacco@example.com', '2015-01-23', '1988-05-28 23:26:18');
INSERT INTO `goadmin_e_authors` VALUES (16, 'Verna', 'Kuhlman', 'lorena.hyatt@example.net', '1986-05-22', '1975-10-11 05:10:36');
INSERT INTO `goadmin_e_authors` VALUES (17, 'Janessa', 'Marks', 'lwilderman@example.org', '2013-02-18', '2001-12-16 08:32:18');
INSERT INTO `goadmin_e_authors` VALUES (18, 'Olaf', 'Pacocha', 'bogisich.marcel@example.org', '1975-12-10', '1993-05-26 12:54:05');
INSERT INTO `goadmin_e_authors` VALUES (19, 'Hayden', 'Stracke', 'lbrown@example.net', '2001-04-05', '1972-06-04 16:55:42');
INSERT INTO `goadmin_e_authors` VALUES (20, 'Marisol', 'Bruen', 'cartwright.devante@example.net', '1997-10-14', '1979-01-13 08:54:00');
INSERT INTO `goadmin_e_authors` VALUES (21, 'Ottis', 'Christiansen', 'hbeatty@example.com', '1979-05-18', '1992-05-16 02:57:42');
INSERT INTO `goadmin_e_authors` VALUES (22, 'Henderson', 'Jaskolski', 'kshlerin.josue@example.net', '1991-06-08', '2011-09-10 06:24:32');
INSERT INTO `goadmin_e_authors` VALUES (23, 'Hanna', 'Ryan', 'jaskolski.arno@example.net', '1977-06-13', '2008-09-25 15:29:20');
INSERT INTO `goadmin_e_authors` VALUES (24, 'Heather', 'Ryan', 'bode.crawford@example.com', '1993-03-03', '1978-03-31 06:14:34');
INSERT INTO `goadmin_e_authors` VALUES (25, 'Jayson', 'Pouros', 'olemke@example.com', '1973-11-16', '1995-03-15 03:22:58');
INSERT INTO `goadmin_e_authors` VALUES (26, 'Mack', 'Kihn', 'deion.grimes@example.org', '1990-01-22', '2014-08-13 06:28:25');
INSERT INTO `goadmin_e_authors` VALUES (27, 'Elsa', 'Stiedemann', 'rosenbaum.clara@example.net', '1997-12-01', '1994-07-31 00:24:25');
INSERT INTO `goadmin_e_authors` VALUES (28, 'Kaylin', 'Wolff', 'wkerluke@example.com', '1999-06-03', '1985-05-11 04:19:46');
INSERT INTO `goadmin_e_authors` VALUES (29, 'Braulio', 'Morissette', 'savanah87@example.org', '2000-07-06', '1971-01-25 05:06:31');
INSERT INTO `goadmin_e_authors` VALUES (30, 'Darren', 'Tromp', 'roob.micheal@example.org', '1986-12-25', '1976-02-15 07:07:46');
INSERT INTO `goadmin_e_authors` VALUES (31, 'Kara', 'Zulauf', 'karelle.bergstrom@example.net', '2015-06-22', '1981-12-01 13:45:28');
INSERT INTO `goadmin_e_authors` VALUES (32, 'Rebekah', 'Doyle', 'kunde.makayla@example.net', '1999-05-03', '2012-10-23 15:36:44');
INSERT INTO `goadmin_e_authors` VALUES (33, 'Jazmyn', 'Schamberger', 'agustina03@example.net', '1999-11-15', '2001-09-21 07:58:31');
INSERT INTO `goadmin_e_authors` VALUES (34, 'Maritza', 'Johnson', 'turner.beau@example.com', '1988-05-23', '1985-08-21 17:22:08');
INSERT INTO `goadmin_e_authors` VALUES (35, 'Jaylon', 'Altenwerth', 'cleora56@example.org', '1970-10-04', '2013-02-18 20:23:08');
INSERT INTO `goadmin_e_authors` VALUES (36, 'Clint', 'Rogahn', 'vbins@example.net', '1979-04-09', '1998-02-18 01:55:42');
INSERT INTO `goadmin_e_authors` VALUES (37, 'Rosie', 'Rodriguez', 'sporer.bette@example.net', '2005-03-09', '1991-02-07 21:17:54');
INSERT INTO `goadmin_e_authors` VALUES (38, 'Ethelyn', 'Connelly', 'vfahey@example.net', '2012-06-15', '1986-12-03 15:39:42');
INSERT INTO `goadmin_e_authors` VALUES (39, 'Mitchell', 'Hand', 'trohan@example.net', '2018-04-15', '1976-11-01 08:54:42');
INSERT INTO `goadmin_e_authors` VALUES (40, 'Helen', 'Jenkins', 'harvey43@example.net', '1991-03-08', '2006-11-03 15:05:32');
INSERT INTO `goadmin_e_authors` VALUES (41, 'Stephany', 'Douglas', 'kariane55@example.net', '2004-06-19', '1990-03-15 02:47:10');
INSERT INTO `goadmin_e_authors` VALUES (42, 'Deshawn', 'Gottlieb', 'clement.padberg@example.com', '2000-10-14', '2015-06-24 16:31:36');
INSERT INTO `goadmin_e_authors` VALUES (43, 'Elian', 'Bernhard', 'iwuckert@example.com', '2000-09-11', '1985-04-07 19:12:57');
INSERT INTO `goadmin_e_authors` VALUES (44, 'Bridgette', 'McKenzie', 'elisha.ruecker@example.com', '1998-05-19', '1978-11-23 04:01:34');
INSERT INTO `goadmin_e_authors` VALUES (45, 'Olaf', 'Herzog', 'vlakin@example.net', '2014-01-19', '1998-10-22 15:14:05');
INSERT INTO `goadmin_e_authors` VALUES (46, 'Newell', 'Purdy', 'danny.pacocha@example.org', '1981-05-02', '1970-04-20 19:05:26');
INSERT INTO `goadmin_e_authors` VALUES (47, 'Mikayla', 'Ernser', 'harris.ruby@example.net', '2011-08-04', '1976-05-21 14:53:47');
INSERT INTO `goadmin_e_authors` VALUES (48, 'Patrick', 'Collier', 'moore.delfina@example.org', '1978-06-28', '1994-05-11 08:00:54');
INSERT INTO `goadmin_e_authors` VALUES (49, 'Jerry', 'Heller', 'shemar.oberbrunner@example.com', '1995-06-17', '1971-12-27 22:58:07');
INSERT INTO `goadmin_e_authors` VALUES (50, 'Grace', 'Graham', 'eldora.schulist@example.org', '1998-05-01', '2010-01-02 02:00:02');
INSERT INTO `goadmin_e_authors` VALUES (51, 'Nettie', 'Lemke', 'petra.witting@example.com', '1983-12-18', '2004-12-30 20:54:48');
INSERT INTO `goadmin_e_authors` VALUES (52, 'Newell', 'Luettgen', 'ervin.brekke@example.net', '1978-06-22', '1980-04-20 13:12:53');
INSERT INTO `goadmin_e_authors` VALUES (53, 'Joseph', 'Goldner', 'garrett33@example.com', '2012-11-23', '1995-05-29 10:05:51');
INSERT INTO `goadmin_e_authors` VALUES (54, 'Catalina', 'Pollich', 'durgan.tommie@example.org', '2015-07-25', '1996-12-24 05:54:01');
INSERT INTO `goadmin_e_authors` VALUES (55, 'Mohamed', 'Hammes', 'larson.burnice@example.net', '1978-12-02', '2016-01-10 20:15:42');
INSERT INTO `goadmin_e_authors` VALUES (56, 'Chaim', 'Nolan', 'amorar@example.org', '1999-12-30', '1974-12-11 23:27:19');
INSERT INTO `goadmin_e_authors` VALUES (57, 'Miles', 'Muller', 'jgutkowski@example.com', '1974-08-08', '1980-10-21 19:56:07');
INSERT INTO `goadmin_e_authors` VALUES (58, 'Terence', 'Schaefer', 'kyra.abbott@example.org', '1988-09-21', '1988-08-01 01:03:45');
INSERT INTO `goadmin_e_authors` VALUES (59, 'Sydni', 'Krajcik', 'isom.wolf@example.net', '2003-07-25', '2008-04-24 00:09:21');
INSERT INTO `goadmin_e_authors` VALUES (60, 'Billie', 'Goyette', 'bosco.abbey@example.com', '1971-02-02', '2018-07-29 01:37:31');
INSERT INTO `goadmin_e_authors` VALUES (61, 'Rupert', 'Lesch', 'nakia.schmitt@example.net', '2009-11-01', '2006-05-09 15:39:32');
INSERT INTO `goadmin_e_authors` VALUES (62, 'Allison', 'Botsford', 'bernita79@example.com', '1993-11-28', '1983-08-20 16:38:11');
INSERT INTO `goadmin_e_authors` VALUES (63, 'Darrell', 'Kemmer', 'iveum@example.org', '1977-10-04', '2001-07-03 06:14:54');
INSERT INTO `goadmin_e_authors` VALUES (64, 'Daisha', 'Lubowitz', 'josephine94@example.org', '1972-10-16', '1992-12-02 10:42:35');
INSERT INTO `goadmin_e_authors` VALUES (65, 'Shyann', 'Schaefer', 'gkutch@example.net', '2013-07-21', '1993-09-03 21:02:55');
INSERT INTO `goadmin_e_authors` VALUES (66, 'Mario', 'Renner', 'nicola51@example.org', '1974-04-19', '1984-09-01 05:43:31');
INSERT INTO `goadmin_e_authors` VALUES (67, 'Lauretta', 'Harber', 'elinore80@example.com', '1994-03-14', '1988-04-21 01:03:32');
INSERT INTO `goadmin_e_authors` VALUES (68, 'Edison', 'Brakus', 'cummerata.lucious@example.org', '1982-12-27', '2001-08-09 18:05:29');
INSERT INTO `goadmin_e_authors` VALUES (69, 'Eliseo', 'Mosciski', 'william36@example.com', '2011-03-05', '1999-03-30 11:42:39');
INSERT INTO `goadmin_e_authors` VALUES (70, 'Terence', 'Waelchi', 'vpowlowski@example.com', '1981-06-11', '1971-05-17 02:27:01');
INSERT INTO `goadmin_e_authors` VALUES (71, 'Cameron', 'Roob', 'sally53@example.org', '2018-01-26', '1996-03-04 03:47:57');
INSERT INTO `goadmin_e_authors` VALUES (72, 'Gaetano', 'Crona', 'ritchie.lysanne@example.net', '1998-01-21', '1991-12-30 10:22:49');
INSERT INTO `goadmin_e_authors` VALUES (73, 'Luna', 'Turner', 'wuckert.madaline@example.com', '2005-12-07', '1976-04-15 16:10:31');
INSERT INTO `goadmin_e_authors` VALUES (74, 'Max', 'Streich', 'payton.white@example.net', '1984-05-02', '1971-11-27 05:50:36');
INSERT INTO `goadmin_e_authors` VALUES (75, 'Jermaine', 'Fahey', 'guiseppe99@example.com', '1987-10-13', '1972-10-05 06:59:47');
INSERT INTO `goadmin_e_authors` VALUES (76, 'Diego', 'Tromp', 'kacey.green@example.org', '1992-08-14', '1973-10-03 22:24:16');
INSERT INTO `goadmin_e_authors` VALUES (77, 'Ansel', 'Reichel', 'friesen.lon@example.org', '2009-06-20', '1988-09-12 13:59:55');
INSERT INTO `goadmin_e_authors` VALUES (78, 'Lukas', 'Sipes', 'jimmy.tremblay@example.net', '1980-02-06', '1983-01-03 08:42:07');
INSERT INTO `goadmin_e_authors` VALUES (79, 'Rashawn', 'Reynolds', 'durgan.francisca@example.net', '1993-07-17', '1994-11-05 14:37:38');
INSERT INTO `goadmin_e_authors` VALUES (80, 'Stuart', 'Kohler', 'hfranecki@example.com', '2001-12-18', '1996-04-12 22:58:20');
INSERT INTO `goadmin_e_authors` VALUES (81, 'Bettye', 'Brekke', 'westley.keebler@example.com', '2015-03-05', '2007-10-08 12:52:06');
INSERT INTO `goadmin_e_authors` VALUES (82, 'Bartholome', 'Mueller', 'lucas10@example.com', '1976-08-31', '2012-05-31 04:17:57');
INSERT INTO `goadmin_e_authors` VALUES (83, 'Magali', 'Reilly', 'kmuller@example.org', '1977-10-06', '1975-05-01 03:44:28');
INSERT INTO `goadmin_e_authors` VALUES (84, 'Fredrick', 'Schultz', 'telly.considine@example.net', '2003-08-29', '2003-09-03 06:47:15');
INSERT INTO `goadmin_e_authors` VALUES (85, 'Pierce', 'Johns', 'aurelia.muller@example.org', '2002-04-11', '1995-10-09 06:12:24');
INSERT INTO `goadmin_e_authors` VALUES (86, 'Liliane', 'Rolfson', 'patricia54@example.com', '1983-07-11', '2000-11-06 03:21:36');
INSERT INTO `goadmin_e_authors` VALUES (87, 'Ella', 'Ruecker', 'kulas.reid@example.net', '2007-05-30', '1995-10-25 15:54:49');
INSERT INTO `goadmin_e_authors` VALUES (88, 'Pascale', 'Bosco', 'lauretta21@example.net', '1973-04-16', '2012-05-08 19:01:51');
INSERT INTO `goadmin_e_authors` VALUES (89, 'Easter', 'Kerluke', 'zboncak.alycia@example.net', '1986-04-23', '2010-11-14 22:11:14');
INSERT INTO `goadmin_e_authors` VALUES (90, 'Maxime', 'Runolfsson', 'roberts.fern@example.org', '1971-03-24', '2014-09-14 22:24:17');
INSERT INTO `goadmin_e_authors` VALUES (91, 'Dylan', 'Muller', 'kelley02@example.com', '2015-07-04', '1975-05-29 15:00:46');
INSERT INTO `goadmin_e_authors` VALUES (92, 'Shaina', 'Crona', 'vincenza.baumbach@example.net', '1988-04-02', '1991-02-11 06:30:27');
INSERT INTO `goadmin_e_authors` VALUES (93, 'Saige', 'Eichmann', 'lbalistreri@example.org', '1997-02-02', '1991-08-08 19:16:28');
INSERT INTO `goadmin_e_authors` VALUES (94, 'Shea', 'Tromp', 'fabiola91@example.net', '2004-07-17', '2015-01-26 02:14:57');
INSERT INTO `goadmin_e_authors` VALUES (95, 'Fausto', 'Hills', 'iheller@example.net', '2003-10-13', '1986-03-12 05:38:06');
INSERT INTO `goadmin_e_authors` VALUES (96, 'Bernard', 'Erdman', 'orrin50@example.net', '2001-08-10', '2005-11-19 22:58:15');
INSERT INTO `goadmin_e_authors` VALUES (97, 'Curt', 'Von', 'myles.gottlieb@example.org', '2016-03-10', '2008-04-06 15:02:33');
INSERT INTO `goadmin_e_authors` VALUES (98, 'Emelie', 'Bayer', 'grimes.elmira@example.org', '2004-09-08', '2000-12-18 11:51:56');
INSERT INTO `goadmin_e_authors` VALUES (99, 'Nova', 'Barton', 'xleannon@example.org', '1981-11-21', '1971-09-03 23:24:33');
INSERT INTO `goadmin_e_authors` VALUES (100, 'Nina', 'Walker', 'hilario.padberg@example.org', '1987-04-12', '1981-08-05 00:34:46');

-- ----------------------------
-- Table structure for goadmin_e_employee
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_e_employee`;
CREATE TABLE `goadmin_e_employee`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_e_employee
-- ----------------------------
INSERT INTO `goadmin_e_employee` VALUES (1, '杰克', 0, '前端', '12345678901', '前端工程师', '2020-05-12 21:51:54', '2020-05-12 21:51:54');
INSERT INTO `goadmin_e_employee` VALUES (2, '虾米', 0, '后端', '12345678901', '后端工程师', '2020-05-12 22:06:23', '2020-05-12 22:06:23');
INSERT INTO `goadmin_e_employee` VALUES (3, '牛顿', 0, '销售', '12345678901', '销售', '2020-05-12 22:06:35', '2020-05-12 22:06:35');
INSERT INTO `goadmin_e_employee` VALUES (4, '阿基米德', 0, '前台', '12345678901', '前台', '2020-05-12 22:06:47', '2020-05-12 22:06:47');

-- ----------------------------
-- Table structure for goadmin_e_posts
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_e_posts`;
CREATE TABLE `goadmin_e_posts`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `author_id` int(0) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_e_posts
-- ----------------------------
INSERT INTO `goadmin_e_posts` VALUES (1, 1, 'Omnis illo itaque dolore officia ea eum.', 'Id mollitia cumque blanditiis et quas possimus aperiam ut. Est odit repudiandae hic ad ad. Eaque veniam ut a doloribus non fugiat.', 'Et et veritatis autem aliquid quia et. Natus quisquam aut magni quo expedita ut blanditiis qui.', '1990-02-17');
INSERT INTO `goadmin_e_posts` VALUES (2, 2, 'Hic qui voluptatum magni est eos iure.', 'Repellendus nobis architecto tempora laboriosam a. Consequatur sed eum beatae laudantium incidunt. Debitis doloribus explicabo aliquam saepe necessitatibus. Occaecati dolorem provident aut deleniti cupiditate. Aliquid et recusandae eaque fugit ut.', 'Commodi voluptatem ut nam aliquam maiores illum. Qui quaerat possimus repudiandae ut molestiae. Vitae ut ipsa eligendi libero doloribus dicta eum. Nesciunt quos iure iure facere minus.', '1987-12-07');
INSERT INTO `goadmin_e_posts` VALUES (3, 3, 'Culpa voluptates vitae rerum.', 'Ea aut non tempore velit. Aut aperiam recusandae qui facilis aliquid nulla. Voluptatem voluptas architecto fuga. Voluptatem vero quibusdam nihil ab aut saepe et rerum.', 'Officia iste consequatur natus. Et et earum voluptatem quos corrupti et. Enim nemo ducimus dolorem consequuntur facere sit. Eum ut ea ut qui vel ad blanditiis ipsam.', '2012-08-17');
INSERT INTO `goadmin_e_posts` VALUES (4, 4, 'Veritatis perferendis nostrum corporis.', 'Et officia voluptatem porro laborum iste dolor sit. Ea nesciunt sequi et repellendus. Et repellat quae facere aut.', 'Hic hic sunt tenetur. Reprehenderit tempora sequi doloribus repellat. Qui facere nihil dolores voluptate veniam sint.', '1984-06-13');
INSERT INTO `goadmin_e_posts` VALUES (5, 5, 'Quibusdam et qui nisi rerum.', 'Itaque velit voluptatem amet adipisci doloribus. Doloribus dolorem quis non aperiam ipsa est vel. Ad nisi laudantium eum deserunt.', 'Facilis vitae numquam temporibus qui. Qui dolor et pariatur voluptatibus optio itaque.', '1980-02-16');
INSERT INTO `goadmin_e_posts` VALUES (6, 6, 'Voluptate magni sunt qui esse sit assumenda magnam.', 'Nisi quia iste molestiae aut et. Vitae harum ut maxime aspernatur. Ut laborum doloremque recusandae. Fuga dolores eaque facere sequi.', 'Amet aut corporis inventore. Rerum voluptate sint voluptatibus possimus. Aut voluptatum totam doloremque quaerat. Delectus est illum reiciendis cumque voluptatem.', '1986-12-20');
INSERT INTO `goadmin_e_posts` VALUES (7, 7, 'Ex ducimus voluptatem et voluptatem sit odio.', 'In et repudiandae quia enim. Maiores omnis voluptatem adipisci neque ut repellat nesciunt. Quisquam voluptates aut est facere iste.', 'Aut debitis omnis in eum aut. Et nesciunt rem eos sint cumque distinctio omnis magnam. Fuga repellat voluptatum rem.', '2014-09-26');
INSERT INTO `goadmin_e_posts` VALUES (8, 8, 'Accusantium voluptas id dolore pariatur placeat ipsam numquam.', 'Qui eum omnis nulla et maiores. Distinctio sequi in optio quia esse ex. Ut quo doloribus unde. Quia ullam quia quia doloribus.', 'Odit necessitatibus corporis assumenda. Dolores nemo atque maxime odio et. Rerum iste veniam voluptas.\nSunt accusamus asperiores eaque deleniti quos aut eius. Laboriosam veniam aut delectus est in.', '2016-07-15');
INSERT INTO `goadmin_e_posts` VALUES (9, 9, 'Culpa sunt sit reprehenderit temporibus sit perferendis.', 'Quo iure inventore deleniti veritatis. Tempora expedita eos vitae esse molestias dignissimos.', 'Ullam fuga commodi illo vero qui. Eligendi voluptatibus nostrum expedita alias unde adipisci. Qui adipisci qui odio vel sunt. Eligendi iure quam laudantium animi. Aperiam recusandae et quis sit et.', '1974-12-27');
INSERT INTO `goadmin_e_posts` VALUES (10, 10, 'Aut necessitatibus et molestiae quod.', 'Libero veritatis non iure non autem provident. Odio dolorum doloremque fuga ad maiores consectetur quis. Ut sed ea tenetur sunt aut est. Distinctio recusandae pariatur consectetur facilis repellendus.', 'Voluptates amet nemo at temporibus laboriosam doloremque sed aspernatur. Ipsum recusandae debitis veritatis magni animi.', '2005-01-18');
INSERT INTO `goadmin_e_posts` VALUES (11, 11, 'Quis nihil voluptates minima.', 'Qui et ex in repellat. Nihil accusantium aut recusandae est sed ut omnis. Vitae a magni deleniti praesentium. Odit optio dolore sit nobis et maiores voluptatem.', 'Pariatur nostrum commodi voluptatem. Aut deleniti in aspernatur incidunt rerum. Iure iure rem commodi recusandae. Est molestiae in molestiae qui id laboriosam quisquam quod.', '2014-09-08');
INSERT INTO `goadmin_e_posts` VALUES (12, 12, 'Exercitationem est hic dolorem sunt voluptatem molestiae.', 'Voluptas enim eaque blanditiis est non. Laudantium saepe voluptas omnis in. Hic corporis commodi inventore possimus quibusdam fuga.', 'Ab nihil facere et qui dolor optio. Nesciunt et sit alias cupiditate.\nQui facere consequatur eveniet beatae nihil qui. Illo esse non accusamus voluptas veritatis.', '1985-05-29');
INSERT INTO `goadmin_e_posts` VALUES (13, 13, 'Harum facere non dicta dolores.', 'Fugit et consequatur fuga sed distinctio sit animi. Minima alias sed consectetur dignissimos. Commodi qui laboriosam non velit excepturi. Molestiae quod fugit atque.', 'Saepe unde quis rerum incidunt quia. Voluptas explicabo iste nemo harum unde. Suscipit magni officiis molestias blanditiis aperiam odio qui.', '2017-06-26');
INSERT INTO `goadmin_e_posts` VALUES (14, 14, 'Aut voluptate et dignissimos in qui.', 'Modi totam inventore natus voluptatibus sunt voluptates. In optio ad dignissimos sunt. Ipsam placeat qui expedita sunt sed. Et omnis molestias repellendus excepturi aliquid autem quod.', 'Quia eveniet voluptate ratione deleniti. Necessitatibus ipsum eum autem inventore voluptas minus. Quibusdam tempora consectetur facilis at est magnam.', '1972-09-17');
INSERT INTO `goadmin_e_posts` VALUES (15, 15, 'Quisquam vitae rerum porro nihil.', 'Sint omnis perspiciatis et porro quia voluptatem sed. Dolor sequi sequi incidunt expedita voluptatum ea reprehenderit. Atque quo nobis debitis nam.', 'Soluta iusto amet dolor quasi ab eaque recusandae. Recusandae sit autem numquam amet.', '1988-11-11');
INSERT INTO `goadmin_e_posts` VALUES (16, 16, 'Ut aut modi enim quisquam maiores.', 'Atque modi eveniet et. Quos velit a cupiditate harum sunt consequatur ut laboriosam. Sunt sit numquam blanditiis eos odit quam. Consequatur sint fugiat id tempore qui.', 'Minus aut cupiditate illum magni fuga alias. Recusandae velit explicabo et asperiores dolores similique minus. Sunt aut dolorem et quia qui ad asperiores.', '1986-06-18');
INSERT INTO `goadmin_e_posts` VALUES (17, 17, 'Perferendis fugit sed quia nulla fugiat.', 'Consequatur expedita cupiditate fuga consectetur placeat quia reiciendis odio. Aliquid aperiam molestiae ea similique sunt ducimus sunt.', 'Laudantium quis eius voluptatem est. Ea ad non corporis autem. Aut molestiae nemo perferendis incidunt facilis veniam.', '1995-06-12');
INSERT INTO `goadmin_e_posts` VALUES (18, 18, 'Commodi placeat ut enim voluptates ullam.', 'Officia qui et autem aut quidem maxime nisi. Quos magni rerum a veritatis nobis.', 'Cum facere aliquid error quasi suscipit. Ea qui ad architecto voluptatibus nostrum aut. Sequi doloribus quia cupiditate.', '1976-07-19');
INSERT INTO `goadmin_e_posts` VALUES (19, 19, 'Minima ea voluptas dolorum fugit ducimus cum.', 'Quasi dolorem facilis adipisci aliquid. Quidem aut velit tempora dignissimos. Vitae quo aliquid itaque corrupti ut.', 'Cum earum cum pariatur illum esse. Reprehenderit dolor voluptatem dolorem quis aliquid reiciendis et suscipit. Nesciunt quo magni odit recusandae illum molestiae qui.', '1981-11-24');
INSERT INTO `goadmin_e_posts` VALUES (20, 20, 'Officiis voluptatem consectetur sunt iusto suscipit in error.', 'Et non omnis labore tenetur cupiditate. Odit eum et doloremque error quae rerum quae omnis. Quia rerum expedita et totam laborum tempore molestiae ducimus.', 'Distinctio nulla qui quisquam eaque. Non nulla quo ut magni. Est aperiam sunt reprehenderit suscipit dolor natus impedit.', '2016-06-12');
INSERT INTO `goadmin_e_posts` VALUES (21, 21, 'Et et esse magnam mollitia.', 'Alias illo expedita perferendis eos recusandae aut. Perferendis sed laborum nisi doloribus.', 'Deserunt ea pariatur illum illum. Corporis alias nesciunt aut amet consequatur dolore quia. Ad tempore dicta non non quia quae.', '1982-10-16');
INSERT INTO `goadmin_e_posts` VALUES (22, 22, 'Sint omnis quia ex.', 'In autem deserunt optio rerum illum ducimus amet beatae. Eaque corrupti quidem sit aperiam dolorem quia itaque. Placeat accusantium quia ullam harum quaerat.', 'Vel unde reiciendis nobis rerum ut. Consequatur est sed a quo temporibus ad rerum. Minima qui exercitationem blanditiis earum.', '2013-12-23');
INSERT INTO `goadmin_e_posts` VALUES (23, 23, 'Quis ut deleniti ipsam eum repudiandae ipsa.', 'Amet est quo voluptas debitis inventore earum. Voluptas eos voluptatem odit quia qui. Eligendi tempora et eveniet ut nulla.', 'Officia possimus sint non sed exercitationem quibusdam. At quod laudantium magni sint. Perferendis eveniet deleniti rerum facilis nulla animi sint minus.', '1988-03-30');
INSERT INTO `goadmin_e_posts` VALUES (24, 24, 'Qui eaque repellat vitae nam officiis omnis.', 'Similique laudantium possimus deleniti exercitationem aut porro eum quis. Et fuga officiis sit quia modi. Vel rerum nostrum aut sapiente quam minus ipsa.', 'Molestias iste voluptatem in molestiae error perspiciatis ipsam. Distinctio eum deleniti quia quo est et. Quisquam est veniam iure enim dolor. Quasi atque est cum rerum.', '2013-09-22');
INSERT INTO `goadmin_e_posts` VALUES (25, 25, 'Consequuntur enim debitis officiis vel.', 'Et incidunt est omnis repudiandae saepe. Necessitatibus amet corporis quia nihil itaque totam. Veritatis minima dolore autem ut quasi quam.', 'Ut molestiae nesciunt ad occaecati velit excepturi sunt. Voluptatem laborum non nostrum consequuntur repudiandae praesentium animi. Dolorem esse rerum sit alias.', '1977-05-26');
INSERT INTO `goadmin_e_posts` VALUES (26, 26, 'Reprehenderit minus qui iste perspiciatis assumenda iste facere.', 'Aliquid sed at eveniet eum optio provident distinctio. Architecto ea natus explicabo non voluptatem suscipit sed. Vel quam fugiat ipsum iure. Aliquid iusto veritatis minus numquam deserunt in rerum.', 'Odio et vel veniam. Et id quos et. Quas quaerat illum nisi minus magnam iusto. Aspernatur sunt eligendi et.', '1979-10-09');
INSERT INTO `goadmin_e_posts` VALUES (27, 27, 'Mollitia voluptas repellat quod eaque.', 'Ut sequi blanditiis velit totam minus. Consequuntur ut rerum ducimus harum magnam. Eaque soluta dolor quo rerum ullam sed ut fugiat.', 'Nobis delectus dolore omnis. Et asperiores consequatur est ullam.\nUt ratione aut non molestiae voluptatem non consequatur. Aut consequuntur sunt ea placeat repellendus adipisci dolor.', '1983-07-20');
INSERT INTO `goadmin_e_posts` VALUES (28, 28, 'Et mollitia officia ut sed magni.', 'Exercitationem est sunt autem omnis. Eligendi recusandae mollitia sint eius officiis. Et ex est cupiditate repellat molestiae nulla sint. Id voluptatem voluptas ipsam nihil fugiat dolor itaque.', 'Voluptates expedita et deleniti eum et rerum possimus. Repellendus sit aut dolorem odit aut quasi nobis. Est aperiam in placeat architecto odit. Qui et consectetur consequatur hic quasi.', '2000-03-02');
INSERT INTO `goadmin_e_posts` VALUES (29, 29, 'Aperiam porro qui ut odit porro.', 'Cumque tempora iure praesentium adipisci voluptatem. Corporis temporibus esse omnis quidem. Sequi cum animi iste eum nulla dolore vel. Et aut voluptate et delectus maiores quasi.', 'Voluptatum minus quis est quae beatae. Quam necessitatibus magni hic. Dolor et qui maiores.', '2015-11-07');
INSERT INTO `goadmin_e_posts` VALUES (30, 30, 'Debitis natus delectus consequuntur omnis.', 'Quia vel tempora voluptatibus eaque. Veniam impedit libero est ipsam a. Molestiae ut non rem at eius. Autem possimus commodi delectus sit qui laudantium blanditiis.', 'Eaque et illo harum quaerat harum veritatis. Enim ex qui natus minus quia nam. Tempore error fugit dolorum. Dolorum quo ut fuga inventore voluptas maiores necessitatibus.', '1976-12-14');
INSERT INTO `goadmin_e_posts` VALUES (31, 31, 'Voluptatem ea cum explicabo.', 'Sequi esse atque enim doloremque. Voluptatem voluptas sint est eum pariatur. Cum vero odio qui repudiandae.', 'Maxime est quidem accusantium omnis dolores laborum. Nostrum officiis nulla dicta hic doloribus veniam quia. Reprehenderit ipsam modi quia illum nisi.', '1974-06-13');
INSERT INTO `goadmin_e_posts` VALUES (32, 32, 'Quam praesentium blanditiis velit.', 'Rem autem incidunt recusandae est quo consequatur voluptate. Voluptates voluptatum nam fugit nesciunt facilis. Nisi beatae omnis voluptatem sunt impedit.', 'Explicabo maxime rerum provident nostrum temporibus quaerat. Reprehenderit et itaque optio voluptatum. Nobis quaerat iure et minima tenetur quam. Commodi enim nulla nam ab et iure.', '1997-12-30');
INSERT INTO `goadmin_e_posts` VALUES (33, 33, 'Illo iste quidem molestiae enim sed et sed minus.', 'Nemo aliquid eveniet aut modi expedita. Labore cumque ex quidem autem recusandae occaecati. Vel ipsum maxime iusto unde aliquid libero nam.', 'Aliquid eum velit voluptatem doloremque. Ex architecto quisquam eos veritatis eveniet qui exercitationem. Aut id soluta magni neque vel et tempora. Minus modi sunt qui aut iste ut numquam.', '2012-10-25');
INSERT INTO `goadmin_e_posts` VALUES (34, 34, 'Dolores nesciunt voluptas et et pariatur id.', 'Sit esse ipsum esse minima rem voluptatibus quis. Voluptatum sint cumque sunt. Rem incidunt eligendi quidem. Blanditiis qui tempore nesciunt nesciunt et ea.', 'Ab aut minus doloribus magni repudiandae maxime qui quis. Impedit magni omnis dolores ipsam voluptate.\nAliquam minima in rem dolorum. Deserunt delectus enim rerum dolorem. Quos et aut iste.', '1981-10-04');
INSERT INTO `goadmin_e_posts` VALUES (35, 35, 'Libero minima dolore amet aspernatur.', 'Exercitationem provident distinctio consequatur reiciendis. Eum expedita tempora voluptatem nihil et perferendis sed voluptas. Culpa distinctio ut tenetur suscipit cum enim rem. Et distinctio et debitis.', 'Occaecati vitae ut eum doloremque. Nobis soluta sit dolorem nihil illo quia. Porro odio dignissimos fuga quaerat nesciunt doloremque qui.', '1980-02-24');
INSERT INTO `goadmin_e_posts` VALUES (36, 36, 'Facere libero aut molestias in molestiae repellat labore.', 'Quasi sapiente et et. Est eius exercitationem distinctio optio quia nobis aliquid quod. Iste debitis itaque nihil autem.', 'Aut et accusantium nihil velit aperiam. Voluptatibus dolore consequuntur pariatur voluptate minima. Esse dignissimos consequatur autem nisi dolorem vero ipsa.', '1988-08-07');
INSERT INTO `goadmin_e_posts` VALUES (37, 37, 'Modi amet voluptas aut nisi laudantium tenetur esse at.', 'Omnis est iste rerum libero. Alias qui eligendi dignissimos et. Nihil veritatis dolorem in voluptatem tenetur voluptate culpa.', 'Et sit aut qui deleniti. Eum quibusdam pariatur debitis ab. Voluptatem voluptatem earum earum assumenda quasi deserunt aut autem. Dolor qui sed quas magnam.', '1970-02-24');
INSERT INTO `goadmin_e_posts` VALUES (38, 38, 'Non libero aut minus dignissimos nisi eum minus.', 'Nostrum asperiores et odio molestiae. Non magnam quam molestiae eos voluptatem magnam dolores. Illum veritatis dolorem consequatur quaerat. Facilis esse ut consequatur consectetur voluptatem.', 'Et quaerat quia voluptate qui est. Saepe temporibus eos fuga libero eum necessitatibus rem. Cumque aut earum enim non et ut molestiae.', '1995-12-21');
INSERT INTO `goadmin_e_posts` VALUES (39, 39, 'Sapiente mollitia quia maxime in.', 'Eos libero ut laborum quae alias nemo est. Sint iste ut iure corporis velit a omnis. Nihil qui ut et. Non non nam repellat quia perferendis cum.', 'Excepturi dolorum velit id est qui. Sed explicabo voluptas ipsam enim est. Corrupti consequatur beatae est sint. Alias quasi deleniti natus consequuntur saepe at.', '1975-04-08');
INSERT INTO `goadmin_e_posts` VALUES (40, 40, 'Eveniet aut qui et sit quis magnam.', 'Eveniet veniam illo numquam laborum et nesciunt repudiandae quam. Voluptates quae minima eaque explicabo. Porro unde impedit quia. Similique ut optio aliquid. Placeat mollitia labore qui labore.', 'Vel dolorum sequi ut qui dolor. Magni nihil quia aut animi et sed voluptatem voluptas. Fugit non eaque reiciendis corrupti tenetur expedita. Officiis sed officia sapiente ratione facilis aut cum.', '1973-03-25');
INSERT INTO `goadmin_e_posts` VALUES (41, 41, 'Illo nihil ad officia rerum.', 'Ipsa tenetur iste laudantium. Unde autem quod velit porro ullam eligendi. Deserunt dolore quaerat id est. Rerum hic qui possimus architecto illo ut dolorem odio.', 'Temporibus quos omnis suscipit voluptatem ut animi illo. Quia unde et quod et consequuntur.', '1987-05-07');
INSERT INTO `goadmin_e_posts` VALUES (42, 42, 'Eos quidem laudantium sit.', 'Occaecati est aut quaerat doloribus veritatis quasi quas praesentium. Non aspernatur commodi labore perferendis hic voluptatibus in illum. Est animi voluptas molestiae cumque ab.', 'Ut et a qui et. Et deserunt dolorem autem fugit architecto. Sed dolor repudiandae corporis voluptas cumque. In neque in similique.', '1982-12-11');
INSERT INTO `goadmin_e_posts` VALUES (43, 43, 'Est exercitationem amet maxime neque.', 'Quo ut repellendus totam ducimus possimus id assumenda. Labore voluptate officiis odio enim quisquam voluptatem cupiditate. Facere suscipit ut architecto illum. Similique voluptas iure dolorem quis.', 'Ut est et deleniti quam. Distinctio placeat dolorum omnis animi illo aut accusantium. Possimus non aliquid officiis cum itaque asperiores cum occaecati.', '1991-02-28');
INSERT INTO `goadmin_e_posts` VALUES (44, 44, 'Eum adipisci et explicabo odit adipisci est.', 'Ut quia et magni officia praesentium facilis. Provident sit placeat non velit. Aspernatur ratione cumque ut aut culpa autem velit unde. Culpa molestias rerum nostrum harum quis quod.', 'Omnis facilis sunt praesentium voluptate dolor et. Rerum doloribus quam consectetur sunt corrupti.\nAnimi non ratione ea harum ipsum. Est rem quis vero incidunt et.', '1985-09-12');
INSERT INTO `goadmin_e_posts` VALUES (45, 45, 'A neque minima non labore officia quia hic consequatur.', 'Maiores in omnis ut voluptatem molestiae. Ex cum molestiae error aliquam. Porro sed modi dignissimos vero quia est ut. Sunt quasi pariatur consequatur delectus.', 'Dicta quidem commodi illum sed ut sapiente voluptas. Sit et adipisci nam minima dolor eligendi esse. Odit officia earum minima a.', '1975-05-09');
INSERT INTO `goadmin_e_posts` VALUES (46, 46, 'Consectetur a sed est possimus qui.', 'Architecto tempore officia quam voluptas reprehenderit deserunt in. Iste dolores tempora excepturi ad porro sit praesentium. Earum cumque eum debitis rerum. Sit debitis in aspernatur fuga vel quo.', 'Id vel tenetur quia et eum voluptas aut. Qui ullam vitae rerum ad illo. Fugit aut at molestiae non minima nemo.', '1994-03-12');
INSERT INTO `goadmin_e_posts` VALUES (47, 47, 'Magnam possimus perferendis enim quaerat.', 'Sapiente et fugit facilis reiciendis eos. Nostrum modi necessitatibus odit aut atque totam ut. Voluptate ipsam maiores quia eveniet eius consequuntur.', 'Similique deleniti culpa quia accusamus iure commodi ratione. Et illo id dolorem ut aut deserunt. Sit soluta iure vero. Exercitationem maxime quo quasi et corporis qui exercitationem.', '1976-09-28');
INSERT INTO `goadmin_e_posts` VALUES (48, 48, 'Non qui minus temporibus saepe temporibus repudiandae.', 'Voluptatum magni autem et ut consectetur accusantium nihil cumque. Minima hic maxime quis earum odio in.', 'Officiis aut magni doloribus. Reprehenderit voluptas sed ut tempore laborum. Qui omnis et vero. Similique quia facere placeat quis ducimus.', '1983-06-25');
INSERT INTO `goadmin_e_posts` VALUES (49, 49, 'Animi non placeat non et repudiandae atque ipsa itaque.', 'Et labore quasi nisi nam minima omnis reiciendis. Quos sint qui at maxime inventore ut est. Deleniti occaecati qui perspiciatis eum quo magnam possimus. Aut et et ut sit qui quo. Accusantium ut expedita laudantium vel.', 'Recusandae ipsa rem dignissimos odit molestiae rem veniam. Assumenda unde nobis aut ut quam omnis quia. Nihil modi explicabo et et expedita minima aliquid. Ut ut labore et ab.', '1980-05-05');
INSERT INTO `goadmin_e_posts` VALUES (50, 50, 'Ab dolores asperiores eaque et.', 'Incidunt inventore voluptatem laboriosam qui. Dolorum maiores et fugit porro ea. Doloremque et quis enim recusandae facere molestias quis.', 'Voluptatem eos nulla excepturi dolor atque repudiandae beatae. Veniam ut officiis molestiae veniam in nihil. Quasi commodi et eum at vel itaque vel et.', '1972-11-23');
INSERT INTO `goadmin_e_posts` VALUES (51, 51, 'Aut repellendus vel repellendus aut placeat unde.', 'Fugiat voluptatem est magnam quibusdam aut. Soluta molestiae debitis sit adipisci consequatur. Dolores non impedit libero cumque ullam provident. Repellat aut id fuga dolorem dicta velit.', 'Quis ab et voluptatem explicabo a. Eum neque sit qui natus voluptas magnam. Et corrupti quia voluptatibus aperiam qui. Voluptas et nam sed veritatis alias et.', '2005-06-05');
INSERT INTO `goadmin_e_posts` VALUES (52, 52, 'Et nemo recusandae ipsam velit.', 'Porro accusantium quidem dolorem quia quo necessitatibus debitis. Quae adipisci fuga consequatur. Velit dolorum quisquam unde ut reprehenderit accusamus et.', 'Labore enim ea natus doloremque et. Et repellendus quia dolores officiis. Autem et quidem voluptatem omnis aliquid atque quaerat quisquam.', '2009-12-11');
INSERT INTO `goadmin_e_posts` VALUES (53, 53, 'Et eaque recusandae non perspiciatis optio ab quia consequuntur.', 'Laborum eum modi facilis aliquam. Est quia aut sed minus et illum. Eveniet autem esse amet officia ratione excepturi et.', 'Fugit quo necessitatibus eius neque et esse magnam. Voluptate eum tempora aut minus. Voluptatum iusto qui voluptatum.', '1996-07-15');
INSERT INTO `goadmin_e_posts` VALUES (54, 54, 'Incidunt asperiores autem recusandae voluptatem.', 'Quia maiores reiciendis iure perferendis fugit accusamus ipsum. Non quam ut consequatur suscipit voluptatem distinctio. Autem doloremque molestias quia consequatur.', 'Optio in enim odit dolor cupiditate. Facere possimus dolores voluptatem autem. Ea voluptatem quia odit omnis ipsam dolor.', '2007-08-31');
INSERT INTO `goadmin_e_posts` VALUES (55, 55, 'Dolor sequi qui magni quae.', 'Animi maxime quo eos. Eos optio eum sed illum dolore rerum. Est tempore eius maiores ea autem quos est. Quibusdam rem magni rerum.', 'Consequatur adipisci voluptatem maxime placeat. Fugiat non nostrum qui laborum aut sint ea porro. Non corrupti provident voluptates molestias quia labore. Quae aliquam omnis autem nobis laborum.', '2005-12-25');
INSERT INTO `goadmin_e_posts` VALUES (56, 56, 'Velit perferendis dolores excepturi consequatur dolore.', 'Et minima repellendus sapiente. Nam culpa ex consequuntur nam reiciendis optio. Consequatur est doloremque atque qui eos dolorem. Sit commodi alias non architecto.', 'Cumque cum rem architecto autem tempore amet sint. Ipsum veniam placeat repellat et. Est enim nesciunt et atque et possimus esse. Quibusdam velit corrupti molestiae alias.', '2003-01-14');
INSERT INTO `goadmin_e_posts` VALUES (57, 57, 'Qui a officia quis.', 'Provident repudiandae cupiditate ipsam aspernatur ipsa quasi. Consectetur dolorem dolorum reprehenderit excepturi fuga id reiciendis dolores. Rerum exercitationem aut voluptatem distinctio occaecati inventore. Est delectus nemo corporis.', 'Omnis qui animi nulla dolorum inventore. Iste minus ut adipisci placeat. Debitis in voluptatem ratione autem amet. Alias est explicabo laborum iure eligendi ut velit.', '1998-07-06');
INSERT INTO `goadmin_e_posts` VALUES (58, 58, 'Eveniet animi qui voluptatem rerum a quas quis.', 'Culpa sint eos ipsum et magnam voluptas deserunt. Et earum quae id reiciendis sint magnam. Autem voluptatem atque et fugiat. Ut eum quia repellendus natus et odit.', 'Quia rerum aut aspernatur optio rerum. Dolores cupiditate quis cumque aspernatur consequatur nesciunt cumque unde.', '1972-10-08');
INSERT INTO `goadmin_e_posts` VALUES (59, 59, 'Maxime deserunt tempore omnis et ut.', 'At sed natus quo aut. Quo sunt hic dolorem corrupti labore quae deserunt. Odio sed nesciunt alias rerum qui accusantium nemo. Omnis veniam est explicabo voluptatem quod ullam. Pariatur voluptates amet voluptas maiores soluta iusto laborum.', 'Reiciendis neque voluptate eligendi cumque at nisi iste. Possimus deleniti ab cupiditate. Sint non perferendis quia maxime et. Aut quis aspernatur natus occaecati eveniet dolores.', '1993-05-28');
INSERT INTO `goadmin_e_posts` VALUES (60, 60, 'Illum blanditiis explicabo libero dolorem exercitationem.', 'Quia minus dolor recusandae quasi repellendus vel sit. Rerum saepe et earum nobis eveniet ducimus quo eaque. Architecto voluptate consequatur iusto repellat.', 'Error ea esse nemo expedita alias. Quo est odit fugiat aut facere ea nesciunt. Est voluptatum facere recusandae.', '1993-12-14');
INSERT INTO `goadmin_e_posts` VALUES (61, 61, 'Aut et sint eum quos rerum.', 'Maxime est numquam est vitae voluptate vel deleniti delectus. Accusamus aut eos velit ipsam nemo mollitia est. Deserunt laboriosam pariatur aperiam cupiditate. Vitae placeat dolorem officiis qui consequatur aut tenetur iure.', 'Vel quia exercitationem voluptas sed. Quaerat debitis maxime ex nisi neque doloribus quae maiores. Ratione autem dignissimos rerum minima fugiat. Corrupti placeat rerum magnam est sit.', '1992-04-09');
INSERT INTO `goadmin_e_posts` VALUES (62, 62, 'Molestiae libero quod quia maxime.', 'Aut sed quis officiis voluptatem enim et. Deserunt quis rerum impedit commodi sit numquam voluptates. Saepe in magnam deserunt ea et quia quis ad. Repellat corrupti voluptatem molestiae.', 'Qui autem facilis minus unde dolore labore. Ea vel voluptas iste placeat qui. Consectetur eius consequuntur enim distinctio. Vero nihil consequatur occaecati sit sed error dolor.', '2002-08-03');
INSERT INTO `goadmin_e_posts` VALUES (63, 63, 'Numquam et ut dignissimos fuga dolores.', 'Nisi unde rerum ipsa veritatis non officia. Laboriosam et magnam neque error voluptate possimus impedit quia. Voluptates et tempora et voluptatum.', 'Qui quae excepturi officia libero maxime veritatis ullam corporis. Perferendis cumque ut repellat quaerat. Vero similique sint itaque harum autem.', '1972-01-12');
INSERT INTO `goadmin_e_posts` VALUES (64, 64, 'Laboriosam et eum doloribus.', 'Sint natus ut distinctio voluptatem laboriosam. Et voluptatem ullam atque saepe inventore repellendus. Facilis voluptatem quae doloribus recusandae mollitia quia totam. Numquam optio sit et vero.', 'Voluptatem harum eos velit iusto et consequatur molestiae. Officiis enim corporis quaerat incidunt. Amet officiis sint quo fugiat hic.', '2004-05-18');
INSERT INTO `goadmin_e_posts` VALUES (65, 65, 'Natus magni hic dolorum unde voluptates.', 'Pariatur nobis vel rerum minima harum necessitatibus qui. Iure qui ad enim error vitae ratione laudantium. Rerum occaecati quibusdam dicta consequatur quod deleniti aut.', 'Voluptates totam praesentium praesentium ut doloremque. Beatae aliquam sit deleniti distinctio est harum. Eaque consectetur quo dolor eum ex eius sint. Odio veniam voluptatem totam ea voluptates.', '1970-06-08');
INSERT INTO `goadmin_e_posts` VALUES (66, 66, 'Eum tenetur voluptatibus molestiae consequuntur.', 'Unde quasi suscipit corrupti earum earum. Vitae vel rerum veniam laudantium accusamus. Ut numquam qui a doloremque iure cumque.', 'Veritatis ea expedita illo cumque non. Perspiciatis totam totam animi natus qui officiis impedit. Laborum iure voluptatibus voluptatum officia ducimus qui. Earum odit qui doloremque ipsa.', '1970-04-01');
INSERT INTO `goadmin_e_posts` VALUES (67, 67, 'Dolores molestiae dicta voluptatem unde quis.', 'Dolor sint soluta est qui quia. Ut explicabo esse dolore consequuntur non. Sed officia totam consequatur eligendi et molestiae deleniti. Autem similique ab et sit voluptatem.', 'Debitis eaque totam aspernatur consectetur doloribus et. Quo doloremque ipsum occaecati impedit. Placeat commodi esse beatae sed ex sint nihil.', '1988-08-16');
INSERT INTO `goadmin_e_posts` VALUES (68, 68, 'Rerum aliquid odio at vel odit quam.', 'Autem ullam nesciunt rerum. Ea et fugiat illo veritatis dolorem eligendi inventore. Cumque esse veritatis laboriosam explicabo doloremque vitae at. Blanditiis veniam est fuga maiores fugit maiores.', 'Et velit est temporibus blanditiis et. Dignissimos fugiat sed et nihil rerum quam.', '1997-07-06');
INSERT INTO `goadmin_e_posts` VALUES (69, 69, 'Nihil ducimus voluptatem rerum in inventore culpa nobis ratione.', 'Sed commodi excepturi tempore eveniet est. Id nesciunt doloribus consequatur accusantium.', 'Reprehenderit voluptatem eum repudiandae cum qui dolore qui. Occaecati consectetur non quas in. At adipisci consequuntur vel vel minima. Repudiandae est consequatur rerum vel voluptatem aut nam.', '2001-01-15');
INSERT INTO `goadmin_e_posts` VALUES (70, 70, 'Dolorem quia et eos nesciunt perferendis qui.', 'Aliquam quo iste dolorem ut. Autem eligendi id fuga qui aut. Molestiae nisi sed accusantium et. Aut dolores placeat voluptatem consequuntur reiciendis.', 'Magni ut sapiente magnam nam recusandae et laboriosam pariatur. Voluptas sit qui ipsam. Tempore nihil blanditiis et minima dolores ad.', '2003-06-03');
INSERT INTO `goadmin_e_posts` VALUES (71, 71, 'Quasi enim illo a perspiciatis.', 'Nesciunt quam eaque nesciunt fuga. Repellat nesciunt est voluptas totam molestias minus veritatis.', 'At atque id perferendis quisquam. Vel aut ut iste id numquam aut. Reprehenderit cumque et ullam est omnis.', '1972-03-05');
INSERT INTO `goadmin_e_posts` VALUES (72, 72, 'In rerum eos sint excepturi ducimus consequatur.', 'Natus possimus accusamus et. Architecto sunt aut vitae esse expedita. Possimus nobis molestias rerum molestias magnam optio et.', 'Totam omnis est est sed fuga aut consequuntur. Voluptatem rerum dolor deserunt nihil in aut qui totam. In error enim et perspiciatis nihil velit. Est neque et aliquam quia.', '1977-10-16');
INSERT INTO `goadmin_e_posts` VALUES (73, 73, 'Recusandae aut quasi dolorum natus.', 'Recusandae qui dolorem corporis sit. Sapiente aut iusto deleniti deleniti sit voluptatem. Recusandae quibusdam eum voluptates qui id sed quis. Repellat aut a amet.', 'Ex et molestias quas tempore ullam qui. Consequatur qui delectus facere enim perspiciatis placeat. Asperiores doloribus maxime dolores ipsum odio. Qui doloremque iusto odit aut ab ut exercitationem.', '1998-07-06');
INSERT INTO `goadmin_e_posts` VALUES (74, 74, 'Et voluptatem non adipisci modi voluptatem deleniti non.', 'Ut repellendus et sit eos reiciendis velit. Odio sint ullam ut adipisci. Est veniam quibusdam inventore.', 'Veniam est aperiam totam dignissimos. Ut earum minima ipsa aliquid excepturi minus. Rem et eos ut praesentium nostrum. Facere est ratione in facere eos dolorem esse.', '1981-09-07');
INSERT INTO `goadmin_e_posts` VALUES (75, 75, 'Sit esse pariatur facere ut.', 'Eum dignissimos amet voluptas laudantium dicta eos. Minus reprehenderit ullam maxime ut in. Mollitia explicabo rerum est ut aut. Aliquid sit nulla iure possimus.', 'Cum alias hic omnis beatae explicabo nostrum. Illo atque corrupti sunt. Cumque accusantium quae at atque. Autem est et rerum culpa dolor vel nostrum officia.', '2015-07-20');
INSERT INTO `goadmin_e_posts` VALUES (76, 76, 'Est quo officia rerum cum asperiores sed.', 'Iusto et enim aut non neque beatae laboriosam. Non ratione consectetur quia qui repudiandae dignissimos et rerum. Deserunt voluptates nesciunt ex harum quo.', 'Qui voluptatem iste asperiores et qui. Rerum autem cum et sed ea corporis. Modi quia vero aut tenetur et eum debitis.', '1984-11-19');
INSERT INTO `goadmin_e_posts` VALUES (77, 77, 'Quis unde iure itaque voluptatem.', 'Earum qui laudantium est nesciunt et aspernatur. Quia nulla repellendus corporis doloribus. Provident accusantium possimus quos sed eligendi. A ratione dolorem inventore. Qui nisi sit exercitationem esse voluptatem qui sapiente.', 'Exercitationem facilis quia et harum. Ut iste provident ut et quia ut. Ut eos dignissimos non libero. Ut qui architecto vitae accusamus culpa.', '2010-11-04');
INSERT INTO `goadmin_e_posts` VALUES (78, 78, 'Quia tenetur qui nemo temporibus beatae officiis cumque.', 'Non praesentium ab est dolores. Illo tempora iusto dolor dolor est aspernatur. Illo dolores qui velit et.', 'Occaecati maiores eos facilis quo ipsum. Impedit amet magnam vel et molestiae ea distinctio. Qui voluptatem deserunt exercitationem dolor at totam odit.', '1985-12-27');
INSERT INTO `goadmin_e_posts` VALUES (79, 79, 'Ratione possimus consequuntur eum quae.', 'Aut necessitatibus quidem omnis eum et rerum quia et. Voluptatem corrupti fuga accusamus consequatur et voluptate. Possimus reprehenderit rerum cumque dolor deserunt.', 'Et aperiam facere quo ex quae. Alias quaerat aut consequatur soluta est. Rerum fugit voluptatem architecto.', '1971-06-15');
INSERT INTO `goadmin_e_posts` VALUES (80, 80, 'Autem veritatis officia magnam et non itaque et veniam.', 'Nihil natus nam quis placeat. Deleniti quas nobis pariatur et recusandae. Perferendis dolores corporis aut est aut eos nesciunt.', 'Veritatis earum est quo. Quidem impedit natus iste esse et sapiente. Recusandae nostrum ex voluptatibus et sunt ea deserunt nisi.', '2015-10-10');
INSERT INTO `goadmin_e_posts` VALUES (81, 81, 'Suscipit deleniti quam veritatis esse dolores sunt.', 'Et ipsa quisquam laudantium occaecati corporis similique numquam. Voluptatem perspiciatis neque deserunt. Et totam vitae est. Eum consectetur deserunt eligendi ut rerum asperiores officia dolor.', 'Corporis eligendi a eos cumque aut molestias aut. Est cupiditate totam tempora et deserunt. Deleniti in officiis fuga et animi. Voluptates iusto reprehenderit doloribus et voluptatem.', '2017-10-02');
INSERT INTO `goadmin_e_posts` VALUES (82, 82, 'Eligendi exercitationem ducimus repellat praesentium suscipit vero consectetur.', 'Quia impedit harum voluptatem nam. Magnam libero dolorem et maiores aliquid quis temporibus. Accusamus qui repellendus ab et id doloremque dolorem.', 'Quo vel rem sed omnis dolores qui. Labore tenetur ex error at. Aliquid deleniti molestiae laudantium mollitia impedit commodi perspiciatis nesciunt.', '1992-07-09');
INSERT INTO `goadmin_e_posts` VALUES (83, 83, 'Eligendi quam aliquam in et in quis et cumque.', 'Fuga est soluta aut. Libero quasi magnam expedita porro fugiat quas repellendus id. Reiciendis autem neque tenetur odit et qui.', 'Voluptas at et praesentium doloremque. Beatae et reiciendis tenetur culpa aspernatur fugiat quia. Necessitatibus possimus rerum est omnis aspernatur fuga nesciunt.', '1986-08-10');
INSERT INTO `goadmin_e_posts` VALUES (84, 84, 'Et et sunt eos nesciunt similique molestias quidem.', 'Aut totam nam quas dolores. Id maiores mollitia dolore soluta rem soluta. Eveniet voluptatem explicabo architecto dolores rerum autem officia iure. Ipsum voluptatem cumque odit voluptates atque aut omnis omnis.', 'Cum hic quaerat doloribus est et ea. Molestias quis voluptates veritatis magni tempora in totam. Aut eum voluptatibus magni suscipit occaecati. Non dolor et non laboriosam.', '1978-06-14');
INSERT INTO `goadmin_e_posts` VALUES (85, 85, 'Laudantium enim et quis iure fuga quidem exercitationem.', 'Iure ab sunt alias necessitatibus. Soluta voluptas inventore earum consequuntur natus aut. Sed voluptas quae eos tenetur sunt incidunt delectus.', 'Aperiam quae non et consequatur natus quidem et. Ut ipsa cum officia autem iste dignissimos deserunt minus. Corporis ut ut et eaque expedita molestiae ut.', '1981-07-22');
INSERT INTO `goadmin_e_posts` VALUES (86, 86, 'Ipsa commodi magni eius accusamus et quod enim dolorem.', 'Provident voluptatibus et ducimus dolor qui nihil rerum. Libero ut omnis amet aliquam neque non quis. Non ex suscipit suscipit quia.', 'Provident est vero molestiae laudantium dolorem debitis quia vero. In qui natus sunt dolor fugit iste ut. Eum nemo aut ut recusandae. Sit nam voluptatem dolorem omnis laborum non.', '1994-02-04');
INSERT INTO `goadmin_e_posts` VALUES (87, 87, 'Et architecto veritatis id facere voluptatem.', 'Vero magnam ipsam corporis et doloribus velit. Labore sint a assumenda nesciunt. Architecto est quia rerum distinctio.', 'Esse possimus iste perferendis nostrum id ut. Aspernatur voluptatibus accusamus iure quidem atque quia officia. Quo laboriosam eveniet mollitia accusantium voluptatem hic.', '1984-09-17');
INSERT INTO `goadmin_e_posts` VALUES (88, 88, 'Quam nostrum ducimus enim ducimus ut et.', 'Non accusantium iure nisi natus culpa consequuntur. Voluptas velit pariatur quis et. Ullam delectus aspernatur quia nihil et quam nihil. Quaerat aut dolorem quaerat.', 'Et veritatis qui quos dolores. Quae aut excepturi quia. Voluptates qui vitae officia rerum. Et temporibus illum est vel unde sapiente temporibus.', '1999-02-04');
INSERT INTO `goadmin_e_posts` VALUES (89, 89, 'Delectus culpa animi quas blanditiis.', 'Architecto et sequi qui. Tempora voluptatem ut aut odit in quia. Dolorum ad voluptatum repellendus alias suscipit eum.', 'Aspernatur quis quis corporis est. Nulla culpa ex impedit enim suscipit. Distinctio officia autem beatae quia consequatur. Maxime eveniet voluptatem inventore repellendus omnis numquam ab.', '2011-08-17');
INSERT INTO `goadmin_e_posts` VALUES (90, 90, 'Accusamus amet voluptates eum dolore et dolor beatae.', 'Ipsum non modi et rerum sint accusantium minima adipisci. Voluptatem sunt quod et ducimus. Architecto amet ab illum consequuntur. Provident ut voluptatem et. Rem sit veritatis sed dignissimos.', 'Amet at velit enim. Rem eligendi aperiam aut perspiciatis.\nQui incidunt libero est quae magni voluptas expedita. Inventore voluptas aut et. Ipsum tempora temporibus blanditiis et rem et id.', '1993-06-09');
INSERT INTO `goadmin_e_posts` VALUES (91, 91, 'Non dolorum et nemo iste sed quia ducimus sapiente.', 'Odit mollitia cumque ut eius quo quas. Dolor quidem repudiandae dolor asperiores. Eius iure doloribus qui aut ea sint ut. Odit non officiis eius qui blanditiis. Qui fugiat totam sed aut quo velit.', 'Natus est eum non eos. Saepe dolores dolores blanditiis et qui. Sint ducimus ea quae eos fugit.', '1971-10-22');
INSERT INTO `goadmin_e_posts` VALUES (92, 92, 'Amet expedita ut sit voluptatem autem omnis.', 'Dignissimos est reprehenderit minus qui aliquam ad incidunt ut. Quia repudiandae assumenda reprehenderit quaerat et. Qui beatae totam molestiae veniam culpa maxime ex labore. Quibusdam assumenda ab molestias nesciunt.', 'Architecto impedit ut sapiente perferendis. Ducimus eaque error dicta natus. At quis ipsum cupiditate tempora.', '1979-08-30');
INSERT INTO `goadmin_e_posts` VALUES (93, 93, 'Est porro iure illo sunt sunt dolores.', 'Quas at nihil pariatur quia accusantium est. In impedit animi quisquam molestias dolorem. Ut architecto fugit modi dolorem.', 'Odio autem cum veniam voluptate et corporis nisi. Et sit saepe non accusamus unde consequatur. Recusandae iure corrupti saepe maxime quaerat.', '1985-04-23');
INSERT INTO `goadmin_e_posts` VALUES (94, 94, 'Fuga ut est ut aut dignissimos velit.', 'Dolor commodi pariatur sequi enim officiis veniam reiciendis. Voluptas neque vel dignissimos molestiae hic aut rerum.', 'Voluptatem sed alias et sequi consequatur libero quis. Laborum quisquam culpa dolore inventore ut qui. Quia expedita illum error esse dolorem repudiandae minus.', '1989-08-22');
INSERT INTO `goadmin_e_posts` VALUES (95, 95, 'Neque cupiditate doloremque necessitatibus alias voluptatem consequatur inventore.', 'Asperiores debitis sunt odio molestiae nobis. Eaque magni consequatur dolor sed et neque aut. Tempore ab dolorum voluptates dolore. Rerum recusandae ipsum dolorem totam laudantium neque aut inventore.', 'Numquam eius et qui aspernatur. Aliquam consectetur optio totam. Magni alias ipsam ducimus qui magnam quam.', '2017-07-17');
INSERT INTO `goadmin_e_posts` VALUES (96, 96, 'Modi sunt eos saepe aut sunt labore id.', 'Soluta et nesciunt earum temporibus. Explicabo error facilis ea est.', 'Quidem pariatur assumenda qui et tempora et doloribus aut. Atque nobis ut vel eos deserunt numquam pariatur. Fuga tempore aliquam illo corporis dignissimos.', '1984-07-20');
INSERT INTO `goadmin_e_posts` VALUES (97, 97, 'Sunt suscipit voluptatem laborum in perspiciatis facilis quia.', 'Repudiandae aspernatur officiis consectetur ipsa quia corporis optio. Dolores consectetur sapiente architecto nisi possimus. Dolore aut neque qui eaque.', 'Sit sint voluptatum iusto eos. Temporibus sequi nobis beatae quas. Voluptas minus sequi autem dolor et. Illum debitis dolorum doloribus ipsa.', '1978-10-21');

-- ----------------------------
-- Table structure for goadmin_e_profile
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_e_profile`;
CREATE TABLE `goadmin_e_profile`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photos` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `resume` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `resume_size` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `finish_state` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `finish_progress` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `pass` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_e_profile
-- ----------------------------
INSERT INTO `goadmin_e_profile` VALUES (1, 'eeYtHtUtQg8U7zpCNiigVVhnToj', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 13242389, 0, 30, 0, '2020-05-15 08:29:44', '2020-05-15 08:29:44');
INSERT INTO `goadmin_e_profile` VALUES (2, 'AxKvrvCaZpT3zsTsmrueFuLZFg9', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 232322233, 1, 60, 1, '2020-05-15 08:30:51', '2020-05-15 08:30:51');
INSERT INTO `goadmin_e_profile` VALUES (3, 'QAwrQgEfqGs7qCUNpWGmoaEP3yF', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 232323, 2, 80, 1, '2020-05-15 08:31:21', '2020-05-15 08:31:21');

-- ----------------------------
-- Table structure for goadmin_e_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_e_users`;
CREATE TABLE `goadmin_e_users`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` tinyint(0) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3243 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_e_users
-- ----------------------------
INSERT INTO `goadmin_e_users` VALUES (3133, 'voluptatum', 0, 'West Dorrischester', '130.24.131.165', '(291)462-9', '2008-10-12 07:44:28', '2003-10-16 23:40:41');
INSERT INTO `goadmin_e_users` VALUES (3134, 'quaerat', 0, 'Mantefurt', '18.206.108.141', '1-170-439-', '2017-01-05 23:01:17', '2006-10-09 16:31:23');
INSERT INTO `goadmin_e_users` VALUES (3135, 'quibusdam', 0, 'Altafurt', '89.162.78.57', '017-065-51', '1988-11-08 14:53:14', '2007-03-26 20:18:35');
INSERT INTO `goadmin_e_users` VALUES (3136, 'molestias', 0, 'East Jadontown', '131.25.27.144', '+92(7)3113', '2014-01-23 15:56:15', '1986-06-19 20:37:54');
INSERT INTO `goadmin_e_users` VALUES (3137, 'incidunt', 0, 'Angelville', '90.255.113.150', '1-881-209-', '1989-02-17 23:59:30', '1970-12-05 20:00:04');
INSERT INTO `goadmin_e_users` VALUES (3138, 'exercitationem', 0, 'Mrazport', '112.152.108.62', '(101)591-1', '1995-04-18 15:32:08', '1989-07-06 17:23:48');
INSERT INTO `goadmin_e_users` VALUES (3139, 'cumque', 0, 'South Carsonborough', '56.70.126.83', '687-792-49', '2004-09-09 12:22:21', '1994-05-17 16:53:50');
INSERT INTO `goadmin_e_users` VALUES (3140, 'ab', 0, 'New Abigaylemouth', '180.66.161.219', '121.009.26', '1993-07-16 16:40:39', '1985-04-27 19:02:24');
INSERT INTO `goadmin_e_users` VALUES (3141, 'numquam', 0, 'Port Polly', '118.115.157.126', '764.875.85', '1998-11-04 17:36:16', '2003-06-16 00:32:30');
INSERT INTO `goadmin_e_users` VALUES (3142, 'ratione', 0, 'East Madelynn', '124.144.175.243', '446.459.77', '1980-10-31 12:09:14', '2000-08-28 21:10:47');
INSERT INTO `goadmin_e_users` VALUES (3143, 'repellat', 0, 'Lake Aliza', '69.66.247.238', '1-514-720-', '1981-07-11 13:57:15', '1982-11-16 19:31:11');
INSERT INTO `goadmin_e_users` VALUES (3144, 'unde', 0, 'Claudechester', '80.187.230.130', '371-412-97', '1973-01-22 17:32:51', '1985-10-16 07:15:04');
INSERT INTO `goadmin_e_users` VALUES (3145, 'dolores', 0, 'East Candida', '89.169.15.90', '591.507.13', '1991-05-05 21:02:27', '1985-10-09 18:49:14');
INSERT INTO `goadmin_e_users` VALUES (3146, 'laudantium', 0, 'Harrisstad', '51.29.100.162', '668-521-48', '1981-09-12 04:20:41', '1994-05-09 03:32:30');
INSERT INTO `goadmin_e_users` VALUES (3147, 'iure', 0, 'Kingbury', '99.13.130.67', '(670)383-5', '1996-10-03 14:10:37', '1993-04-25 20:38:23');
INSERT INTO `goadmin_e_users` VALUES (3148, 'numquam', 0, 'Sanfordville', '89.174.176.217', '015-350-08', '2010-07-15 20:25:56', '1990-04-21 13:27:30');
INSERT INTO `goadmin_e_users` VALUES (3149, 'alias', 0, 'New Jacquelynmouth', '176.202.145.52', '670.430.97', '2000-06-07 07:57:30', '2015-06-06 08:57:47');
INSERT INTO `goadmin_e_users` VALUES (3150, 'expedita', 0, 'Lake Hilbert', '96.21.195.51', '(534)858-3', '2012-11-07 10:02:02', '2002-04-08 21:41:02');
INSERT INTO `goadmin_e_users` VALUES (3151, 'quis', 0, 'Lake Neal', '89.152.227.200', '+07(9)3192', '1990-10-22 15:41:12', '2013-06-22 09:51:23');
INSERT INTO `goadmin_e_users` VALUES (3152, 'id', 0, 'Port Laurence', '45.24.206.89', '270-153-13', '2013-03-28 06:34:44', '2012-12-25 08:49:40');
INSERT INTO `goadmin_e_users` VALUES (3153, 'ea', 0, 'Cummingsmouth', '119.31.3.235', '628-176-55', '2008-12-25 21:07:18', '1987-03-04 14:45:37');
INSERT INTO `goadmin_e_users` VALUES (3154, 'sapiente', 0, 'West Joaquin', '203.137.34.242', '034.848.48', '2010-03-10 04:23:48', '1974-02-27 01:52:51');
INSERT INTO `goadmin_e_users` VALUES (3155, 'blanditiis', 0, 'Port Logan', '247.71.235.180', '1-354-533-', '2010-03-12 00:22:42', '2007-08-22 08:52:34');
INSERT INTO `goadmin_e_users` VALUES (3156, 'laborum', 0, 'North Odie', '184.185.248.33', '(349)149-5', '1993-12-23 09:54:44', '1990-11-07 05:09:54');
INSERT INTO `goadmin_e_users` VALUES (3157, 'sit', 0, 'Port Brook', '254.154.238.177', '1-028-949-', '1997-11-18 14:26:34', '1992-07-22 16:48:00');
INSERT INTO `goadmin_e_users` VALUES (3158, 'assumenda', 0, 'East Mackenzie', '204.158.130.66', '(160)960-2', '1981-10-11 07:31:53', '1984-01-23 14:16:56');
INSERT INTO `goadmin_e_users` VALUES (3159, 'quisquam', 0, 'Bashirianburgh', '153.180.29.168', '371-305-81', '2009-02-15 00:27:53', '2005-06-29 12:23:04');
INSERT INTO `goadmin_e_users` VALUES (3160, 'sed', 0, 'New Donny', '118.254.120.78', '1-685-501-', '1980-05-23 09:06:18', '1974-09-02 22:40:54');
INSERT INTO `goadmin_e_users` VALUES (3161, 'ut', 0, 'South Krisville', '5.98.220.210', '639.996.18', '1977-08-06 01:42:41', '1994-10-30 13:59:51');
INSERT INTO `goadmin_e_users` VALUES (3162, 'cumque', 0, 'North Emmanuel', '39.91.220.233', '(168)144-2', '1974-03-22 07:17:19', '1994-08-04 06:33:55');
INSERT INTO `goadmin_e_users` VALUES (3163, 'dolorem', 0, 'New Noel', '180.17.202.66', '+06(8)8657', '1978-02-06 09:30:14', '2005-03-31 17:13:48');
INSERT INTO `goadmin_e_users` VALUES (3164, 'sunt', 0, 'Strosinchester', '41.78.165.138', '(749)823-5', '1985-12-25 15:40:37', '2003-01-25 09:21:52');
INSERT INTO `goadmin_e_users` VALUES (3165, 'rerum', 0, 'West Leatha', '51.234.111.252', '(455)407-9', '2017-02-06 23:59:34', '2004-02-10 12:17:41');
INSERT INTO `goadmin_e_users` VALUES (3166, 'aut', 0, 'West Nels', '114.157.77.105', '570-533-99', '1983-09-23 12:47:53', '2004-03-08 06:57:28');
INSERT INTO `goadmin_e_users` VALUES (3167, 'eos', 0, 'Janland', '190.148.202.0', '267-198-73', '1974-08-12 15:23:43', '1984-06-17 08:04:48');
INSERT INTO `goadmin_e_users` VALUES (3168, 'omnis', 0, 'Nitzscheburgh', '94.253.229.243', '056.325.16', '2007-02-19 03:02:05', '1977-11-24 10:53:20');
INSERT INTO `goadmin_e_users` VALUES (3169, 'quae', 0, 'Gustfurt', '11.246.22.247', '972-910-38', '1985-02-01 23:31:23', '1989-08-17 05:57:51');
INSERT INTO `goadmin_e_users` VALUES (3170, 'facere', 0, 'Heathcoteburgh', '104.70.84.237', '234.144.01', '1978-05-28 17:06:56', '2009-06-23 00:34:41');
INSERT INTO `goadmin_e_users` VALUES (3171, 'eligendi', 0, 'New Candice', '185.172.87.32', '1-990-977-', '1994-01-24 17:04:22', '1990-03-14 20:10:48');
INSERT INTO `goadmin_e_users` VALUES (3172, 'autem', 0, 'New Martymouth', '218.85.247.31', '0213109440', '1992-08-23 07:34:29', '1991-05-23 02:26:46');
INSERT INTO `goadmin_e_users` VALUES (3173, 'velit', 0, 'North Chadd', '152.4.77.210', '1-977-024-', '2018-05-12 19:40:30', '1996-06-24 00:43:49');
INSERT INTO `goadmin_e_users` VALUES (3174, 'voluptatem', 0, 'Emardland', '12.36.43.98', '1-504-175-', '2018-08-26 09:42:55', '1984-11-20 08:11:22');
INSERT INTO `goadmin_e_users` VALUES (3175, 'sunt', 0, 'West Myrna', '212.40.77.247', '0142702071', '1987-01-26 19:14:35', '1998-09-02 19:16:30');
INSERT INTO `goadmin_e_users` VALUES (3176, 'minus', 0, 'Gennaroton', '220.16.78.177', '661.478.49', '1999-11-02 21:00:18', '2018-07-26 06:23:23');
INSERT INTO `goadmin_e_users` VALUES (3177, 'eum', 0, 'Mervinmouth', '39.68.16.110', '514-868-17', '2016-07-18 15:08:34', '1988-04-11 18:14:53');
INSERT INTO `goadmin_e_users` VALUES (3178, 'et', 0, 'Port Natalieton', '29.13.164.161', '+20(9)5254', '2000-04-22 21:43:23', '1986-06-13 03:01:07');
INSERT INTO `goadmin_e_users` VALUES (3179, 'ipsam', 0, 'North Rettaview', '65.174.146.78', '+19(5)5639', '1993-02-07 05:41:54', '1991-04-26 01:48:31');
INSERT INTO `goadmin_e_users` VALUES (3180, 'adipisci', 0, 'Conroyfurt', '49.211.166.251', '376.870.27', '2000-04-04 06:18:45', '1999-08-12 18:49:47');
INSERT INTO `goadmin_e_users` VALUES (3181, 'qui', 0, 'East Terryburgh', '201.237.10.151', '(682)499-4', '1974-12-27 16:39:14', '1978-03-27 05:36:35');
INSERT INTO `goadmin_e_users` VALUES (3182, 'aliquam', 0, 'North Darion', '123.110.173.222', '(386)536-3', '1989-07-26 23:33:27', '2007-03-10 19:38:38');
INSERT INTO `goadmin_e_users` VALUES (3183, 'blanditiis', 0, 'Shanelshire', '161.173.251.134', '693.628.85', '2011-04-19 13:27:17', '2000-06-27 07:32:56');
INSERT INTO `goadmin_e_users` VALUES (3184, 'provident', 0, 'South Amie', '157.222.23.146', '(941)805-3', '1983-05-21 22:14:39', '1974-08-13 07:59:23');
INSERT INTO `goadmin_e_users` VALUES (3185, 'et', 0, 'New Ryleeville', '60.133.158.102', '238.375.46', '1981-05-23 07:26:35', '2018-05-16 09:31:50');
INSERT INTO `goadmin_e_users` VALUES (3186, 'rem', 0, 'Krajcikview', '254.68.144.153', '113.589.44', '2012-02-21 21:23:56', '2017-11-11 18:05:11');
INSERT INTO `goadmin_e_users` VALUES (3187, 'officia', 0, 'Port Cruz', '5.23.112.130', '481.895.97', '2002-06-26 19:07:28', '1970-12-27 13:47:14');
INSERT INTO `goadmin_e_users` VALUES (3188, 'sit', 0, 'New Brooklyntown', '75.170.89.171', '+21(7)5136', '1995-07-01 21:01:08', '2005-02-24 14:01:38');
INSERT INTO `goadmin_e_users` VALUES (3189, 'error', 0, 'Lutherfort', '78.141.190.96', '+25(3)1840', '1984-01-20 15:11:23', '2016-09-18 14:55:22');
INSERT INTO `goadmin_e_users` VALUES (3190, 'est', 0, 'Linneamouth', '117.182.29.64', '+32(6)9290', '1998-10-13 05:51:01', '1993-04-20 07:28:18');
INSERT INTO `goadmin_e_users` VALUES (3191, 'molestias', 0, 'Miashire', '160.3.34.22', '408.583.99', '1978-11-12 14:23:51', '1989-05-01 09:34:51');
INSERT INTO `goadmin_e_users` VALUES (3192, 'dolorem', 0, 'Nathaven', '30.142.214.7', '1-015-611-', '1993-02-25 17:21:00', '2006-08-03 07:06:04');
INSERT INTO `goadmin_e_users` VALUES (3193, 'voluptatem', 0, 'Clintonberg', '155.218.87.29', '+36(1)8939', '1998-09-14 21:54:13', '1977-11-23 07:50:55');
INSERT INTO `goadmin_e_users` VALUES (3194, 'cum', 0, 'Billiemouth', '184.218.96.17', '602-921-61', '1988-08-13 12:19:16', '2001-08-02 09:43:17');
INSERT INTO `goadmin_e_users` VALUES (3195, 'et', 0, 'West Trevor', '134.173.224.149', '1-654-522-', '2017-02-08 08:50:11', '1994-02-25 02:45:06');
INSERT INTO `goadmin_e_users` VALUES (3196, 'voluptate', 0, 'Port Muhammad', '101.162.1.247', '1-469-725-', '2007-05-31 21:55:19', '1983-02-02 07:16:01');
INSERT INTO `goadmin_e_users` VALUES (3197, 'ut', 0, 'North Tomasa', '34.50.218.169', '1-254-394-', '1998-12-01 09:58:54', '1975-02-07 01:59:00');
INSERT INTO `goadmin_e_users` VALUES (3198, 'sed', 0, 'Hillaryport', '120.212.199.52', '1-926-573-', '2016-07-29 19:03:12', '2008-09-10 13:04:44');
INSERT INTO `goadmin_e_users` VALUES (3199, 'magni', 0, 'Sebastianshire', '177.94.144.118', '627-932-50', '1973-11-10 20:24:51', '2017-10-08 23:29:45');
INSERT INTO `goadmin_e_users` VALUES (3200, 'aliquid', 0, 'South Ellis', '224.211.29.87', '(493)204-8', '1975-03-25 03:58:01', '1990-07-28 11:14:30');
INSERT INTO `goadmin_e_users` VALUES (3201, 'omnis', 0, 'Anabelstad', '92.249.88.62', '(978)197-9', '2009-01-01 18:00:34', '2014-10-16 11:54:54');
INSERT INTO `goadmin_e_users` VALUES (3202, 'numquam', 0, 'South Ronmouth', '169.106.168.28', '392-241-92', '1978-12-18 04:09:47', '1992-08-30 11:20:23');
INSERT INTO `goadmin_e_users` VALUES (3203, 'dolores', 0, 'Lake Benjamin', '15.117.69.132', '251.485.93', '2018-08-28 16:39:31', '2011-07-06 04:53:46');
INSERT INTO `goadmin_e_users` VALUES (3204, 'deserunt', 0, 'Emersonmouth', '66.51.232.79', '1-447-734-', '2002-11-30 12:44:53', '1975-05-16 18:37:48');
INSERT INTO `goadmin_e_users` VALUES (3205, 'ut', 0, 'Spinkamouth', '244.43.102.248', '1-000-780-', '2014-04-07 13:41:12', '1989-05-30 18:40:16');
INSERT INTO `goadmin_e_users` VALUES (3206, 'qui', 0, 'South Kristopherhaven', '246.92.42.67', '1-484-350-', '2006-06-23 16:52:48', '2003-12-02 16:52:52');
INSERT INTO `goadmin_e_users` VALUES (3207, 'culpa', 0, 'Port Kaitlin', '137.7.62.226', '(970)422-8', '1979-11-03 20:39:44', '2008-09-19 21:25:57');
INSERT INTO `goadmin_e_users` VALUES (3208, 'assumenda', 0, 'Brittanystad', '112.235.56.1', '1-140-282-', '1992-03-29 10:34:11', '1987-10-13 16:36:42');
INSERT INTO `goadmin_e_users` VALUES (3209, 'tempora', 0, 'West Madisenbury', '252.216.155.148', '0364798286', '1977-07-19 04:38:56', '1990-02-12 06:56:49');
INSERT INTO `goadmin_e_users` VALUES (3210, 'voluptas', 0, 'Lake Eugenestad', '159.105.105.253', '(687)489-4', '1983-02-04 14:30:46', '2015-11-11 17:30:31');
INSERT INTO `goadmin_e_users` VALUES (3211, 'animi', 0, 'Gradymouth', '234.240.244.211', '0732322239', '2010-05-25 02:06:51', '1994-01-31 02:15:34');
INSERT INTO `goadmin_e_users` VALUES (3212, 'sunt', 0, 'Port Catharine', '170.237.211.55', '262.806.58', '1975-10-13 05:49:59', '1973-09-14 21:04:22');
INSERT INTO `goadmin_e_users` VALUES (3213, 'aspernatur', 0, 'North Paolo', '67.211.135.138', '(620)698-7', '1990-12-12 18:58:51', '2018-06-06 04:54:08');
INSERT INTO `goadmin_e_users` VALUES (3214, 'blanditiis', 0, 'Adamouth', '157.101.158.128', '110-851-48', '1997-03-01 04:50:56', '1990-05-13 20:20:15');
INSERT INTO `goadmin_e_users` VALUES (3215, 'aut', 0, 'Maribelburgh', '214.169.56.47', '219-930-75', '1993-06-16 00:21:23', '1982-01-22 04:54:59');
INSERT INTO `goadmin_e_users` VALUES (3216, 'voluptatibus', 0, 'Lake Tiannaberg', '123.67.227.100', '397.747.22', '2014-01-27 12:53:19', '2006-06-26 14:45:55');
INSERT INTO `goadmin_e_users` VALUES (3217, 'architecto', 0, 'Beverlystad', '104.35.135.41', '1-856-949-', '2004-11-10 07:30:30', '2000-04-30 05:34:03');
INSERT INTO `goadmin_e_users` VALUES (3218, 'perspiciatis', 0, 'New Dejahfurt', '248.150.222.9', '754.322.73', '1993-09-14 09:32:03', '2002-01-09 16:50:17');
INSERT INTO `goadmin_e_users` VALUES (3219, 'repellat', 0, 'New Humberto', '103.130.113.37', '866.129.48', '1985-05-01 06:16:30', '1996-11-03 06:40:02');
INSERT INTO `goadmin_e_users` VALUES (3220, 'consequuntur', 0, 'Friesenmouth', '119.247.58.87', '955-141-06', '1976-03-20 14:24:07', '1998-11-24 08:35:53');
INSERT INTO `goadmin_e_users` VALUES (3221, 'voluptas', 0, 'Ornfort', '120.132.216.182', '(589)854-2', '1988-04-18 11:20:40', '1992-02-26 18:57:32');
INSERT INTO `goadmin_e_users` VALUES (3222, 'laudantium', 0, 'South Darrell', '94.253.191.196', '343-005-11', '1980-05-23 23:38:00', '2000-02-20 03:24:03');
INSERT INTO `goadmin_e_users` VALUES (3223, 'ut', 0, 'Kaiafort', '212.3.22.162', '1-552-220-', '1970-05-19 08:31:38', '1998-11-01 09:55:05');
INSERT INTO `goadmin_e_users` VALUES (3224, 'rerum', 0, 'Quitzonview', '19.97.140.221', '348.900.22', '2003-12-24 17:54:42', '1970-02-03 17:36:52');
INSERT INTO `goadmin_e_users` VALUES (3225, 'qui', 0, 'New Marcelle', '48.29.124.108', '1-524-833-', '1976-09-27 18:40:44', '1993-03-05 23:57:54');
INSERT INTO `goadmin_e_users` VALUES (3226, 'autem', 0, 'Lake Carolineborough', '243.186.200.110', '485-310-14', '1998-06-23 22:09:28', '1987-05-01 07:29:39');
INSERT INTO `goadmin_e_users` VALUES (3227, 'quas', 0, 'Marshallmouth', '188.233.129.117', '1-200-909-', '2011-07-18 19:31:07', '1993-12-17 23:25:30');
INSERT INTO `goadmin_e_users` VALUES (3228, 'ab', 0, 'Lake Staceyhaven', '23.48.214.152', '0788802278', '2003-04-03 18:06:42', '2007-12-19 05:02:45');
INSERT INTO `goadmin_e_users` VALUES (3229, 'ipsa', 0, 'Kreigerborough', '40.12.123.51', '+77(3)1104', '1997-12-07 21:03:32', '2017-05-22 09:25:19');
INSERT INTO `goadmin_e_users` VALUES (3230, 'sit', 0, 'New Idellatown', '124.93.199.84', '682.372.57', '1985-09-21 20:35:22', '1981-12-01 18:28:11');
INSERT INTO `goadmin_e_users` VALUES (3231, 'quis', 0, 'Doyleburgh', '115.32.241.190', '530-811-53', '1985-08-03 02:36:05', '2007-08-05 11:37:00');
INSERT INTO `goadmin_e_users` VALUES (3232, 'explicabo', 0, 'Carrollland', '239.130.251.156', '606-189-58', '1975-05-11 20:23:26', '2004-08-23 10:18:05');
INSERT INTO `goadmin_e_users` VALUES (3233, 'quas', 0, 'Dorotheamouth', '65.227.95.202', '1-120-101-', '1980-08-28 22:15:44', '1977-05-04 14:41:36');
INSERT INTO `goadmin_e_users` VALUES (3234, 'tenetur', 0, 'New Alia', '199.166.74.233', '1-572-838-', '1998-05-01 13:15:57', '1970-11-11 23:53:42');
INSERT INTO `goadmin_e_users` VALUES (3235, 'quia', 0, 'Lloydchester', '218.151.232.131', '373-827-78', '1990-06-26 20:36:08', '1974-01-23 10:11:30');
INSERT INTO `goadmin_e_users` VALUES (3236, 'at', 0, 'Port Lavina', '142.20.99.100', '1-143-840-', '2013-08-16 10:26:08', '1992-08-12 10:21:22');
INSERT INTO `goadmin_e_users` VALUES (3237, 'molestias', 0, 'Lake Abigail', '94.251.47.14', '1-447-916-', '1989-01-06 00:47:25', '2017-03-27 18:34:24');
INSERT INTO `goadmin_e_users` VALUES (3238, 'sed', 0, 'East Osvaldo', '216.134.64.85', '042-252-27', '2005-05-18 01:08:48', '1993-03-08 21:51:34');
INSERT INTO `goadmin_e_users` VALUES (3239, 'culpa', 0, 'West Isai', '72.31.156.203', '163.371.96', '2012-03-03 13:45:16', '1973-06-12 11:43:50');
INSERT INTO `goadmin_e_users` VALUES (3240, 'facere', 0, 'Hyattborough', '51.104.88.26', '231.377.24', '1970-08-07 22:22:07', '1983-01-26 07:57:25');
INSERT INTO `goadmin_e_users` VALUES (3241, 'fugit', 0, 'New Liza', '27.112.133.177', '904-573-87', '2013-10-04 05:06:22', '2007-07-16 18:29:25');
INSERT INTO `goadmin_e_users` VALUES (3242, 'neque', 0, 'East Danielle', '157.168.24.24', '+94(7)1774', '1988-05-10 04:14:27', '1993-02-08 06:47:36');

-- ----------------------------
-- Table structure for goadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_menu`;
CREATE TABLE `goadmin_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_menu
-- ----------------------------
INSERT INTO `goadmin_menu` VALUES (1, 0, 1, 2, 'Admin', NULL, 'fa-tasks', '', NULL, '', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (2, 1, 1, 2, 'Users', NULL, 'fa-users', '', NULL, '/info/manager', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (3, 1, 1, 3, 'Roles', NULL, 'fa-user', '', NULL, '/info/roles', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (4, 1, 1, 4, 'Permission', NULL, 'fa-ban', '', NULL, '/info/permission', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (5, 1, 1, 5, 'Menu', NULL, 'fa-bars', '', NULL, '/menu', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (6, 1, 1, 6, 'Operation log', NULL, 'fa-history', '', NULL, '/info/op', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (7, 0, 1, 1, 'Dashboard', NULL, 'fa-bar-chart', '', NULL, '/', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (8, 0, 0, 7, '例子', '', 'fa-align-center', '', NULL, '', '2019-12-11 14:15:42', '2019-12-11 14:15:42');
INSERT INTO `goadmin_menu` VALUES (9, 8, 0, 7, '用户', NULL, 'fa-user', '', NULL, '/info/user', '2019-09-12 07:15:07', '2019-09-12 07:15:07');
INSERT INTO `goadmin_menu` VALUES (10, 8, 0, 8, '作者', NULL, 'fa-users', '', NULL, '/info/authors', '2019-09-12 07:16:04', '2019-09-12 07:16:04');
INSERT INTO `goadmin_menu` VALUES (11, 8, 0, 9, '文章', NULL, 'fa-file-powerpoint-o', '', NULL, '/info/posts', '2019-09-12 07:16:32', '2019-09-12 07:16:32');
INSERT INTO `goadmin_menu` VALUES (12, 8, 0, 7, '雇员', NULL, 'fa-sitemap', '', NULL, '/info/employee', '2019-09-12 07:15:07', '2019-09-12 07:15:07');
INSERT INTO `goadmin_menu` VALUES (13, 8, 0, 7, '信息', NULL, 'fa-info', '', NULL, '/info/profile', '2019-09-12 07:15:07', '2019-09-12 07:15:07');
INSERT INTO `goadmin_menu` VALUES (14, 0, 0, 10, '表单', '组件', 'fa-wpforms', '', NULL, '/form1', '2019-09-12 07:14:18', '2019-09-12 07:14:18');
INSERT INTO `goadmin_menu` VALUES (15, 0, 0, 10, '表格', '', 'fa-table', '', NULL, '/table', '2019-12-11 14:15:42', '2019-12-11 14:15:42');

-- ----------------------------
-- Table structure for goadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_operation_log`;
CREATE TABLE `goadmin_operation_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_operation_log
-- ----------------------------
INSERT INTO `goadmin_operation_log` VALUES (1, 1, '/admin/info/manager', 'GET', '::1', '', '2020-11-13 06:59:29', '2020-11-13 06:59:29');
INSERT INTO `goadmin_operation_log` VALUES (2, 1, '/admin/info/permission', 'GET', '::1', '', '2020-11-13 06:59:31', '2020-11-13 06:59:31');
INSERT INTO `goadmin_operation_log` VALUES (3, 1, '/admin/menu', 'GET', '::1', '', '2020-11-13 06:59:36', '2020-11-13 06:59:36');
INSERT INTO `goadmin_operation_log` VALUES (4, 1, '/admin/menu/edit/show', 'GET', '::1', '', '2020-11-13 06:59:41', '2020-11-13 06:59:41');
INSERT INTO `goadmin_operation_log` VALUES (5, 1, '/admin/info/manager', 'GET', '::1', '', '2020-11-13 06:59:45', '2020-11-13 06:59:45');
INSERT INTO `goadmin_operation_log` VALUES (6, 1, '/admin/info/manager/edit', 'GET', '::1', '', '2020-11-13 06:59:47', '2020-11-13 06:59:47');
INSERT INTO `goadmin_operation_log` VALUES (7, 1, '/admin/edit/manager', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/manager?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"65225b9e-3af0-4c11-a77f-37f7228b91bd\"],\"avatar__delete_flag\":[\"0\"],\"id\":[\"2\"],\"name\":[\"操作员\"],\"password\":[\"operator\"],\"password_again\":[\"operator\"],\"permission_id[]\":[\"2\"],\"role_id[]\":[\"2\"],\"username\":[\"operator\"]}', '2020-11-13 06:59:59', '2020-11-13 06:59:59');
INSERT INTO `goadmin_operation_log` VALUES (8, 1, '/admin/logout', 'GET', '::1', '', '2020-11-13 07:00:00', '2020-11-13 07:00:00');
INSERT INTO `goadmin_operation_log` VALUES (9, 2, '/admin/application/info', 'GET', '::1', '', '2020-11-13 07:00:11', '2020-11-13 07:00:11');
INSERT INTO `goadmin_operation_log` VALUES (10, 2, '/admin/logout', 'GET', '::1', '', '2020-11-13 07:00:13', '2020-11-13 07:00:13');

-- ----------------------------
-- Table structure for goadmin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_permissions`;
CREATE TABLE `goadmin_permissions`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_permissions
-- ----------------------------
INSERT INTO `goadmin_permissions` VALUES (1, '所有权限', '*', '', '*', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` VALUES (2, '仪表盘', 'dashboard', 'GET', '*', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` VALUES (3, '操作员编辑', 'operator_edit', 'GET,POST', '/info/normal_manager/edit?id=2\r\n/edit/normal_manager?id=2', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_menu`;
CREATE TABLE `goadmin_role_menu`  (
  `role_id` int(0) UNSIGNED NOT NULL,
  `menu_id` int(0) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_menu
-- ----------------------------
INSERT INTO `goadmin_role_menu` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (2, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 8, '2019-09-12 07:14:19', '2019-09-12 07:14:19');
INSERT INTO `goadmin_role_menu` VALUES (2, 8, '2019-09-12 07:14:19', '2019-09-12 07:14:19');
INSERT INTO `goadmin_role_menu` VALUES (1, 9, '2019-09-12 07:15:07', '2019-09-12 07:15:07');
INSERT INTO `goadmin_role_menu` VALUES (1, 10, '2019-09-12 07:16:04', '2019-09-12 07:16:04');
INSERT INTO `goadmin_role_menu` VALUES (1, 11, '2019-09-12 07:16:32', '2019-09-12 07:16:32');
INSERT INTO `goadmin_role_menu` VALUES (1, 12, '2019-09-19 22:00:13', '2019-09-19 22:00:13');

-- ----------------------------
-- Table structure for goadmin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_permissions`;
CREATE TABLE `goadmin_role_permissions`  (
  `role_id` int(0) UNSIGNED NOT NULL,
  `permission_id` int(0) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_role_permissions`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_permissions
-- ----------------------------
INSERT INTO `goadmin_role_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (1, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (2, 3, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_users`;
CREATE TABLE `goadmin_role_users`  (
  `role_id` int(0) UNSIGNED NOT NULL,
  `user_id` int(0) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_roles`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_users
-- ----------------------------
INSERT INTO `goadmin_role_users` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_users` VALUES (2, 2, '2020-11-13 06:59:59', '2020-11-13 06:59:59');

-- ----------------------------
-- Table structure for goadmin_roles
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_roles`;
CREATE TABLE `goadmin_roles`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_roles
-- ----------------------------
INSERT INTO `goadmin_roles` VALUES (1, '超级管理员', 'administrator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_roles` VALUES (2, '操作员', 'operator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_session
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_session`;
CREATE TABLE `goadmin_session`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_session
-- ----------------------------
INSERT INTO `goadmin_session` VALUES (13, 'c0e0d584-69cc-4b11-b14b-f3c291c9a4a8', '__csrf_token__', '2020-11-13 06:59:35', '2020-11-13 06:59:35');
INSERT INTO `goadmin_session` VALUES (14, '4e648c95-e4ab-4971-9a26-6f5a5335bbd4', '__csrf_token__', '2020-11-13 06:59:41', '2020-11-13 06:59:41');
INSERT INTO `goadmin_session` VALUES (17, 'ca5a9a0f-0c60-42a3-a08c-b3c61f546483', '{\"user_id\":1}', '2020-11-13 07:00:13', '2020-11-13 07:00:13');

-- ----------------------------
-- Table structure for goadmin_site
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_site`;
CREATE TABLE `goadmin_site`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_site
-- ----------------------------
INSERT INTO `goadmin_site` VALUES (1, 'info_log_off', 'false', NULL, 1, '2020-04-08 02:35:56', '2020-04-08 02:35:56');
INSERT INTO `goadmin_site` VALUES (2, 'no_limit_login_ip', 'true', NULL, 1, '2020-04-08 02:35:56', '2020-04-08 02:35:56');
INSERT INTO `goadmin_site` VALUES (3, 'custom_head_html', '<link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"//quick.go-admin.cn/official/assets/imgs/icons.ico/favicon-32x32.png\">\n        <link rel=\"icon\" type=\"image/png\" sizes=\"96x96\" href=\"//quick.go-admin.cn/official/assets/imgs/icons.ico/favicon-64x64.png\">\n        <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"//quick.go-admin.cn/official/assets/imgs/icons.ico/favicon-16x16.png\">', NULL, 1, '2020-04-08 02:35:56', '2020-04-08 02:35:56');
INSERT INTO `goadmin_site` VALUES (4, 'domain', '', NULL, 1, '2020-04-08 02:35:56', '2020-04-08 02:35:56');
INSERT INTO `goadmin_site` VALUES (5, 'debug', 'true', NULL, 1, '2020-04-08 02:35:56', '2020-04-08 02:35:56');
INSERT INTO `goadmin_site` VALUES (6, 'info_log_path', './logs/info.log', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (7, 'color_scheme', 'skin-black', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (8, 'file_upload_engine', '{\"name\":\"local\",\"config\":null}', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (9, 'error_log_path', './logs/error.log', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (10, 'footer_info', '', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (11, 'login_title', 'GitbitxexAdmin', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (12, 'databases', '{\"default\":{\"host\":\"127.0.0.1\",\"port\":\"3306\",\"user\":\"root\",\"pwd\":\"123456\",\"name\":\"spot\",\"max_idle_con\":50,\"max_open_con\":150,\"driver\":\"mysql\",\"file\":\"\",\"dsn\":\"\"}}', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (13, 'url_prefix', 'admin', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (14, 'title', 'GitbitxexAdmin', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (15, 'env', 'prod', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (16, 'custom_foot_Html', '', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (17, 'error_log_off', 'false', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (18, 'extra', '', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (19, 'animation', '{\"type\":\"fadeInUp\",\"duration\":0.9,\"delay\":0}', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (20, 'theme', 'sword', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (21, 'logo', '<b>Gitbitex</b>Admin', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (22, 'mini_logo', '<b>G</b>A', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (23, 'asset_url', '//quick.go-admin.cn/demo/sword', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (24, 'auth_user_table', 'goadmin_users', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (25, 'language', 'cn', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (26, 'index_url', '/', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (27, 'login_url', '/login', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (28, 'access_log_path', './logs/access.log', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (29, 'session_life_time', '7200', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (30, 'store', '{\"path\":\"./uploads\",\"prefix\":\"uploads\"}', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (31, 'sql_log', 'false', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (32, 'access_log_off', 'false', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (33, 'login_logo', '', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
INSERT INTO `goadmin_site` VALUES (34, 'logger_encoder_duration', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (35, 'custom_403_html', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (36, 'bootstrap_file_path', './bootstrap.go', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (37, 'logger_encoder_message_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (38, 'logger_encoder_time', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (39, 'animation_duration', '0.90', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (40, 'logger_rotate_max_size', '0', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (41, 'animation_type', 'fadeInUp', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (42, 'logger_encoder_stacktrace_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (43, 'logger_rotate_max_backups', '0', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (44, 'hide_tool_entrance', 'true', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (45, 'hide_config_center_entrance', 'true', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (46, 'access_assets_log_off', 'false', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (47, 'logger_encoder_caller_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (48, 'hide_app_info_entrance', 'false', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (49, 'logger_encoder_level', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (50, 'custom_404_html', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (51, 'hide_plugin_entrance', 'true', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (52, 'custom_500_html', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (53, 'logger_encoder_time_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (54, 'logger_encoder_name_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (55, 'logger_encoder_caller', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (56, 'animation_delay', '0.00', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (57, 'logger_rotate_max_age', '0', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (58, 'logger_encoder_level_key', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (60, 'site_off', 'false', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (61, 'logger_level', '0', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (62, 'logger_rotate_compress', 'false', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (63, 'logger_encoder_encoding', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');
INSERT INTO `goadmin_site` VALUES (64, 'filemanager_connection', 'default', NULL, 0, '2020-08-01 16:17:12', '2020-08-01 16:17:12');
INSERT INTO `goadmin_site` VALUES (65, 'librarian_roots', 'default', NULL, 0, '2020-08-01 16:19:18', '2020-08-01 16:19:18');
INSERT INTO `goadmin_site` VALUES (66, 'librarian_theme', 'github', NULL, 0, '2020-08-01 16:19:18', '2020-08-01 16:19:18');
INSERT INTO `goadmin_site` VALUES (69, 'go_mod_file_path', '', NULL, 1, '2020-08-01 16:15:34', '2020-08-01 16:15:34');

-- ----------------------------
-- Table structure for goadmin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_user_permissions`;
CREATE TABLE `goadmin_user_permissions`  (
  `user_id` int(0) UNSIGNED NOT NULL,
  `permission_id` int(0) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_permissions`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_user_permissions
-- ----------------------------
INSERT INTO `goadmin_user_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_user_permissions` VALUES (2, 2, '2020-11-13 06:59:59', '2020-11-13 06:59:59');

-- ----------------------------
-- Table structure for goadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_users`;
CREATE TABLE `goadmin_users`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_users
-- ----------------------------
INSERT INTO `goadmin_users` VALUES (1, 'admin', '$2a$10$O6NPFuxeQ6DJMOIatM/nZudOKd0SddGL1Ktt4yN01AcZLs4tw4pEu', '超级管理员', 'robot.gif', 'tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_users` VALUES (2, 'operator', '$2a$10$glAnFEd0xKzbsHvlIq8MOO/2JiS.oSbnwix5BnqBwJ5r4LoQJcFWW', '操作员', '', NULL, '2019-09-10 00:00:00', '2020-11-13 14:59:52');

SET FOREIGN_KEY_CHECKS = 1;
