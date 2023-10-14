-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `demodb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add my task', 7, 'add_mytask'),
(26, 'Can change my task', 7, 'change_mytask'),
(27, 'Can delete my task', 7, 'delete_mytask'),
(28, 'Can view my task', 7, 'view_mytask'),
(29, 'Can add body info', 8, 'add_bodyinfo'),
(30, 'Can change body info', 8, 'change_bodyinfo'),
(31, 'Can delete body info', 8, 'delete_bodyinfo'),
(32, 'Can view body info', 8, 'view_bodyinfo'),
(33, 'Can add daily note', 9, 'add_dailynote'),
(34, 'Can change daily note', 9, 'change_dailynote'),
(35, 'Can delete daily note', 9, 'delete_dailynote'),
(36, 'Can view daily note', 9, 'view_dailynote'),
(37, 'Can add note type', 10, 'add_notetype'),
(38, 'Can change note type', 10, 'change_notetype'),
(39, 'Can delete note type', 10, 'delete_notetype'),
(40, 'Can view note type', 10, 'view_notetype'),
(41, 'Can add exchange rate', 11, 'add_exchangerate'),
(42, 'Can change exchange rate', 11, 'change_exchangerate'),
(43, 'Can delete exchange rate', 11, 'delete_exchangerate'),
(44, 'Can view exchange rate', 11, 'view_exchangerate'),
(45, 'Can add school babe', 12, 'add_schoolbabe'),
(46, 'Can change school babe', 12, 'change_schoolbabe'),
(47, 'Can delete school babe', 12, 'delete_schoolbabe'),
(48, 'Can view school babe', 12, 'view_schoolbabe'),
(49, 'Can add gallery', 13, 'add_gallery'),
(50, 'Can change gallery', 13, 'change_gallery'),
(51, 'Can delete gallery', 13, 'delete_gallery'),
(52, 'Can view gallery', 13, 'view_gallery'),
(53, 'Can add source', 14, 'add_source'),
(54, 'Can change source', 14, 'change_source'),
(55, 'Can delete source', 14, 'delete_source'),
(56, 'Can view source', 14, 'view_source'),
(57, 'Can add thumbnail', 15, 'add_thumbnail'),
(58, 'Can change thumbnail', 15, 'change_thumbnail'),
(59, 'Can delete thumbnail', 15, 'delete_thumbnail'),
(60, 'Can view thumbnail', 15, 'view_thumbnail'),
(61, 'Can add thumbnail dimensions', 16, 'add_thumbnaildimensions'),
(62, 'Can change thumbnail dimensions', 16, 'change_thumbnaildimensions'),
(63, 'Can delete thumbnail dimensions', 16, 'delete_thumbnaildimensions'),
(64, 'Can view thumbnail dimensions', 16, 'view_thumbnaildimensions'),
(65, 'Can add clipboard', 17, 'add_clipboard'),
(66, 'Can change clipboard', 17, 'change_clipboard'),
(67, 'Can delete clipboard', 17, 'delete_clipboard'),
(68, 'Can view clipboard', 17, 'view_clipboard'),
(69, 'Can add clipboard item', 18, 'add_clipboarditem'),
(70, 'Can change clipboard item', 18, 'change_clipboarditem'),
(71, 'Can delete clipboard item', 18, 'delete_clipboarditem'),
(72, 'Can view clipboard item', 18, 'view_clipboarditem'),
(73, 'Can add file', 19, 'add_file'),
(74, 'Can change file', 19, 'change_file'),
(75, 'Can delete file', 19, 'delete_file'),
(76, 'Can view file', 19, 'view_file'),
(77, 'Can add Folder', 20, 'add_folder'),
(78, 'Can change Folder', 20, 'change_folder'),
(79, 'Can delete Folder', 20, 'delete_folder'),
(80, 'Can view Folder', 20, 'view_folder'),
(81, 'Can use directory listing', 20, 'can_use_directory_listing'),
(82, 'Can add folder permission', 21, 'add_folderpermission'),
(83, 'Can change folder permission', 21, 'change_folderpermission'),
(84, 'Can delete folder permission', 21, 'delete_folderpermission'),
(85, 'Can view folder permission', 21, 'view_folderpermission'),
(86, 'Can add image', 22, 'add_image'),
(87, 'Can change image', 22, 'change_image'),
(88, 'Can delete image', 22, 'delete_image'),
(89, 'Can view image', 22, 'view_image'),
(90, 'Can add thumbnail option', 23, 'add_thumbnailoption'),
(91, 'Can change thumbnail option', 23, 'change_thumbnailoption'),
(92, 'Can delete thumbnail option', 23, 'delete_thumbnailoption'),
(93, 'Can view thumbnail option', 23, 'view_thumbnailoption'),
(94, 'Can add product image', 24, 'add_productimage'),
(95, 'Can change product image', 24, 'change_productimage'),
(96, 'Can delete product image', 24, 'delete_productimage'),
(97, 'Can view product image', 24, 'view_productimage'),
(98, 'Can add food review', 25, 'add_foodreview'),
(99, 'Can change food review', 25, 'change_foodreview'),
(100, 'Can delete food review', 25, 'delete_foodreview'),
(101, 'Can view food review', 25, 'view_foodreview'),
(102, 'Can add diary', 26, 'add_diary'),
(103, 'Can change diary', 26, 'change_diary'),
(104, 'Can delete diary', 26, 'delete_diary'),
(105, 'Can view diary', 26, 'view_diary'),
(106, 'Can add photo', 27, 'add_photo'),
(107, 'Can change photo', 27, 'change_photo'),
(108, 'Can delete photo', 27, 'delete_photo'),
(109, 'Can view photo', 27, 'view_photo');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$dhitGMmTf8tnMh2i8l69lg$IJk+n49YkciU+XOgojvkMF7iDfWvPuVUnDUPULh1xoQ=', '2023-10-13 01:12:13.879099', 1, 'admin', '', '', 'skynet.tw@gmail.com', 1, 1, '2023-08-22 03:25:13.179756'),
(2, 'pbkdf2_sha256$600000$HqyxHkNjkhLTLqgbVezNgK$l7PosnrieWDiXMiPgdyHHSnbFPlMgEBZ6u1/M9AWda4=', '2023-10-13 01:12:35.161981', 1, 'minhuang', '敏煌', '何', 'minhuang@nkust.edu.tw', 1, 1, '2023-08-22 03:25:00.000000'),
(3, 'pbkdf2_sha256$600000$S3qOEW0LbXzvA7BpHtEkkp$Hptynhnm3+1d/WslhOtdqFOM1EX7BwbQNz8V207J2Vs=', '2023-09-14 05:31:51.067458', 0, 'st01', '大明', '林', 'st01@example.edu.tw', 1, 1, '2023-09-14 05:25:00.000000'),
(4, 'pbkdf2_sha256$600000$0Fu7Sknf40ry7JVkNEAsq4$kcWYJ9g+XuCEWOdTdsiBK3UoL9I60zGYaK+xve58lgk=', NULL, 0, 'st02', '小華', '陳', 'st02@example.edu.tw', 1, 1, '2023-09-14 05:25:00.000000'),
(5, 'pbkdf2_sha256$600000$AnQTTNpyefFiNvwTcwqoxh$k7iN1JQDEviW6AaK+5YHiPZWAOjsFRTBZn5o7dBgPtI=', NULL, 0, 'st03', '小姍', '王', 'st03@example.edu.tw', 1, 1, '2023-09-14 05:25:00.000000');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-25 00:28:45.107142', '2', '到全聯買麥片', 1, '[{\"added\": {}}]', 7, 2),
(2, '2023-08-25 07:48:30.610726', '3', '到全家繳信用卡帳單', 1, '[{\"added\": {}}]', 7, 2),
(3, '2023-08-25 07:48:43.726737', '4', '和何敏煌老師約 meeting 時間', 1, '[{\"added\": {}}]', 7, 2),
(4, '2023-08-25 07:49:00.596597', '5', '到菜市場買菜', 1, '[{\"added\": {}}]', 7, 2),
(5, '2023-08-30 12:54:41.308430', '4', '和何敏煌老師約 meeting 時間', 2, '[{\"changed\": {\"fields\": [\"Done\"]}}]', 7, 2),
(6, '2023-08-30 12:54:45.387004', '5', '到菜市場買菜', 2, '[{\"changed\": {\"fields\": [\"Done\"]}}]', 7, 2),
(7, '2023-08-31 02:39:42.589760', '1', '何漢民', 1, '[{\"added\": {}}]', 8, 2),
(8, '2023-08-31 02:39:54.994448', '2', '王一峰', 1, '[{\"added\": {}}]', 8, 2),
(9, '2023-08-31 02:40:11.218947', '3', '許昱山', 1, '[{\"added\": {}}]', 8, 2),
(10, '2023-08-31 02:40:31.521317', '4', '王羽慧', 1, '[{\"added\": {}}]', 8, 2),
(11, '2023-08-31 02:40:57.741366', '5', '曾幼馨', 1, '[{\"added\": {}}]', 8, 2),
(12, '2023-08-31 02:41:32.737723', '6', '張家銘', 1, '[{\"added\": {}}]', 8, 2),
(13, '2023-08-31 02:41:53.025769', '7', '李佳玉', 1, '[{\"added\": {}}]', 8, 2),
(14, '2023-08-31 02:42:18.385718', '8', '劉安邦', 1, '[{\"added\": {}}]', 8, 2),
(15, '2023-09-01 07:45:23.719878', '8', '劉安邦', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 8, 2),
(16, '2023-09-01 07:45:29.793306', '6', '張家銘', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 8, 2),
(17, '2023-09-01 07:45:35.143195', '3', '許昱山', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 8, 2),
(18, '2023-09-01 07:45:38.095441', '3', '許昱山', 2, '[]', 8, 2),
(19, '2023-09-01 07:45:43.109645', '2', '王一峰', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 8, 2),
(20, '2023-09-01 07:45:47.361037', '1', '何漢民', 2, '[{\"changed\": {\"fields\": [\"Gender\"]}}]', 8, 2),
(21, '2023-09-04 01:59:28.346489', '1', '麥片', 1, '[{\"added\": {}}]', 9, 2),
(22, '2023-09-04 02:00:14.998513', '2', '發票中獎', 1, '[{\"added\": {}}]', 9, 2),
(23, '2023-09-04 02:59:44.137514', '3', 'e-tag檢修', 1, '[{\"added\": {}}]', 9, 2),
(24, '2023-09-04 03:05:47.161418', '4', '午餐', 1, '[{\"added\": {}}]', 9, 2),
(25, '2023-09-04 03:06:43.496517', '5', '晚餐', 1, '[{\"added\": {}}]', 9, 2),
(26, '2023-09-04 03:16:37.893535', '5', '晚餐', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(27, '2023-09-04 03:18:05.344022', '4', '午餐', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(28, '2023-09-04 03:18:10.753584', '3', 'e-tag檢修', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(29, '2023-09-04 03:18:17.629893', '2', '發票中獎', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(30, '2023-09-04 03:18:26.689837', '1', '麥片', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(31, '2023-09-05 02:53:04.901898', '1', '一般記事', 1, '[{\"added\": {}}]', 10, 2),
(32, '2023-09-05 02:53:10.661375', '2', '支出', 1, '[{\"added\": {}}]', 10, 2),
(33, '2023-09-05 02:53:59.453646', '3', '收入', 1, '[{\"added\": {}}]', 10, 2),
(34, '2023-09-05 02:55:20.990123', '5', '晚餐', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(35, '2023-09-05 02:55:27.194810', '4', '午餐', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(36, '2023-09-05 02:55:31.290054', '3', 'e-tag檢修', 2, '[]', 9, 2),
(37, '2023-09-05 02:55:36.678698', '2', '發票中獎', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(38, '2023-09-05 02:55:43.051632', '1', '麥片', 2, '[{\"changed\": {\"fields\": [\"Note type\"]}}]', 9, 2),
(39, '2023-09-05 02:57:56.665172', '4', '消費-食', 1, '[{\"added\": {}}]', 10, 2),
(40, '2023-09-05 02:58:33.866253', '5', '消費-衣', 1, '[{\"added\": {}}]', 10, 2),
(41, '2023-09-05 02:58:59.657673', '2', '支出', 3, '', 10, 2),
(42, '2023-09-05 03:01:22.056157', '6', '晚餐', 1, '[{\"added\": {}}]', 9, 2),
(43, '2023-09-05 03:02:04.386383', '7', '麥片', 1, '[{\"added\": {}}]', 9, 2),
(44, '2023-09-05 03:02:34.900400', '8', '衣服', 1, '[{\"added\": {}}]', 9, 2),
(45, '2023-09-06 03:49:22.085788', '24', '修剪花圃', 3, '', 9, 2),
(46, '2023-09-06 03:49:22.094238', '23', '汽車保養', 3, '', 9, 2),
(47, '2023-09-06 03:49:22.104564', '22', '父親節聚餐訂位', 3, '', 9, 2),
(48, '2023-09-06 03:49:22.111679', '21', '午餐', 3, '', 9, 2),
(49, '2023-09-06 03:49:22.119673', '20', '檜意生活村紀念品', 3, '', 9, 2),
(50, '2023-09-06 03:49:22.131210', '19', '嘉義住宿', 3, '', 9, 2),
(51, '2023-09-06 03:49:22.138207', '18', '嘉義晚餐', 3, '', 9, 2),
(52, '2023-09-06 03:49:22.145213', '17', '阿里山遊樂區門票', 3, '', 9, 2),
(53, '2023-09-11 01:34:54.818294', '11', '第4項任務', 2, '[{\"changed\": {\"fields\": [\"Done\"]}}]', 7, 2),
(54, '2023-09-11 01:34:58.348887', '7', '另外一種新增方法', 2, '[{\"changed\": {\"fields\": [\"Done\"]}}]', 7, 2),
(55, '2023-09-14 02:23:09.210529', '2', 'minhuang', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Last login\"]}}]', 4, 2),
(56, '2023-09-14 05:29:23.489173', '4', 'st02', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 2),
(57, '2023-09-14 05:31:31.658226', '3', 'st01', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 2),
(58, '2023-09-14 05:32:25.395323', '5', 'st03', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 2),
(59, '2023-09-19 03:49:27.389709', '1', '美元', 1, '[{\"added\": {}}]', 11, 2),
(60, '2023-09-19 03:49:40.649766', '2', '港幣', 1, '[{\"added\": {}}]', 11, 2),
(61, '2023-09-19 03:49:55.786621', '3', '英鎊', 1, '[{\"added\": {}}]', 11, 2),
(62, '2023-09-19 03:50:07.532240', '4', '日圓', 1, '[{\"added\": {}}]', 11, 2),
(63, '2023-09-19 03:50:26.450843', '5', '韓元', 1, '[{\"added\": {}}]', 11, 2),
(64, '2023-09-19 03:50:40.433398', '6', '印尼幣', 1, '[{\"added\": {}}]', 11, 2),
(65, '2023-09-19 03:50:56.569982', '7', '越南盾', 1, '[{\"added\": {}}]', 11, 2),
(66, '2023-09-19 03:51:05.940558', '8', '人民幣', 1, '[{\"added\": {}}]', 11, 2),
(67, '2023-09-19 03:51:14.074394', '9', '馬來幣', 1, '[{\"added\": {}}]', 11, 2),
(68, '2023-09-19 03:51:21.388363', '1', '美金', 2, '[{\"changed\": {\"fields\": [\"\\u8ca8\\u5e63\\u540d\\u7a31\"]}}]', 11, 2),
(69, '2023-09-21 06:39:44.080440', '1', '王小美', 1, '[{\"added\": {}}]', 12, 2),
(70, '2023-09-21 14:01:42.580175', '1', '王小美', 2, '[{\"changed\": {\"fields\": [\"\\u76f8\\u7247\"]}}]', 12, 2),
(71, '2023-09-21 14:01:57.449213', '2', '曾小惠', 1, '[{\"added\": {}}]', 12, 2),
(72, '2023-09-21 14:02:10.022711', '3', '王小花', 1, '[{\"added\": {}}]', 12, 2),
(73, '2023-09-21 14:02:42.709107', '4', '于小婕', 1, '[{\"added\": {}}]', 12, 2),
(74, '2023-09-21 14:02:55.707558', '5', '張小玉', 1, '[{\"added\": {}}]', 12, 2),
(75, '2023-09-21 14:03:07.694232', '6', '李小萍', 1, '[{\"added\": {}}]', 12, 2),
(76, '2023-09-21 14:03:27.349579', '7', '黃小英', 1, '[{\"added\": {}}]', 12, 2),
(77, '2023-09-21 14:03:57.094195', '8', '何小珮', 1, '[{\"added\": {}}]', 12, 2),
(78, '2023-09-21 14:04:13.150938', '9', '朱小羽', 1, '[{\"added\": {}}]', 12, 2),
(79, '2023-09-21 14:04:34.124568', '10', '毛小珍', 1, '[{\"added\": {}}]', 12, 2),
(80, '2023-09-21 14:04:45.493044', '11', '徐小風', 1, '[{\"added\": {}}]', 12, 2),
(81, '2023-09-21 14:05:29.765817', '12', '唐小寧', 1, '[{\"added\": {}}]', 12, 2),
(82, '2023-09-30 14:56:03.153190', '2', '日落風景', 1, '[{\"added\": {}}]', 13, 2),
(83, '2023-09-30 14:56:15.300764', '3', '街景', 1, '[{\"added\": {}}]', 13, 2),
(84, '2023-09-30 14:56:25.431083', '4', '河邊風光', 1, '[{\"added\": {}}]', 13, 2),
(85, '2023-09-30 14:56:39.048333', '5', '河邊的夕陽', 1, '[{\"added\": {}}]', 13, 2),
(86, '2023-09-30 15:15:45.382788', '6', '天空與街景', 1, '[{\"added\": {}}]', 13, 2),
(87, '2023-09-30 15:16:53.051139', '7', '古色古香的建築', 1, '[{\"added\": {}}]', 13, 2),
(88, '2023-09-30 15:21:53.468720', '3', '街景', 3, '', 13, 2),
(89, '2023-09-30 15:21:53.474884', '2', '日落風景', 3, '', 13, 2),
(90, '2023-10-01 02:42:34.971560', '8', '鄉下一景', 1, '[{\"added\": {}}]', 13, 2),
(91, '2023-10-01 07:50:53.840900', '1', 't200x200 -- 200 x 200', 1, '[{\"added\": {}}]', 23, 2),
(92, '2023-10-01 07:51:56.515344', '2', 't300x300 -- 300 x 300', 1, '[{\"added\": {}}]', 23, 2),
(93, '2023-10-01 12:25:30.679286', '1', '京都旅遊行程', 1, '[{\"added\": {}}]', 24, 2),
(94, '2023-10-01 13:29:49.382169', '2', '富士山腳輕行旅三日', 1, '[{\"added\": {}}]', 24, 2),
(95, '2023-10-01 13:30:00.605387', '1', '京都旅遊行程', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 24, 2),
(96, '2023-10-10 10:04:53.538101', '1', '樂業街好吃的牛肉麵', 2, '[{\"changed\": {\"fields\": [\"\\u7167\\u7247\"]}}]', 25, 2),
(97, '2023-10-10 10:05:28.229227', '2', '好吃的 pizza', 2, '[{\"changed\": {\"fields\": [\"\\u7167\\u7247\"]}}]', 25, 2),
(98, '2023-10-11 00:36:46.865192', '2', '2023-10-11', 1, '[{\"added\": {}}]', 26, 2),
(99, '2023-10-11 00:37:29.113906', '1', '天氣晴朗', 1, '[{\"added\": {}}]', 27, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'easy_thumbnails', 'source'),
(15, 'easy_thumbnails', 'thumbnail'),
(16, 'easy_thumbnails', 'thumbnaildimensions'),
(17, 'filer', 'clipboard'),
(18, 'filer', 'clipboarditem'),
(19, 'filer', 'file'),
(20, 'filer', 'folder'),
(21, 'filer', 'folderpermission'),
(22, 'filer', 'image'),
(23, 'filer', 'thumbnailoption'),
(26, 'ftest', 'diary'),
(25, 'ftest', 'foodreview'),
(27, 'ftest', 'photo'),
(8, 'mysite', 'bodyinfo'),
(9, 'mysite', 'dailynote'),
(11, 'mysite', 'exchangerate'),
(13, 'mysite', 'gallery'),
(7, 'mysite', 'mytask'),
(10, 'mysite', 'notetype'),
(24, 'mysite', 'productimage'),
(12, 'polls', 'schoolbabe'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-21 09:27:54.504259'),
(2, 'auth', '0001_initial', '2023-08-21 09:27:55.645484'),
(3, 'admin', '0001_initial', '2023-08-21 09:27:56.131039'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-21 09:27:56.149668'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-21 09:27:56.165568'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-21 09:27:56.369798'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-21 09:27:56.511859'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-21 09:27:56.567685'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-21 09:27:56.580684'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-21 09:27:56.721121'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-21 09:27:56.729657'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-21 09:27:56.742646'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-21 09:27:56.928770'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-21 09:27:57.137480'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-21 09:27:57.174967'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-21 09:27:57.190973'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-21 09:27:57.330845'),
(18, 'sessions', '0001_initial', '2023-08-21 09:27:57.392989'),
(19, 'mysite', '0001_initial', '2023-08-25 00:22:14.231362'),
(20, 'mysite', '0002_bodyinfo', '2023-08-31 02:36:34.253297'),
(21, 'mysite', '0003_bodyinfo_gender', '2023-09-01 07:35:34.424703'),
(22, 'mysite', '0004_dailynote', '2023-09-04 01:51:47.942537'),
(23, 'mysite', '0005_notetype_alter_dailynote_note_type', '2023-09-11 09:12:04.519110'),
(25, 'mysite', '0006_mytask_deleted', '2023-09-11 09:22:54.922240'),
(26, 'mysite', '0007_exchangerate_alter_bodyinfo_gender_and_more', '2023-09-19 03:48:38.957478'),
(27, 'polls', '0001_initial', '2023-09-20 08:49:08.202168'),
(28, 'mysite', '0008_gallery', '2023-09-30 14:49:19.455195'),
(29, 'mysite', '0009_gallery_name', '2023-09-30 14:55:08.973052'),
(30, 'easy_thumbnails', '0001_initial', '2023-10-01 07:40:16.001808'),
(31, 'easy_thumbnails', '0002_thumbnaildimensions', '2023-10-01 07:40:16.188600'),
(32, 'filer', '0001_initial', '2023-10-01 07:40:18.663813'),
(33, 'filer', '0002_auto_20150606_2003', '2023-10-01 07:40:18.694035'),
(34, 'filer', '0003_thumbnailoption', '2023-10-01 07:40:18.761123'),
(35, 'filer', '0004_auto_20160328_1434', '2023-10-01 07:40:19.025688'),
(36, 'filer', '0005_auto_20160623_1425', '2023-10-01 07:40:19.097431'),
(37, 'filer', '0006_auto_20160623_1627', '2023-10-01 07:40:19.338414'),
(38, 'filer', '0007_auto_20161016_1055', '2023-10-01 07:40:19.362415'),
(39, 'filer', '0008_auto_20171117_1313', '2023-10-01 07:40:19.387209'),
(40, 'filer', '0009_auto_20171220_1635', '2023-10-01 07:40:19.519296'),
(41, 'filer', '0010_auto_20180414_2058', '2023-10-01 07:40:19.543681'),
(42, 'filer', '0011_auto_20190418_0137', '2023-10-01 07:40:19.975344'),
(43, 'filer', '0012_file_mime_type', '2023-10-01 07:40:20.115312'),
(44, 'filer', '0013_image_width_height_to_float', '2023-10-01 07:40:20.339285'),
(45, 'filer', '0014_folder_permission_choices', '2023-10-01 07:40:20.395622'),
(46, 'filer', '0015_alter_file_owner_alter_file_polymorphic_ctype_and_more', '2023-10-01 07:40:20.438618'),
(47, 'filer', '0016_alter_folder_index_together_remove_folder_level_and_more', '2023-10-01 07:40:21.098099'),
(48, 'filer', '0017_image__transparent', '2023-10-01 07:40:21.148573'),
(49, 'mysite', '0010_productimage', '2023-10-01 12:24:11.996019'),
(50, 'ftest', '0001_initial', '2023-10-10 03:08:54.091913'),
(51, 'ftest', '0002_diary_alter_foodreview_score_photo', '2023-10-11 00:33:21.076464');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8vs42ic5w2eexqgmmxh4z7okvw0q04fi', '.eJxVjEEOwiAQRe_C2pCBaQO4dO8ZmhkGpGpoUtpV490NSRe6_e-9f6iJ9q1Me0vrNIu6KqsuvxtTfKXagTypPhYdl7qtM-uu6JM2fV8kvW-n-3dQqJVe28hG3MjZ44hM7GOOo3dJ0AJAYASUkIkFGAYDGJDImOwG1zNUny_7ajfh:1qYLK7:3XZx0FPM1EEEKxB36MTMbvRdMcbc-NlZRrukTLhCX-Q', '2023-09-05 06:57:07.347093'),
('ef0bvhgjpi4cg03r0vp2xnovng3vaea4', '.eJxVjEEOwiAQRe_C2pCBaQO4dO8ZmhkGpGpoUtpV490NSRe6_e-9f6iJ9q1Me0vrNIu6KqsuvxtTfKXagTypPhYdl7qtM-uu6JM2fV8kvW-n-3dQqJVe28hG3MjZ44hM7GOOo3dJ0AJAYASUkIkFGAYDGJDImOwG1zNUny_7ajfh:1qr6jD:T_VD437XCnrnqZhZNRhawM4ONh_3Nj1TsoewUIsxmS0', '2023-10-27 01:12:35.167976');

-- --------------------------------------------------------

--
-- 資料表結構 `easy_thumbnails_source`
--

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `easy_thumbnails_source`
--

INSERT INTO `easy_thumbnails_source` (`id`, `storage_hash`, `name`, `modified`) VALUES
(1, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6/p13.png', '2023-10-01 13:29:59.550050'),
(2, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314/p11_vifux5k.png', '2023-10-01 12:07:03.528027'),
(3, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/3b/da/3bdae985-d2f2-4f93-b7ce-7a0a03ae98b7/p13.png', '2023-10-01 12:08:02.169950'),
(4, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6/p11.png', '2023-10-01 14:10:42.214048');

-- --------------------------------------------------------

--
-- 資料表結構 `easy_thumbnails_thumbnail`
--

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `easy_thumbnails_thumbnail`
--

INSERT INTO `easy_thumbnails_thumbnail` (`id`, `storage_hash`, `name`, `modified`, `source_id`) VALUES
(1, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6\\p13.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-10-01 07:52:17.265982', 1),
(2, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6\\p13.png__40x40_q85_crop_subsampling-2.jpg', '2023-10-01 12:06:49.999105', 1),
(3, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314\\p11_vifux5k.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-10-01 07:52:36.079042', 2),
(4, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314\\p11_vifux5k.png__40x40_q85_crop_subsampling-2.jpg', '2023-10-01 12:07:20.748837', 2),
(5, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314\\p11_vifux5k.png__160x160_q85_crop_subsampling-2.jpg', '2023-10-01 12:06:48.621121', 2),
(6, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6\\p13.png__160x160_q85_crop_subsampling-2.jpg', '2023-10-01 12:06:48.655124', 1),
(7, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314\\p11_vifux5k.png__210x135_q85_subsampling-2_upscale.jpg', '2023-10-01 12:07:03.617338', 2),
(8, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314\\p11_vifux5k.png__420x270_q85_subsampling-2_upscale.jpg', '2023-10-01 12:07:03.700391', 2),
(9, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/da/3bdae985-d2f2-4f93-b7ce-7a0a03ae98b7\\p13.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-10-01 12:08:01.986950', 3),
(10, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/da/3bdae985-d2f2-4f93-b7ce-7a0a03ae98b7\\p13.png__40x40_q85_crop_subsampling-2.jpg', '2023-10-01 12:08:02.183951', 3),
(11, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__180x180_q85_crop_subsampling-2_upscale.jpg', '2023-10-01 12:08:11.257314', 4),
(12, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__40x40_q85_crop_subsampling-2.jpg', '2023-10-01 13:28:13.320998', 4),
(13, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__80x80_q85_crop_subsampling-2.jpg', '2023-10-01 13:28:14.359263', 4),
(14, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__160x160_q85_crop_subsampling-2.jpg', '2023-10-01 12:25:32.532451', 4),
(15, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6\\p13.png__80x80_q85_crop_subsampling-2.jpg', '2023-10-01 13:29:59.571200', 1),
(16, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__300x300_q85_subsampling-2.jpg', '2023-10-01 14:08:05.556238', 4),
(17, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__300x300_q85_crop_subsampling-2.jpg', '2023-10-01 14:08:24.184256', 4),
(18, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__200x200_q85_crop_subsampling-2.jpg', '2023-10-01 14:09:46.985399', 4),
(19, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6\\p11.png__100x100_q85_crop_subsampling-2.jpg', '2023-10-01 14:10:42.221122', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- 資料表結構 `filer_clipboard`
--

CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `filer_clipboard`
--

INSERT INTO `filer_clipboard` (`id`, `user_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `filer_clipboarditem`
--

CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `filer_file`
--

CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `filer_file`
--

INSERT INTO `filer_file` (`id`, `file`, `_file_size`, `sha1`, `has_all_mandatory_data`, `original_filename`, `name`, `description`, `uploaded_at`, `modified_at`, `is_public`, `folder_id`, `owner_id`, `polymorphic_ctype_id`, `mime_type`) VALUES
(1, 'filer_public/b1/1e/b11e9846-9f0e-4605-a38b-36cbfd6c18a6/p13.png', 629087, 'c50f70f1f584f204bd2c832be58d59762b7f9995', 0, 'p13.png', '', NULL, '2023-10-01 07:52:16.807149', '2023-10-01 07:52:16.807149', 1, NULL, 2, 22, 'image/png'),
(2, 'filer_public/b8/6a/b86adae6-b1a6-407f-9ab5-ace23b7f2314/p11_vifux5k.png', 578145, '35264f1449c1f61063087b29de5f90d04b40ab8c', 0, 'p11_viFuX5k.png', '', NULL, '2023-10-01 07:52:36.029484', '2023-10-01 07:52:36.029484', 1, NULL, 2, 22, 'image/png'),
(3, 'filer_public/3b/da/3bdae985-d2f2-4f93-b7ce-7a0a03ae98b7/p13.png', 629087, 'c50f70f1f584f204bd2c832be58d59762b7f9995', 0, 'p13.png', '', NULL, '2023-10-01 12:08:01.927954', '2023-10-01 12:08:01.927954', 1, NULL, 2, 22, 'image/png'),
(4, 'filer_public/6d/f1/6df162f2-67a8-4770-8a5e-23e3622179d6/p11.png', 578145, '35264f1449c1f61063087b29de5f90d04b40ab8c', 0, 'p11.png', '', NULL, '2023-10-01 12:08:11.212316', '2023-10-01 12:08:11.212316', 1, NULL, 2, 22, 'image/png');

