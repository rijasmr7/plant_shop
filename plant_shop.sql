-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant_shop`
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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `plant_id`, `pot_id`, `created_at`, `updated_at`) VALUES
(4, 6, 6, NULL, '2024-09-24 03:34:46', '2024-09-24 03:34:46'),
(5, 6, 6, NULL, '2024-09-24 03:37:08', '2024-09-24 03:37:08'),
(6, 8, 11, NULL, '2024-09-24 04:21:37', '2024-09-24 04:21:37'),
(7, 8, 6, NULL, '2024-09-24 10:42:40', '2024-09-24 10:42:40'),
(8, 6, 6, NULL, '2024-09-24 13:23:16', '2024-09-24 13:23:16'),
(9, 10, NULL, 2, '2024-09-24 15:46:47', '2024-09-24 15:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `user_id`, `first_name`, `last_name`, `phone`, `address`, `city`, `province`, `district`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 8, 'Mohamed', 'Rijas', '0776663718', '813/1, Malwanahinna, Akurana', 'Akurana', 'Central', 'Kandy', '20850', '2024-09-24 10:15:55', '2024-09-24 10:15:55'),
(2, 8, 'Mohamed', 'Rijas', '0776663718', '813/1, Malwanahinna, Akurana', 'Akurana', 'Central', 'Kandy', '20850', '2024-09-24 10:20:51', '2024-09-24 10:20:51'),
(3, 8, 'Mohamed', 'Rijas', '0776663718', '813/1, Malwanahinna, Akurana', 'Akurana', 'Central', 'Kandy', '20850', '2024-09-24 10:52:11', '2024-09-24 10:52:11'),
(4, 6, 'Mohamed', 'Rijas', '0776663718', '813/1, Malwanahinna, Akurana', 'nf', 'Central', 'Kandy', '20850', '2024-09-24 11:01:47', '2024-09-24 23:58:27'),
(5, 9, 'mohamed', 'shara', '0776663718', '813/1, Malwanahinna, Akurana', 'Akurana', 'Central', 'Kandy', '20850', '2024-09-24 14:00:41', '2024-09-24 14:00:41'),
(6, 10, 'Mohamed', 'Rijas', '0776663718', '813/1, Malwanahinna, Akurana', 'nf', 'Central', 'Kandy', '20850', '2024-09-24 15:33:50', '2024-09-24 15:33:50');

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
-- Table structure for table `gardening`
--

CREATE TABLE `gardening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gardening_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `replies` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2024_09_17_141241_create_user_accounts_table', 1),
(5, '2024_09_19_055916_add_role_to_user_accounts_table', 2),
(6, '2024_09_19_134859_create_plant_table', 3),
(7, '2024_09_19_140424_create_pot_table', 4),
(8, '2024_09_19_143930_rename_plant_id_to_pot_id_in_pot_table', 5),
(9, '2024_09_19_151130_add_image_to_plant_table', 6),
(10, '2024_09_19_151359_add_image_to_pot_table', 7),
(11, '2024_09_19_183105_update_plant_table', 8),
(12, '2024_09_19_184239_update_purchased_date_in_plant_table', 9),
(13, '2024_09_20_082852_update_pot_table', 10),
(15, '2024_09_20_083120_update_purchased_date_in_pot_table', 11),
(16, '2024_09_20_173253_create_my_cart_table', 12),
(17, '2024_09_23_195428_create_cart_table', 13),
(21, '2024_09_24_150333_create_customer_table', 14),
(22, '2024_09_24_152858_create_order_table', 15),
(23, '2024_09_24_155519_modify_email_column_in_customers_table', 16),
(24, '2024_09_24_184420_drop_email_column_from_customer_table', 17),
(25, '2024_09_24_204332_update_order_table', 18),
(26, '2024_09_25_055400_create_gardening_table', 19),
(27, '2024_09_25_072143_create_wishlist_table', 20),
(28, '2024_09_25_093220_create_inquiry_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `plant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ordered_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `plant_id`, `pot_id`, `ordered_date`, `delivery_date`, `unit_price`, `quantity`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 12, NULL, '2024-09-24', '2024-10-08', 1000.00, 1, 1000.00, '2024-09-24 13:38:03', '2024-09-24 13:38:03'),
(2, 4, 12, NULL, '2024-09-24', '2024-10-08', 1000.00, 2, 2000.00, '2024-09-24 13:45:55', '2024-09-24 13:45:55'),
(3, 4, 12, NULL, '2024-09-24', '2024-10-08', 1000.00, 1, 1000.00, '2024-09-24 13:48:20', '2024-09-24 13:48:20'),
(4, 4, 12, NULL, '2024-09-24', '2024-10-08', 1000.00, 1, 1000.00, '2024-09-24 13:52:54', '2024-09-24 13:52:54'),
(5, 5, 13, NULL, '2024-09-24', '2024-10-08', 1000.00, 1, 1000.00, '2024-09-24 14:00:41', '2024-09-24 14:00:41'),
(6, 5, 14, NULL, '2024-09-24', '2024-10-08', 300.00, 3, 900.00, '2024-09-24 14:16:45', '2024-09-24 14:16:45'),
(7, 5, 6, NULL, '2024-09-24', '2024-10-08', 500.00, 1, 500.00, '2024-09-24 15:07:43', '2024-09-24 15:07:43'),
(8, 6, 9, NULL, '2024-09-24', '2024-10-08', 500.00, 3, 1500.00, '2024-09-24 15:33:50', '2024-09-24 15:33:50'),
(9, 6, NULL, 2, '2024-09-24', '2024-10-08', 200.00, 2, 400.00, '2024-09-24 15:43:14', '2024-09-24 15:43:14'),
(10, 6, NULL, 2, '2024-09-24', '2024-10-08', 200.00, 2, 400.00, '2024-09-24 15:44:02', '2024-09-24 15:44:02'),
(11, 6, 15, NULL, '2024-09-24', '2024-10-08', 200.00, 4, 800.00, '2024-09-24 15:59:41', '2024-09-24 15:59:41'),
(12, 4, 16, NULL, '2024-09-25', '2024-10-09', 500.00, 1, 500.00, '2024-09-24 23:58:27', '2024-09-24 23:58:27'),
(13, 4, NULL, 2, '2024-09-25', '2024-10-09', 200.00, 3, 600.00, '2024-09-25 00:00:37', '2024-09-25 00:00:37');

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
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `leave_color` varchar(255) NOT NULL,
  `purchased_date` date NOT NULL DEFAULT '2024-09-19',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`id`, `name`, `price`, `size`, `description`, `category`, `is_available`, `quantity`, `leave_color`, `purchased_date`, `created_at`, `updated_at`, `image`) VALUES
