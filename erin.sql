-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2026 at 06:04 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-parent@gmail.com|116.90.106.141', 'i:1;', 1767641647),
('laravel-cache-parent@gmail.com|116.90.106.141:timer', 'i:1767641647;', 1767641647),
('laravel-cache-student@gmail.com|116.90.106.141', 'i:1;', 1765919459),
('laravel-cache-student@gmail.com|116.90.106.141:timer', 'i:1765919459;', 1765919459);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Business', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(2, 'Technology', '2025-08-21 13:09:35', '2025-08-21 13:09:35'),
(3, 'Marketing', '2025-08-21 13:09:35', '2025-08-21 13:09:35'),
(4, 'Kids', '2025-12-15 19:58:38', '2025-12-15 19:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `child_profiles`
--

CREATE TABLE `child_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_profiles`
--

INSERT INTO `child_profiles` (`id`, `user_id`, `name`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 2, 'Test', NULL, '2025-09-23 17:41:17', '2025-09-23 17:41:17'),
(2, 2, 'Grey', NULL, '2025-09-25 19:31:37', '2025-09-25 19:31:37'),
(3, 2, 'james', NULL, '2025-09-25 19:31:45', '2025-09-25 19:31:45'),
(4, 2, 'mo', NULL, '2025-09-25 19:31:50', '2025-09-25 19:31:50'),
(5, 2, 'Andrew', NULL, '2025-09-25 19:31:59', '2025-09-25 19:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(8,2) DEFAULT NULL,
  `status` enum('draft','published') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `thumbnail`, `category_id`, `level_id`, `is_premium`, `price`, `status`, `created_at`, `updated_at`) VALUES
(2, 'English', 'Quam eos et anim deb', 'thumbnails/G05KLxYiYKOgj7hqeqXCU8WajHODRP3xMVUKRCEU.jpg', 3, 1, 1, 1000.00, 'published', '2025-09-25 19:18:08', '2025-09-25 19:18:08'),
(4, 'All Aboard Song Components', 'All Aboard Song Components', NULL, 4, 1, 1, 10.00, 'published', '2025-12-15 19:59:59', '2025-12-15 19:59:59'),
(6, 'Ally Song  Dog Components', 'Ally Song  Dog Components', NULL, 4, 1, 0, 805.00, 'published', '2025-12-19 12:26:11', '2025-12-19 12:26:11'),
(7, 'Kangaroo Song Components', 'Kangaroo Song Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 12:57:24', '2025-12-19 12:57:24'),
(8, 'High/Low Sounds Components', 'High/Low Sounds Components', NULL, 4, 2, 0, 805.00, 'published', '2025-12-19 13:20:06', '2025-12-19 13:20:06'),
(9, 'Monster/Mouse Components', 'Monster/Mouse Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 14:14:46', '2025-12-19 14:14:46'),
(10, 'Farm Components', 'Farm Components', NULL, 4, 1, 0, 805.00, 'published', '2025-12-19 14:29:46', '2025-12-19 14:29:46'),
(11, 'Starfish Components', 'Starfish Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 14:40:48', '2025-12-19 14:40:48'),
(12, 'Fast/Slow Components', 'Fast/Slow Components', NULL, 4, 1, 0, 805.00, 'published', '2025-12-19 15:43:45', '2025-12-19 15:43:45'),
(13, 'Inchworm Components', 'Inchworm Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 16:16:12', '2025-12-19 16:16:12'),
(14, 'Ally Went Fishing Components', 'Ally Went Fishing Components', NULL, 4, 1, 0, 399.00, 'published', '2025-12-19 17:45:04', '2025-12-19 17:45:04'),
(15, 'Monkey Middle Components', 'Monkey Middle Components', NULL, 4, 1, 0, 805.00, 'published', '2025-12-19 19:36:20', '2025-12-19 19:36:20'),
(16, 'Triangle Components', 'Triangle Components', NULL, 4, 2, 0, 399.00, 'published', '2025-12-19 19:45:25', '2025-12-19 19:45:25'),
(17, 'Pizza Guys Components', 'Pizza Guys Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 19:53:20', '2025-12-19 19:53:20'),
(18, 'Band Practice Components', 'Band Practice Components', NULL, 4, 1, 0, 700.00, 'published', '2025-12-19 20:02:52', '2025-12-19 20:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `course_purchases`
--

CREATE TABLE `course_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'usd',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `purchased_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_purchases`
--

INSERT INTO `course_purchases` (`id`, `user_id`, `course_id`, `stripe_session_id`, `stripe_payment_intent_id`, `amount`, `currency`, `status`, `purchased_at`, `created_at`, `updated_at`) VALUES
(3, 2, 2, NULL, 'pi_3SBKrcK7gtqB72uY1FY39Nly', 100000, 'usd', 'paid', '2025-09-25 19:30:02', '2025-09-25 19:30:00', '2025-09-25 19:30:02'),
(4, 2, 4, NULL, 'pi_3Sf5XxK7gtqB72uY0vpYHtlq', 1000, 'usd', 'paid', '2025-12-16 21:12:43', '2025-12-16 21:12:41', '2025-12-16 21:12:43'),
(5, 2, 7, NULL, 'pi_3ShJsiK7gtqB72uY1GsCebax', 70000, 'usd', 'paid', '2025-12-23 00:55:22', '2025-12-23 00:55:20', '2025-12-23 00:55:22'),
(6, 2, 6, NULL, 'pi_3ShJt6K7gtqB72uY1t31SiPl', 80500, 'usd', 'paid', '2025-12-23 00:55:46', '2025-12-23 00:55:44', '2025-12-23 00:55:46'),
(7, 2, 18, NULL, 'pi_3ShJtQK7gtqB72uY0GuPtKqQ', 70000, 'usd', 'paid', '2025-12-23 00:56:06', '2025-12-23 00:56:04', '2025-12-23 00:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beginner', '2025-08-21 13:09:35', '2025-08-21 13:09:35'),
(2, 'Intermediate', '2025-08-21 13:09:35', '2025-08-21 13:09:35'),
(3, 'Advanced', '2025-08-21 13:09:35', '2025-08-21 13:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_04_141034_create_permission_tables', 1),
(5, '2025_08_05_144235_create_categories_table', 1),
(6, '2025_08_05_144242_create_levels_table', 1),
(7, '2025_08_05_151320_create_course_table', 1),
(8, '2025_08_05_180134_create_customer_columns', 1),
(9, '2025_08_05_180135_create_subscriptions_table', 1),
(10, '2025_08_05_180136_create_subscription_items_table', 1),
(11, '2025_08_05_180222_create_subscription_plans_table', 1),
(12, '2025_08_27_173359_create_modules_table', 2),
(13, '2025_08_27_173403_create_module_contents_table', 2),
(14, '2025_08_27_173405_create_quizzes_table', 2),
(15, '2025_08_27_173410_add_order_to_modules_table', 2),
(16, '2025_08_27_182145_remove_instructor_id_from_courses_table', 2),
(17, '2025_08_27_185620_add_points_to_quizzes_table', 2),
(18, '2025_09_03_000001_create_course_purchases_table', 3),
(19, '2025_09_11_000100_create_child_profiles_table', 4),
(20, '2025_09_29_000500_create_quiz_attempts_table', 5),
(21, '2025_09_29_000600_create_quiz_answers_table', 5),
(22, '2025_10_24_000001_create_subscription_features_table', 6),
(23, '2025_10_24_000100_create_subscription_events_table', 6),
(24, '2025_10_30_120000_create_video_library_items_table', 7),
(25, '2025_10_30_120100_add_tier_fields_to_subscription_plans_table', 7),
(26, '2025_11_10_180000_add_standalone_video_sales_fields', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`, `order`) VALUES
(1, 2, 'Chapter 01', 'This is chapter for alphabets', '2025-09-25 19:20:39', '2025-09-25 19:20:39', 1),
(2, 2, 'Ut tempora veniam e', 'Excepturi enim obcae', '2025-09-25 19:22:28', '2025-09-25 19:22:28', 2),
(3, 4, 'ADD- All Aboard Song', 'ADD- All Aboard Song', '2025-12-15 20:00:55', '2025-12-15 20:00:55', 1),
(4, 6, 'Ally Song  Dog Components', 'Ally Song  Dog Components', '2025-12-19 12:37:30', '2025-12-19 12:37:30', 1),
(6, 7, 'Kangaroo Song Components', NULL, '2025-12-19 13:16:48', '2025-12-19 13:16:48', 1),
(7, 8, 'HIgh Low Components', NULL, '2025-12-19 14:12:46', '2025-12-19 14:12:46', 1),
(8, 9, 'Monster/Mouse Components', NULL, '2025-12-19 14:25:57', '2025-12-19 14:25:57', 1),
(9, 10, 'Farm Components', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06', 1),
(10, 11, 'Starfish Components', NULL, '2025-12-19 15:34:32', '2025-12-19 15:34:32', 1),
(11, 12, 'Fast /Slow Components', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22', 1),
(12, 13, 'Inchworm Components', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07', 1),
(13, 14, 'Ally Went Fishing Components', NULL, '2025-12-19 19:03:10', '2025-12-19 19:03:10', 1),
(14, 15, 'Monkey Middle Components', NULL, '2025-12-19 19:42:36', '2025-12-19 19:42:36', 1),
(15, 16, 'Triangle Components', NULL, '2025-12-19 19:50:56', '2025-12-19 19:50:56', 1),
(16, 17, 'Pizza Guys Components', NULL, '2025-12-19 19:59:45', '2025-12-19 19:59:45', 1),
(17, 18, 'Band Practice Components', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_contents`
--

CREATE TABLE `module_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_contents`
--

INSERT INTO `module_contents` (`id`, `module_id`, `type`, `path`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'text', NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:1\"><b><span style=\"font-size:24.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-font-kerning:18.0pt\">Project Document: YuRHere Application<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">1.\r\nProject Overview<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">The <b>YuRHere Application</b> is a\r\nsmart, location-based travel and lifestyle app designed to help users plan,\r\nmanage, and share trips with ease. By combining user preferences, trip\r\nplanning, and social sharing features, YuRHere provides both a <b>personalized\r\nassistant</b> and a <b>community-driven exploration tool</b>.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">The app focuses on <b>mobility,\r\npersonalization, and discovery</b>, ensuring that whether the user is at home,\r\nat work, or traveling, they have a curated experience of places, routes, and\r\nrecommendations.<o:p></o:p></span></p><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">2.\r\nGoals &amp; Objectives<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l5 level1 lfo1;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Personalization</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n     Deliver tailored travel experiences based on user profiles and\r\n     preferences.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l5 level1 lfo1;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Efficiency</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n     Simplify trip planning by automating route suggestions and trip initiation\r\n     upon location detection.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l5 level1 lfo1;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Community Engagement</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n     Enable users to share and discover public trip playlists curated by other\r\n     users.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l5 level1 lfo1;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Scalability</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n     Provide a flexible platform that can integrate AI-based recommendations,\r\n     transport APIs, and offline capabilities in the future.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l5 level1 lfo1;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Data Privacy</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n     Ensure robust user control over private vs. public trips and safeguard all\r\n     personal information.<o:p></o:p></span></li>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">3.\r\nScope<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">YuRHere is intended as a <b>mobile-first\r\napplication</b> with cross-platform availability (iOS and Android). The core\r\nfunctionality includes:<o:p></o:p></span></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Secure user login &amp; profile creation.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Location selection and management (home, office, or\r\n     custom).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Preference setup with pre-defined categories (hotels,\r\n     airports, schools, etc.).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Trip creation and scheduling.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Automatic trip initiation based on location triggers.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Trip list repository with public and private access controls.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l10 level1 lfo2;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Community sharing and recommendation system.<o:p></o:p></span></li>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.\r\nKey Features &amp; Functional Requirements<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.1\r\nLogin<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l12 level1 lfo3;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Requirements</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l12 level2 lfo3;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">User registration via email, phone number, or social\r\n      login (Google, Apple, Facebook).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l12 level2 lfo3;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Support for Single Sign-On (SSO) where available.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l12 level2 lfo3;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Password reset via email/SMS OTP.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l12 level2 lfo3;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Biometric authentication (fingerprint/FaceID) for\r\n      convenience.<o:p></o:p></span></li>\r\n </ul>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.2\r\nLocation Selection<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l9 level1 lfo4;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Requirements</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l9 level2 lfo4;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Save multiple locations (e.g., Home, Office, Frequent\r\n      Travel Cities).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l9 level2 lfo4;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Auto-detect location via GPS.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l9 level2 lfo4;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Option for manual entry of custom addresses.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l9 level2 lfo4;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Ability to set a <b>primary location</b> for default\r\n      use.<o:p></o:p></span></li>\r\n </ul>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.3\r\nPreferences<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l4 level1 lfo5;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Requirements</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l4 level2 lfo5;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Pre-built categories of common place types (schools,\r\n      airports, hotels, restaurants, museums, etc.).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l4 level2 lfo5;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Custom preference creation (user-defined categories).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l4 level2 lfo5;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Ability to rank or prioritize preferences.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l4 level2 lfo5;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Dynamic filtering of search results based on\r\n      preferences.<o:p></o:p></span></li>\r\n </ul>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.4\r\nTrips<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l11 level1 lfo6;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Requirements</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l11 level2 lfo6;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Create trips by selecting one or more destinations.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l11 level2 lfo6;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Add details (trip title, description, notes, photos).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l11 level2 lfo6;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Define a schedule (date, time, duration).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l11 level2 lfo6;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Location-based triggers: App automatically starts\r\n      guiding trip when the user reaches the first destination.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l11 level2 lfo6;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Provide real-time navigation and contextual\r\n      recommendations (e.g., nearby restaurants, hotels).<o:p></o:p></span></li>\r\n </ul>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">4.5\r\nTrip List<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l2 level1 lfo7;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Requirements</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l2 level2 lfo7;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">All trips stored under the user’s profile.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l2 level2 lfo7;tab-stops:list 1.0in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Public trips</span></b><span style=\"font-size:12.0pt;\r\n      font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n      Discoverable by others, recommended when they reach relevant locations.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l2 level2 lfo7;tab-stops:list 1.0in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Private trips</span></b><span style=\"font-size:12.0pt;\r\n      font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:\r\n      Accessible only to the creator.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l2 level2 lfo7;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Options to edit, duplicate, or delete trips.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l2 level2 lfo7;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Sorting/filtering (by location, date, type,\r\n      public/private).<o:p></o:p></span></li>\r\n </ul>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">5.\r\nUser Journey Flow<o:p></o:p></span></b></p><ol start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Login/Register</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → Create profile → Save authentication method.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Set Location</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → Auto-detect via GPS or manually input address → Save location(s).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Define Preferences</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → Select from predefined categories or add custom ones → Save ranking.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Plan Trip</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → Select destinations → Add notes/schedule → Save trip.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Execute Trip</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → App auto-initiates when user reaches the designated starting point.<br>\r\n     → Provides navigation, reminders, and nearby suggestions.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l0 level1 lfo8;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Save &amp; Share</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><br>\r\n     → Trip stored in trip list.<br>\r\n     → User chooses Public (shared) or Private (personal).<o:p></o:p></span></li>\r\n</ol><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">6.\r\nUse Cases<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l14 level1 lfo9;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">UC-01: Create Trip</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Actor: Registered User<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Preconditions: User is logged in, has selected a\r\n      location.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Steps: User selects destinations → Adds details →\r\n      Saves trip.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Postcondition: Trip appears in user’s trip list.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l14 level1 lfo9;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">UC-02: Auto-Initiate Trip</span></b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Actor: Registered User<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Preconditions: Trip scheduled with location trigger.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Steps: User arrives at destination → App detects\r\n      presence → Trip initiates.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Postcondition: Navigation starts automatically.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l14 level1 lfo9;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">UC-03: Share Public Trip</span></b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Actor: Registered User<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Preconditions: Trip created and saved.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Steps: User sets trip visibility to Public → Trip\r\n      shared to community.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l14 level2 lfo9;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Postcondition: Other users at that location can see\r\n      and use this trip.<o:p></o:p></span></li>\r\n </ul>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">7.\r\nTechnical Architecture<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l8 level1 lfo10;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Frontend</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">React Native (cross-platform for iOS/Android).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Responsive UI with location-aware components.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l8 level1 lfo10;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Backend</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Node.js with Express (REST APIs).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">MongoDB for trip data, user preferences, and sharing\r\n      metadata.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Redis caching for fast location queries.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l8 level1 lfo10;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">APIs &amp; Services</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">:<o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Google Maps / Mapbox (location, routing).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Firebase Authentication (login, OTP, biometrics).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l8 level2 lfo10;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">AWS S3 (media storage for trip photos).<o:p></o:p></span></li>\r\n </ul>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><h2>8. Future Enhancements<o:p></o:p></h2><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">The YuRHere application is designed\r\nwith scalability in mind. While the initial release focuses on <b>trip\r\nplanning, preferences, and social sharing</b>, future releases will integrate <b>comprehensive\r\ntravel booking and lifestyle management functionalities</b>.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">8.1\r\nTravel Booking Integration<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l15 level1 lfo11;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Flights</span></b><span style=\"font-size:12.0pt;\r\n     font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Search and book domestic and international flights\r\n      directly from the app.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Integration with flight aggregators (Skyscanner,\r\n      Amadeus, Sabre APIs).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Dynamic pricing, seat selection, and e-boarding\r\n      passes.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l15 level1 lfo11;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Buses &amp; Trains</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Regional bus and train booking integrations based on\r\n      user location.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Real-time schedules and seat availability.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">QR-code-based ticketing for seamless check-in.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l15 level1 lfo11;tab-stops:list .5in\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Hotels &amp; Stays</span></b><span style=\"font-size:\r\n     12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <ul type=\"circle\">\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Integration with booking engines (Booking.com,\r\n      Expedia, Airbnb).<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Personalized recommendations based on trip\r\n      preferences.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\n      auto;line-height:normal;mso-list:l15 level2 lfo11;tab-stops:list 1.0in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n      &quot;Times New Roman&quot;\">Flexible booking options (pay now/pay later,\r\n      refundable vs. non-refundable).<o:p></o:p></span></li>\r\n </ul>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">8.2\r\nTrip-Centric Booking Experience<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l6 level1 lfo12;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Unified view where all bookings (flight, hotel,\r\n     bus/train, activities) are linked to the scheduled trip.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l6 level1 lfo12;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Smart suggestions (e.g., if a user books a trip to New\r\n     York, the app automatically offers flight + hotel packages).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l6 level1 lfo12;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">In-app reminders and check-in notifications for\r\n     upcoming reservations.<o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">8.3\r\nPayments &amp; Wallet<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l13 level1 lfo13;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Integrated secure payment gateway (Stripe, PayPal,\r\n     Apple Pay, Google Pay).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l13 level1 lfo13;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Multi-currency support for global travelers.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l13 level1 lfo13;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">YuRHere Wallet for storing credits, loyalty points, and\r\n     refunds.<o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">8.4\r\nCommunity &amp; Marketplace<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l1 level1 lfo14;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Community-driven travel packages (users can share\r\n     public itineraries and allow others to replicate them with one-click\r\n     bookings).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l1 level1 lfo14;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Affiliate partnerships with airlines, hotels, and\r\n     transport providers.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l1 level1 lfo14;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">In-app marketplace for experiences (city tours, event\r\n     tickets, activities).<o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><b><span style=\"font-size:13.5pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">8.5\r\nAI-Powered Personalization<o:p></o:p></span></b></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l3 level1 lfo15;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">AI trip assistant that suggests <b>best routes +\r\n     cheapest travel bundles</b>.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l3 level1 lfo15;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Predictive pricing alerts for flights and hotels.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l3 level1 lfo15;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Personalized recommendations for stays, activities, and\r\n     dining.<o:p></o:p></span></li>\r\n</ul><div class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0in;text-align:center;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">9.\r\nStrategic Vision<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">YuRHere will evolve from a <b>location-based\r\ntrip planner</b> into a <b>comprehensive travel and lifestyle platform</b> — a\r\nsingle app where users can:<o:p></o:p></span></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l7 level1 lfo16;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Discover new destinations.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l7 level1 lfo16;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Plan personalized trips.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l7 level1 lfo16;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Book flights, trains, buses, and hotels.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l7 level1 lfo16;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Access real-time navigation and recommendations.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\n     line-height:normal;mso-list:l7 level1 lfo16;tab-stops:list .5in\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\">Share their itineraries with the community.<o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">This positions YuRHere as a <b>“Super\r\nApp for Travel”</b>, consolidating multiple services into one seamless\r\necosystem.<o:p></o:p></span></p><div class=\"MsoNormal\" align=\"center\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:\r\nauto;text-align:center;line-height:normal;mso-outline-level:2\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</span></div><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:2\"><b><span style=\"font-size:18.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">10.\r\nConclusion<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">The <b>YuRHere Application</b> is\r\ndesigned as a comprehensive travel companion that merges <b>location\r\nintelligence, trip planning, and social discovery</b>. With its modular\r\narchitecture, strong privacy controls, and focus on personalization, YuRHere\r\ncan evolve into a platform that not only supports individual travel but fosters\r\ncommunity exploration.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', '2025-09-25 19:20:39', '2025-09-25 19:20:39');
INSERT INTO `module_contents` (`id`, `module_id`, `type`, `path`, `text`, `created_at`, `updated_at`) VALUES
(2, 1, 'pdf', 'module_contents/JTUt9GoZb7990uBtc9HwfNar4TcugckRA0lL5SyQ.pdf', NULL, '2025-09-25 19:20:39', '2025-09-25 19:20:39'),
(3, 1, 'image', 'module_contents/KoYXCWPSKrCISRHFuAtEJ3Ve2g5SuEm5RwlljEcC.jpg', NULL, '2025-09-25 19:20:39', '2025-09-25 19:20:39'),
(4, 1, 'video', 'module_contents/ruKT7npTCe3TO9nEZX3snfCmT1XNfqnHJkNqElVE.mp4', NULL, '2025-09-25 19:20:40', '2025-09-25 19:20:40'),
(8, 3, 'pdf', 'module_contents/YV6gt2dixD25nRhSSMaMlxGkixWG298qxTclraOd.pdf', NULL, '2025-12-16 19:42:39', '2025-12-16 19:42:39'),
(9, 3, 'image', 'module_contents/0tpLDGbIyxmZDIzXyZIFKQPbsgRHiBhq2q3HvZNH.png', NULL, '2025-12-16 19:42:39', '2025-12-16 19:42:39'),
(10, 3, 'video', 'module_contents/POPTdIdqSdusHhqTnCN8lNazcS5BLixWwRlApwGV.mp4', NULL, '2025-12-16 19:42:39', '2025-12-16 19:42:39'),
(11, 3, 'video', 'module_contents/XzdTzbe4r8xuKje7zZ8ieCU76U212g1V4OAds3uv.mp4', NULL, '2025-12-16 19:42:40', '2025-12-16 19:42:40'),
(12, 4, 'pdf', 'module_contents/OBJ9qsubqY2D9DYQLbXqliINkzB2pQsFSyIUGEjA.pdf', NULL, '2025-12-19 12:37:30', '2025-12-19 12:37:30'),
(13, 4, 'pdf', 'module_contents/Sxwy5djW6DGb9PUuQ6v2Y4IxLY8aj0yzB9FiEKyu.pdf', NULL, '2025-12-19 12:37:30', '2025-12-19 12:37:30'),
(14, 4, 'pdf', 'module_contents/f6xmso5jKxBBEmOoAdJwUHrNFHXjLDEidNYtgbmA.pdf', NULL, '2025-12-19 12:37:30', '2025-12-19 12:37:30'),
(15, 4, 'pdf', 'module_contents/fZH0GuZ0hHqg6m03zxPiUTY3cnzjcJhNBY6Kg9m4.pdf', NULL, '2025-12-19 12:37:30', '2025-12-19 12:37:30'),
(16, 4, 'image', 'module_contents/aCDb8htapwWh1374SPkAWzwb8aBbqaK63xaWjJ7G.png', NULL, '2025-12-19 12:37:30', '2025-12-19 12:37:30'),
(17, 4, 'video', 'module_contents/9os5P2cvSTmZIxwjWsx7hepcppUwgrt4hiKL7uWZ.mp4', NULL, '2025-12-19 12:37:31', '2025-12-19 12:37:31'),
(24, 6, 'pdf', 'module_contents/1FpMtTNZWY73GH8UdO4PEzqCnpLBBbkFctO7Edvk.pdf', NULL, '2025-12-19 13:16:48', '2025-12-19 13:16:48'),
(25, 6, 'pdf', 'module_contents/gTNn6376MbVSHoO05fZL6KAIz0iLDlkIdaqBOEp9.pdf', NULL, '2025-12-19 13:16:48', '2025-12-19 13:16:48'),
(26, 6, 'image', 'module_contents/b3pmAdxxH5gUWRLvBN5vQvD0oGMzmC6E8g2lSiLh.png', NULL, '2025-12-19 13:16:48', '2025-12-19 13:16:48'),
(27, 6, 'video', 'module_contents/OEG2U4KboOX1cA4QbpU1mSKPo2CTczenWpc50SBL.mp4', NULL, '2025-12-19 13:16:49', '2025-12-19 13:16:49'),
(28, 6, 'video', 'module_contents/9HrK46W1VB5WHuW4bf1m19f90VWFpPtCsIN4veCB.mp4', NULL, '2025-12-19 13:16:49', '2025-12-19 13:16:49'),
(29, 7, 'pdf', 'module_contents/m4L9bziLGRV1TUEL5VxHxwVzL68OpbFbKmPdLH9y.pdf', NULL, '2025-12-19 14:12:46', '2025-12-19 14:12:46'),
(30, 7, 'pdf', 'module_contents/9PoCxJbBuNnDjvuAVqJ7EpCOp7wSunhgIqQM6x3r.pdf', NULL, '2025-12-19 14:12:46', '2025-12-19 14:12:46'),
(31, 7, 'image', 'module_contents/jhYOxtWHYP4ynzuKewP05m6OIj3JjwvrC8Txa96m.png', NULL, '2025-12-19 14:12:46', '2025-12-19 14:12:46'),
(32, 7, 'video', 'module_contents/i3xkAyEptEuziOiPLdzkOURoJgf9dM3cFUfj34IP.mp4', NULL, '2025-12-19 14:12:47', '2025-12-19 14:12:47'),
(33, 7, 'video', 'module_contents/MvRwIesjuSHm3mg53kCyK52CiEJJbb4aLLy795Ya.mp4', NULL, '2025-12-19 14:12:47', '2025-12-19 14:12:47'),
(34, 8, 'pdf', 'module_contents/LbVhVto0gYVrNTv1vyAYBdO7sSmolueP4FFZUlAE.pdf', NULL, '2025-12-19 14:25:57', '2025-12-19 14:25:57'),
(35, 8, 'pdf', 'module_contents/yLH3VWKqK5qHGC0YnBNWMJWabaAHMMk6zH6zrm7y.pdf', NULL, '2025-12-19 14:25:57', '2025-12-19 14:25:57'),
(36, 8, 'image', 'module_contents/9yIIdURBNKevW4E1ovtqku5F9jrjRlLIi7Q5fD83.png', NULL, '2025-12-19 14:25:57', '2025-12-19 14:25:57'),
(37, 8, 'video', 'module_contents/HxfByFYcs1Rm54sCZ1SI5IhXJAX2VncYRRyk2WYZ.mp4', NULL, '2025-12-19 14:25:57', '2025-12-19 14:25:57'),
(38, 8, 'video', 'module_contents/uBglx3akwYR8SVhXYX3v3g60wK2QXbWgNHzdbowz.mp4', NULL, '2025-12-19 14:25:58', '2025-12-19 14:25:58'),
(39, 9, 'pdf', 'module_contents/WXCREKwucaB5mmrS3T9KkuqXMrB0eDgQDrWcyZMJ.pdf', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06'),
(40, 9, 'pdf', 'module_contents/WSDJomvUYi35goTo71V1zOtVADQJdxaetRlTXYNo.pdf', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06'),
(41, 9, 'pdf', 'module_contents/3nAun0I3tEw1kHbov4EsTiRMivN8Zki9QU6SyYd4.pdf', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06'),
(42, 9, 'image', 'module_contents/QedhZIicLPpPVsrejbGOAq9Zopol5E1GREZPUbyl.png', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06'),
(43, 9, 'video', 'module_contents/YTZ9aEhVYyXROirynLioaJmUTX3zgmKg47pJmUcO.mp4', NULL, '2025-12-19 14:39:06', '2025-12-19 14:39:06'),
(44, 9, 'video', 'module_contents/r54uFCVeucn2EFIPTN5gW4M6FBHUMtDBEWVGZo6d.mp4', NULL, '2025-12-19 14:39:07', '2025-12-19 14:39:07'),
(45, 10, 'pdf', 'module_contents/bcs84DfJhIakmQKPXXLXGGtJnmPuY55MdDw1Fx7J.pdf', NULL, '2025-12-19 15:34:32', '2025-12-19 15:34:32'),
(46, 10, 'pdf', 'module_contents/SOAWUdMHFvaYEEGBSTaO4rLn8DZMylGwX21PUw0I.pdf', NULL, '2025-12-19 15:34:32', '2025-12-19 15:34:32'),
(47, 10, 'image', 'module_contents/LFiIRTGPmn3urEzHcza1hL0P6lVmAdXS76OyY8Pt.png', NULL, '2025-12-19 15:34:32', '2025-12-19 15:34:32'),
(48, 10, 'video', 'module_contents/dDkgUmCNsBbWqAYz62AOhB7UG2RvTXC4InCI6mjo.mp4', NULL, '2025-12-19 15:34:32', '2025-12-19 15:34:32'),
(49, 10, 'video', 'module_contents/NzmhzlauYRqYFkaotho5z2vWJXAqq2BhSLC6F7wM.mp4', NULL, '2025-12-19 15:34:33', '2025-12-19 15:34:33'),
(50, 11, 'pdf', 'module_contents/4DwDMWxCcn1dx5NJ7RlapOd7dSbG1XdtSWBOnLN2.pdf', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22'),
(51, 11, 'pdf', 'module_contents/K8MexID9cXWzwQ1od43G8fqXbRKOZh8p6vRF970i.pdf', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22'),
(52, 11, 'image', 'module_contents/qA40RgWsF8suVjvmZtxE9vaoAx3oKEXT8axtTLxe.png', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22'),
(53, 11, 'video', 'module_contents/PdtpcgRzZpx7pWdtqePRcFLCHYXaYK8jbBtcOyGv.mp4', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22'),
(54, 11, 'video', 'module_contents/WjKPsABM9aZhXgrrkyKy7f48LkxJi4UGBLMZlcjc.mp4', NULL, '2025-12-19 16:14:22', '2025-12-19 16:14:22'),
(55, 11, 'video', 'module_contents/Ob9QQIbBMCxdgocTDRubJHZWOexmOQ1Oh7kRJ2Rq.mp4', NULL, '2025-12-19 16:14:23', '2025-12-19 16:14:23'),
(56, 12, 'pdf', 'module_contents/l5qzVuQN2kACQWwZVIYMaywhtorlhCc6y9rzL1OL.pdf', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(57, 12, 'pdf', 'module_contents/DaChyQNQ6QVvctDFTighNR2bpkEYZDrSU5YxDGEt.pdf', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(58, 12, 'pdf', 'module_contents/VYxzl1bxtame7NqMkxRm61hp4YbpiXpvoc9HjTFI.pdf', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(59, 12, 'image', 'module_contents/72ZneIIvo0InteQr3DVBpd2r4cdVCuuXgFSj2ey9.png', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(60, 12, 'video', 'module_contents/172zzjVbRofUFeRzbrABPpy84EGumyJqFMKPopKC.m4v', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(61, 12, 'video', 'module_contents/vFRLnvaNVzZxgH22ct4PUYaX8JtBySOA4savtfot.m4v', NULL, '2025-12-19 16:39:07', '2025-12-19 16:39:07'),
(62, 13, 'pdf', 'module_contents/YpPZYacm0HoRsJqFdgjqqR8y9t0YJhHH3ibBMadB.pdf', NULL, '2025-12-19 19:03:10', '2025-12-19 19:03:10'),
(63, 13, 'pdf', 'module_contents/NzZCVBotvvhmXM4a8CqUYjhrjY7Vz3sekblvCXaF.pdf', NULL, '2025-12-19 19:03:10', '2025-12-19 19:03:10'),
(64, 13, 'image', 'module_contents/jpdAJguIWhGzODiVieYZDoYVKlpPYAjY3BFEN0S6.png', NULL, '2025-12-19 19:03:10', '2025-12-19 19:03:10'),
(65, 13, 'video', 'module_contents/3Ab3n5MFGhbQ0jjU5Sy7u7NGfOwpMwBbKjYJWVp9.mp4', NULL, '2025-12-19 19:03:11', '2025-12-19 19:03:11'),
(67, 13, 'video', 'module_contents/WZaKRbVRgr67w1kaQIohL21dntt4HOofCcMVrcp4.mp4', NULL, '2025-12-19 19:29:58', '2025-12-19 19:29:58'),
(68, 14, 'pdf', 'module_contents/CysLyUw57gjiwzWq2cGGWWnNCC4Fl8coUUDjshr6.pdf', NULL, '2025-12-19 19:42:36', '2025-12-19 19:42:36'),
(69, 14, 'pdf', 'module_contents/utN2GR0pqflZsX7rLUxrDaXHhs5A3h7LBYUAPSW8.pdf', NULL, '2025-12-19 19:42:36', '2025-12-19 19:42:36'),
(70, 14, 'pdf', 'module_contents/TKhN74UbtWwZ0kdAxf8VVcf5DLLl1UIyjfTFSWTo.pdf', NULL, '2025-12-19 19:42:36', '2025-12-19 19:42:36'),
(71, 14, 'image', 'module_contents/IYVvMu4M8RsgZQ9rVOKU7m64fthgeVHTtaNCZwu4.png', NULL, '2025-12-19 19:42:36', '2025-12-19 19:42:36'),
(72, 14, 'video', 'module_contents/VTAjCL1QdA6cs5eFIxPbZGXshjxsP8eFbror4OGf.mp4', NULL, '2025-12-19 19:42:37', '2025-12-19 19:42:37'),
(73, 14, 'video', 'module_contents/pXE7IPEGg7wEc3Pr7VJWERUJJid2jHwbUPuTidHI.m4v', NULL, '2025-12-19 19:43:55', '2025-12-19 19:43:55'),
(74, 15, 'pdf', 'module_contents/zr49sELO1J4g0mJ04NJuvezZYyGM9xqTDrcNemM8.pdf', NULL, '2025-12-19 19:50:56', '2025-12-19 19:50:56'),
(75, 15, 'pdf', 'module_contents/NRjhXLu5R7EwomejUBuLsX7MtOQfAP7wUCr7IsE7.pdf', NULL, '2025-12-19 19:50:56', '2025-12-19 19:50:56'),
(76, 15, 'image', 'module_contents/6wlJxrmQ4zQoeqd3e0dNMBwMSwdaXSYeSYcixaR6.png', NULL, '2025-12-19 19:50:57', '2025-12-19 19:50:57'),
(77, 15, 'video', 'module_contents/hznsCgNG9tXs9tv1fPC2p8rCbSxdPfXcBy2TILn5.m4v', NULL, '2025-12-19 19:50:57', '2025-12-19 19:50:57'),
(78, 15, 'video', 'module_contents/zBcxnDxaRyr3LMa6vGvyHAWaxokIUtXmXfbitFJH.mp4', NULL, '2025-12-19 19:52:11', '2025-12-19 19:52:11'),
(79, 16, 'pdf', 'module_contents/UoypwXuDqZw7WEwB9xjvOYiMex0EKPAKGxGNvmM0.pdf', NULL, '2025-12-19 19:59:45', '2025-12-19 19:59:45'),
(80, 16, 'pdf', 'module_contents/rygTVnfFkSYPhD5n1Uo0x3Fu3K6sY7emiEDpFKeB.pdf', NULL, '2025-12-19 19:59:45', '2025-12-19 19:59:45'),
(81, 16, 'pdf', 'module_contents/qSceu6u69H0ye2zepJ53AJdzbfiLfkPaT1jP8YFw.pdf', NULL, '2025-12-19 19:59:45', '2025-12-19 19:59:45'),
(82, 16, 'image', 'module_contents/DZvYepyRBiihFWBPlT3pYtwIjAzZQgeTZE9p5z8I.png', NULL, '2025-12-19 19:59:46', '2025-12-19 19:59:46'),
(83, 16, 'video', 'module_contents/FMstfZvnEs066Iy7dHctD2E0t4pMRSbKoD4cHlaG.mp4', NULL, '2025-12-19 19:59:47', '2025-12-19 19:59:47'),
(84, 16, 'video', 'module_contents/Afq39MLxC6UixxtEx3ihmxg4r6qf8LiKBcTmazsW.m4v', NULL, '2025-12-19 20:01:29', '2025-12-19 20:01:29'),
(85, 16, 'video', 'module_contents/ZGSFWpMu0lepFK235mNsS3gUh9o2etB9uPvGQO4Q.m4v', NULL, '2025-12-19 20:01:29', '2025-12-19 20:01:29'),
(86, 17, 'pdf', 'module_contents/wxJOVzWfsfU3aVerG2y8DBTWm3zW1ycxTclJJSwL.pdf', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31'),
(87, 17, 'pdf', 'module_contents/PXboUfNIOacYyb3q3XFlIllpaBiMBQGiKczlD84i.pdf', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31'),
(88, 17, 'pdf', 'module_contents/t0BF4VupsPLsW62c2PhgAI1OLWar894khJGr3S7b.pdf', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31'),
(89, 17, 'image', 'module_contents/XH2kvWVBd62M6snZ3m0zoFuYRfjWQPqf00aA24yW.png', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31'),
(90, 17, 'video', 'module_contents/r49mOIEIGsPZ1T41O42FVhPrvWgoCYP7x90JtBXa.m4v', NULL, '2025-12-19 20:07:31', '2025-12-19 20:07:31'),
(91, 17, 'video', 'module_contents/MO10AZ9Npu1498hKPS9cqD00W2HFoVNLcmsutc2T.mp4', NULL, '2025-12-19 20:08:31', '2025-12-19 20:08:31'),
(92, 4, 'video', 'module_contents/3Gtrds7vun3h5VY24hc2M5SBEr4cJtQUAI7EZnLW.m4v', NULL, '2025-12-22 12:52:32', '2025-12-22 12:52:32'),
(93, 12, 'video', 'module_contents/weAQisrDS3Xcbj8TJTl63Epjic7NiqxX6c0cKwaf.mp4', NULL, '2025-12-22 13:03:49', '2025-12-22 13:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2025-08-21 13:09:33', '2025-08-21 13:09:33'),
(2, 'role-create', 'web', '2025-08-21 13:09:33', '2025-08-21 13:09:33'),
(3, 'role-edit', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(4, 'role-delete', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(5, 'user-list', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(6, 'user-create', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(7, 'user-edit', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(8, 'user-delete', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `answer` varchar(255) NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `module_id`, `question`, `type`, `options`, `answer`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 'how many letters in alphabets?', 'multiple_choice', '[\"20\",\"21\",\"22\",\"26\"]', 'D', 1, '2025-09-25 19:21:21', '2025-09-25 19:21:21'),
(2, 1, 'there aer 26 letters in alphabets?', 'true_false', NULL, 'True', 1, '2025-09-25 19:22:02', '2025-09-25 19:22:02'),
(3, 2, 'Dolorem qui dolor ea', 'multiple_choice', '[\"20\",\"20\"]', 'A', 6, '2025-09-25 19:22:42', '2025-09-25 19:22:42'),
(5, 6, 'Kangaroo Song Components', 'true_false', '[null,null]', 'False', 1, '2025-12-19 13:17:10', '2025-12-19 13:17:10'),
(6, 7, 'high low component', 'true_false', '[null,null]', 'False', 1, '2025-12-19 14:13:12', '2025-12-19 14:13:12'),
(7, 8, 'Monster/Mouse Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 14:26:09', '2025-12-19 14:26:09'),
(8, 9, 'Farm Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 14:39:24', '2025-12-19 14:39:24'),
(9, 10, 'Starfish Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 15:36:22', '2025-12-19 15:36:22'),
(10, 11, 'Fast/Slow Components', 'true_false', '[null,null]', 'False', 1, '2025-12-19 16:14:42', '2025-12-19 16:14:42'),
(11, 12, 'Inchworm Components', 'true_false', '[null,null]', 'False', 1, '2025-12-19 16:53:02', '2025-12-19 16:53:02'),
(12, 13, 'Ally Went Fishing Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 19:03:26', '2025-12-19 19:03:26'),
(13, 14, 'Monkey Middle Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 19:43:10', '2025-12-19 19:43:10'),
(14, 15, 'Triangle Components', 'true_false', '[null,null]', 'False', 1, '2025-12-19 19:51:15', '2025-12-19 19:51:15'),
(15, 16, 'Pizza Guys Components', 'true_false', '[null,null]', 'True', 1, '2025-12-19 19:59:56', '2025-12-19 19:59:56'),
(16, 17, 'Band Practice Components', 'true_false', '[null,null]', 'False', 1, '2025-12-19 20:07:39', '2025-12-19 20:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_attempt_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `selected_answer` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `points_awarded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `quiz_attempt_id`, `quiz_id`, `selected_answer`, `is_correct`, `points_awarded`, `answered_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 0, 0, '2025-10-06 14:02:47', '2025-10-06 14:02:47', '2025-10-06 14:02:47'),
(2, 1, 2, 'true', 1, 1, '2025-10-06 14:02:51', '2025-10-06 14:02:51', '2025-10-06 14:02:51'),
(3, 2, 1, 'D', 1, 1, '2025-10-06 14:03:00', '2025-10-06 14:03:00', '2025-10-06 14:03:00'),
(4, 2, 2, 'false', 0, 0, '2025-10-06 14:03:03', '2025-10-06 14:03:03', '2025-10-06 14:03:03'),
(5, 3, 1, 'D', 1, 1, '2025-10-06 14:03:18', '2025-10-06 14:03:18', '2025-10-06 14:03:18'),
(6, 3, 2, 'true', 1, 1, '2025-10-06 14:03:19', '2025-10-06 14:03:19', '2025-10-06 14:03:19'),
(7, 4, 1, 'A', 0, 0, '2025-10-13 18:04:51', '2025-10-13 18:04:51', '2025-10-13 18:04:51'),
(8, 4, 2, 'true', 1, 1, '2025-10-13 18:04:56', '2025-10-13 18:04:56', '2025-10-13 18:04:56'),
(9, 5, 1, 'B', 0, 0, '2025-10-13 18:06:04', '2025-10-13 18:06:04', '2025-10-13 18:06:04'),
(10, 5, 2, 'true', 1, 1, '2025-10-13 18:06:08', '2025-10-13 18:06:08', '2025-10-13 18:06:08'),
(11, 6, 1, 'C', 0, 0, '2025-10-13 18:08:31', '2025-10-13 18:08:31', '2025-10-13 18:08:31'),
(12, 6, 2, 'true', 1, 1, '2025-10-13 18:08:35', '2025-10-13 18:08:35', '2025-10-13 18:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_profile_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in_progress',
  `total_points` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_points` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `question_order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `current_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time_limit_minutes` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `child_profile_id`, `course_id`, `module_id`, `started_at`, `completed_at`, `status`, `total_points`, `max_points`, `question_order`, `current_index`, `time_limit_minutes`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2025-10-06 14:02:43', '2025-10-06 14:02:51', 'completed', 1, 2, '[1,2]', 2, 30, '2025-10-06 14:02:43', '2025-10-06 14:02:51'),
(2, 1, 2, 1, '2025-10-06 14:02:57', '2025-10-06 14:03:03', 'completed', 1, 2, '[1,2]', 2, 30, '2025-10-06 14:02:57', '2025-10-06 14:03:03'),
(3, 1, 2, 1, '2025-10-06 14:03:15', '2025-10-06 14:03:19', 'completed', 2, 2, '[1,2]', 2, 30, '2025-10-06 14:03:15', '2025-10-06 14:03:19'),
(4, 1, 2, 1, '2025-10-13 18:04:43', '2025-10-13 18:04:56', 'completed', 1, 2, '[1,2]', 2, 30, '2025-10-13 18:04:43', '2025-10-13 18:04:56'),
(5, 1, 2, 1, '2025-10-13 18:05:59', '2025-10-13 18:06:08', 'completed', 1, 2, '[1,2]', 2, 30, '2025-10-13 18:05:59', '2025-10-13 18:06:08'),
(6, 1, 2, 1, '2025-10-13 18:08:23', '2025-10-13 18:08:35', 'completed', 1, 2, '[1,2]', 2, 30, '2025-10-13 18:08:23', '2025-10-13 18:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34'),
(2, 'Parent', 'web', '2025-08-21 13:09:34', '2025-09-08 12:15:31'),
(3, 'Learner', 'web', '2025-08-21 13:09:34', '2025-08-21 13:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1LApiJQHSkVuQRGkjBVwOAbxaovhEinmDxK82wJu', NULL, '205.210.31.35', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUxSRFNMdGwwVEZ5dFhkV3B2SFVjQW54OHB3UjllVkMxN245NDY2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768115147),
('5LV2aCFUFNrL2Bbsb3Q2JArxUObpyOiD5YJT3TCW', NULL, '35.175.212.78', 'python-requests/2.32.5', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMHVoc1ZxRnVUeTN1QXU5Z2x3blRBN3hJM2cza0VzQ0I3SG91V0JJNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768042633),
('7bdU5ou1JsctBaLd37Eh4Wi4WKidrEv6ghBLFX8h', NULL, '167.94.138.195', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczZtWVRwUlRLUkZqVGtPM1h0elo3STR6YnJON0Rtb09LeEYyWncyOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768057103),
('as8gOHpMz8Y6y5zArsZwFjDid0kTU6oEjWjTRIXx', NULL, '27.115.124.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkxSNzNhZjlPTjFEaFhzOFd1SDJlSE1mSTM0cm9QdnVBVHRwUHNVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768209557),
('MJlLn5ifDCsgT0nZabZo7z0wg4UkrfvaK2Kn7ZWT', NULL, '13.217.15.194', 'python-requests/2.32.5', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUEg3T0V6OUxNWlB2V0VTMlpWTmtVNHVGa05jZG5vRnJFTU5jMFBKdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768044881),
('NijLqcbwrxxfTHb5VAX1mx65E3ofZraoc4BCgazz', NULL, '167.94.146.56', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEJQVWp4R3Q5d3lPbzdtNXpTWVV2REhXS0RIendoTHVwTm9MOUxWZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768139641),
('RLPSbCqb64gLrsFQSAp1MagmnNqDKaM8cOd3xAJR', NULL, '167.94.138.195', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0h2MnZaOEdTbnJtV2lYbmtRQTZMeWpjT3VPZDNYMVplVEIwRlNXUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768057162),
('UlVZXK61lpIdOAE0GD6646y9G9KBDuywqAFJCQp5', NULL, '204.76.203.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0U1SFRjU0xvblozanJyR3U5cUpXakp5ZloxQVZtS2h1OFdWRmhTSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767956586),
('Upo24QEuVCIh8b22yEDcDfK7A6wxp08o6dZXFOog', NULL, '3.253.193.136', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUYybkM4TXVmSmdlUW9RaUtPTlRzNHJOU0EyT1d3NTdZbkE1S2hZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767951053),
('vlKqBkkfeMPWNPVKD6gXJndT9Q81R4xKepeETHZc', NULL, '167.94.146.56', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3BvcXZqbFBybTJ2QlQ1TmNXNG51RGlPTTI4MHg2Z1daT0NESjd2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768139655),
('XSONbLyr2HMsbyaNIUCOfYZpMIvWOk3yzPD3G1jv', NULL, '18.188.191.244', 'Mozilla/5.0 (Linux; Android 8.0.0; LLD-L31) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.90 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlVsb1RGR0RGMkFTTWZUSVZHWWNncEh5RTNQQklieVh6VVVtM2hqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768065795),
('ZtZsFPxMbEEdXrTfXWtpdUMgj9TnWwOl0kaX1hV6', NULL, '34.247.57.242', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW1mOXFzOVlUc0hPVmUwRDFLY3ZkNko0VDh5dnQ0aU1JU3NEaGN3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXJpbi5jc3RtcGFuZWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768240713);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_events`
--

CREATE TABLE `subscription_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `local_subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_subscription_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `stripe_price_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `occurred_at` timestamp NULL DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_features`
--

CREATE TABLE `subscription_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) NOT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_price_id` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `interval` varchar(255) NOT NULL DEFAULT 'monthly',
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `tier_key` varchar(255) DEFAULT NULL,
  `tier_priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `access_summary` varchar(255) DEFAULT NULL,
  `content_updates_summary` varchar(255) DEFAULT NULL,
  `purpose_summary` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `name`, `stripe_price_id`, `price`, `interval`, `is_trial`, `tier_key`, `tier_priority`, `access_summary`, `content_updates_summary`, `purpose_summary`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 'price_1SBKlYK7gtqB72uYNt5eFBQi', 999.00, 'month', 0, NULL, 0, NULL, NULL, NULL, '2025-09-25 19:23:44', '2025-09-25 19:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2025-08-21 13:09:34', '$2y$12$fwjf328ivHp1PbRrkDPf2uMeHTvlBm.iyZ5SYXH/ARThVPwduFOt.', '3XXgyQprONIsfrvxbgAsbN0tFuh1P1iEL6HVjH0VQLI18HcupT1MuJOj9AVp', '2025-08-21 13:09:34', '2025-08-21 13:09:34', NULL, NULL, NULL, NULL),
(2, 'Sebastian James', 'user@gmail.com', NULL, '$2y$12$x2gi.IhJKUZo1tT25ESde.l8Jcadv2McwmEz/OH.2TE3iFtIS5qIm', 'xQCocL4qvoaBufES4l7IBuZOvhoRzV01VZKnpg6cUXGBRjCtMR4HZGnrTFqM', '2025-09-08 12:15:19', '2025-09-08 12:15:19', NULL, NULL, NULL, NULL),
(4, 'Gray Mathew', 'gray.matthewdns@gmail.com', NULL, '$2y$12$nGYAY0YGADrCe0ycYng6bePf0L2MIsk/Zc7GzELrNL009HwbTbUgq', NULL, '2025-12-16 21:08:39', '2025-12-16 21:08:39', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_library_items`
--

CREATE TABLE `video_library_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `media_path` varchar(255) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `access_tier` varchar(255) NOT NULL DEFAULT 'silver',
  `access_priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_standalone` tinyint(1) NOT NULL DEFAULT 0,
  `standalone_price` decimal(10,2) DEFAULT NULL,
  `standalone_rental_price` decimal(10,2) DEFAULT NULL,
  `standalone_rental_hours` smallint(5) UNSIGNED DEFAULT 72,
  `standalone_category` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `published_at` timestamp NULL DEFAULT NULL,
  `uploaded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_library_items`
--

INSERT INTO `video_library_items` (`id`, `title`, `slug`, `content_type`, `description`, `body`, `media_path`, `thumbnail_path`, `external_url`, `access_tier`, `access_priority`, `is_standalone`, `standalone_price`, `standalone_rental_price`, `standalone_rental_hours`, `standalone_category`, `is_featured`, `is_published`, `published_at`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(1, 'Repellendus Dolorem_Grey Matthews', 'Praesentium sed at u', 'short_film', 'Sit maxime exercitat', 'Doloremque sapiente', 'video-library/media/0iQ2GLyETTR41bWeYQtRnAxrWX43iLKBYXFKMnJO.pdf', 'video-library/thumbnails/bv8aQ3piQl8sNynWsVrY7FzefV7iahyajKmciENX.png', NULL, 'platinum', 3, 0, NULL, NULL, 72, NULL, 0, 1, '2025-11-21 01:44:00', 1, '2025-11-21 17:45:32', '2025-11-21 17:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `video_purchases`
--

CREATE TABLE `video_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `video_library_item_id` bigint(20) UNSIGNED NOT NULL,
  `access_type` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'usd',
  `status` varchar(30) NOT NULL DEFAULT 'pending',
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_id` varchar(255) DEFAULT NULL,
  `purchased_at` timestamp NULL DEFAULT NULL,
  `rental_expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_profiles`
--
ALTER TABLE `child_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`);

--
-- Indexes for table `course_purchases`
--
ALTER TABLE `course_purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_purchases_user_id_course_id_unique` (`user_id`,`course_id`),
  ADD KEY `course_purchases_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_course_id_foreign` (`course_id`);

--
-- Indexes for table `module_contents`
--
ALTER TABLE `module_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_contents_module_id_foreign` (`module_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_module_id_foreign` (`module_id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quiz_answers_quiz_attempt_id_quiz_id_unique` (`quiz_attempt_id`,`quiz_id`),
  ADD KEY `quiz_answers_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_attempts_child_profile_id_foreign` (`child_profile_id`),
  ADD KEY `quiz_attempts_course_id_foreign` (`course_id`),
  ADD KEY `quiz_attempts_module_id_foreign` (`module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_events`
--
ALTER TABLE `subscription_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_events_user_id_type_index` (`user_id`,`type`),
  ADD KEY `subscription_events_stripe_subscription_id_index` (`stripe_subscription_id`);

--
-- Indexes for table `subscription_features`
--
ALTER TABLE `subscription_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_features_subscription_plan_id_foreign` (`subscription_plan_id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscription_items_subscription_id_stripe_price_index` (`subscription_id`,`stripe_price`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `video_library_items`
--
ALTER TABLE `video_library_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_library_items_slug_unique` (`slug`),
  ADD KEY `video_library_items_uploaded_by_foreign` (`uploaded_by`);

--
-- Indexes for table `video_purchases`
--
ALTER TABLE `video_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_purchases_video_library_item_id_foreign` (`video_library_item_id`),
  ADD KEY `video_purchases_user_id_video_library_item_id_index` (`user_id`,`video_library_item_id`),
  ADD KEY `video_purchases_status_access_type_index` (`status`,`access_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `child_profiles`
--
ALTER TABLE `child_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `course_purchases`
--
ALTER TABLE `course_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `module_contents`
--
ALTER TABLE `module_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_events`
--
ALTER TABLE `subscription_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_features`
--
ALTER TABLE `subscription_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video_library_items`
--
ALTER TABLE `video_library_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_purchases`
--
ALTER TABLE `video_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_profiles`
--
ALTER TABLE `child_profiles`
  ADD CONSTRAINT `child_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_purchases`
--
ALTER TABLE `course_purchases`
  ADD CONSTRAINT `course_purchases_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_contents`
--
ALTER TABLE `module_contents`
  ADD CONSTRAINT `module_contents_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD CONSTRAINT `quiz_answers_quiz_attempt_id_foreign` FOREIGN KEY (`quiz_attempt_id`) REFERENCES `quiz_attempts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_answers_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_child_profile_id_foreign` FOREIGN KEY (`child_profile_id`) REFERENCES `child_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempts_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_events`
--
ALTER TABLE `subscription_events`
  ADD CONSTRAINT `subscription_events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_features`
--
ALTER TABLE `subscription_features`
  ADD CONSTRAINT `subscription_features_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_library_items`
--
ALTER TABLE `video_library_items`
  ADD CONSTRAINT `video_library_items_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `video_purchases`
--
ALTER TABLE `video_purchases`
  ADD CONSTRAINT `video_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_purchases_video_library_item_id_foreign` FOREIGN KEY (`video_library_item_id`) REFERENCES `video_library_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