-- --------------------------------------------------------

--
-- 資料表結構 `filer_folder`
--

CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `filer_folderpermission`
--

CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `filer_image`
--

CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  `_transparent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `filer_image`
--

INSERT INTO `filer_image` (`file_ptr_id`, `_height`, `_width`, `date_taken`, `default_alt_text`, `default_caption`, `author`, `must_always_publish_author_credit`, `must_always_publish_copyright`, `subject_location`, `_transparent`) VALUES
(1, 512, 800, '2023-10-01 07:52:16.760045', NULL, NULL, NULL, 0, 0, '', 0),
(2, 512, 800, '2023-10-01 07:52:36.020480', NULL, NULL, NULL, 0, 0, '', 0),
(3, 512, 800, '2023-10-01 12:08:01.911953', NULL, NULL, NULL, 0, 0, '', 0),
(4, 512, 800, '2023-10-01 12:08:11.204317', NULL, NULL, NULL, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `filer_thumbnailoption`
--

CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `filer_thumbnailoption`
--

INSERT INTO `filer_thumbnailoption` (`id`, `name`, `width`, `height`, `crop`, `upscale`) VALUES
(1, 't200x200', 200, 200, 1, 1),
(2, 't300x300', 300, 300, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `ftest_diary`
--

CREATE TABLE `ftest_diary` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `content` longtext NOT NULL,
  `rec_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `ftest_diary`
