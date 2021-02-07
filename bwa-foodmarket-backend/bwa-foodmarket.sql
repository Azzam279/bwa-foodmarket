-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2021 at 01:01 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bwa-foodmarket`
--

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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picturePath` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `ingredients`, `price`, `rate`, `types`, `picturePath`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sate Sayur Sultan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Bawang Merah, Paprika, Bawang Bombay, Timun', 150000, 4.2, 'new_food,recommended', 'assets/food/sate-sayur-sultan.jpg', NULL, NULL, NULL),
(2, 'Korean Raw Beef Tartare', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Daging Sapi Korea, Telur, Biji Wijen', 350000, 3.4, 'popular', 'assets/food/korean-raw-beef-tartare.jpg', NULL, NULL, NULL),
(3, 'Sup Wortel Pedas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula', 60000, 4.8, 'new_food', 'assets/food/sup-wortel-pedas.jpg', NULL, NULL, NULL),
(4, 'Mexican Chopped Salad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Jagung, Selada, Tomat Ceri, Keju, Wortel', 105900, 3.9, 'recommended', 'assets/food/mexican-chopped-salad.jpg', NULL, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_02_03_013258_create_sessions_table', 1),
(10, '2021_02_03_024454_create_food_table', 1),
(11, '2021_02_03_024819_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'authToken', 'a6b5d6f4ba72b5e039dbf0bb307244984afacbfc25256bef3a8e3d7e5cb46212', '[\"*\"]', NULL, '2021-02-04 02:26:51', '2021-02-04 02:26:51'),
(2, 'App\\Models\\User', 3, 'authToken', '405a6b56cb67a6cb455a4dbc4404d5ebb860743f2eab45fc30be0bc5b1a5140c', '[\"*\"]', NULL, '2021-02-04 02:28:47', '2021-02-04 02:28:47'),
(3, 'App\\Models\\User', 2, 'authToken', 'c1ded25c8854fbe3b08de4a786d3d59aee70dd7cdb0fecdc3392831a639fba43', '[\"*\"]', '2021-02-04 02:36:53', '2021-02-04 02:30:46', '2021-02-04 02:36:53'),
(4, 'App\\Models\\User', 4, 'authToken', '7062ad204710dabf01af26650164981846f40884869280fc105a542ca4e6c44f', '[\"*\"]', '2021-02-04 06:59:15', '2021-02-04 06:59:12', '2021-02-04 06:59:15'),
(5, 'App\\Models\\User', 2, 'authToken', 'dfc6c399bdc05f0cf5beccb08ef3b307681c4926f20ed72f49d07248c7d92ff7', '[\"*\"]', NULL, '2021-02-04 07:07:17', '2021-02-04 07:07:17'),
(6, 'App\\Models\\User', 4, 'authToken', '9b105e806556be373dc5ba6b4f90af865372eacf9abd6fcca9e30c8f3443f5b0', '[\"*\"]', NULL, '2021-02-04 07:12:37', '2021-02-04 07:12:37'),
(7, 'App\\Models\\User', 4, 'authToken', '48e5b3da7f46f987fd84fb7d6d670c9aeaba600f1bd49344cbba7f7f88e67c4f', '[\"*\"]', NULL, '2021-02-04 07:21:37', '2021-02-04 07:21:37'),
(8, 'App\\Models\\User', 4, 'authToken', 'ee0de98d52477b83577c71a8d17c44375d4f52c7fd96dc02ec9b5404c096e8ab', '[\"*\"]', NULL, '2021-02-04 07:22:58', '2021-02-04 07:22:58'),
(9, 'App\\Models\\User', 4, 'authToken', 'a1bb7c359bd8bc63a2fef1be5ef446eddaa56bd6335cb89d718f810b300879fd', '[\"*\"]', NULL, '2021-02-04 07:24:02', '2021-02-04 07:24:02'),
(10, 'App\\Models\\User', 4, 'authToken', '11da7ccdc8bc4450975d7c665308579c102fdae182f14e34b3ece88a1fbcd3a0', '[\"*\"]', NULL, '2021-02-04 07:26:30', '2021-02-04 07:26:30'),
(11, 'App\\Models\\User', 4, 'authToken', '7a010ab6a8b6d8f7a19eef43bef3e5f9492b27eedef17c4751c2a94a6523818b', '[\"*\"]', NULL, '2021-02-04 07:29:11', '2021-02-04 07:29:11'),
(12, 'App\\Models\\User', 4, 'authToken', 'c470e3c53df1a0a8863c617afec70e1beb836c0a41733b762e308618faac372c', '[\"*\"]', NULL, '2021-02-04 07:30:58', '2021-02-04 07:30:58'),
(13, 'App\\Models\\User', 4, 'authToken', 'c492eaaf421434abb0715dd769ef795c725c7d988d78b554e1523c5ee17801fd', '[\"*\"]', NULL, '2021-02-04 07:32:17', '2021-02-04 07:32:17'),
(14, 'App\\Models\\User', 4, 'authToken', 'd1f7033907a75edf575fd58d897a44f142df3c1c5532ddb90778ba1ee6729824', '[\"*\"]', NULL, '2021-02-04 07:36:04', '2021-02-04 07:36:04'),
(15, 'App\\Models\\User', 4, 'authToken', '5cc8a14b4115fbe042a28ad9467272433bd488453552b9cf559e6ef53b284114', '[\"*\"]', NULL, '2021-02-04 07:39:21', '2021-02-04 07:39:21'),
(16, 'App\\Models\\User', 4, 'authToken', '5cacab32bfef1150a74c2ef9ecb337e879c9e21e48e01ac75f23584e5da8be63', '[\"*\"]', NULL, '2021-02-04 07:42:27', '2021-02-04 07:42:27'),
(17, 'App\\Models\\User', 5, 'authToken', 'ae3cf1a2cac851ad653fa9095eebbdb1977742c002bf2079880dd93a8af77224', '[\"*\"]', '2021-02-04 07:44:39', '2021-02-04 07:44:33', '2021-02-04 07:44:39'),
(18, 'App\\Models\\User', 4, 'authToken', '469873c5bf7a2a2b99fb9ac6104e89f98242958cc8bd2779bcc1e3f6fb1fa03b', '[\"*\"]', NULL, '2021-02-04 07:57:09', '2021-02-04 07:57:09'),
(19, 'App\\Models\\User', 6, 'authToken', '5c15941551dc6596d20f19d7cc00deb5c78f36773b16cc84457ec54f7dd56c30', '[\"*\"]', '2021-02-04 07:59:08', '2021-02-04 07:59:01', '2021-02-04 07:59:08'),
(20, 'App\\Models\\User', 7, 'authToken', '5553a2240a356bdc086df37d517250fa6bc9a9deb0a943179e11d3c4b675402f', '[\"*\"]', '2021-02-04 08:03:49', '2021-02-04 08:03:46', '2021-02-04 08:03:49'),
(21, 'App\\Models\\User', 3, 'authToken', '7aa22d778b69841ebca0dc6114545d53932fbec3c8e856857529ed495d916c18', '[\"*\"]', NULL, '2021-02-04 08:09:32', '2021-02-04 08:09:32'),
(22, 'App\\Models\\User', 7, 'authToken', '6a219ea7d5dd7319eee9432630db229a97a1d02fef01a43d5866dae8ed158769', '[\"*\"]', NULL, '2021-02-05 01:43:58', '2021-02-05 01:43:58'),
(23, 'App\\Models\\User', 7, 'authToken', '3e519b6f854fc1f02993f99753da72eff4e239f906f8ecbc1fd56c572d94229a', '[\"*\"]', NULL, '2021-02-05 01:52:34', '2021-02-05 01:52:34'),
(24, 'App\\Models\\User', 7, 'authToken', '995bb1ee76e2625c9d215612a1906b98130e945978e73770abac72bb819af58f', '[\"*\"]', NULL, '2021-02-05 02:10:16', '2021-02-05 02:10:16'),
(25, 'App\\Models\\User', 7, 'authToken', 'e22ba3d3f936aae7d4809dc36e51ad052bccdec79f9ba1c65a9ba39eb8a19560', '[\"*\"]', '2021-02-05 03:38:54', '2021-02-05 03:38:51', '2021-02-05 03:38:54'),
(26, 'App\\Models\\User', 7, 'authToken', '590bb24a0c6a27cc4abea223bf28b7f47e01a44d8450d615d0e902a103a88bcf', '[\"*\"]', '2021-02-05 04:08:10', '2021-02-05 04:07:50', '2021-02-05 04:08:10'),
(27, 'App\\Models\\User', 2, 'authToken', 'fe0f236ff3ce27420b47c06b025398cae1bb7d53ece117b1b59aef8e30921b0b', '[\"*\"]', '2021-02-05 04:18:13', '2021-02-05 04:18:11', '2021-02-05 04:18:13'),
(28, 'App\\Models\\User', 2, 'authToken', 'd5ce642ea45bd09de6a96253cb36d4c2c4f50e017a3946e5efbcafc043c5b546', '[\"*\"]', '2021-02-05 04:19:27', '2021-02-05 04:19:24', '2021-02-05 04:19:27'),
(29, 'App\\Models\\User', 7, 'authToken', '8cd0805f9dc1f782022c2860f4bf954171717d5c5879007a0896c359cc30d223', '[\"*\"]', '2021-02-05 04:33:57', '2021-02-05 04:31:25', '2021-02-05 04:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('L9GPzGEAxOxp5oIHB0vc2Py2NaeEJfttW3MF6UoA', NULL, '192.168.100.19', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEh5bHJRaExoVkoyaklJMlBKS21mVjNudlFxTkx0OU1hbGYzMFo3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xOTIuMTY4LjEwMC4xOS9id2EtZm9vZG1hcmtldC1iYWNrZW5kL3B1YmxpYy9taWR0cmFucy9zdWNjZXNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1612527263),
('PUixgmwPvG9OeJ39qNEJKULwv6eVxssGK9ZygWO9', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWERadnJrR1RBR2VERXFrd00ycTR2TXVLaWZLaW5zYm1LMGtQZXJ5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1612409120),
('r8h29Ti64DIDs5qxJ27oLeivexhX1TwdX79lzQdw', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlIwRmpxSVp4MEU0VnQyaVdGSmV5ZXRpOHdZbkxFNzJTMU45SWthTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvYndhLWZvb2RtYXJrZXQtYmFja2VuZC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1612450446),
('SujlkW15AzmJIHmiBFpRUWW96zSzhCDlzKOb5rVD', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWtZWGlTeDM3WGRHdkNYWDFnUnBNa0RUNmVDUFVIU1lnWjg5RjFLNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1612321584),
('vBZPjcO4JGlvBmEu4lqXZfcTgECiOfI8OlKOvYSC', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEdndGNGNFAxTmJvek0wZGVkZmtvQXk5b0FWcVVOUjRaMjhMcVNieSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1612432714);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'M\'s Team', 1, '2021-02-02 19:04:46', '2021-02-02 19:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_url` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `food_id`, `quantity`, `total`, `status`, `payment_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 2, 380000, 'PENDING', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/bbc10781-5a4e-475a-9f2c-cf1fe6e53b4b', NULL, '2021-02-05 04:08:10', '2021-02-05 04:08:10'),
(2, 7, 3, 1, 116000, 'PENDING', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/af803391-180d-4ae0-b261-be2b771987b4', NULL, '2021-02-05 04:32:24', '2021-02-05 04:32:25');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `houseNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `address`, `houseNumber`, `phoneNumber`, `city`, `roles`, `created_at`, `updated_at`) VALUES
(1, 'M Azzam T', 'an0ngh0st00001@gmail.com', NULL, '$2y$10$.CWWoUotdoe6SkcSEcbOCuCkwki7p7SBoACtRjBfXGttK6mnO9V2K', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'USER', '2021-02-02 19:04:46', '2021-02-02 19:04:48'),
(2, 'Unknown', 'noname@mail.com', NULL, '$2y$10$KG/0DBH0k3G0fmOWiE4etuOXliubZXk6t1veIgapU7rZUt08FhKaG', NULL, NULL, NULL, NULL, NULL, 'Jl. yang lurus-lurus aja no.123', 'No. 11', '0812345678911', 'Banjarbaru', 'USER', '2021-02-04 02:26:51', '2021-02-04 02:26:51'),
(3, 'Elon Musk', 'elon@musk.com', NULL, '$2y$10$KIZod17ZFYFVjqFeTeA/N.uuowZ.196tYgBjOlTfN3YlHTaYLpT1e', NULL, NULL, NULL, NULL, NULL, 'Jl. yang jauh disana', '1234', '0812345678912', 'California', 'USER', '2021-02-04 02:28:47', '2021-02-04 02:28:47'),
(4, 'Azla Kodenesia', 'azlacode@mail.com', NULL, '$2y$10$/xJJvWL756AdvK2EwzEVsudntttgsHgXZIDonLKOnrMbiRu1GZjty', NULL, NULL, NULL, NULL, 'assets/user/0rUIwayEFuM1GVuUAyM1aLZ9brZLEiKkz1zuQQq3.png', 'jl. smp 3', 'no. 11', '08123456789', 'Jakarta', 'USER', '2021-02-04 06:59:12', '2021-02-04 06:59:15'),
(7, 'Azzam', 'azzam@mail.com', NULL, '$2y$10$IPzK.jSo7XG56IcjBH9P6.vcFg3M4Uzj8Tkd9KHIfcIPfPKAtfrvm', NULL, NULL, NULL, NULL, 'assets/user/iGV7pwRHCthJsRDIxOWDnnr6ELfFr6vTUPJ6mwT4.jpg', 'jl. testing', '999', '0837382828', 'Surabaya', 'USER', '2021-02-04 08:03:46', '2021-02-04 08:03:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
