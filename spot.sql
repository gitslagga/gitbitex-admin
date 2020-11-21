/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : spot

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 21/11/2020 10:51:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for example_author
-- ----------------------------
DROP TABLE IF EXISTS `example_author`;
CREATE TABLE `example_author`  (
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
-- Records of example_author
-- ----------------------------
INSERT INTO `example_author` VALUES (1, 'Adam', 'Ondricka', 'abogisich@example.net', '1989-11-20', '1975-10-05 01:47:51');
INSERT INTO `example_author` VALUES (2, 'Eileen', 'Abbott', 'etreutel@example.net', '1985-02-24', '2009-01-12 19:22:24');
INSERT INTO `example_author` VALUES (3, 'Ebony', 'Mante', 'pagac.marc@example.net', '1982-04-06', '1998-03-18 09:28:58');
INSERT INTO `example_author` VALUES (4, 'Breanne', 'Nienow', 'osinski.domenico@example.net', '2007-10-21', '2004-05-07 21:06:14');
INSERT INTO `example_author` VALUES (5, 'Eliane', 'Rosenbaum', 'zhessel@example.net', '1996-01-23', '1979-05-24 01:52:18');
INSERT INTO `example_author` VALUES (6, 'Bradford', 'Erdman', 'francesca.stark@example.net', '2000-02-22', '1985-04-04 03:23:30');
INSERT INTO `example_author` VALUES (7, 'Isidro', 'Hudson', 'sandy.gusikowski@example.com', '2004-09-08', '1979-07-30 08:29:20');
INSERT INTO `example_author` VALUES (8, 'Albina', 'Hand', 'zlind@example.net', '2014-03-02', '1996-10-01 11:25:22');
INSERT INTO `example_author` VALUES (9, 'Andrew', 'Haley', 'schaden.deborah@example.net', '1984-08-25', '1979-06-25 20:54:46');
INSERT INTO `example_author` VALUES (10, 'Lafayette', 'Koch', 'camron.gleason@example.net', '2005-05-26', '1989-06-17 11:15:02');
INSERT INTO `example_author` VALUES (11, 'Lincoln', 'Carroll', 'elsa99@example.org', '2007-11-09', '2014-05-05 20:06:45');
INSERT INTO `example_author` VALUES (12, 'Joesph', 'Erdman', 'danny.rath@example.net', '1987-05-20', '1992-08-13 00:10:15');
INSERT INTO `example_author` VALUES (13, 'Gayle', 'Dach', 'lrice@example.org', '1978-10-17', '1987-08-11 09:51:54');
INSERT INTO `example_author` VALUES (14, 'Amira', 'Langosh', 'zbogan@example.net', '2003-06-03', '2000-03-01 05:01:53');
INSERT INTO `example_author` VALUES (15, 'Gaston', 'Kshlerin', 'fprosacco@example.com', '2015-01-23', '1988-05-28 23:26:18');
INSERT INTO `example_author` VALUES (16, 'Verna', 'Kuhlman', 'lorena.hyatt@example.net', '1986-05-22', '1975-10-11 05:10:36');
INSERT INTO `example_author` VALUES (17, 'Janessa', 'Marks', 'lwilderman@example.org', '2013-02-18', '2001-12-16 08:32:18');
INSERT INTO `example_author` VALUES (18, 'Olaf', 'Pacocha', 'bogisich.marcel@example.org', '1975-12-10', '1993-05-26 12:54:05');
INSERT INTO `example_author` VALUES (19, 'Hayden', 'Stracke', 'lbrown@example.net', '2001-04-05', '1972-06-04 16:55:42');
INSERT INTO `example_author` VALUES (20, 'Marisol', 'Bruen', 'cartwright.devante@example.net', '1997-10-14', '1979-01-13 08:54:00');
INSERT INTO `example_author` VALUES (21, 'Ottis', 'Christiansen', 'hbeatty@example.com', '1979-05-18', '1992-05-16 02:57:42');
INSERT INTO `example_author` VALUES (22, 'Henderson', 'Jaskolski', 'kshlerin.josue@example.net', '1991-06-08', '2011-09-10 06:24:32');
INSERT INTO `example_author` VALUES (23, 'Hanna', 'Ryan', 'jaskolski.arno@example.net', '1977-06-13', '2008-09-25 15:29:20');
INSERT INTO `example_author` VALUES (24, 'Heather', 'Ryan', 'bode.crawford@example.com', '1993-03-03', '1978-03-31 06:14:34');
INSERT INTO `example_author` VALUES (25, 'Jayson', 'Pouros', 'olemke@example.com', '1973-11-16', '1995-03-15 03:22:58');
INSERT INTO `example_author` VALUES (26, 'Mack', 'Kihn', 'deion.grimes@example.org', '1990-01-22', '2014-08-13 06:28:25');
INSERT INTO `example_author` VALUES (27, 'Elsa', 'Stiedemann', 'rosenbaum.clara@example.net', '1997-12-01', '1994-07-31 00:24:25');
INSERT INTO `example_author` VALUES (28, 'Kaylin', 'Wolff', 'wkerluke@example.com', '1999-06-03', '1985-05-11 04:19:46');

-- ----------------------------
-- Table structure for example_employee
-- ----------------------------
DROP TABLE IF EXISTS `example_employee`;
CREATE TABLE `example_employee`  (
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
-- Records of example_employee
-- ----------------------------
INSERT INTO `example_employee` VALUES (1, '杰克', 0, '前端', '12345678901', '前端工程师', '2020-05-12 21:51:54', '2020-05-12 21:51:54');
INSERT INTO `example_employee` VALUES (2, '虾米', 0, '后端', '12345678901', '后端工程师', '2020-05-12 22:06:23', '2020-05-12 22:06:23');
INSERT INTO `example_employee` VALUES (3, '牛顿', 0, '销售', '12345678901', '销售', '2020-05-12 22:06:35', '2020-05-12 22:06:35');
INSERT INTO `example_employee` VALUES (4, '阿基米德', 0, '前台', '12345678901', '前台', '2020-05-12 22:06:47', '2020-05-12 22:06:47');

-- ----------------------------
-- Table structure for example_post
-- ----------------------------
DROP TABLE IF EXISTS `example_post`;
CREATE TABLE `example_post`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `author_id` int(0) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of example_post
-- ----------------------------
INSERT INTO `example_post` VALUES (1, 1, 'Omnis illo itaque dolore officia ea eum.', 'Id mollitia cumque blanditiis et quas possimus aperiam ut. Est odit repudiandae hic ad ad. Eaque veniam ut a doloribus non fugiat.', 'Et et veritatis autem aliquid quia et. Natus quisquam aut magni quo expedita ut blanditiis qui.', '1990-02-17');
INSERT INTO `example_post` VALUES (2, 2, 'Hic qui voluptatum magni est eos iure.', 'Repellendus nobis architecto tempora laboriosam a. Consequatur sed eum beatae laudantium incidunt. Debitis doloribus explicabo aliquam saepe necessitatibus. Occaecati dolorem provident aut deleniti cupiditate. Aliquid et recusandae eaque fugit ut.', 'Commodi voluptatem ut nam aliquam maiores illum. Qui quaerat possimus repudiandae ut molestiae. Vitae ut ipsa eligendi libero doloribus dicta eum. Nesciunt quos iure iure facere minus.', '1987-12-07');
INSERT INTO `example_post` VALUES (3, 3, 'Culpa voluptates vitae rerum.', 'Ea aut non tempore velit. Aut aperiam recusandae qui facilis aliquid nulla. Voluptatem voluptas architecto fuga. Voluptatem vero quibusdam nihil ab aut saepe et rerum.', 'Officia iste consequatur natus. Et et earum voluptatem quos corrupti et. Enim nemo ducimus dolorem consequuntur facere sit. Eum ut ea ut qui vel ad blanditiis ipsam.', '2012-08-17');
INSERT INTO `example_post` VALUES (4, 4, 'Veritatis perferendis nostrum corporis.', 'Et officia voluptatem porro laborum iste dolor sit. Ea nesciunt sequi et repellendus. Et repellat quae facere aut.', 'Hic hic sunt tenetur. Reprehenderit tempora sequi doloribus repellat. Qui facere nihil dolores voluptate veniam sint.', '1984-06-13');
INSERT INTO `example_post` VALUES (5, 5, 'Quibusdam et qui nisi rerum.', 'Itaque velit voluptatem amet adipisci doloribus. Doloribus dolorem quis non aperiam ipsa est vel. Ad nisi laudantium eum deserunt.', 'Facilis vitae numquam temporibus qui. Qui dolor et pariatur voluptatibus optio itaque.', '1980-02-16');
INSERT INTO `example_post` VALUES (6, 6, 'Voluptate magni sunt qui esse sit assumenda magnam.', 'Nisi quia iste molestiae aut et. Vitae harum ut maxime aspernatur. Ut laborum doloremque recusandae. Fuga dolores eaque facere sequi.', 'Amet aut corporis inventore. Rerum voluptate sint voluptatibus possimus. Aut voluptatum totam doloremque quaerat. Delectus est illum reiciendis cumque voluptatem.', '1986-12-20');
INSERT INTO `example_post` VALUES (7, 7, 'Ex ducimus voluptatem et voluptatem sit odio.', 'In et repudiandae quia enim. Maiores omnis voluptatem adipisci neque ut repellat nesciunt. Quisquam voluptates aut est facere iste.', 'Aut debitis omnis in eum aut. Et nesciunt rem eos sint cumque distinctio omnis magnam. Fuga repellat voluptatum rem.', '2014-09-26');
INSERT INTO `example_post` VALUES (8, 8, 'Accusantium voluptas id dolore pariatur placeat ipsam numquam.', 'Qui eum omnis nulla et maiores. Distinctio sequi in optio quia esse ex. Ut quo doloribus unde. Quia ullam quia quia doloribus.', 'Odit necessitatibus corporis assumenda. Dolores nemo atque maxime odio et. Rerum iste veniam voluptas.\nSunt accusamus asperiores eaque deleniti quos aut eius. Laboriosam veniam aut delectus est in.', '2016-07-15');
INSERT INTO `example_post` VALUES (9, 9, 'Culpa sunt sit reprehenderit temporibus sit perferendis.', 'Quo iure inventore deleniti veritatis. Tempora expedita eos vitae esse molestias dignissimos.', 'Ullam fuga commodi illo vero qui. Eligendi voluptatibus nostrum expedita alias unde adipisci. Qui adipisci qui odio vel sunt. Eligendi iure quam laudantium animi. Aperiam recusandae et quis sit et.', '1974-12-27');
INSERT INTO `example_post` VALUES (10, 10, 'Aut necessitatibus et molestiae quod.', 'Libero veritatis non iure non autem provident. Odio dolorum doloremque fuga ad maiores consectetur quis. Ut sed ea tenetur sunt aut est. Distinctio recusandae pariatur consectetur facilis repellendus.', 'Voluptates amet nemo at temporibus laboriosam doloremque sed aspernatur. Ipsum recusandae debitis veritatis magni animi.', '2005-01-18');
INSERT INTO `example_post` VALUES (11, 11, 'Quis nihil voluptates minima.', 'Qui et ex in repellat. Nihil accusantium aut recusandae est sed ut omnis. Vitae a magni deleniti praesentium. Odit optio dolore sit nobis et maiores voluptatem.', 'Pariatur nostrum commodi voluptatem. Aut deleniti in aspernatur incidunt rerum. Iure iure rem commodi recusandae. Est molestiae in molestiae qui id laboriosam quisquam quod.', '2014-09-08');
INSERT INTO `example_post` VALUES (12, 12, 'Exercitationem est hic dolorem sunt voluptatem molestiae.', 'Voluptas enim eaque blanditiis est non. Laudantium saepe voluptas omnis in. Hic corporis commodi inventore possimus quibusdam fuga.', 'Ab nihil facere et qui dolor optio. Nesciunt et sit alias cupiditate.\nQui facere consequatur eveniet beatae nihil qui. Illo esse non accusamus voluptas veritatis.', '1985-05-29');
INSERT INTO `example_post` VALUES (13, 13, 'Harum facere non dicta dolores.', 'Fugit et consequatur fuga sed distinctio sit animi. Minima alias sed consectetur dignissimos. Commodi qui laboriosam non velit excepturi. Molestiae quod fugit atque.', 'Saepe unde quis rerum incidunt quia. Voluptas explicabo iste nemo harum unde. Suscipit magni officiis molestias blanditiis aperiam odio qui.', '2017-06-26');
INSERT INTO `example_post` VALUES (14, 14, 'Aut voluptate et dignissimos in qui.', 'Modi totam inventore natus voluptatibus sunt voluptates. In optio ad dignissimos sunt. Ipsam placeat qui expedita sunt sed. Et omnis molestias repellendus excepturi aliquid autem quod.', 'Quia eveniet voluptate ratione deleniti. Necessitatibus ipsum eum autem inventore voluptas minus. Quibusdam tempora consectetur facilis at est magnam.', '1972-09-17');
INSERT INTO `example_post` VALUES (15, 15, 'Quisquam vitae rerum porro nihil.', 'Sint omnis perspiciatis et porro quia voluptatem sed. Dolor sequi sequi incidunt expedita voluptatum ea reprehenderit. Atque quo nobis debitis nam.', 'Soluta iusto amet dolor quasi ab eaque recusandae. Recusandae sit autem numquam amet.', '1988-11-11');
INSERT INTO `example_post` VALUES (16, 16, 'Ut aut modi enim quisquam maiores.', 'Atque modi eveniet et. Quos velit a cupiditate harum sunt consequatur ut laboriosam. Sunt sit numquam blanditiis eos odit quam. Consequatur sint fugiat id tempore qui.', 'Minus aut cupiditate illum magni fuga alias. Recusandae velit explicabo et asperiores dolores similique minus. Sunt aut dolorem et quia qui ad asperiores.', '1986-06-18');
INSERT INTO `example_post` VALUES (17, 17, 'Perferendis fugit sed quia nulla fugiat.', 'Consequatur expedita cupiditate fuga consectetur placeat quia reiciendis odio. Aliquid aperiam molestiae ea similique sunt ducimus sunt.', 'Laudantium quis eius voluptatem est. Ea ad non corporis autem. Aut molestiae nemo perferendis incidunt facilis veniam.', '1995-06-12');
INSERT INTO `example_post` VALUES (18, 18, 'Commodi placeat ut enim voluptates ullam.', 'Officia qui et autem aut quidem maxime nisi. Quos magni rerum a veritatis nobis.', 'Cum facere aliquid error quasi suscipit. Ea qui ad architecto voluptatibus nostrum aut. Sequi doloribus quia cupiditate.', '1976-07-19');
INSERT INTO `example_post` VALUES (19, 19, 'Minima ea voluptas dolorum fugit ducimus cum.', 'Quasi dolorem facilis adipisci aliquid. Quidem aut velit tempora dignissimos. Vitae quo aliquid itaque corrupti ut.', 'Cum earum cum pariatur illum esse. Reprehenderit dolor voluptatem dolorem quis aliquid reiciendis et suscipit. Nesciunt quo magni odit recusandae illum molestiae qui.', '1981-11-24');
INSERT INTO `example_post` VALUES (20, 20, 'Officiis voluptatem consectetur sunt iusto suscipit in error.', 'Et non omnis labore tenetur cupiditate. Odit eum et doloremque error quae rerum quae omnis. Quia rerum expedita et totam laborum tempore molestiae ducimus.', 'Distinctio nulla qui quisquam eaque. Non nulla quo ut magni. Est aperiam sunt reprehenderit suscipit dolor natus impedit.', '2016-06-12');
INSERT INTO `example_post` VALUES (21, 21, 'Et et esse magnam mollitia.', 'Alias illo expedita perferendis eos recusandae aut. Perferendis sed laborum nisi doloribus.', 'Deserunt ea pariatur illum illum. Corporis alias nesciunt aut amet consequatur dolore quia. Ad tempore dicta non non quia quae.', '1982-10-16');
INSERT INTO `example_post` VALUES (22, 22, 'Sint omnis quia ex.', 'In autem deserunt optio rerum illum ducimus amet beatae. Eaque corrupti quidem sit aperiam dolorem quia itaque. Placeat accusantium quia ullam harum quaerat.', 'Vel unde reiciendis nobis rerum ut. Consequatur est sed a quo temporibus ad rerum. Minima qui exercitationem blanditiis earum.', '2013-12-23');
INSERT INTO `example_post` VALUES (23, 23, 'Quis ut deleniti ipsam eum repudiandae ipsa.', 'Amet est quo voluptas debitis inventore earum. Voluptas eos voluptatem odit quia qui. Eligendi tempora et eveniet ut nulla.', 'Officia possimus sint non sed exercitationem quibusdam. At quod laudantium magni sint. Perferendis eveniet deleniti rerum facilis nulla animi sint minus.', '1988-03-30');
INSERT INTO `example_post` VALUES (24, 24, 'Qui eaque repellat vitae nam officiis omnis.', 'Similique laudantium possimus deleniti exercitationem aut porro eum quis. Et fuga officiis sit quia modi. Vel rerum nostrum aut sapiente quam minus ipsa.', 'Molestias iste voluptatem in molestiae error perspiciatis ipsam. Distinctio eum deleniti quia quo est et. Quisquam est veniam iure enim dolor. Quasi atque est cum rerum.', '2013-09-22');
INSERT INTO `example_post` VALUES (25, 25, 'Consequuntur enim debitis officiis vel.', 'Et incidunt est omnis repudiandae saepe. Necessitatibus amet corporis quia nihil itaque totam. Veritatis minima dolore autem ut quasi quam.', 'Ut molestiae nesciunt ad occaecati velit excepturi sunt. Voluptatem laborum non nostrum consequuntur repudiandae praesentium animi. Dolorem esse rerum sit alias.', '1977-05-26');
INSERT INTO `example_post` VALUES (26, 26, 'Reprehenderit minus qui iste perspiciatis assumenda iste facere.', 'Aliquid sed at eveniet eum optio provident distinctio. Architecto ea natus explicabo non voluptatem suscipit sed. Vel quam fugiat ipsum iure. Aliquid iusto veritatis minus numquam deserunt in rerum.', 'Odio et vel veniam. Et id quos et. Quas quaerat illum nisi minus magnam iusto. Aspernatur sunt eligendi et.', '1979-10-09');
INSERT INTO `example_post` VALUES (27, 27, 'Mollitia voluptas repellat quod eaque.', 'Ut sequi blanditiis velit totam minus. Consequuntur ut rerum ducimus harum magnam. Eaque soluta dolor quo rerum ullam sed ut fugiat.', 'Nobis delectus dolore omnis. Et asperiores consequatur est ullam.\nUt ratione aut non molestiae voluptatem non consequatur. Aut consequuntur sunt ea placeat repellendus adipisci dolor.', '1983-07-20');
INSERT INTO `example_post` VALUES (28, 28, 'Et mollitia officia ut sed magni.', 'Exercitationem est sunt autem omnis. Eligendi recusandae mollitia sint eius officiis. Et ex est cupiditate repellat molestiae nulla sint. Id voluptatem voluptas ipsam nihil fugiat dolor itaque.', 'Voluptates expedita et deleniti eum et rerum possimus. Repellendus sit aut dolorem odit aut quasi nobis. Est aperiam in placeat architecto odit. Qui et consectetur consequatur hic quasi.', '2000-03-02');
INSERT INTO `example_post` VALUES (29, 29, 'Aperiam porro qui ut odit porro.', 'Cumque tempora iure praesentium adipisci voluptatem. Corporis temporibus esse omnis quidem. Sequi cum animi iste eum nulla dolore vel. Et aut voluptate et delectus maiores quasi.', 'Voluptatum minus quis est quae beatae. Quam necessitatibus magni hic. Dolor et qui maiores.', '2015-11-07');

-- ----------------------------
-- Table structure for example_profile
-- ----------------------------
DROP TABLE IF EXISTS `example_profile`;
CREATE TABLE `example_profile`  (
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
-- Records of example_profile
-- ----------------------------
INSERT INTO `example_profile` VALUES (1, 'eeYtHtUtQg8U7zpCNiigVVhnToj', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 13242389, 0, 30, 0, '2020-05-15 08:29:44', '2020-05-15 08:29:44');
INSERT INTO `example_profile` VALUES (2, 'AxKvrvCaZpT3zsTsmrueFuLZFg9', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 232322233, 1, 60, 1, '2020-05-15 08:30:51', '2020-05-15 08:30:51');
INSERT INTO `example_profile` VALUES (3, 'QAwrQgEfqGs7qCUNpWGmoaEP3yF', 'http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png,http://quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png', 'http://yinyanghu.github.io/files/clrs_prev.pdf', 232323, 2, 80, 1, '2020-05-15 08:31:21', '2020-05-15 08:31:21');

-- ----------------------------
-- Table structure for example_user
-- ----------------------------
DROP TABLE IF EXISTS `example_user`;
CREATE TABLE `example_user`  (
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
-- Records of example_user
-- ----------------------------
INSERT INTO `example_user` VALUES (1, 'exercitationem', 0, 'Mrazport', '112.152.108.62', '(101)591-1', '1995-04-18 15:32:08', '1989-07-06 17:23:48');
INSERT INTO `example_user` VALUES (2, 'cumque', 0, 'South Carsonborough', '56.70.126.83', '687-792-49', '2004-09-09 12:22:21', '1994-05-17 16:53:50');
INSERT INTO `example_user` VALUES (3, 'ab', 0, 'New Abigaylemouth', '180.66.161.219', '121.009.26', '1993-07-16 16:40:39', '1985-04-27 19:02:24');
INSERT INTO `example_user` VALUES (4, 'numquam', 0, 'Port Polly', '118.115.157.126', '764.875.85', '1998-11-04 17:36:16', '2003-06-16 00:32:30');
INSERT INTO `example_user` VALUES (5, 'ratione', 0, 'East Madelynn', '124.144.175.243', '446.459.77', '1980-10-31 12:09:14', '2000-08-28 21:10:47');
INSERT INTO `example_user` VALUES (6, 'repellat', 0, 'Lake Aliza', '69.66.247.238', '1-514-720-', '1981-07-11 13:57:15', '1982-11-16 19:31:11');
INSERT INTO `example_user` VALUES (7, 'unde', 0, 'Claudechester', '80.187.230.130', '371-412-97', '1973-01-22 17:32:51', '1985-10-16 07:15:04');
INSERT INTO `example_user` VALUES (8, 'dolores', 0, 'East Candida', '89.169.15.90', '591.507.13', '1991-05-05 21:02:27', '1985-10-09 18:49:14');
INSERT INTO `example_user` VALUES (9, 'laudantium', 0, 'Harrisstad', '51.29.100.162', '668-521-48', '1981-09-12 04:20:41', '1994-05-09 03:32:30');
INSERT INTO `example_user` VALUES (10, 'iure', 0, 'Kingbury', '99.13.130.67', '(670)383-5', '1996-10-03 14:10:37', '1993-04-25 20:38:23');
INSERT INTO `example_user` VALUES (11, 'numquam', 0, 'Sanfordville', '89.174.176.217', '015-350-08', '2010-07-15 20:25:56', '1990-04-21 13:27:30');
INSERT INTO `example_user` VALUES (12, 'alias', 0, 'New Jacquelynmouth', '176.202.145.52', '670.430.97', '2000-06-07 07:57:30', '2015-06-06 08:57:47');
INSERT INTO `example_user` VALUES (13, 'expedita', 0, 'Lake Hilbert', '96.21.195.51', '(534)858-3', '2012-11-07 10:02:02', '2002-04-08 21:41:02');
INSERT INTO `example_user` VALUES (14, 'quis', 0, 'Lake Neal', '89.152.227.200', '+07(9)3192', '1990-10-22 15:41:12', '2013-06-22 09:51:23');
INSERT INTO `example_user` VALUES (15, 'id', 0, 'Port Laurence', '45.24.206.89', '270-153-13', '2013-03-28 06:34:44', '2012-12-25 08:49:40');
INSERT INTO `example_user` VALUES (16, 'ea', 0, 'Cummingsmouth', '119.31.3.235', '628-176-55', '2008-12-25 21:07:18', '1987-03-04 14:45:37');
INSERT INTO `example_user` VALUES (17, 'sapiente', 0, 'West Joaquin', '203.137.34.242', '034.848.48', '2010-03-10 04:23:48', '1974-02-27 01:52:51');
INSERT INTO `example_user` VALUES (18, 'blanditiis', 0, 'Port Logan', '247.71.235.180', '1-354-533-', '2010-03-12 00:22:42', '2007-08-22 08:52:34');
INSERT INTO `example_user` VALUES (19, 'laborum', 0, 'North Odie', '184.185.248.33', '(349)149-5', '1993-12-23 09:54:44', '1990-11-07 05:09:54');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
-- Table structure for g_account
-- ----------------------------
DROP TABLE IF EXISTS `g_account`;
CREATE TABLE `g_account`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hold` decimal(32, 16) UNSIGNED NOT NULL,
  `available` decimal(32, 16) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uid_currency`(`user_id`, `currency`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account
-- ----------------------------

-- ----------------------------
-- Table structure for g_account_asset
-- ----------------------------
DROP TABLE IF EXISTS `g_account_asset`;
CREATE TABLE `g_account_asset`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hold` decimal(32, 16) UNSIGNED NOT NULL,
  `available` decimal(32, 16) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uid_currency`(`user_id`, `currency`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_asset
-- ----------------------------

-- ----------------------------
-- Table structure for g_account_config
-- ----------------------------
DROP TABLE IF EXISTS `g_account_config`;
CREATE TABLE `g_account_config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_config
-- ----------------------------
INSERT INTO `g_account_config` VALUES (1, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '激活转币数量', '0.1');
INSERT INTO `g_account_config` VALUES (2, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '认购奖励数量', '100000');
INSERT INTO `g_account_config` VALUES (3, '2020-11-13 09:03:53', '2020-11-19 03:16:32', 'YTL兑换数量', '5000');
INSERT INTO `g_account_config` VALUES (4, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '持币收益数量', '8000');
INSERT INTO `g_account_config` VALUES (5, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '推广收益数量', '4000');
INSERT INTO `g_account_config` VALUES (6, '2020-11-13 09:03:53', '2020-11-21 02:17:02', 'YTL兑换USDT价格', '10');
INSERT INTO `g_account_config` VALUES (7, '2020-11-13 09:03:53', '2020-11-21 02:17:02', 'BITE兑换USDT价格', '10');
INSERT INTO `g_account_config` VALUES (8, '2020-11-13 09:03:53', '2020-11-21 02:17:04', 'USDT兑换CNY价格', '7');

-- ----------------------------
-- Table structure for g_account_pool
-- ----------------------------
DROP TABLE IF EXISTS `g_account_pool`;
CREATE TABLE `g_account_pool`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hold` decimal(32, 16) UNSIGNED NOT NULL,
  `available` decimal(32, 16) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uid_currency`(`user_id`, `currency`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_pool
-- ----------------------------

-- ----------------------------
-- Table structure for g_account_scan
-- ----------------------------
DROP TABLE IF EXISTS `g_account_scan`;
CREATE TABLE `g_account_scan`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '币种BITE',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '二维码链接',
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT 'CNY数量',
  `fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT 'CNY手续费',
  `actual_number` decimal(32, 16) UNSIGNED NOT NULL COMMENT 'CNY实际数量',
  `rate` decimal(32, 16) UNSIGNED NOT NULL COMMENT 'CNY兑换BITE比例',
  `amount` decimal(32, 16) UNSIGNED NOT NULL COMMENT '币种数量',
  `status` int(0) UNSIGNED NOT NULL COMMENT '1-支付中，2-已支付',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_scan
-- ----------------------------

-- ----------------------------
-- Table structure for g_account_shop
-- ----------------------------
DROP TABLE IF EXISTS `g_account_shop`;
CREATE TABLE `g_account_shop`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hold` decimal(32, 16) UNSIGNED NOT NULL,
  `available` decimal(32, 16) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uid_currency`(`user_id`, `currency`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_shop
-- ----------------------------

-- ----------------------------
-- Table structure for g_account_transfer
-- ----------------------------
DROP TABLE IF EXISTS `g_account_transfer`;
CREATE TABLE `g_account_transfer`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `from` int(0) NOT NULL COMMENT '1-资产账户，2-矿池账户，3-币币账户，4-商城账户',
  `to` int(0) NOT NULL COMMENT '1-资产账户，2-矿池账户，3-币币账户，4-商城账户',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '划转币种',
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换数量',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_account_transfer
-- ----------------------------

-- ----------------------------
-- Table structure for g_address
-- ----------------------------
DROP TABLE IF EXISTS `g_address`;
CREATE TABLE `g_address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `private_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mnemonic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `parent_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `parent_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '所有上级ID',
  `invite_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请人数',
  `active_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '活跃度',
  `convert_fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换手续费',
  `global_fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT '全球分红手续费',
  `machine_level_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '达人级别ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_address`(`address`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_active_num`(`active_num`) USING BTREE,
  INDEX `idx_machine_level_id`(`machine_level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_address
-- ----------------------------

-- ----------------------------
-- Table structure for g_bill
-- ----------------------------
DROP TABLE IF EXISTS `g_bill`;
CREATE TABLE `g_bill`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `available` decimal(32, 16) NOT NULL,
  `hold` decimal(32, 16) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `settled` tinyint(1) NOT NULL DEFAULT 0,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_gsoci`(`user_id`, `currency`, `settled`, `id`) USING BTREE,
  INDEX `idx_s`(`settled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_bill
-- ----------------------------

-- ----------------------------
-- Table structure for g_config
-- ----------------------------
DROP TABLE IF EXISTS `g_config`;
CREATE TABLE `g_config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_config
-- ----------------------------
INSERT INTO `g_config` VALUES (1, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '激活转币数量', '0.1');
INSERT INTO `g_config` VALUES (2, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '认购奖励数量', '100000');
INSERT INTO `g_config` VALUES (3, '2020-11-13 09:03:53', '2020-11-19 03:16:32', 'YTL兑换数量', '5000');
INSERT INTO `g_config` VALUES (4, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '持币收益数量', '8000');
INSERT INTO `g_config` VALUES (5, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '推广收益数量', '4000');
INSERT INTO `g_config` VALUES (6, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '兑换邀请人数', '0');
INSERT INTO `g_config` VALUES (7, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '兑换邀请人数', '2');
INSERT INTO `g_config` VALUES (8, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '兑换邀请人数', '5');
INSERT INTO `g_config` VALUES (9, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '兑换邀请人数', '10');
INSERT INTO `g_config` VALUES (10, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '兑换邀请人数', '30');
INSERT INTO `g_config` VALUES (11, '2020-11-13 09:03:53', '2020-11-19 03:16:42', 'YTL兑换手续费', '0.50');
INSERT INTO `g_config` VALUES (12, '2020-11-13 09:03:53', '2020-11-19 03:16:46', 'YTL兑换手续费', '0.40');
INSERT INTO `g_config` VALUES (13, '2020-11-13 09:03:53', '2020-11-19 03:16:48', 'YTL兑换手续费', '0.35');
INSERT INTO `g_config` VALUES (14, '2020-11-13 09:03:53', '2020-11-19 03:16:50', 'YTL兑换手续费', '0.30');
INSERT INTO `g_config` VALUES (15, '2020-11-13 09:03:53', '2020-11-19 03:16:52', 'YTL兑换手续费', '0.20');
INSERT INTO `g_config` VALUES (16, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'YTL兑换USDT价格', '10');
INSERT INTO `g_config` VALUES (17, '2020-11-13 09:03:53', '2020-11-13 09:03:53', '能量兑换USDT价格(已废弃)', '1');
INSERT INTO `g_config` VALUES (18, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'BITE兑换USDT价格', '10');
INSERT INTO `g_config` VALUES (19, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT兑换CNY价格', '7');
INSERT INTO `g_config` VALUES (20, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT最小充币数量', '1');
INSERT INTO `g_config` VALUES (21, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT最小提币数量', '100');
INSERT INTO `g_config` VALUES (22, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT提币手续费', '0.05');
INSERT INTO `g_config` VALUES (23, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT归集地址', '0xA266e3226426Af7F30aE133FC0fDCDD761e69aAC');
INSERT INTO `g_config` VALUES (24, '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'USDT归集手续费地址', '0xA266e3226426Af7F30aE133FC0fDCDD761e69aAC');

-- ----------------------------
-- Table structure for g_currency_collect
-- ----------------------------
DROP TABLE IF EXISTS `g_currency_collect`;
CREATE TABLE `g_currency_collect`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `token` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `txid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '转出地址',
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '到账地址',
  `value` decimal(32, 16) NOT NULL,
  `status` int(0) UNSIGNED NOT NULL COMMENT '1-转入主钱包,2-转出到冷钱包,3-转出手续费',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_address`(`to`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  UNIQUE INDEX `idx_txid`(`txid`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_currency_collect
-- ----------------------------

-- ----------------------------
-- Table structure for g_currency_config
-- ----------------------------
DROP TABLE IF EXISTS `g_currency_config`;
CREATE TABLE `g_currency_config`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_currency_config
-- ----------------------------
INSERT INTO `g_currency_config` VALUES (1, '2020-11-13 09:03:53', '2020-11-21 02:19:29', 'USDT最小充币数量', '1');
INSERT INTO `g_currency_config` VALUES (2, '2020-11-13 09:03:53', '2020-11-21 02:19:33', 'USDT最小提币数量', '100');
INSERT INTO `g_currency_config` VALUES (3, '2020-11-13 09:03:53', '2020-11-21 02:19:34', 'USDT提币手续费', '0.05');
INSERT INTO `g_currency_config` VALUES (4, '2020-11-13 09:03:53', '2020-11-21 02:19:35', 'USDT归集地址', '0xA266e3226426Af7F30aE133FC0fDCDD761e69aAC');
INSERT INTO `g_currency_config` VALUES (5, '2020-11-13 09:03:53', '2020-11-21 02:19:37', 'USDT归集手续费地址', '0xA266e3226426Af7F30aE133FC0fDCDD761e69aAC');

-- ----------------------------
-- Table structure for g_currency_deposit
-- ----------------------------
DROP TABLE IF EXISTS `g_currency_deposit`;
CREATE TABLE `g_currency_deposit`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `txid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blocknum` bigint(0) NOT NULL,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` decimal(32, 16) NOT NULL,
  `status` int(0) UNSIGNED NOT NULL COMMENT '1-未确认,2-已确认',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_blocknum`(`blocknum`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `idx_txid`(`txid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_currency_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for g_currency_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `g_currency_withdraw`;
CREATE TABLE `g_currency_withdraw`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `txid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `blocknum` bigint(0) NOT NULL,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` decimal(32, 16) NOT NULL,
  `status` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1-失败,2-成功,3-通过,4-不通过,5-取消',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `idx_txid`(`txid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_currency_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for g_fill
-- ----------------------------
DROP TABLE IF EXISTS `g_fill`;
CREATE TABLE `g_fill`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `trade_id` bigint(0) NOT NULL DEFAULT 0,
  `order_id` bigint(0) NOT NULL DEFAULT 0,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` decimal(32, 16) NOT NULL,
  `price` decimal(32, 16) NOT NULL,
  `funds` decimal(32, 16) NOT NULL,
  `fee` decimal(32, 16) NOT NULL,
  `liquidity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `settled` tinyint(1) NOT NULL DEFAULT 0,
  `side` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `done_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message_seq` bigint(0) NOT NULL,
  `log_offset` bigint(0) NOT NULL DEFAULT 0,
  `log_seq` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `o_m`(`order_id`, `message_seq`) USING BTREE,
  INDEX `idx_gsoi`(`order_id`, `settled`, `id`) USING BTREE,
  INDEX `idx_si`(`settled`, `id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_fill
-- ----------------------------

-- ----------------------------
-- Table structure for g_machine
-- ----------------------------
DROP TABLE IF EXISTS `g_machine`;
CREATE TABLE `g_machine`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '矿机名称',
  `profit` decimal(32, 16) UNSIGNED NOT NULL COMMENT '挖矿收益',
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '购买数量',
  `release` int(0) UNSIGNED NOT NULL COMMENT '释放天数',
  `invite` decimal(32, 16) UNSIGNED NOT NULL COMMENT '直推收益',
  `active` int(0) UNSIGNED NOT NULL COMMENT '活跃度',
  `buy_quantity` int(0) UNSIGNED NOT NULL COMMENT '可买数量',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_buy_quantity`(`buy_quantity`) USING BTREE COMMENT '获取可购买矿机列表'
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '矿机表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine
-- ----------------------------
INSERT INTO `g_machine` VALUES (1, 'I型', 0.1500000000000000, 50.0000000000000000, 50, 0.0000000000000000, 0, 0, '2020-11-13 09:03:53', '2020-11-18 08:56:40');
INSERT INTO `g_machine` VALUES (2, 'II型', 0.1500000000000000, 100.0000000000000000, 40, 0.0500000000000000, 10, 4, '2020-11-13 09:03:53', '2020-11-18 09:17:13');
INSERT INTO `g_machine` VALUES (3, 'III型', 0.2000000000000000, 500.0000000000000000, 40, 0.0700000000000000, 50, 3, '2020-11-13 09:03:53', '2020-11-18 09:17:17');
INSERT INTO `g_machine` VALUES (4, 'IV型', 0.2500000000000000, 2000.0000000000000000, 40, 0.0800000000000000, 200, 2, '2020-11-13 09:03:53', '2020-11-18 09:17:19');
INSERT INTO `g_machine` VALUES (5, 'V型', 0.3000000000000000, 5000.0000000000000000, 40, 0.1000000000000000, 500, 1, '2020-11-13 09:03:53', '2020-11-18 09:17:21');
INSERT INTO `g_machine` VALUES (6, 'VI型', 0.3500000000000000, 10000.0000000000000000, 40, 0.1200000000000000, 1000, 1, '2020-11-13 09:03:53', '2020-11-18 09:17:23');
INSERT INTO `g_machine` VALUES (7, 'VII型', 0.4000000000000000, 50000.0000000000000000, 40, 0.1500000000000000, 5000, 1, '2020-11-13 09:03:53', '2020-11-18 09:17:25');

-- ----------------------------
-- Table structure for g_machine_address
-- ----------------------------
DROP TABLE IF EXISTS `g_machine_address`;
CREATE TABLE `g_machine_address`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `machine_id` bigint(0) UNSIGNED NOT NULL COMMENT '矿机ID',
  `user_id` bigint(0) UNSIGNED NOT NULL COMMENT '用户ID',
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '每日释放量',
  `total_number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '总释放数量',
  `day` int(0) UNSIGNED NOT NULL COMMENT '剩余释放天数: 0-已结束',
  `total_day` int(0) UNSIGNED NOT NULL COMMENT '总释放天数',
  `is_buy` int(0) UNSIGNED NOT NULL COMMENT '1-赠送的,2-购买的',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_machine_id`(`machine_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_day`(`day`) USING BTREE COMMENT '筛选剩余天数大于零的进行释放',
  INDEX `idx_is_buy`(`is_buy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户矿机表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine_address
-- ----------------------------

-- ----------------------------
-- Table structure for g_machine_config
-- ----------------------------
DROP TABLE IF EXISTS `g_machine_config`;
CREATE TABLE `g_machine_config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '1-Normal,2-V1,3-V2,4-V3,5-V4,6-V5',
  `candy_level` int(0) UNSIGNED NOT NULL COMMENT '糖果兑换等级',
  `invite_num` int(0) NOT NULL COMMENT '直推有效账户',
  `standard` bigint(0) UNSIGNED NOT NULL COMMENT '拥有什么矿机，才算有效账户',
  `convert_fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换手续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine_config
-- ----------------------------
INSERT INTO `g_machine_config` VALUES (1, '2020-11-21 02:14:00', '2020-11-21 02:14:28', 0, 0, 0, 0.0500000000000000);
INSERT INTO `g_machine_config` VALUES (2, '2020-11-20 11:32:22', '2020-11-21 02:14:23', 1, 5, 2, 0.4000000000000000);
INSERT INTO `g_machine_config` VALUES (3, '2020-11-20 11:35:48', '2020-11-21 02:14:22', 2, 10, 2, 0.3500000000000000);
INSERT INTO `g_machine_config` VALUES (4, '2020-11-20 11:36:04', '2020-11-21 02:14:21', 3, 15, 2, 0.3000000000000000);
INSERT INTO `g_machine_config` VALUES (5, '2020-11-20 11:36:14', '2020-11-21 02:14:20', 4, 20, 2, 0.2500000000000000);
INSERT INTO `g_machine_config` VALUES (6, '2020-11-20 11:36:22', '2020-11-21 02:14:19', 5, 25, 2, 0.2000000000000000);

-- ----------------------------
-- Table structure for g_machine_convert
-- ----------------------------
DROP TABLE IF EXISTS `g_machine_convert`;
CREATE TABLE `g_machine_convert`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) UNSIGNED NOT NULL,
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换数量',
  `price` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换价格',
  `fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT '兑换手续费',
  `amount` decimal(32, 16) UNSIGNED NOT NULL COMMENT '实际消耗的能量',
  `type` int(0) UNSIGNED NOT NULL COMMENT '1-Ytl兑换Bite,2-Bite兑换Ytl',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine_convert
-- ----------------------------

-- ----------------------------
-- Table structure for g_machine_level
-- ----------------------------
DROP TABLE IF EXISTS `g_machine_level`;
CREATE TABLE `g_machine_level`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `master_level` int(0) UNSIGNED NOT NULL COMMENT '达人级别：1-一星，2-二星，3-三星，4-四星，5-五星',
  `train_num` int(0) UNSIGNED NOT NULL COMMENT '直接育成',
  `invite_num` int(0) UNSIGNED NOT NULL COMMENT '有效推荐',
  `total_active` int(0) UNSIGNED NOT NULL COMMENT '总活跃度',
  `common_active` int(0) UNSIGNED NOT NULL COMMENT '小区活跃度',
  `global_fee` decimal(32, 16) UNSIGNED NOT NULL COMMENT '全球分红手续费',
  `machine_id` bigint(0) UNSIGNED NOT NULL COMMENT '赠送矿机ID',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_machine_id`(`machine_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine_level
-- ----------------------------
INSERT INTO `g_machine_level` VALUES (1, 1, 2, 10, 500, 100, 0.2000000000000000, 2, '2020-11-19 07:12:38', '2020-11-19 07:12:38');
INSERT INTO `g_machine_level` VALUES (2, 2, 2, 20, 2000, 500, 0.1500000000000000, 3, '2020-11-19 07:13:07', '2020-11-19 07:13:07');
INSERT INTO `g_machine_level` VALUES (3, 3, 2, 30, 10000, 2500, 0.1000000000000000, 4, '2020-11-19 07:18:02', '2020-11-19 07:18:02');
INSERT INTO `g_machine_level` VALUES (4, 4, 2, 40, 50000, 10000, 0.0500000000000000, 5, '2020-11-19 07:18:18', '2020-11-19 07:18:18');
INSERT INTO `g_machine_level` VALUES (5, 5, 2, 50, 100000, 25000, 0.0500000000000000, 6, '2020-11-19 07:18:48', '2020-11-19 07:18:48');

-- ----------------------------
-- Table structure for g_machine_log
-- ----------------------------
DROP TABLE IF EXISTS `g_machine_log`;
CREATE TABLE `g_machine_log`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) UNSIGNED NOT NULL COMMENT '用户ID',
  `machine_id` bigint(0) UNSIGNED NOT NULL COMMENT '矿机ID',
  `machine_address_id` bigint(0) UNSIGNED NOT NULL COMMENT '用户矿机ID',
  `number` decimal(32, 16) UNSIGNED NOT NULL COMMENT '释放数量',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_machine_id`(`machine_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_machine_address_id`(`machine_address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '挖矿日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_machine_log
-- ----------------------------

-- ----------------------------
-- Table structure for g_order
-- ----------------------------
DROP TABLE IF EXISTS `g_order`;
CREATE TABLE `g_order`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` bigint(0) NOT NULL,
  `size` decimal(32, 16) NOT NULL,
  `funds` decimal(32, 16) NOT NULL,
  `filled_size` decimal(32, 16) NOT NULL,
  `executed_value` decimal(32, 16) NOT NULL,
  `price` decimal(32, 16) NOT NULL,
  `fill_fees` decimal(32, 16) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `side` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time_in_force` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `settled` tinyint(1) NOT NULL DEFAULT 0,
  `client_oid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uspsi`(`user_id`, `product_id`, `status`, `side`, `id`) USING BTREE,
  INDEX `idx_uid_coid`(`user_id`, `client_oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_order
-- ----------------------------

-- ----------------------------
-- Table structure for g_product
-- ----------------------------
DROP TABLE IF EXISTS `g_product`;
CREATE TABLE `g_product`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `base_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quote_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `base_min_size` decimal(32, 16) NOT NULL,
  `base_max_size` decimal(32, 16) NOT NULL,
  `base_scale` int(0) NOT NULL,
  `quote_scale` int(0) NOT NULL,
  `quote_increment` double NOT NULL,
  `quote_min_size` decimal(32, 16) NOT NULL,
  `quote_max_size` decimal(32, 16) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_product
-- ----------------------------
INSERT INTO `g_product` VALUES ('BITE-USDT', '2020-11-13 09:03:53', '2020-11-18 06:55:28', 'BITE', 'USDT', 0.0001000000000000, 100000.0000000000000000, 4, 2, 0.01, 0.0000000000000000, 0.0000000000000000);
INSERT INTO `g_product` VALUES ('BTC-USDT', '2020-11-13 09:03:53', '2020-11-13 09:03:53', 'BTC', 'USDT', 0.0000010000000000, 10000000.0000000000000000, 6, 2, 0.01, 0.0000000000000000, 0.0000000000000000);

-- ----------------------------
-- Table structure for g_tick
-- ----------------------------
DROP TABLE IF EXISTS `g_tick`;
CREATE TABLE `g_tick`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `granularity` bigint(0) NOT NULL,
  `time` bigint(0) NOT NULL,
  `open` decimal(32, 16) NOT NULL,
  `high` decimal(32, 16) NOT NULL,
  `low` decimal(32, 16) NOT NULL,
  `close` decimal(32, 16) NOT NULL,
  `volume` decimal(32, 16) NOT NULL,
  `log_offset` bigint(0) NOT NULL DEFAULT 0,
  `log_seq` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `p_g_t`(`product_id`, `granularity`, `time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_tick
-- ----------------------------

-- ----------------------------
-- Table structure for g_trade
-- ----------------------------
DROP TABLE IF EXISTS `g_trade`;
CREATE TABLE `g_trade`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `taker_order_id` bigint(0) NOT NULL,
  `maker_order_id` bigint(0) NOT NULL,
  `price` decimal(32, 16) NOT NULL,
  `size` decimal(32, 16) NOT NULL,
  `side` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` timestamp(0) NOT NULL,
  `log_offset` bigint(0) NOT NULL DEFAULT 0,
  `log_seq` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_trade
-- ----------------------------

-- ----------------------------
-- Table structure for g_user
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` bigint(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_user
-- ----------------------------
INSERT INTO `g_user` VALUES (1, '2020-11-18 18:01:54', '2020-11-18 18:01:54', 0, '957766762@qq.com', '677c6f5ee809db86d3abcb3e2b033940');

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `goadmin_menu` VALUES (8, 0, 0, 20, '例子', '', 'fa-align-center', '', NULL, '', '2019-12-11 14:15:42', '2019-12-11 14:15:42');
INSERT INTO `goadmin_menu` VALUES (9, 8, 0, 20, '用户', '', 'fa-user', '', NULL, '/info/example_user', '2019-09-12 07:15:07', '2020-11-13 17:09:30');
INSERT INTO `goadmin_menu` VALUES (10, 8, 0, 23, '作者', '', 'fa-users', '', NULL, '/info/example_author', '2019-09-12 07:16:04', '2020-11-13 17:10:26');
INSERT INTO `goadmin_menu` VALUES (11, 8, 0, 24, '文章', '', 'fa-file-powerpoint-o', '', NULL, '/info/example_post', '2019-09-12 07:16:32', '2020-11-13 17:10:39');
INSERT INTO `goadmin_menu` VALUES (12, 8, 0, 21, '雇员', '', 'fa-sitemap', '', NULL, '/info/example_employee', '2019-09-12 07:15:07', '2020-11-13 17:09:39');
INSERT INTO `goadmin_menu` VALUES (13, 8, 0, 22, '信息', '', 'fa-info', '', NULL, '/info/example_profile', '2019-09-12 07:15:07', '2020-11-13 17:10:11');
INSERT INTO `goadmin_menu` VALUES (14, 0, 0, 25, '表单', '组件', 'fa-wpforms', '', NULL, '/form1', '2019-09-12 07:14:18', '2019-09-12 07:14:18');
INSERT INTO `goadmin_menu` VALUES (15, 0, 0, 26, '表格', '', 'fa-table', '', NULL, '/table', '2019-12-11 14:15:42', '2019-12-11 14:15:42');
INSERT INTO `goadmin_menu` VALUES (16, 0, 0, 7, '用户管理', '', 'fa-bars', '', NULL, '', '2020-11-13 10:44:08', '2020-11-13 19:19:36');
INSERT INTO `goadmin_menu` VALUES (17, 16, 0, 8, '钱包地址', '', 'fa-snapchat-ghost', '', NULL, '/info/g_address', '2020-11-13 10:50:42', '2020-11-13 18:53:46');
INSERT INTO `goadmin_menu` VALUES (18, 16, 0, 9, '资产账户', '', 'fa-bars', '', NULL, '/info/g_account_asset', '2020-11-13 11:15:04', '2020-11-13 11:15:04');
INSERT INTO `goadmin_menu` VALUES (19, 16, 0, 10, '矿池账户', '', 'fa-bars', '', NULL, '/info/g_account_pool', '2020-11-13 11:15:39', '2020-11-13 11:15:39');
INSERT INTO `goadmin_menu` VALUES (20, 16, 0, 11, '币币账户', '', 'fa-bars', '', NULL, '/info/g_account', '2020-11-13 11:16:12', '2020-11-13 11:16:12');
INSERT INTO `goadmin_menu` VALUES (21, 16, 0, 12, '购物账户', '', 'fa-bars', '', NULL, '/info/g_account_shop', '2020-11-13 11:16:30', '2020-11-13 19:17:14');
INSERT INTO `goadmin_menu` VALUES (22, 16, 0, 7, '配置管理', '', 'fa-bars', '', NULL, '/info/g_config', '2020-11-13 13:49:51', '2020-11-13 13:49:51');
INSERT INTO `goadmin_menu` VALUES (23, 0, 0, 13, '币币交易', '', 'fa-bars', '', NULL, '', '2020-11-13 13:50:16', '2020-11-13 13:50:16');
INSERT INTO `goadmin_menu` VALUES (24, 23, 0, 13, '交易对', '', 'fa-bars', '', NULL, '/info/g_product', '2020-11-13 13:50:51', '2020-11-13 13:50:51');
INSERT INTO `goadmin_menu` VALUES (25, 23, 0, 14, '市场行情', '', 'fa-bars', '', NULL, '/info/g_tick', '2020-11-13 13:51:21', '2020-11-13 13:51:21');
INSERT INTO `goadmin_menu` VALUES (26, 23, 0, 16, '交易订单', '', 'fa-bars', '', NULL, '/info/g_trade', '2020-11-13 13:52:19', '2020-11-13 13:52:19');
INSERT INTO `goadmin_menu` VALUES (27, 23, 0, 15, '委托订单', '', 'fa-bars', '', NULL, '/info/g_order', '2020-11-13 13:52:44', '2020-11-13 13:52:44');
INSERT INTO `goadmin_menu` VALUES (28, 0, 0, 17, '矿机管理', '', 'fa-bars', '', NULL, '', '2020-11-16 03:59:03', '2020-11-16 12:00:57');
INSERT INTO `goadmin_menu` VALUES (29, 28, 0, 19, '挖矿日志', '', 'fa-bars', '', NULL, '/info/g_machine_log', '2020-11-16 04:00:06', '2020-11-16 04:00:06');
INSERT INTO `goadmin_menu` VALUES (30, 28, 0, 18, '用户矿机', '', 'fa-bars', '', NULL, '/info/g_machine_address', '2020-11-16 04:00:32', '2020-11-16 04:00:32');
INSERT INTO `goadmin_menu` VALUES (31, 28, 0, 17, '矿机列表', '', 'fa-bars', '', NULL, '/info/g_machine', '2020-11-16 04:00:56', '2020-11-16 04:00:56');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_operation_log
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `goadmin_role_menu` VALUES (1, 9, '2020-11-13 09:09:30', '2020-11-13 09:09:30');
INSERT INTO `goadmin_role_menu` VALUES (1, 12, '2020-11-13 09:09:39', '2020-11-13 09:09:39');
INSERT INTO `goadmin_role_menu` VALUES (1, 10, '2020-11-13 09:10:25', '2020-11-13 09:10:25');
INSERT INTO `goadmin_role_menu` VALUES (1, 11, '2020-11-13 09:10:38', '2020-11-13 09:10:38');
INSERT INTO `goadmin_role_menu` VALUES (1, 17, '2020-11-13 10:53:45', '2020-11-13 10:53:45');
INSERT INTO `goadmin_role_menu` VALUES (1, 18, '2020-11-13 11:15:04', '2020-11-13 11:15:04');
INSERT INTO `goadmin_role_menu` VALUES (1, 19, '2020-11-13 11:15:39', '2020-11-13 11:15:39');
INSERT INTO `goadmin_role_menu` VALUES (1, 20, '2020-11-13 11:16:12', '2020-11-13 11:16:12');
INSERT INTO `goadmin_role_menu` VALUES (1, 21, '2020-11-13 11:17:14', '2020-11-13 11:17:14');
INSERT INTO `goadmin_role_menu` VALUES (1, 16, '2020-11-13 11:19:36', '2020-11-13 11:19:36');
INSERT INTO `goadmin_role_menu` VALUES (2, 16, '2020-11-13 11:19:36', '2020-11-13 11:19:36');
INSERT INTO `goadmin_role_menu` VALUES (1, 22, '2020-11-13 13:49:51', '2020-11-13 13:49:51');
INSERT INTO `goadmin_role_menu` VALUES (1, 23, '2020-11-13 13:50:16', '2020-11-13 13:50:16');
INSERT INTO `goadmin_role_menu` VALUES (1, 24, '2020-11-13 13:50:51', '2020-11-13 13:50:51');
INSERT INTO `goadmin_role_menu` VALUES (1, 25, '2020-11-13 13:51:21', '2020-11-13 13:51:21');
INSERT INTO `goadmin_role_menu` VALUES (1, 26, '2020-11-13 13:52:19', '2020-11-13 13:52:19');
INSERT INTO `goadmin_role_menu` VALUES (1, 27, '2020-11-13 13:52:44', '2020-11-13 13:52:44');
INSERT INTO `goadmin_role_menu` VALUES (1, 29, '2020-11-16 04:00:06', '2020-11-16 04:00:06');
INSERT INTO `goadmin_role_menu` VALUES (1, 30, '2020-11-16 04:00:32', '2020-11-16 04:00:32');
INSERT INTO `goadmin_role_menu` VALUES (1, 31, '2020-11-16 04:00:56', '2020-11-16 04:00:56');
INSERT INTO `goadmin_role_menu` VALUES (1, 28, '2020-11-16 04:01:05', '2020-11-16 04:01:05');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_session
-- ----------------------------
INSERT INTO `goadmin_session` VALUES (154, 'eb7625aa-2dbd-4c12-ba07-844ed7416f88', '{\"user_id\":1}', '2020-11-17 03:58:25', '2020-11-17 03:58:25');

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
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `goadmin_site` VALUES (12, 'databases', '{\"default\":{\"host\":\"127.0.0.1\",\"port\":\"3306\",\"user\":\"root\",\"pwd\":\"123456\",\"name\":\"spot_admin\",\"max_idle_con\":50,\"max_open_con\":150,\"driver\":\"mysql\",\"file\":\"\",\"dsn\":\"\"}}', NULL, 1, '2020-04-08 02:35:57', '2020-04-08 02:35:57');
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
INSERT INTO `goadmin_site` VALUES (70, 'app_id', 'mXwoMwZKxqyX', NULL, 1, '2020-11-13 07:57:10', '2020-11-13 07:57:10');
INSERT INTO `goadmin_site` VALUES (71, 'asset_root_path', './public/', NULL, 1, '2020-11-13 07:57:10', '2020-11-13 07:57:10');
INSERT INTO `goadmin_site` VALUES (72, 'allow_del_operation_log', 'false', NULL, 1, '2020-11-13 07:57:10', '2020-11-13 07:57:10');
INSERT INTO `goadmin_site` VALUES (73, 'operation_log_off', 'false', NULL, 1, '2020-11-13 07:57:10', '2020-11-13 07:57:10');
INSERT INTO `goadmin_site` VALUES (74, 'custom_foot_html', '', NULL, 1, '2020-11-13 07:57:10', '2020-11-13 07:57:10');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_users
-- ----------------------------
INSERT INTO `goadmin_users` VALUES (1, 'admin', '$2a$10$F4v7kaz7L2H.d8M.QxGFieWZ4ihDeTjT.vg1A6LWuGRupkny18PuG', '超级管理员', 'robot.gif', 'tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_users` VALUES (2, 'operator', '$2a$10$glAnFEd0xKzbsHvlIq8MOO/2JiS.oSbnwix5BnqBwJ5r4LoQJcFWW', '操作员', '', NULL, '2019-09-10 00:00:00', '2020-11-13 14:59:52');

SET FOREIGN_KEY_CHECKS = 1;