--

INSERT INTO `ftest_diary` (`id`, `date`, `content`, `rec_date`, `user_id`) VALUES
(3, '2023-10-11', '測試一下(modified)', '2023-10-13 00:49:54.475001', 2),
(23, '2023-10-11', 'fff', '2023-10-13 01:12:20.805999', 1),
(25, '2023-10-13', '今天請工人來維修太陽能熱水器，\r\n因為水管漏水，所以整組換掉，\r\n總共花了3500元。', '2023-10-13 01:51:07.903712', 2),
(26, '2023-10-13', '可愛的小兔子', '2023-10-13 02:54:11.854550', 2),
(27, '2023-10-01', 'AI 美少女', '2023-10-13 03:00:27.955731', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `ftest_foodreview`
--

CREATE TABLE `ftest_foodreview` (
  `id` bigint(20) NOT NULL,
  `food` varchar(20) NOT NULL,
  `food_type` varchar(5) NOT NULL,
  `score` int(11) NOT NULL,
  `review` longtext NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `ftest_foodreview`
--

INSERT INTO `ftest_foodreview` (`id`, `food`, `food_type`, `score`, `review`, `photo`) VALUES
(1, '樂業街好吃的牛肉麵', '晚餐', 5, '無', 'foodreview/beefnoodle.jpg'),
(2, '好吃的 pizza', '宵夜', 5, '今年吃到 \r\n最好吃的', 'foodreview/pizza.jpg'),
(3, '小麥麥漢堡', '午餐', 5, '無', 'foodreview/burger.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `ftest_photo`
--

CREATE TABLE `ftest_photo` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `memo` varchar(20) NOT NULL,
  `diary_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `ftest_photo`
--

INSERT INTO `ftest_photo` (`id`, `photo`, `memo`, `diary_id`) VALUES
(5, 'diary/20231009_075155.jpg', '特寫', 26),
(6, 'diary/20231009_075120.jpg', '全身照', 26),
(7, 'diary/20231006_100824.jpg', '太陽能熱水器', 25),
(9, 'diary/20231006_223708.jpg', '再來一張', 26),
(10, 'diary/01.png', '1', 27),
(11, 'diary/02.png', '2', 27),
(13, 'diary/11.png', '11', 27),
(14, 'diary/10.png', '10', 27),
(15, 'diary/07.png', '7', 27),
(16, 'diary/08.png', '8', 27),
(18, 'diary/05.png', '5', 3),
(19, 'diary/09.png', '9', 3),
(20, 'diary/20231006_100848.jpg', '漏水的地方', 25);

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_bodyinfo`
--

CREATE TABLE `mysite_bodyinfo` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_bodyinfo`
--

INSERT INTO `mysite_bodyinfo` (`id`, `name`, `height`, `weight`, `gender`) VALUES
(1, '何漢民', 180, 78, 1),
(2, '王一峰', 168, 65, 1),
(3, '許昱山', 198, 80, 1),
(4, '王羽慧', 165, 45, 0),
(5, '曾幼馨', 159, 62, 0),
(6, '張家銘', 173, 80, 1),
(7, '李佳玉', 153, 40, 0),
(8, '劉安邦', 180, 73, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_dailynote`
--

CREATE TABLE `mysite_dailynote` (
  `id` bigint(20) NOT NULL,
  `note` varchar(20) NOT NULL,
  `description` longtext,
  `note_type_id` bigint(20) NOT NULL,
  `money` int(11) NOT NULL,
  `note_date` date NOT NULL,
  `rec_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_dailynote`
--

INSERT INTO `mysite_dailynote` (`id`, `note`, `description`, `note_type_id`, `money`, `note_date`, `rec_time`) VALUES
(2, '發票中獎', '六獎，今天到7-11兌換成現金', 3, 200, '2023-09-04', '2023-09-04 02:00:14.996511'),
(3, 'e-tag檢修', '今天收到遠通電收的通知，提醒需要在9月20日前，到他們的據點檢修車子的 e-tag', 1, 0, '2023-08-08', '2023-09-04 02:59:44.135511'),
(6, '晚餐', '漢來蔬食', 4, 899, '2023-09-04', '2023-09-05 03:01:22.054742'),
(7, '麥片', '全聯', 4, 189, '2023-09-04', '2023-09-05 03:02:04.385563'),
(8, '衣服', '南紡 NET', 5, 1200, '2023-09-03', '2023-09-05 03:02:34.897827'),
(9, '阿里山遊樂區門票', NULL, 6, 600, '2023-08-04', '2023-09-06 03:08:08.565273'),
(10, '嘉義晚餐', NULL, 4, 2200, '2023-08-04', '2023-09-06 03:08:08.574278'),
(11, '嘉義住宿', NULL, 7, 8000, '2023-08-04', '2023-09-06 03:08:08.588273'),
(12, '檜意生活村紀念品', NULL, 6, 1500, '2023-08-05', '2023-09-06 03:08:08.594276'),
(13, '午餐', NULL, 4, 850, '2023-08-05', '2023-09-06 03:08:08.600273'),
(14, '父親節聚餐訂位', NULL, 1, 0, '2023-08-06', '2023-09-06 03:08:08.606274'),
(15, '汽車保養', NULL, 7, 5920, '2023-08-06', '2023-09-06 03:08:08.613274'),
(16, '修剪花圃', NULL, 1, 0, '2023-07-09', '2023-09-06 03:08:08.620276');

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_exchangerate`
--

CREATE TABLE `mysite_exchangerate` (
  `id` bigint(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_exchangerate`
--

INSERT INTO `mysite_exchangerate` (`id`, `currency`, `rate`) VALUES
(1, '美金', 31.6),
(2, '港幣', 3.937),
(3, '英鎊', 38.42),
(4, '日圓', 0.2073),
(5, '韓元', 0.02245),
(6, '印尼幣', 0.00173),
(7, '越南盾', 0.00109),
(8, '人民幣', 4.287),
(9, '馬來幣', 5.777);

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_gallery`
--

CREATE TABLE `mysite_gallery` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_gallery`
--

INSERT INTO `mysite_gallery` (`id`, `photo`, `name`) VALUES
(4, 'gallery/p13.png', '河邊風光'),
(5, 'gallery/p14.png', '河邊的夕陽'),
(6, 'gallery/p08.png', '天空與街景'),
(7, 'gallery/p12.png', '古色古香的建築'),
(8, 'gallery/p07.png', '鄉下一景');

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_mytask`
--

CREATE TABLE `mysite_mytask` (
  `id` bigint(20) NOT NULL,
  `item` varchar(200) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_mytask`
--

INSERT INTO `mysite_mytask` (`id`, `item`, `done`, `deleted`) VALUES
(2, '到頂好買麥片', 0, 0),
(6, '9月21日要去驗車', 1, 0),
(7, '另外一種新增方法', 1, 1),
(9, '第2項任務', 0, 1),
(10, '第3項任務', 0, 1),
(11, '第4項任務', 1, 0),
(12, '第5項任務', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_notetype`
--

CREATE TABLE `mysite_notetype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_notetype`
--

INSERT INTO `mysite_notetype` (`id`, `name`) VALUES
(1, '一般記事'),
(3, '收入'),
(4, '消費-食'),
(5, '消費-衣'),
(6, '消費-樂'),
(7, '消費-行');

-- --------------------------------------------------------

--
-- 資料表結構 `mysite_productimage`
--

CREATE TABLE `mysite_productimage` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `mysite_productimage`
--

INSERT INTO `mysite_productimage` (`id`, `name`, `image_id`) VALUES
(1, '京都旅遊行程', 1),
(2, '富士山腳輕行旅三日', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `polls_schoolbabe`
--

CREATE TABLE `polls_schoolbabe` (
  `id` bigint(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `vote` int(10) UNSIGNED NOT NULL
) ;

--
-- 傾印資料表的資料 `polls_schoolbabe`
--

INSERT INTO `polls_schoolbabe` (`id`, `name`, `photo`, `vote`) VALUES
(1, '王小美', '01.png', 6),
(2, '曾小惠', '02.png', 5),
(3, '王小花', '03.png', 2),
(4, '于小婕', '04.png', 5),
(5, '張小玉', '05.png', 2),
(6, '李小萍', '06.png', 8),
(7, '黃小英', '07.png', 1),
(8, '何小珮', '08.png', 3),
(9, '朱小羽', '09.png', 2),
(10, '毛小珍', '10.png', 4),
(11, '徐小風', '11.png', 13),
(12, '唐小寧', '12.png', 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_name_5fe0edc6` (`name`);

--
-- 資料表索引 `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`);

--
-- 資料表索引 `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- 資料表索引 `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  ADD KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`);

--
-- 資料表索引 `filer_file`
--
ALTER TABLE `filer_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  ADD KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`);

--
-- 資料表索引 `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  ADD KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`);

--
-- 資料表索引 `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  ADD KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `filer_image`
--
ALTER TABLE `filer_image`
  ADD PRIMARY KEY (`file_ptr_id`);

--
-- 資料表索引 `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ftest_diary`
--
ALTER TABLE `ftest_diary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ftest_diary_user_id_e58066f4_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `ftest_foodreview`
--
ALTER TABLE `ftest_foodreview`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ftest_photo`
--
ALTER TABLE `ftest_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ftest_photo_diary_id_1609eac7_fk_ftest_diary_id` (`diary_id`);

--
-- 資料表索引 `mysite_bodyinfo`
--
ALTER TABLE `mysite_bodyinfo`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mysite_dailynote`
--
ALTER TABLE `mysite_dailynote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_dailynote_note_type_id_09cf6580` (`note_type_id`);

--
-- 資料表索引 `mysite_exchangerate`
--
ALTER TABLE `mysite_exchangerate`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mysite_gallery`
--
ALTER TABLE `mysite_gallery`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mysite_mytask`
--
ALTER TABLE `mysite_mytask`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mysite_notetype`
--
ALTER TABLE `mysite_notetype`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mysite_productimage`
--
ALTER TABLE `mysite_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_productimage_image_id_9fa76fa6` (`image_id`);

--
-- 資料表索引 `polls_schoolbabe`
--
ALTER TABLE `polls_schoolbabe`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_file`
--
ALTER TABLE `filer_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_folder`
--
ALTER TABLE `filer_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ftest_diary`
--
ALTER TABLE `ftest_diary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ftest_foodreview`
--
ALTER TABLE `ftest_foodreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ftest_photo`
--
ALTER TABLE `ftest_photo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_bodyinfo`
--
ALTER TABLE `mysite_bodyinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_dailynote`
--
ALTER TABLE `mysite_dailynote`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_exchangerate`
--
ALTER TABLE `mysite_exchangerate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_gallery`
--
ALTER TABLE `mysite_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_mytask`
--
ALTER TABLE `mysite_mytask`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_notetype`
--
ALTER TABLE `mysite_notetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mysite_productimage`
--
ALTER TABLE `mysite_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `polls_schoolbabe`
--
ALTER TABLE `polls_schoolbabe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- 資料表的限制式 `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- 資料表的限制式 `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  ADD CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`);

--
-- 資料表的限制式 `filer_file`
--
ALTER TABLE `filer_file`
  ADD CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`);

--
-- 資料表的限制式 `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `filer_image`
--
ALTER TABLE `filer_image`
  ADD CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`);

--
-- 資料表的限制式 `ftest_diary`
--
ALTER TABLE `ftest_diary`
  ADD CONSTRAINT `ftest_diary_user_id_e58066f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `ftest_photo`
--
ALTER TABLE `ftest_photo`
  ADD CONSTRAINT `ftest_photo_diary_id_1609eac7_fk_ftest_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `ftest_diary` (`id`);

--
-- 資料表的限制式 `mysite_productimage`
--
ALTER TABLE `mysite_productimage`
  ADD CONSTRAINT `mysite_productimage_image_id_9fa76fa6_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
