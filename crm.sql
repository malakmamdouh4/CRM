-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 07, 2022 at 02:11 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `archeiveclients`
--

DROP TABLE IF EXISTS `archeiveclients`;
CREATE TABLE IF NOT EXISTS `archeiveclients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nemployees` int NOT NULL,
  `setting_id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at_str` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `archeiveclients_setting_id_foreign` (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archeiveclients`
--

INSERT INTO `archeiveclients` (`id`, `name`, `phone`, `country`, `email`, `nemployees`, `setting_id`, `status`, `created_at_str`, `created_at`, `updated_at`) VALUES
(2, 'client4', '44444343', 'egypt', 'client3@gmail.com', 244, 13, 1, '1658741734', '2022-07-25 07:35:34', '2022-07-25 11:35:57'),
(5, 'client4', '+201033394521', 'egypt', 'client3@gmail.com', 244, 3, 1, '1658750682', '2022-07-25 10:04:42', '2022-07-25 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(3, 'techno masr', 'NtehPpuECaS4TwBpozgyO0fECSdlXz42P8RGOfxD.jpg', '2022-07-25 12:57:19', '2022-07-25 12:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `image`, `feature`, `type`, `created_at`, `updated_at`) VALUES
(3, 'title 1', 'main description', 'IEDAqoqwG4LwHJLaO275s35QKKyI4b0hK3ZOiqpi.png', '\"YToyOntpOjA7YTozOntzOjQ6Imljb24iO3M6NDoidXNlciI7czo1OiJ0aXRsZSI7czoxOToi2LnZhtmI2KfZhiDYsdmC2YUgMSI7czoxMToiZGVzY3JpcHRpb24iO3M6MTM6ImRlcyAxIGZlYXR1cmUiO31pOjE7YTozOntzOjQ6Imljb24iO3M6NToiYWRtaW4iO3M6NToidGl0bGUiO3M6MTk6Iti52YbZiNin2YYg2LHZgtmFIDIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjEzOiJkZXMgMiBmZWF0dXJlIjt9fQ==\"', '1', '2022-07-25 12:29:27', '2022-07-25 12:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_07_165740_create_roles_table', 1),
(5, '2022_06_07_165808_create_permissions_table', 1),
(6, '2022_06_07_165835_create_role_permissions_table', 1),
(7, '2022_06_11_054130_create_settings_table', 1),
(8, '2022_07_01_171153_create_notifications_table', 1),
(9, '2022_07_03_143438_create_archeiveclients_table', 1),
(10, '2022_07_25_090521_create_parteners_table', 1),
(11, '2022_07_25_094639_create_clients_table', 2),
(12, '2022_07_20_143210_create_features_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('b43c741c-ef6c-405d-b94a-2f3f9e2129d4', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newClient\",\"linked_id\":1,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 client4 \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0648\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a.\",\"date\":\"2022-07-25\",\"time\":\"09:35\"}', '2022-07-28 17:12:35', '2022-07-25 07:35:18', '2022-07-28 17:12:35'),
('3bab8195-f7b1-4cbf-aedb-746362fa0433', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newClient\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 client4 \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0648\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a.\",\"date\":\"2022-07-25\",\"time\":\"09:35\"}', '2022-07-28 17:12:35', '2022-07-25 07:35:34', '2022-07-28 17:12:35'),
('2689998a-390f-46ef-8c7d-dbd23d0088c4', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newClient\",\"linked_id\":3,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 client4 \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0648\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a.\",\"date\":\"2022-07-25\",\"time\":\"09:37\"}', '2022-07-28 17:12:35', '2022-07-25 07:37:02', '2022-07-28 17:12:35'),
('13d63ac0-2820-4ff4-93c4-e97283c587db', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newClient\",\"linked_id\":4,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 client4 \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0648\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a.\",\"date\":\"2022-07-25\",\"time\":\"09:39\"}', '2022-07-28 17:12:35', '2022-07-25 07:39:18', '2022-07-28 17:12:35'),
('1702da3b-756c-415a-91fb-a57ef0b8cdbb', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newClient\",\"linked_id\":5,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 client4 \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0648\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a.\",\"date\":\"2022-07-25\",\"time\":\"12:04\"}', '2022-07-28 17:12:35', '2022-07-25 10:04:42', '2022-07-28 17:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `parteners`
--

DROP TABLE IF EXISTS `parteners`;
CREATE TABLE IF NOT EXISTS `parteners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parteners`
--

INSERT INTO `parteners` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 'techno masr', '3VkU6S46VIvK2UlcYQfA91TqKfrIQJbq6OBtPRkL.png', '2022-07-25 12:59:16', '2022-07-25 12:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleware` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quard` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name_ar`, `name_en`, `name_fr`, `quard`, `created_at`, `updated_at`) VALUES
(1, 'ادمن', 'admins', 'admins', 'admin', NULL, NULL),
(2, 'مستخدمين', 'users', 'users', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `roles_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `linked_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'demoLink1', 'link1', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(2, 'demoUserName1', 'username1', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(3, 'demoPassword1', 'password1', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(4, 'demoLink2', 'link2', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(5, 'demoUserName2', 'username2', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(6, 'demoPassword2', 'password2', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(7, 'demoLink3', 'link3', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(8, 'demoUserName3', 'username3', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(9, 'demoPassword3', 'password3', NULL, 'demo', '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(10, 'facebook', 'facebook', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:41'),
(11, 'twitter', 'twitter', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:41'),
(12, 'mail', 'mail', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:41'),
(13, 'marketer', 'real state marketer', NULL, 'work', '2022-07-25 11:34:35', '2022-07-25 11:34:46'),
(14, 'companies', 'real state companies', NULL, 'work', '2022-07-25 11:34:35', '2022-07-25 11:34:46'),
(15, 'training', 'training-advertising..etc', NULL, 'work', '2022-07-25 11:34:35', '2022-07-25 11:34:46'),
(16, 'home1title', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(17, 'home1des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(18, 'home2title', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(19, 'home2des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(20, 'section1title', 'رواد CRM - برنامج ادارة علاقات العملاء', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 12:35:56'),
(21, 'section1header', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(22, 'section1des', 'سوف يساعدك رواد CRM في تسجيل وحفظ بيانات العملاء بشكل منظم وتفصيلي وتسهيل عملية شراء بشكل احترافي وسرعة التواصل معهم وبالتالي زيادة المبيعات. حيث يعمل نظام رواد CRM على تصنيف كل مرحلة من مراحل البيع حسب احتياج العميل مع تواجد خدمة عملاء ليسجلوا ماذا يحدث مع العميل بالتفصيل. وبامكانك ايضا امكانية ربط النظام عن طريق تطبيقات للاندرويد والايفون ليسهل على المستخدمين امكانية الحصول على احتياجهم في اي وقت واي مكان بحيث يتوافر عضوية لكل مسئول على حسب الوظيفة الخاصة به في الشركة.\r\n', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 12:35:56'),
(23, 'section2header', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(24, 'section2des', 'يتيح لك رواد CRM امكانية الحصول على تطبيق للجوال ، حتى يتيح لك التمكن من الوصول لبيانات عملائك في كل مكان حيث يوفّر عليك الوقت في الرجوع لجهازك المكتبي لتسجيل بيانات عميلك او مراجعة بيناته ، ليُسهل عملية البيع بشكل سريع مع ضمان توفير الدعم الفني للتطبيق بشكل دوري لمعالجة اي اخطاء ، والمحافطة على متابعة عملك دون اضاعة وقت متوفر على متجر جوجل بلاي وآبل ستور\r\n\r\n', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 12:35:56'),
(25, 'section3header', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(26, 'section3des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(27, 'section2title', 'رواد CRM على جوالك', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 12:35:56'),
(28, 'feature1title', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(29, 'feature1des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(30, 'feature2title', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(31, 'feature2des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(32, 'feature3title', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(33, 'feature3des', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(34, 'partener1name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(35, 'partener2name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(36, 'partener3name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(37, 'partener4name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(38, 'client1name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(39, 'client2name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(40, 'client3name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(41, 'client4name', '', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(42, 'closeSite', '0', NULL, NULL, '2022-07-25 11:34:35', '2022-07-25 11:34:35'),
(43, 'section1img', 'LotnjAboXb9bwx3iKNpRopQAWBh2qZ95GVjfM6TH.png', NULL, NULL, '2022-07-25 12:35:56', '2022-07-25 12:35:56'),
(44, 'section2img', '1NZWwq6Uk9GnvkcxoupcB0PdOA3Zl0F8iI8OGJlF.png', NULL, NULL, '2022-07-25 12:35:56', '2022-07-25 12:35:56'),
(45, 'logoimg', '', NULL, NULL, '2022-07-27 11:02:35', '2022-07-27 11:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `language`, `block`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'malakmamdouh443@gmail.com', '1', NULL, '$2y$10$qMvD8Ev/oef7CB0pD6cLDOG/B6VNzndyBMCgwpR1o3SilNRfx85vO', 'en', NULL, NULL, '2022-07-25 11:33:54', '2022-07-25 14:44:48'),
(2, 'Hend Ahmed', 'test@technomasr.com', '2', NULL, '$2y$10$X/9TvdtBC8xu4N9ub/f6IuyaNLjXOh.ZKJXyCHKSs9DN.N0purxpi', 'ar', NULL, NULL, '2022-07-25 14:48:00', '2022-07-25 14:48:08'),
(3, 'Hend Ahmed', 'admin@ilawfair.com', '2', NULL, '$2y$10$d77jzHoF0Qqup8WAltJXSeSFIgIFIG7tJ0qTtEDxt3UFaOxJeN.sm', 'ar', NULL, NULL, '2022-07-25 14:48:56', '2022-07-25 14:49:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
