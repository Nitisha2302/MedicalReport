-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 08:59 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pentasof_doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_plans`
--

CREATE TABLE `doctor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_plans`
--

INSERT INTO `doctor_plans` (`id`, `doctor_id`, `plan_id`, `start_date_time`, `end_date_time`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 4, 2, '2024-04-09 05:11:53', '2024-10-09 05:11:53', 'expired', NULL, '2024-04-08 23:41:53', '2024-04-08 23:45:12'),
(5, 4, 3, '2024-04-09 05:15:12', '2025-04-09 05:15:12', 'current', NULL, '2024-04-08 23:45:12', '2024-04-08 23:45:12'),
(6, 18, 2, '2024-04-09 05:28:53', '2024-10-09 05:28:53', 'current', NULL, '2024-04-08 23:58:53', '2024-04-08 23:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `doctor_id`, `rating`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:05:32', '2024-04-08 02:05:32'),
(2, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:05:35', '2024-04-08 02:05:35'),
(3, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:06:09', '2024-04-08 02:06:09'),
(4, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:06:36', '2024-04-08 02:06:36'),
(5, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:08:52', '2024-04-08 02:08:52'),
(6, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:09:17', '2024-04-08 02:09:17'),
(7, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:09:33', '2024-04-08 02:09:33'),
(8, 1, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:09:54', '2024-04-08 02:09:54'),
(9, 5, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:10:12', '2024-04-08 02:10:12'),
(10, 5, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:14:36', '2024-04-08 02:14:36'),
(11, 5, '12', 'Asdasdsdsd', NULL, '2024-04-08 02:15:50', '2024-04-08 02:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_15_110811_create_permission_tables', 1),
(11, '2024_03_15_111337_update_users_table', 1),
(12, '2024_03_18_082648_create_patients_table', 2),
(13, '2024_03_23_054136_create_reports_table', 3),
(14, '2024_03_23_063436_add_reports_unique_id', 4),
(15, '2018_08_08_100000_create_telescope_entries_table', 5),
(16, '2024_03_30_063436_add_patiemt_reference', 6),
(17, '2024_04_04_130331_create_feedback_table', 7),
(18, '2024_04_05_114537_create_plans_table', 8),
(19, '2024_04_06_062809_create_doctor_plans_table', 9),
(20, '2024_04_09_111337_update_plans_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 26);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0001c16b6e712dfcf8573ae9b11d425ff63e96414a8a011d8e67deef54942409a2a047eabc873f31', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:00:48', '2024-03-18 01:00:48', '2025-03-18 06:30:48'),
('00e4d5c3c952ce4c0273b3d7db717409735aafc034a9b4f35893809fb6a539fcccc4145ccfa59fe5', 5, 1, 'Woman', '[]', 0, '2024-04-22 13:06:02', '2024-04-22 13:06:02', '2025-04-22 09:06:02'),
('01826ee588c650b8e8f1d9dd521319dbacfe9f1b7bd7845de700148437ef41764f4e5d08d1fe5926', 5, 1, 'Woman', '[]', 0, '2024-03-23 00:09:16', '2024-03-23 00:09:16', '2025-03-23 05:39:16'),
('0335d82e8fdcb389e1d622ed32d9f16b376fc3bf5609bbc021a7239c59aa69513cdf4ed44ca96a9a', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:41:02', '2024-03-18 01:41:02', '2025-03-18 07:11:02'),
('0a1808b5d4040204e48a7a445ab11f7f3857665f5552ce16325f80591aec7e6b562e222c179a847f', 5, 1, 'Woman', '[]', 0, '2024-04-08 03:38:23', '2024-04-08 03:38:23', '2025-04-08 09:08:23'),
('0bca8959244aeeafcd2e148d9fda4993cf0be1e3c033e1dd541568288842d401206e952f395ee73c', 4, 1, 'aasd', '[]', 0, '2024-03-18 00:53:17', '2024-03-18 00:53:17', '2025-03-18 06:23:17'),
('0c2464f119a883700e9e1acaf9989d599b78f53de9c7d18c742877eb9d3a7c4ceb2a6b0990f64d42', 5, 1, 'Woman', '[]', 0, '2024-04-10 09:23:32', '2024-04-10 09:23:32', '2025-04-10 05:23:32'),
('1059b0b6b3177a7b206fd465262ee9cf1480742e50b5b1e23ea5924adab8796ecf21eab3dcb2bc7a', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:09:30', '2024-03-18 01:09:30', '2025-03-18 06:39:30'),
('10d21f42d8d30f2c05e9aeab9e0b0d8d81d9182be3b4acb530d247f8c5f63936e9e9dce3828f0952', 5, 1, 'Woman', '[]', 0, '2024-04-23 09:40:25', '2024-04-23 09:40:25', '2025-04-23 05:40:25'),
('22cccbf8bff242b3263cd9a4544dcdbc7f9842db22f22c47bccac790586f4e74be506dfcee63d56f', 5, 1, 'Woman', '[]', 0, '2024-04-22 11:42:30', '2024-04-22 11:42:30', '2025-04-22 07:42:30'),
('230d3e70647e2c7678de548cdae518d7f6b838154977e3a901f79351d51444a38167320ac9073c2e', 26, 1, 'Demo', '[]', 0, '2024-04-17 15:25:49', '2024-04-17 15:25:49', '2025-04-17 11:25:49'),
('25bb6abf04f90bbc30d099492bd4a8fddfe37975102a3328d1c391165902c4a43203549b68096520', 5, 1, 'Woman', '[]', 1, '2024-03-23 00:04:22', '2024-03-23 00:04:25', '2025-03-23 05:34:22'),
('292f170b3c57c39a1eae53143dd5329021d67fe9526f87d9a0573e932f3df559bd8b8795588ae310', 5, 1, 'Woman', '[]', 0, '2024-03-22 23:17:44', '2024-03-22 23:17:45', '2025-03-23 04:47:44'),
('2a3d204f17f75bcf85241abcf130474586b9282dbdcbac53276895d7c7dc4035dd90bc0942910b37', 5, 1, 'Woman', '[]', 0, '2024-03-30 04:03:43', '2024-03-30 04:03:43', '2025-03-30 09:33:43'),
('2de2f1b3077ab95416c57eeb92de16542d6bddeb48a3ee4a5d785f674a0b6bdaca3131f269ca424b', 5, 1, 'Woman', '[]', 0, '2024-04-09 16:26:47', '2024-04-09 16:26:47', '2025-04-09 12:26:47'),
('314b3ecc739ebd55b64e70393bcb70c611808bbe22d0e5bd2ccffb0b75b976dd0876826f1b47f92a', 5, 1, 'Woman', '[]', 0, '2024-05-14 14:24:49', '2024-05-14 14:24:49', '2025-05-14 10:24:49'),
('31e1977f544cd5cbb211d861a3a4f17d86012d3c2c70d69ab3af5c36608370fe24c38d6b2d349f43', 5, 1, 'Woman', '[]', 0, '2024-05-06 13:05:52', '2024-05-06 13:05:52', '2025-05-06 09:05:52'),
('3808b6bfd3b63321986dbc1b5115a99cd57d9668a173d88616fdd04ef7cbc7c3c17f2b3b59a7ec39', 5, 1, 'Woman', '[]', 0, '2024-04-22 13:29:42', '2024-04-22 13:29:42', '2025-04-22 09:29:42'),
('3971e4c28c739b26ee5912355a95e7059f9bb4f1559a224047595bda23b3c1ba1e58005cfdcf05b4', 5, 1, 'Woman', '[]', 0, '2024-05-10 15:39:52', '2024-05-10 15:39:52', '2025-05-10 11:39:52'),
('3a6b13d914e4135015168e2bed4679ae8763dfdff177b3a2bb83cb30972a148d7db24bba4cd8211c', 26, 1, 'Demo', '[]', 0, '2024-05-02 16:53:22', '2024-05-02 16:53:22', '2025-05-02 12:53:22'),
('3b7ca7e4288eec3f6b2d411923e728004c748e94e9093ee1ee6b071a42c3b8c2c3a85cf19731baa2', 4, 1, 'YourAppToken', '[]', 0, '2024-03-18 00:51:54', '2024-03-18 00:51:54', '2025-03-18 06:21:54'),
('3ca24da6d5bb89a08326839ad2b46d41a975644c5a40101a329a276eaa909e32c07d17a1dfb28bc2', 5, 1, 'Woman', '[]', 0, '2024-04-22 10:42:01', '2024-04-22 10:42:01', '2025-04-22 06:42:01'),
('40e6896883932e3ee014d877ca2abe403053965cdd6db3ea400508cf4c3c929c1ce21e4216207254', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:40:55', '2024-03-18 01:40:55', '2025-03-18 07:10:55'),
('42256a42af66ea7d1a5588e9910f4ea01dfcf3c0d8258c83a31c4afa2e5e32c3e09e079732ea4b8c', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:04:53', '2024-03-18 01:04:53', '2025-03-18 06:34:53'),
('46a1ef64f6d1c9fffd44c10f81ba3ea6c1bbfff754a5694b631d16ff8eee1443812c02c55aeb8c50', 5, 1, 'Woman', '[]', 0, '2024-05-11 11:32:05', '2024-05-11 11:32:05', '2025-05-11 07:32:05'),
('477f41160a31e485443c426e299f6adf4dd04fd6ab4b16ce5a10e5c03aaaf98f46ffccf088d729bb', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:15:53', '2024-03-18 01:15:53', '2025-03-18 06:45:53'),
('4ab2686587044cd9a7d26aae34b0c942fb92b24d43cd7fe30b43317b9ffa98b5bc9c0b8affe8431c', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:06:35', '2024-03-18 01:06:35', '2025-03-18 06:36:35'),
('4c6e716f42cafe4e48e60297646536f8f13f3b92dd5252b31a86e5445f66566a96135ba5d7a0497f', 5, 1, 'Woman', '[]', 0, '2024-05-10 15:37:06', '2024-05-10 15:37:06', '2025-05-10 11:37:06'),
('5583e3823d71ae475cd4dcd5a8a908ec855f8c09fa538a48f6babc30b19b9df432c274587da831f5', 26, 1, 'Demo', '[]', 0, '2024-04-17 13:14:08', '2024-04-17 13:14:08', '2025-04-17 09:14:08'),
('56995a31164bd041a66e157fc25830888b442c88be51579c2d66cd6621c9b96e593ef87855b9069d', 26, 1, 'Demo', '[]', 0, '2024-05-02 16:41:14', '2024-05-02 16:41:14', '2025-05-02 12:41:14'),
('5979fc918c69117203dc61a0c997d7e1cb1030537346073824df8959c95032bfd46f169ea788106d', 26, 1, 'Demo', '[]', 0, '2024-04-17 12:00:33', '2024-04-17 12:00:33', '2025-04-17 08:00:33'),
('6c07095cdef098e28bd64a803cd635cfa2438ae71c6c72f9e088880a9c3d2e777d5ba153fee3a165', 5, 1, 'Woman', '[]', 0, '2024-03-22 23:54:16', '2024-03-22 23:54:16', '2025-03-23 05:24:16'),
('6f094aef196015824fcdee2209e986324637f1100ae5f78494110a1cd7ee007bfb6dbc2e28387081', 5, 1, 'Woman', '[]', 0, '2024-05-10 12:26:17', '2024-05-10 12:26:17', '2025-05-10 08:26:17'),
('7265ddc29eb8d01770703d3f10e1c9fd71835e99cdcaedd57b06c647169d97628868503e5c055a3c', 5, 1, 'Woman', '[]', 0, '2024-04-08 02:10:03', '2024-04-08 02:10:03', '2025-04-08 07:40:03'),
('768d567addcdb507076a9d47cea443874c79beb63cc12d2be5ac5a748c0c5976e262f2d5d2656a22', 5, 1, 'Woman', '[]', 1, '2024-03-23 00:00:20', '2024-03-23 00:00:38', '2025-03-23 05:30:20'),
('77ddb0859f4b94bfdd2eb04a23e6a779e7bfa08374191dd7e7759404cb5d8da3f9bff0e5580677c3', 4, 1, 'aasdddd', '[]', 0, '2024-04-09 00:05:36', '2024-04-09 00:05:36', '2025-04-09 05:35:36'),
('7a7be5f6e6f68b7636f487df4e5fa7ba18c5a055f7b0777da4c7b93ebdf0090f51c788a68279b4ef', 5, 1, 'Woman', '[]', 0, '2024-04-23 09:35:42', '2024-04-23 09:35:42', '2025-04-23 05:35:42'),
('7ce41478a3aca32820c748bcc8222708cc36afd2036369ca2b14603c497d36da851cde23bdfc33f6', 5, 1, 'Woman', '[]', 0, '2024-05-14 15:34:43', '2024-05-14 15:34:43', '2025-05-14 11:34:43'),
('7fb14094d2c77f902508292840841e3f7539a6771536ed2bd187ca2055a1c96f0c7ba9dabf0ffc7f', 5, 1, 'Woman', '[]', 0, '2024-05-14 09:05:27', '2024-05-14 09:05:27', '2025-05-14 05:05:27'),
('81feba04ba480a744935994926e09c383ea28b62cb85892b9dbc3b3f648fba238beeec69c2acbb83', 5, 1, 'Woman', '[]', 0, '2024-05-14 15:28:33', '2024-05-14 15:28:33', '2025-05-14 11:28:33'),
('82040340e9aec315cbb163f691dc65518b3829bcfc78bcad1b22be1bf5d24e867da00d0836edb591', 5, 1, 'Woman', '[]', 0, '2024-03-23 00:21:41', '2024-03-23 00:21:41', '2025-03-23 05:51:41'),
('896440db952695218816f6ee79e8664e7e0a70780a64e784c906b58ec84a7c90063352d1d275078d', 4, 1, 'aasdddd', '[]', 0, '2024-04-09 00:07:14', '2024-04-09 00:07:15', '2025-04-09 05:37:14'),
('8aa3402a277aded0e51de92d2c81d5e7ed529886a4a50feec661fe13c1ccc5d8740be6137cac9ebc', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:04:51', '2024-03-18 01:04:51', '2025-03-18 06:34:51'),
('8fe8befeecddb17384f904b6e979b7022db997f6c7ce4b34fe3c4a7788c4020ec1baa7f794544c29', 5, 1, 'Woman', '[]', 0, '2024-05-14 16:32:16', '2024-05-14 16:32:16', '2025-05-14 12:32:16'),
('92c640d5e87244919ad881d2808d72191603ba5d5fb9a308484912f08b3cb400e2ade81e33a3d517', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:40:33', '2024-03-18 01:40:34', '2025-03-18 07:10:33'),
('9414362d48147d78b3f5954a28ca3c11461cb5b9b69b369e6be04768aa378278ce41c03d98051f37', 5, 1, 'Woman', '[]', 0, '2024-04-09 16:35:40', '2024-04-09 16:35:40', '2025-04-09 12:35:40'),
('9ae4e0ea1ff1ac219d1632df1531f6fc0662360f6bb9d8ab5f825aae69918242d3152b27992ad941', 5, 1, 'Woman', '[]', 1, '2024-04-09 16:34:33', '2024-04-22 11:09:26', '2025-04-09 12:34:33'),
('a587d99ffb4a3e0d8c80206a3aacb79841cdcdf76a5a5ee6b0017364b8d7814e92da7a2160eeb316', 4, 1, 'YourAppToken', '[]', 0, '2024-03-18 00:51:18', '2024-03-18 00:51:19', '2025-03-18 06:21:18'),
('a5a2f25a7bfb6903ea633c07660a3b32d4147069b3e649cef997485c9ff408988d4b5548392abb71', 5, 1, 'Woman', '[]', 0, '2024-04-08 01:56:27', '2024-04-08 01:56:27', '2025-04-08 07:26:27'),
('a6cf60b5b8c34ac6b9f1b9a49e077aa470e1855e132619910a7bdc95132ba077aa659b05a240c3dc', 5, 1, 'Woman', '[]', 0, '2024-03-30 01:55:29', '2024-03-30 01:55:31', '2025-03-30 07:25:29'),
('a9a037f5b948fe330a9c46714dec42a2158e1c94f37eb8b5038db29d4ea467fec9bb6b7441d1997a', 5, 1, 'Woman', '[]', 0, '2024-04-29 14:25:03', '2024-04-29 14:25:03', '2025-04-29 10:25:03'),
('ad889c4257c345f2370be0a64456e00c9249d8e114325793b63f9be04a40aad8622fba1cc5bca0e8', 4, 1, 'aasd', '[]', 0, '2024-03-18 07:26:19', '2024-03-18 07:26:20', '2025-03-18 12:56:19'),
('bb0b68e684cddcdbcfefa099ca1fb44fe69202408689069ac4786395eb799f362848aedf84b90582', 5, 1, 'Woman', '[]', 0, '2024-03-30 00:21:16', '2024-03-30 00:21:16', '2025-03-30 05:51:16'),
('becad5e4436e5f2b61e14ddfa101506fede6d7e8760603fcea6c1bfac0101f8075591b9a301fbf9d', 4, 1, 'aasdddd', '[]', 0, '2024-04-09 00:04:57', '2024-04-09 00:04:58', '2025-04-09 05:34:57'),
('c7682ce5bb43b00f1b5e9e3fecf37937f1b68f0765a077f54ce81d832f01c9ae4ca243b181e3669d', 4, 1, 'aasd', '[]', 0, '2024-03-18 02:06:50', '2024-03-18 02:06:51', '2025-03-18 07:36:50'),
('c841c52ecd048bf9445ceb9788a061f664b1d007199208154d85d687ea90b4da0bd491afd9e61cdc', 5, 1, 'Woman', '[]', 0, '2024-04-09 00:07:53', '2024-04-09 00:07:53', '2025-04-09 05:37:53'),
('c97574766ad72d69887916b9de06412bca736ba9acda3333b2e77fc4ebedb42d804f31b71348f61d', 5, 1, 'Woman', '[]', 0, '2024-05-14 16:19:30', '2024-05-14 16:19:30', '2025-05-14 12:19:30'),
('deaf783a06161beb1521c0ced329d8967a900a1066f45e228af8b411f22ce378e6d2370af2b74a08', 5, 1, 'Woman', '[]', 0, '2024-03-30 01:56:09', '2024-03-30 01:56:09', '2025-03-30 07:26:09'),
('e2d27ac5b8ce5c0541da2b3cc5a5a06ef9a63d6545c1327c27bb4df9d3cb44f76a3548245bad721e', 26, 1, 'Demo', '[]', 0, '2024-05-01 11:34:53', '2024-05-01 11:34:53', '2025-05-01 07:34:53'),
('e2e44ad603a918e294e19d75a583ed85f58c90fe231218ca57cf420a99f7447968b0b08fbabdc87f', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:00:18', '2024-03-18 01:00:18', '2025-03-18 06:30:18'),
('e60e38cb5f038be90944727ec090ca4a21d7347443111378fc6509320a4828f12bdcbb200011d678', 5, 1, 'Woman', '[]', 0, '2024-05-15 11:27:07', '2024-05-15 11:27:07', '2025-05-15 07:27:07'),
('e71c41400cc3c55521706a4c935a07fddb6aab916281def2be4c13503936b326f82fdac4f151fafb', 26, 1, 'Demo', '[]', 0, '2024-05-12 08:17:15', '2024-05-12 08:17:15', '2025-05-12 04:17:15'),
('eea66c1b046968ef033e232245299ef3dbeabfe4c80720eb998c729a33e9cda4655dd93b39601b0f', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:40:58', '2024-03-18 01:40:58', '2025-03-18 07:10:58'),
('ef95c520b47a9764c0f1089f3641835a6a9f5224326a67c062744474d536a101a9b93b09a3bbf737', 26, 1, 'Demo', '[]', 0, '2024-05-03 11:16:48', '2024-05-03 11:16:48', '2025-05-03 07:16:48'),
('efa97601b6ea281130a85539bdb762649fc279f0bdb0a1f87aad987399a4d3831d1bb30c632eb40c', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:06:12', '2024-03-18 01:06:12', '2025-03-18 06:36:12'),
('f2159e4dc4848701660ef2cbc368f95ca467c9f4d1cf2940cebd56ee755fe9ddff0163066f422e2a', 26, 1, 'Demo', '[]', 0, '2024-05-01 11:33:54', '2024-05-01 11:33:54', '2025-05-01 07:33:54'),
('f71c6f47427e740402338fabf05ebafa303f4c350610e66864ce2dc35bde3805c4941be42a78c0d7', 5, 1, 'Woman', '[]', 1, '2024-03-23 00:05:30', '2024-03-23 00:05:34', '2025-03-23 05:35:30'),
('f763bd0f399a4d58856f50ab209bbccfe80372d733ec4f2678cc861b70e72327466e28658ef548e7', 5, 1, 'Woman', '[]', 0, '2024-04-08 02:05:41', '2024-04-08 02:05:41', '2025-04-08 07:35:41'),
('f85a4b41f2be04141d4dc6a7518990db9c90d5d989f2a4a4f5c813b453f39269d2d0fe3aa42581fd', 5, 1, 'Woman', '[]', 0, '2024-05-10 15:17:55', '2024-05-10 15:17:55', '2025-05-10 11:17:55'),
('fe99f31861ef8ca2d8abb19c0ac8649d87ff02f5eaf7c3b1a450d3c8a5fc18579de01d7f524e106f', 5, 1, 'Woman', '[]', 0, '2024-05-13 08:30:02', '2024-05-13 08:30:02', '2025-05-13 04:30:02'),
('ff30af389b81b27d20678672fef9ea3328f4cbd50958ba890c71189a27984935634ccc82f2efbd5f', 4, 1, 'aasd', '[]', 0, '2024-03-18 01:09:47', '2024-03-18 01:09:47', '2025-03-18 06:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'CC4CjDQAOb3gthfq5g10j0zAhpFwcpbrlzdZOpQF', NULL, 'http://localhost', 1, 0, 0, '2024-03-18 00:51:10', '2024-03-18 00:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-18 00:51:10', '2024-03-18 00:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$8Je0w808HvRHjPWE2vOIP.w6NSCNtiRHzrv6mDH4Dx/cwfS2jp8h6', '2024-03-18 06:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `user_id`, `name`, `email`, `phone`, `date_of_birth`, `address`, `gender`, `blood_group`, `height`, `weight`, `image`, `deleted_at`, `created_at`, `updated_at`, `reference_by`) VALUES
(1, 4, 'Himanshi', 'patient@test.com', '6688995544', NULL, 'asdsad', 'female', 'A+', '6.5', '79', '/storage/patent/images/aT8DcwAxc9EodX67j2Ui3wQy3RtFx6MEgS3PiYMN.jpg', NULL, '2024-03-18 07:26:29', '2024-03-18 07:26:29', NULL),
(2, 5, 'Himanshu', 'patient@test.com', '6688995544', '1970-01-01', 'Gill pati street no 3', 'male', 'B+', '5.5', '56', NULL, NULL, '2024-03-23 00:25:07', '2024-03-23 00:25:07', NULL),
(3, 5, 'Himanshu', 'patient@test.com', '6688995544', '2023-12-21', 'Gill pati street no 3', 'male', 'B+', '5.5', '56', NULL, NULL, '2024-03-23 00:25:19', '2024-03-23 00:25:19', NULL),
(4, 26, 'test', 'test@test.com', '9560494030', '1970-01-01', NULL, NULL, NULL, '170', '', NULL, NULL, '2024-04-17 12:01:37', '2024-04-17 12:01:37', NULL),
(5, 5, 'Himanshu', 'patient@test.com', '6688995544', '2023-12-21', 'Gill pati street no 3', 'female', 'B+', '5.5', '56', NULL, NULL, '2024-04-23 09:02:01', '2024-04-23 09:02:01', NULL),
(6, 5, 'Himanshu', 'patient@test.com', '6688995544', '2023-12-21', 'Gill pati street no 3', 'male', 'B+', '5.5', '56', NULL, NULL, '2024-04-23 09:02:10', '2024-04-23 09:02:10', NULL),
(7, 5, 'Anisha Sharma', 'anisha@gmail.com', '9897393790', '1998-03-11', 'Ajit Road', 'Female', 'B+', '6', '50', NULL, NULL, '2024-04-23 09:14:06', '2024-04-23 09:14:06', NULL),
(8, 26, 'maneesh', 'jyotivishnoi115@gmail.com', '9811857373', '1993-05-21', 'wazir pur', 'Male', NULL, '5', '130', NULL, NULL, '2024-05-01 11:41:53', '2024-05-01 11:41:53', NULL),
(9, 26, 'maneesh', 'maneesh.sims@gmail.com', '9811857373', '1970-01-01', 'rajputi', 'Male', NULL, '', '', NULL, NULL, '2024-05-02 16:42:50', '2024-05-02 16:42:50', NULL),
(10, 26, 'maneesh', 'maneesh.sims@gmail.com', '9811857373', '1970-01-01', 'rajputi', 'Male', NULL, '', '', NULL, NULL, '2024-05-02 16:42:54', '2024-05-02 16:42:54', NULL),
(11, 26, 'maneedj', 'demo@demo.com', '9811857373', '1994-05-05', 'fhji', 'Male', NULL, '', '', NULL, NULL, '2024-05-03 11:29:00', '2024-05-03 11:29:00', NULL),
(12, 26, 'maneedj', 'demo@demo.com', '9811857373', '1994-05-05', 'fhji', 'Male', NULL, '', '', NULL, NULL, '2024-05-03 11:30:41', '2024-05-03 11:30:41', NULL),
(13, 5, 'Anisha Sharma', 'anisha@gmail.com', '9897393790', '1996-03-05', 'Ajit Road', 'Female', 'B+', '6', '50', NULL, NULL, '2024-05-06 11:11:15', '2024-05-06 11:11:15', NULL),
(14, 5, 'testing', 'test@gmail.com', '9598566855', '2024-05-07', 'gill patti', 'Female', 'B+', '', '', NULL, NULL, '2024-05-07 15:29:05', '2024-05-07 15:29:05', NULL),
(15, 26, 'maneesh', 'jyotivishnoi115@gmail.com', '9811857373', '1990-05-16', NULL, 'Male', 'O+', '', '', NULL, NULL, '2024-05-12 08:18:07', '2024-05-12 08:18:07', NULL),
(16, 26, 'maneesh', 'jyotivishnoi115@gmail.com', '9811857373', '2023-11-16', 'delhi', NULL, NULL, '', '', NULL, NULL, '2024-05-13 10:04:09', '2024-05-13 10:04:09', NULL),
(17, 26, 'maneesh', 'jyotivishnoi115@gmail.com', '9811857373', '2023-11-16', 'delhi', 'Male', NULL, '', '', NULL, NULL, '2024-05-13 10:04:19', '2024-05-13 10:04:19', NULL),
(18, 26, 'maneesh', 'jyotivishnoi115@gmail.com', '9811857373', '2023-11-16', 'delhi', 'Male', NULL, '', '', NULL, NULL, '2024-05-13 10:07:51', '2024-05-13 10:07:51', NULL),
(19, 26, 'demo', 'demo@demo.com', '9811857373', '2024-05-01', 'fhkkk', 'Male', NULL, '', '', NULL, NULL, '2024-05-13 11:03:42', '2024-05-13 11:03:42', NULL),
(20, 26, 'demo', 'demo@demo.com', '9811857373', '2024-05-01', 'fhkkk', 'Male', NULL, '', '', NULL, NULL, '2024-05-13 11:03:59', '2024-05-13 11:03:59', NULL),
(21, 26, 'demo', 'demo@demo.com', '9811857373', '2024-05-01', 'fhkkk', 'Male', NULL, '', '', NULL, NULL, '2024-05-13 11:04:35', '2024-05-13 11:04:35', NULL),
(22, 26, 'maneesh', 'maneesh.sims@gmail.com', '9811857373', '2024-05-01', 'ghj', 'Male', NULL, '', '', NULL, NULL, '2024-05-15 14:06:51', '2024-05-15 14:06:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `status`, `deleted_at`, `created_at`, `updated_at`, `validity`) VALUES
(2, 'TEST', '100', 'active', NULL, '2024-04-06 00:24:24', '2024-04-06 01:15:51', '6'),
(3, 'TEST 1M', '5999', 'active', NULL, '2024-04-08 23:34:50', '2024-04-08 23:35:19', '12');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `patient_id`, `doctor_id`, `file`, `deleted_at`, `created_at`, `updated_at`, `unique_id`) VALUES
(1, 2, 5, 'reports/pdf/171117348665fe6f6ecad95.pdf', NULL, '2024-03-23 00:28:06', '2024-03-23 00:28:06', 'asdsad'),
(2, 2, 5, 'reports/pdf/171117355265fe6fb0b2d67.pdf', NULL, '2024-03-23 00:29:12', '2024-03-23 00:29:12', 'asdsa'),
(3, 2, 5, 'reports/pdf/171117668065fe7be84e715.pdf', NULL, '2024-03-23 01:21:20', '2024-03-23 01:21:20', 'TEST5TEST');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'admin', '2024-03-15 23:01:36', '2024-03-15 23:01:36'),
(2, 'admin', 'admin', '2024-03-15 23:01:36', '2024-03-15 23:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9ba94623-50cd-4a95-ad03-c2e3aa609efb', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'doctor_management\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"69.49\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"ab5bfd42f31ff33c855440a21dce3e10\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:24'),
(2, '9ba94623-5688-401c-9d8d-209f755507a1', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'doctor_management\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"1.35\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"ab5bfd42f31ff33c855440a21dce3e10\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:24'),
(3, '9ba94623-5921-43c9-a166-1fd2eadeec07', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(4, '9ba94623-5a2c-40cc-af52-d8ce5d620b84', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(5, '9ba94623-5b0d-4c18-9f6d-22f2ccfcc86e', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(6, '9ba94623-6638-4ce9-b903-c8ec84fe8024', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"12.07\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(7, '9ba94623-6c88-4d7d-82ab-f10ae5f0fbf7', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"15.61\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(8, '9ba94623-70a8-48d0-b7c0-4e8deb0ba549', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"10.01\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(9, '9ba94623-74b3-44cd-9a7f-44c03877ed60', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"9.81\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(10, '9ba94623-7942-4da7-af7a-b00d09530a69', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"11.13\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(11, '9ba94623-7d60-45f4-9c30-7320fea0a484', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"9.99\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":39,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(12, '9ba94623-81de-4a8d-b445-e51ff2b36f67', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null, primary key (`entry_uuid`, `tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"10.17\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":52,\"hash\":\"f8c7e1e3c3d557b70e7a918609f839f2\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(13, '9ba94623-8b55-469c-9762-cc932d26fb09', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"23.53\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":52,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(14, '9ba94623-a694-4afc-901d-1747888b4b6b', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"69.17\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":52,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(15, '9ba94623-aadb-445f-a2e2-408f90a71587', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null, primary key (`tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"10.02\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":56,\"hash\":\"18d1fa09eade84a80848982d91caec5c\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(16, '9ba94623-adfe-4e38-9614-81c445f3aae3', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 5)\",\"time\":\"2.11\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(17, '9ba94623-af1e-45b0-95a1-465cf1c2181c', '9ba94623-b106-4945-bdc7-8ffd23e9a71a', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:21:25'),
(18, '9ba94fd6-fe33-42d2-998a-c9221bc37e29', '9ba94fd7-08c2-4cd9-ba36-2d94e3ac45a5', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:48:32'),
(19, '9ba94fd7-064b-4f8c-aec3-ef3bff0dae13', '9ba94fd7-08c2-4cd9-ba36-2d94e3ac45a5', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkVpVjFkT1lvNTdYNlNmZDZZYkhFVmc9PSIsInZhbHVlIjoiMU5pb3UrQWFXd2FBR0dzWVhoTW9ldEI1enE0SHVkNng4TThKRzNCS29TMUV2WWQ5RFlYN1dobDlPUXJsOHZBU014VXUxaktzaW1CdTRwN0dCYncxY1NCbCtieHJQa3JyM0c2T0Q3VERaR0xKOUVjOVlwY2RldTZ0ZGZVZHBHTFYiLCJtYWMiOiIyM2JlNjY3NDQzY2NhYjU2ODY5NjZiODExZmI2ZjNhYzQwYTYzYzA1MTVjY2Q3MmY1ZWQ1YjViMDgwYzFhYzMxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkF5SmFQKzNUQXhReXZ2TThxVnlLcmc9PSIsInZhbHVlIjoiZkg5WXo3R0piSFROUjVMNUtNTHBtMFhWNTdRM3NPOVdsTjl6cTZDNFd4dTlLeGNxcVQ1WjFKNVZhNTMwY2lnd29zWThucEMwRG9jeUlZSUhZNXhxSk1SeGdickFyWHMyVHh5Tllva2dkbHRwbnFQWHArZW9icmNRY3NTSG1DQzgiLCJtYWMiOiJhN2NiOWZlOTMzMDIxYjhjYTQ5MzQ1NmFhNWMwN2U2MWRjZDBlNzBmYzZiYTg3OWY5MmY2MTY5OTc4OGZkOGY5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"QiXFklfVZEicZLlvfbwdxyhmxp1DITZzIetkGalx\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":319,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-27 04:48:32'),
(20, '9bad7759-c109-4e9f-abc7-77482879cad4', '9bad775b-1b04-44e8-ab05-b06abe0e03b4', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:22:20'),
(21, '9bad775b-0902-4294-9d28-6d0373fe76c7', '9bad775b-1b04-44e8-ab05-b06abe0e03b4', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":12616,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:22:21'),
(22, '9bad79af-943f-4e37-badf-c8d4d6acd9a4', '9bad79af-9dd4-4add-bd2c-b47e1804d7fc', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:28:51'),
(23, '9bad79af-9bb2-4f5a-930f-1502996ea645', '9bad79af-9dd4-4add-bd2c-b47e1804d7fc', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost\\/doctor-management\\/telescope\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InlxVWhGbjg2ekFmQTg0U3N5Qnk3TUE9PSIsInZhbHVlIjoic2N0VWt2b1Z4ZXdpWURJczVzdG5JSkoycFZCR0FVYmhIWGN5WkxEZ1U0R0t5d3h4b1RKQy9uZGtWdHFiUEQ1TkN0aHptaUd2a3NpbmNHOG40UUJnRHhZKzZrbjRaeWl2bFc3dDdLTW5Td1VoMnEyb09ta3loYjJvQ3Z5S0hZRGsiLCJtYWMiOiJhNmE4OGI1ODRmYzgzMGE2OGU4ZTQyMThhZmJlOTNhMzJhNWI4NTJjMjZmMmViODVmYjk5MDczMGU1YzljZmViIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Im5SRG5UaC9aVG1xNGVDeEk3RnY4MkE9PSIsInZhbHVlIjoialloY0k4ZFZSMlExL3dWbjZTT3ZkS0lNbUxrai9KMitHUXErMDFrT000Nmx1MC9XL0dIOEdkVE9zMS93TzN1MjZZSm5xei9LMm52Q2JsUWVUOVQ3ZlRlQ00yakp3WUIxNUJpeDJTT3YydkcvTkpYTTllOU1vOTRJZXNLQ2NsRUciLCJtYWMiOiI3N2Y5OGU0MjczOWQzZjFkMmU4MTg4NDYzODFiYzA1NzIxM2Q3NzY3M2EzZTc5ZDM4NmZmZjMwNWVmNjI4YTVlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":680,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:28:51'),
(24, '9bad79df-6eda-4ed1-b2be-b639aa1aa51a', '9bad79df-75c0-403d-9c5f-2e6385d74a5e', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:23'),
(25, '9bad79df-7368-4070-b9ed-ea57c9434c67', '9bad79df-75c0-403d-9c5f-2e6385d74a5e', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:23'),
(26, '9bad79df-7413-4998-873c-209f77954e59', '9bad79df-75c0-403d-9c5f-2e6385d74a5e', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/vendor\\/laravel\\/telescope\\/favicon.ico\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkFYQ1hXZldPMjFvK004R3NJN08vUmc9PSIsInZhbHVlIjoiVk1jbk8ySW91b2NSYmhOOXZhUGloK1ZZVDNYTEIyenM2QVpMMmdJZ01vcks1cGZRRHBueHcwR0lsczdwUTQyU1JxL2N4bUdFZkJISlc0RlJzNG9heWpuQU85c1BEWkhMOEdvZXdUa2ovNUw0RTRQRWxaV3A1UnllK3FubXdJbm0iLCJtYWMiOiJmYTYzODA2NDBlNTIxZGY4N2ZjM2M0NzliMDllOTdjNDQ5MmIxODU4ZDRlNWMxY2RiNDczYzE1MDgyN2MyMDljIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InF6aVpoSDJmVkFvaGFhL3Y4RUJpREE9PSIsInZhbHVlIjoiWHhSdWVyOStEc202NUZMSW5SU1hVeXh3TTA4TTFmU1dkR1pvbTcyYlN1MWNJRWxaaTRUL0NIc3U4VDFFUC9uYTlsYUpNbHNkWU42NllxdXA0dXVhREJHOVo3RnZWMmFPb2RTSW52bnRGNi9Felp6Rll0QjliSldlY0ljcldQQlciLCJtYWMiOiI5NjBmZWRmODNhMWRhMTMwZTUyODE3NDFkOGUyZjUyZjA0ZGQ5ZWNlYWE5YzUxMmRmMWZmYzc1NTU0NjZhNDE1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":243,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:23'),
(27, '9bad7a00-8fce-4e18-ade2-f30bb94cdd69', '9bad7a00-9593-4373-b513-fe7b1ee27f52', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:45'),
(28, '9bad7a00-93d2-48a2-b9b9-80bfa8028085', '9bad7a00-9593-4373-b513-fe7b1ee27f52', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:45'),
(29, '9bad7a00-944d-4127-bacc-46247ea4cbc5', '9bad7a00-9593-4373-b513-fe7b1ee27f52', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/vendor\\/laravel\\/telescope\\/favicon.ico\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"pragma\":\"no-cache\",\"cache-control\":\"no-cache\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkFYQ1hXZldPMjFvK004R3NJN08vUmc9PSIsInZhbHVlIjoiVk1jbk8ySW91b2NSYmhOOXZhUGloK1ZZVDNYTEIyenM2QVpMMmdJZ01vcks1cGZRRHBueHcwR0lsczdwUTQyU1JxL2N4bUdFZkJISlc0RlJzNG9heWpuQU85c1BEWkhMOEdvZXdUa2ovNUw0RTRQRWxaV3A1UnllK3FubXdJbm0iLCJtYWMiOiJmYTYzODA2NDBlNTIxZGY4N2ZjM2M0NzliMDllOTdjNDQ5MmIxODU4ZDRlNWMxY2RiNDczYzE1MDgyN2MyMDljIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InF6aVpoSDJmVkFvaGFhL3Y4RUJpREE9PSIsInZhbHVlIjoiWHhSdWVyOStEc202NUZMSW5SU1hVeXh3TTA4TTFmU1dkR1pvbTcyYlN1MWNJRWxaaTRUL0NIc3U4VDFFUC9uYTlsYUpNbHNkWU42NllxdXA0dXVhREJHOVo3RnZWMmFPb2RTSW52bnRGNi9Felp6Rll0QjliSldlY0ljcldQQlciLCJtYWMiOiI5NjBmZWRmODNhMWRhMTMwZTUyODE3NDFkOGUyZjUyZjA0ZGQ5ZWNlYWE5YzUxMmRmMWZmYzc1NTU0NjZhNDE1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":235,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:29:45'),
(30, '9bad7b51-0a82-46e8-ab82-81708840f40a', '9bad7b51-11b1-4472-b889-d082857221ec', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:33:25'),
(31, '9bad7b51-0ff2-4b43-b681-31638df3f0f9', '9bad7b51-11b1-4472-b889-d082857221ec', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkRZSmQwUktrdG5sa0hzdEVHL3ZNYkE9PSIsInZhbHVlIjoiMXZEV2lrUlplM2NORU0zZnBCNmhaeC94T0lMaFZtY0wrOWNYSVVCNXIvUHVqUFlaUWFVTGZ4azdiYzFJaFFieFVIR3JESk9vbGpIL2pkK1dtQ3c3eGxyM25SeVgvb2RPQWE1SUhrYjdxejhDZmRTdlBKTHFFUE9qVFhkY1B3WlAiLCJtYWMiOiI3ZTE4OWMwYjZmZjY2M2UxOTIxYzM3ZjkxNGExOGYwMTZhYjhlNTczNDc0MDI5Yzk3YjI5MGZjODZiMWEwMTZiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik5qa2J2ZEExb29ucG5hRnZYcGFETnc9PSIsInZhbHVlIjoiNXZBeXdOUHEzaW90bkIzTThESGh3OENFRHJoY2JBTG1IcWUwRjNBVXEyOHZaUjRRQkpzUHEvMnJ0M210ekRsT3Y5NVpmOVNBcFVnMWxhS2ZDQ1Focnh4Z2hJMmVZNmxvQkdEVmJGTTVReUhWb01sZnhTUmd0eEsyazdoVFRVbXoiLCJtYWMiOiJmZDNlYWUyNWU3MDk3MWQxODgxNTFjMzU1OTcxMGVlZmFlYzZlNTBjMmY2ZGMwNjY3Mjk4MzAxNDFlYTk3MTY1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":241,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:33:25'),
(32, '9bad7b90-5764-4a80-bd1b-2ac96494c2ed', '9bad7b90-9efc-4563-aafc-7a272579323c', NULL, 1, 'event', '{\"name\":\"cache:clearing\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:34:07'),
(33, '9bad7b90-81c8-4b8b-8a82-5c8f4b1d00b4', '9bad7b90-9efc-4563-aafc-7a272579323c', NULL, 1, 'event', '{\"name\":\"cache:cleared\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:34:07'),
(34, '9bad7b90-9dd0-47bf-a58a-bc9119b27df0', '9bad7b90-9efc-4563-aafc-7a272579323c', NULL, 1, 'command', '{\"command\":\"optimize:clear\",\"exit_code\":0,\"arguments\":{\"command\":\"optimize:clear\"},\"options\":{\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:34:07'),
(35, '9bad7ba1-afad-45a6-9ff1-4ce072df59fe', '9bad7ba1-c806-4c79-a5b1-83b0e486380b', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:34:18'),
(36, '9bad7ba1-c5ef-4525-806d-1aa7d794cf50', '9bad7ba1-c806-4c79-a5b1-83b0e486380b', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImZBKzhXdFpQNTVsaC80N3lxWURlclE9PSIsInZhbHVlIjoiSW9XODNSNGoxdlhjVURJek0xYVYrVHgzclkwNjNiczQza1hzaDlMaHlFUmhPbkJiRlA3ajVDWHI3dEpHb25pRUk5U3NyRG56aGk2RHJLN2xaSFNWdjlwTUVONlFOdURaYXpObitYcDUyc2Rkb3J3d3dqTUJrbnRZNG1BckVmdEUiLCJtYWMiOiJkMThiYzQzODc2ZTdkZjExZTNjYTFiMGU5YTkyZGY1YzRlZjY5ZDMxNDM3NDNmM2Y1ZGFjZTJkNDdkNGJiZWNjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlRPbXJIcEdjcGhBaytYV1NsdVRkV0E9PSIsInZhbHVlIjoiYzF6amhzWGxlcmJLS2tyeTJaS2oxSFRRS2VNb3hoYkVsU2ZoVzdTRThERU5mUFZ5bVZUbHcvYk1CM3ZkTG1aajZKeGtBWHFhYUhBTzR5YlcveG5QVTQxRklMVWZSTk9HbGM3MWdJK1Q5SkE0emJhRCtxTWp2M3RaZHpsWjVFUVAiLCJtYWMiOiJlNzQwMjdmMTUzNzhkZGY3NmMwNGM1OGUxODBiOThiOTYxYzk2NzFjY2RmMzRlOTY0OTUzNWMwNDRlYTRkNzY1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":424,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:34:18'),
(37, '9bad7c34-c276-436c-a356-4b0f848ac3d2', '9bad7c34-d1c9-45e3-92a3-858c0e786ad2', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:35:54'),
(38, '9bad7c34-cf14-4794-8e27-45ee404ce496', '9bad7c34-d1c9-45e3-92a3-858c0e786ad2', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept-language\":\"en-US,en\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InduaGgzTjhrTGFaUkovMzJRRzF5c1E9PSIsInZhbHVlIjoia1FZbGVkWmpVZnVZVEg1anFvc2J2dlNHbGZxNW9QanVGSStVWTNFMHByMWFQMVJJVzFhWEVTa1JRcC93MTlpSjdjSTA3a0NqbVcrSHJzWVZLMnhBUGVNdk52QkIyYllJUTcvQlZ4M2JjYW1TWmU1a3ZLWXlESnJ3WDZ5UzVSaDciLCJtYWMiOiI3MDY5MDI0YjNiNzllMzU1ZDZkZjNmZGE4NTI0NmRkOTVmNWE2MWM1ZWQ2ZmY2ZDc2ZmUwODI5ZmI3MmNhMTdiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Inl3Z1RuQUwxemhtNnE4UmNyV2FQSXc9PSIsInZhbHVlIjoiRkFTUGdnWG0veC9LNUl3S25DSFpxMnh0djFJRXA0cEVjbCtVMElQTGNiNTJWR1R5aEZOcWNGaFRLUFBmNC9qaUxDSmh6RVdxVERGNVdId0p1c3diaXFlNDRyayttWUlNUVNtQTdObmZ3RElwSUNMR3E1TGNPQXJUQmw0eGVUZ2kiLCJtYWMiOiJjOWMwNDRhMjhhODBhMjQxNWRkNzQ5NWZiYjAzZjRlMTY0ZmI3NWQ3MjMyZDRmN2Q5NjI2MTQ0NGY1YzIzYTY0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":513,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:35:54'),
(39, '9bad7c8f-65ff-4630-9ccf-f2e447fa1228', '9bad7c8f-6f4e-4dff-b1cf-74360bc38f5e', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:54'),
(40, '9bad7c8f-6b91-49d8-b0cc-a45a4c652e1d', '9bad7c8f-6f4e-4dff-b1cf-74360bc38f5e', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:54'),
(41, '9bad7c8f-6ccb-4b18-b8dd-b824610ca117', '9bad7c8f-6f4e-4dff-b1cf-74360bc38f5e', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/commands\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdkaXZFRy9iUmg1TXdtM0hrenFma3c9PSIsInZhbHVlIjoiL0hoeTI1WGlMVmNlTFBHOWNsNWd2ajg0TWZROGRRS3dyc0FnWE5oWnROQjM3MmN4N0hPYVNBZ0JoQlZFUkNGNGdQN0FCU0xDOVk1b0c1eUZCZWVoaWkzSHRBb1pjODVHMTFPU0txOXVqUHZUNCs2d1orYTdqSmJ6RER0eUI5U2YiLCJtYWMiOiJmMzdkYjgwNzE4Y2Q3NDJlZjI4ZmRjNDYzZWZmOGEzMDJlNjdkM2MwOGZkYTE2M2NkZTI5NWYyMDU2M2MxY2NhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlZyRGhnK0RMOWZ5T0NuRXFoZVBxa1E9PSIsInZhbHVlIjoicXFyTlJ3RGcyMWIzc2tEdG43SWlqS2loRkswaWo1Y05nbzcvY0MvOW1ZMU5hbkdXd3cvYXhtUDNtYWY4emFGUUlJNHdhY2xjL2RJcnZGc0J4SVlMUG1TbzdTYmNnSUV6WDNMUXU3WlFJaFhJVUo3NCswNHluc2ltR0pMNHVqRzciLCJtYWMiOiJjNDE1YmUyZmIzMzBhZTVhYzE5NjkxOTljZDY0MmZiZTAzODJhOTVkMDI1Mjk4N2E2YjYxYTRmN2NiM2FlZGQ3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":396,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:54'),
(42, '9bad7c93-8d5e-432f-bbaa-9b054e6c4b0f', '9bad7c93-9795-4cc8-9825-9f10a15cab9f', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:56'),
(43, '9bad7c93-95bc-42c5-a4a8-9405c23bb88d', '9bad7c93-9795-4cc8-9825-9f10a15cab9f', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdkaXZFRy9iUmg1TXdtM0hrenFma3c9PSIsInZhbHVlIjoiL0hoeTI1WGlMVmNlTFBHOWNsNWd2ajg0TWZROGRRS3dyc0FnWE5oWnROQjM3MmN4N0hPYVNBZ0JoQlZFUkNGNGdQN0FCU0xDOVk1b0c1eUZCZWVoaWkzSHRBb1pjODVHMTFPU0txOXVqUHZUNCs2d1orYTdqSmJ6RER0eUI5U2YiLCJtYWMiOiJmMzdkYjgwNzE4Y2Q3NDJlZjI4ZmRjNDYzZWZmOGEzMDJlNjdkM2MwOGZkYTE2M2NkZTI5NWYyMDU2M2MxY2NhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlZyRGhnK0RMOWZ5T0NuRXFoZVBxa1E9PSIsInZhbHVlIjoicXFyTlJ3RGcyMWIzc2tEdG43SWlqS2loRkswaWo1Y05nbzcvY0MvOW1ZMU5hbkdXd3cvYXhtUDNtYWY4emFGUUlJNHdhY2xjL2RJcnZGc0J4SVlMUG1TbzdTYmNnSUV6WDNMUXU3WlFJaFhJVUo3NCswNHluc2ltR0pMNHVqRzciLCJtYWMiOiJjNDE1YmUyZmIzMzBhZTVhYzE5NjkxOTljZDY0MmZiZTAzODJhOTVkMDI1Mjk4N2E2YjYxYTRmN2NiM2FlZGQ3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":367,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:56'),
(44, '9bad7c95-b527-4db3-9830-6f99b9d4342e', '9bad7c95-bfe2-4d98-8acc-95b8b45e2996', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:58'),
(45, '9bad7c95-bd9c-4b93-a43e-673727c832d7', '9bad7c95-bfe2-4d98-8acc-95b8b45e2996', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"pragma\":\"no-cache\",\"cache-control\":\"no-cache\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ijk4bkhMSHNuYW10dG9QcmdWY05kL3c9PSIsInZhbHVlIjoiNzEzTEJiNytxcUNYWk1LR3NDZ1pzZmNNWmprT3hGTzE1Q2tpSzFQSnhEd21WaS9xNWM2dUU5UVpBb0JHcDIvSDlueUU2RG5pTTk3b05xcnR5Q0k1ay80KzVqd3gzSE5WRU9qTjRwRURDT0psNDI0OFBySFhXTjRWdUs5OEFneVciLCJtYWMiOiIyNGY3MWM3NTlmMDU4NDA2NGNkYjY0YWRkOGMyMWRhYjdjY2FmMWVmYzc1NDM2M2MxMTQxMWEyMGYzMjk4MTAxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjVWTFFyWllEU2FWbDVQbysvWCtTTFE9PSIsInZhbHVlIjoiWUhWdDh1YXJsV0p3QTZsV2lwY1ZZV2JLNDJmM29jS1dxbFV2ZUZsSys2dVcwWkw1S2RseDVzaFpYL3gxWVQyeGYxTVVGT3MvZ1VSaDBsVFJnUUhsVjBSckYwYXBRbVNKUmdIS1I4cUtLWmpQR0o1OEdia084SHgxLzlrUkovQWciLCJtYWMiOiI3OWY5NWNlMDYxOTdiOWM4MGNhZjhkYjAwOTI5MjZiZGM0OWYzMDQyNmNkMGQ2Yjc0NTA4NmExMzk3MDdlY2M5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":411,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:36:58'),
(46, '9bad7cf1-c3ce-49f6-a8ce-a297f4c726e0', '9bad7cf1-ef1e-4927-a2ef-e2ee40ecb39e', NULL, 1, 'event', '{\"name\":\"cache:clearing\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:37:58'),
(47, '9bad7cf1-d14e-426c-9755-d980a296529f', '9bad7cf1-ef1e-4927-a2ef-e2ee40ecb39e', NULL, 1, 'event', '{\"name\":\"cache:cleared\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:37:58'),
(48, '9bad7cf1-eb84-4e14-b673-06ead7c12cb0', '9bad7cf1-ef1e-4927-a2ef-e2ee40ecb39e', NULL, 1, 'command', '{\"command\":\"optimize:clear\",\"exit_code\":0,\"arguments\":{\"command\":\"optimize:clear\"},\"options\":{\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:37:58'),
(49, '9bad7cfe-6571-4e13-9462-11bf567555b1', '9bad7cfe-c4bf-4153-8f5f-619a62ec1907', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:38:06'),
(50, '9bad7cfe-c1ea-4b90-8630-08d8ee5c1602', '9bad7cfe-c4bf-4153-8f5f-619a62ec1907', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"123\\\", \\\"Not:A-Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"123\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"en-US,en\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJBaGpSWVZDTUdKSmgzUGJTaHlMV0E9PSIsInZhbHVlIjoiUjVrRCttYnlwam50Uk9ISWhDMm5MTllRS2x5QVkvTks2YUluMFU4bkFKbC9xT21jVVdXaUpnNVRCTG00dFVVc1A3dStuY2R2Vkt4TzNrTXBvZ0dZaXFEdEtBMDd2RDFFMmRZV0l4dCtmTVJHVjZ6SjB3ZHdHSHZtUGx3S2I4Q0ciLCJtYWMiOiIwOTY4NWQwYzIwODA3M2M4YmM3MDlmYzYyOTJmMmRhZTUzZDlkNjNlOWE2ZjQ3ZWM0MzAzZWFjNzgwOGIwMWZmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjVXbHdkUnJwbmovQzZKMzlDTHAzUVE9PSIsInZhbHVlIjoid3ViRTZReS9ic0F3WC9PZEdYK00yK0xhSlFQWGVnNnRwMy9tNUhnYyt4MzZDbGRQbDVIUEJXWFBNSGlhTllJWkFHU2Zib0o0Y0Q1ME90c3BXTGNTdU5JOXFCc1FyR1ZjcHg1emNxQUowdmpxdlYwM2pPK0lrcE45WHJCNUhhWlQiLCJtYWMiOiI2N2MxOWU2NjI0MWY4NGM0OTU2MTA3Yzk5MzZmZGFmZGVkYTVjMDRkYzMyY2VjMTNmOTNjMThhNTY2OGFlZmZkIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"D0ItbGUfNqjYTSw1XgWfmFDarKKzNNuockYOVWNa\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/doctor-management\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\doctor-management\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":875,\"memory\":20,\"hostname\":\"DESKTOP-NR7V4AN\"}', '2024-03-29 06:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `image`, `phone`, `address`, `specialized`, `gender`, `bio`, `deleted_at`) VALUES
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$SPNwKgmQIUMh7KBko1YlnuxbxDVa7wpnstpqyijW4ldsL2M9UfI56', NULL, '2024-03-15 23:02:30', '2024-03-15 23:02:30', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'aasdddd', 'nitisha@gmail.com', NULL, '$2y$10$rhg0Vscdj5oczGofmoAMwOc516XkElyvdkNwtEm5uQYefD2CsfXkm', NULL, '2024-03-18 00:45:57', '2024-04-09 00:32:15', 'Nitishad', '', '96857412', NULL, 'TEST', 'male', '', NULL),
(5, 'Woman', 'nitisha@gillpati.com', NULL, '$2y$10$32YKbNs8r0oCcwmiqBmFguNtoezq56ZRz7Lz6gZL/oVP7J.pChkj6', NULL, '2024-03-20 00:09:19', '2024-04-23 09:18:02', 'Nitisha1', '', '96857412', 'Gill Patti', 'TEST', 'Male', 'Nuero specialist', NULL),
(15, 'asd', 'admin@mytalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-03-30 04:24:21', 'sdsad', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', NULL),
(18, 'asd', 'admin@mydtalentgrowth.com', NULL, '$2y$10$NupmBdMUTGq2rcvScW1Pf.C.RPYHgO/uvezNl.alZNT/pDcCr9A0y', NULL, '2024-03-30 04:24:21', '2024-04-08 23:58:53', 'sdsaddf', '', '6284234058', NULL, 'asd', 'male', '', NULL),
(19, 'asd', 'admin@myddtalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:36', 'sdsaddfddd', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:36'),
(20, 'asd', 'admin@mydddtalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:30', 'sdsaddfddddd', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:30'),
(21, 'asd', 'admin@dtalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:31', 'sdsadsffg', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:31'),
(22, 'asd', 'admin@lentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:33', 'sgft', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:33'),
(23, 'asd', 'admin@mtalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:34', 'dsftgg', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:34'),
(24, 'asd', 'admin@lenlgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:28', 'hhhh', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:28'),
(25, 'asd', 'k@mtalentgrowth.com', NULL, '$2y$10$uu.7Y9rGNIgnQHg/D6AEvezZmslitjqKM1szArrcYIq1a0ZU.5oYe', NULL, '2024-03-30 04:24:21', '2024-04-09 00:04:23', 'hhhhhhhh', 'doctors/images/17117924616607e14d1d351.jpg', '6284234058', 'asd', 'asd', 'male', 'sdf', '2024-04-09 00:04:23'),
(26, 'Demo', 'demo@demo.com', NULL, '$2y$10$uet51YTy8HPalmOOD7G33ODLl62Tfe0hOfR4w22SDYEl9YoUt150W', NULL, '2024-04-17 11:24:26', '2024-04-17 11:24:26', 'Demo', '', '0011223344', 'demo', 'Heart', 'male', 'demo', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_plans`
--
ALTER TABLE `doctor_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_plans_doctor_id_foreign` (`doctor_id`),
  ADD KEY `doctor_plans_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_doctor_id_foreign` (`doctor_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_patient_id_foreign` (`patient_id`),
  ADD KEY `reports_doctor_id_foreign` (`doctor_id`);

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
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor_plans`
--
ALTER TABLE `doctor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_plans`
--
ALTER TABLE `doctor_plans`
  ADD CONSTRAINT `doctor_plans_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_plans_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