(6, 'Adagio', 500, 'small', 'fdghgkshljdjlj;sl', 'indoor', 1, 5, 'light green', '2024-09-04', '2024-09-19 14:19:55', '2024-09-20 01:14:22', 'plants/xLIzXp3L7mwezF9zawfFT0IOjPB39hcMcAWoWTOS.jpg'),
(8, 'Spider plant', 1000, 'small', 'hrfuhfsudhifjdjfsdiodjfosdj', 'indoor', 0, 200, 'green', '2024-09-13', '2024-09-20 09:37:45', '2024-09-20 09:37:45', 'plants/UhXr2vFaa2EPXaX60442kpB72HPP2E0trRQf9ypR.jpg'),
(9, 'Mango', 500, 'Medium', 'hsjgdhdygiudshuhdushciudsjidsiusd', 'outdoor', 1, 5, 'green', '2024-09-06', '2024-09-20 09:40:37', '2024-09-20 09:40:37', 'plants/Ff9MXwgW6VlsQ8gbmKOyEk1mYWgT9aIJLnnVO03d.jpg'),
(10, 'Banana', 1500, 'Medium', 'gdhdsuihuidsosijdisaioaiaisjiasjisajiosajiosjio', 'outdoor', 1, 50, 'green', '2024-06-03', '2024-09-23 16:16:11', '2024-09-23 16:16:11', 'plants/7bAv8lH48zGCxcugLQC8GK9a2KBae3EPsZZ8Yuzr.jpg'),
(11, 'Boganvilia', 200, 'Small', 'hrfuhfsudhifjdjfsdiodjfosdj', 'outdoor', 1, 100, 'green', '2024-09-03', '2024-09-23 16:20:06', '2024-09-23 16:20:06', 'plants/k4PWwzH9mApk0NmPm1cJCdHZ7QlQSKe0soksQGyK.jpg'),
(12, 'Coconut', 1000, 'Medium', 'hrfuhfsudhifjdjfsdiodjfosdj', 'outdoor', 1, 50, 'green', '2024-09-02', '2024-09-23 16:22:34', '2024-09-23 16:22:34', 'plants/zYMXh86INFN37yT8QaKlQDTdqucDgh8VT3SwFJb0.jpg'),
(13, 'Cinnamon', 1000, 'large', 'fdghgkshljdjlj;sl', 'outdoor', 1, 25, 'green', '2024-09-04', '2024-09-23 16:23:34', '2024-09-23 16:23:34', 'plants/TbjM6KuArtBGGhzOZuVNcCmiAcG810SzHXyryanM.jpg'),
(14, 'Jasmine', 300, 'small', 'hgscdhjgsdcjhgcshdhgdckksjdhkshdcjkdc', 'outdoor', 1, 100, 'green', '2024-09-12', '2024-09-23 16:24:25', '2024-09-23 16:24:25', 'plants/m7zxY1NGq9WvwogQUxaBiCcmvhRjlXBBHTOLjqmP.jpg'),
(15, 'Ixora', 200, 'small', 'hrfuhfsudhifjdjfsdiodjfosdj', 'outdoor', 1, 200, 'green', '2024-09-12', '2024-09-23 16:27:03', '2024-09-23 16:27:03', 'plants/OENUqw4HqusTuGprUHf4MqL02SCGa3mM7qBOT1SM.jpg'),
(16, 'Iron wood', 500, 'small', 'hrfuhfsudhifjdjfsdiodjfosdj', 'outdoor', 1, 200, 'green-red mixed', '2024-09-11', '2024-09-23 16:28:16', '2024-09-23 16:28:16', 'plants/oL8HLojyxmCxaHmnNLCxaqphUYwdSTfZn1AjvRHB.jpg'),
(17, 'Temple plant', 1000, 'small', 'fdghgkshljdjlj;sl', 'outdoor', 0, 20, 'green', '2024-09-04', '2024-09-23 16:30:36', '2024-09-23 16:30:36', 'plants/jSNoZN4xZsIap1IEPWL5FQAtrJgcaiNtLCH8byrm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pot`
--

CREATE TABLE `pot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `pot_color` varchar(255) NOT NULL,
  `purchased_date` date NOT NULL DEFAULT '2024-09-20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pot`
--

INSERT INTO `pot` (`id`, `name`, `price`, `size`, `description`, `category`, `is_available`, `quantity`, `pot_color`, `purchased_date`, `created_at`, `updated_at`, `image`) VALUES
(2, 'plastic', 200, 'large', 'hgscdhjgsdcjhgcshdhgdckksjdhkshdcjkdc', 'plastic', 1, 200, 'Brown', '2024-09-18', '2024-09-20 03:22:12', '2024-09-20 03:22:12', 'pots/x5WaLfmIAIRzNw5KVISJeurMXSbRMmgINkRw64hx.jpg'),
(3, 'Cement pot', 1500, 'Medium', 'hdjfhsoijsdfoijorifjroijr', 'cement', 1, 100, 'silver', '2024-09-03', '2024-09-21 01:45:23', '2024-09-21 01:45:23', 'pots/CciF17Ruqm34g650wALthPTW6q1vS6DdfkGI2we7.jpg');

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
('4szR61IqNrmvuZVUiNBa5LFLY3EI3FfSoSMndlzK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVZOYTVoM3h4WnZ3NWNKWkk2MXAzWWk0RjZHM1FhVVNWaVNVUVFuZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9nYXJkZW5pbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1727260458);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `name`, `email`, `city`, `password`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Mohamed Rijas', 'rijasmohamedmr7@gmail.com', 'Kandy', '$2y$12$qWgL8newBRqixTAsrTFPrOUjvL0/.e1kVYsahY.2En6zF/6YlJAna', NULL, NULL, 'admin'),
(6, 'Amila', 'gewhdlihewijo@gmail.com', 'Wattegama', '$2y$12$cMPuJw06JmTeoTskK.zJ3.v5ahlesVEYlWZ4oZQtMl7Ks2Z08cJwu', '2024-09-19 04:45:14', '2024-09-19 04:45:14', 'user'),
(8, 'Hamdhan', 'ffhdljidushopfp@gmail.com', 'Kandy', '$2y$12$N5MBzC2JewR.aRR6efiUke45LaGl.66j/btr2hUtoUGKAspU9QVpi', '2024-09-20 09:35:21', '2024-09-20 09:35:21', 'user'),
(9, 'shara', 'gjhshdkksdjk@gmail.com', 'Akurana', '$2y$12$ss9p9AsBCXP.YM88bnuq4.xTgh4r4fO8SY4C.m.S6c4iYijTTOYUG', '2024-09-24 14:00:03', '2024-09-24 14:00:03', 'user'),
(10, 'Mohamed Rijas', 'mohamedrijsjd@gmail.com', 'Akurana', '$2y$12$xThKk.LyVHyNOjfmCwyZ6.lQOD2gS4x8iju3.iwxgx/xjiY0.1zgS', '2024-09-24 15:33:11', '2024-09-24 15:33:11', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_specification` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `customer_name`, `phone`, `product_name`, `product_specification`, `image`, `created_at`, `updated_at`) VALUES
(5, 6, 'ishan Amila', '0776663718', 'Hibiscus', 'hshsuiha', 'wishlists/MSulHqP5bXlzOC4UGjS2UcktheZjx7sSdC0USloD.jpg', '2024-09-25 02:32:58', '2024-09-25 02:32:58');

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_plant_id_foreign` (`plant_id`),
  ADD KEY `cart_pot_id_foreign` (`pot_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gardening`
--
ALTER TABLE `gardening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gardening_user_id_foreign` (`user_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inquiry_user_id_foreign` (`user_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`),
  ADD KEY `order_plant_id_foreign` (`plant_id`),
  ADD KEY `order_pot_id_foreign` (`pot_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pot`
--
ALTER TABLE `pot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_accounts_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gardening`
--
ALTER TABLE `gardening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pot`
--
ALTER TABLE `pot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_pot_id_foreign` FOREIGN KEY (`pot_id`) REFERENCES `pot` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gardening`
--
ALTER TABLE `gardening`
  ADD CONSTRAINT `gardening_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_pot_id_foreign` FOREIGN KEY (`pot_id`) REFERENCES `pot` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
