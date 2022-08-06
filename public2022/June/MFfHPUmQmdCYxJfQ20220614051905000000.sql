-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 10:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eqms`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uses`
--

CREATE TABLE `about_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_uses`
--

INSERT INTO `about_uses` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `description`, `image`) VALUES
(1, '2020-07-21 18:28:14', '2020-07-21 18:28:14', NULL, 'Madeinukrainee', 'Got me into plat 5 from gold 3, the boosters are awesome & know how to carry!', 'client1_1595330894.png'),
(2, '2020-07-21 18:29:04', '2020-07-21 18:29:04', NULL, 'Peterkwokjai', 'Very fast service. Done is a week. Has plenty of people working with him to make sure your account is done is a timely manner. Will do business again anytime.', 'client3_1595330944.png'),
(3, '2020-07-21 18:29:47', '2020-07-21 18:29:47', NULL, 'Callen', 'Great service . Plat 1 > Diamond 5 less than one day , Professional booster , work very hard , won 14/4 A++++++ recommended', 'client1_1595330987.png'),
(4, '2020-07-21 18:30:30', '2020-07-21 21:22:10', NULL, 'Killerwave', 'Great service! Very reliable, purchased a p1 to d5 boost and promos were free! Would use again', 'client2_1595341330.png');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:19:39', '2020-07-17 16:19:39'),
(2, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:33:07', '2020-07-17 16:33:07'),
(3, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:34:15', '2020-07-17 16:34:15'),
(4, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:37:23', '2020-07-17 16:37:23'),
(5, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:37:38', '2020-07-17 16:37:38'),
(6, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:58:27', '2020-07-17 16:58:27'),
(7, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 16:59:03', '2020-07-17 16:59:03'),
(8, 'User', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 16:59:26', '2020-07-17 16:59:26'),
(9, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:59:50', '2020-07-17 16:59:50'),
(10, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:00:31', '2020-07-17 17:00:31'),
(11, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:00:42', '2020-07-17 17:00:42'),
(12, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:02:40', '2020-07-17 17:02:40'),
(13, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:02:52', '2020-07-17 17:02:52'),
(14, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:05:17', '2020-07-17 17:05:17'),
(15, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:05:27', '2020-07-17 17:05:27'),
(16, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:05:34', '2020-07-17 17:05:34'),
(17, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:05:46', '2020-07-17 17:05:46'),
(18, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:06:56', '2020-07-17 17:06:56'),
(19, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:07:07', '2020-07-17 17:07:07'),
(20, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:08:12', '2020-07-17 17:08:12'),
(21, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:08:24', '2020-07-17 17:08:24'),
(22, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:08:33', '2020-07-17 17:08:33'),
(23, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:08:44', '2020-07-17 17:08:44'),
(24, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 19:00:36', '2020-07-17 19:00:36'),
(25, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:23:28', '2020-07-17 20:23:28'),
(26, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:26:38', '2020-07-17 20:26:38'),
(27, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:33:26', '2020-07-17 20:33:26'),
(28, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:34:13', '2020-07-17 20:34:13'),
(29, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:13:42', '2020-07-17 21:13:42'),
(30, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:21:23', '2020-07-17 21:21:23'),
(31, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:38:46', '2020-07-17 21:38:46'),
(32, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:39:07', '2020-07-17 21:39:07'),
(33, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 22:24:51', '2020-07-17 22:24:51'),
(34, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 14:23:55', '2020-07-20 14:23:55'),
(35, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 15:25:01', '2020-07-20 15:25:01'),
(36, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 15:25:15', '2020-07-20 15:25:15'),
(37, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 19:01:56', '2020-07-20 19:01:56'),
(38, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 21:54:01', '2020-07-20 21:54:01'),
(39, 'myuser', 'LoggedIn', 4, 'App\\User', 4, 'App\\User', '[]', '2020-07-20 22:06:38', '2020-07-20 22:06:38'),
(40, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 15:33:53', '2020-07-21 15:33:53'),
(41, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 16:56:52', '2020-07-21 16:56:52'),
(42, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 17:35:54', '2020-07-21 17:35:54'),
(43, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:22:17', '2020-07-23 18:22:17'),
(44, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:46:47', '2020-07-23 18:46:47'),
(45, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:58:29', '2020-07-23 18:58:29'),
(46, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 19:02:25', '2020-07-23 19:02:25'),
(47, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 19:07:13', '2020-07-23 19:07:13'),
(48, 'New User', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2020-07-23 19:30:11', '2020-07-23 19:30:11'),
(49, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 20:37:56', '2020-07-23 20:37:56'),
(50, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 20:58:48', '2020-07-23 20:58:48'),
(51, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 18:34:16', '2020-07-24 18:34:16'),
(52, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 20:23:33', '2020-07-24 20:23:33'),
(53, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 20:45:13', '2020-07-24 20:45:13'),
(54, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-27 16:10:14', '2020-07-27 16:10:14'),
(55, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-28 15:57:09', '2020-07-28 15:57:09'),
(56, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-30 14:26:58', '2020-07-30 14:26:58'),
(57, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-30 17:03:27', '2020-07-30 17:03:27'),
(58, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-03 14:28:35', '2020-08-03 14:28:35'),
(59, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-04 23:06:42', '2020-08-04 23:06:42'),
(60, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 12:15:03', '2020-08-05 12:15:03'),
(61, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 20:18:05', '2020-08-05 20:18:05'),
(62, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-06 12:33:16', '2020-08-06 12:33:16'),
(63, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-07 13:35:39', '2020-08-07 13:35:39'),
(64, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-10 13:17:14', '2020-08-10 13:17:14'),
(65, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-19 13:51:16', '2020-08-19 13:51:16'),
(66, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:10:40', '2020-08-19 15:10:40'),
(67, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:00', '2020-08-19 15:21:00'),
(68, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:19', '2020-08-19 15:21:19'),
(69, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:23', '2020-08-19 15:21:23'),
(70, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:24:31', '2020-08-19 15:24:31'),
(71, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:24:52', '2020-08-19 15:24:52'),
(72, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 12:17:50', '2020-08-20 12:17:50'),
(73, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 12:18:34', '2020-08-20 12:18:34'),
(74, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-20 12:19:47', '2020-08-20 12:19:47'),
(75, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-20 20:59:53', '2020-08-20 20:59:53'),
(76, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 08:35:13', '2021-01-02 08:35:13'),
(77, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 08:44:05', '2021-01-02 08:44:05'),
(78, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 08:44:25', '2021-01-02 08:44:25'),
(79, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 08:46:42', '2021-01-02 08:46:42'),
(80, 'Developer', 'Registered', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 14:51:56', '2022-03-04 14:51:56'),
(81, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 14:52:02', '2022-03-04 14:52:02'),
(82, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 14:52:09', '2022-03-04 14:52:09'),
(83, 'Ismail Rehman', 'Registered', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-07 18:44:55', '2022-03-07 18:44:55'),
(84, 'Ismail Rehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 08:34:16', '2022-03-08 08:34:16'),
(85, 'Ismail Rehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 09:14:20', '2022-03-08 09:14:20'),
(86, 'Ismail Rehman', 'LoggedOut', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 09:41:44', '2022-03-08 09:41:44'),
(87, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 09:42:32', '2022-03-08 09:42:32'),
(88, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 11:39:15', '2022-03-08 11:39:15'),
(89, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 11:39:32', '2022-03-08 11:39:32'),
(90, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 11:40:27', '2022-03-08 11:40:27'),
(91, 'All Patner', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-17 12:34:13', '2022-03-17 12:34:13'),
(92, 'All Patner', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-17 12:48:10', '2022-03-17 12:48:10'),
(93, 'naylaraisi360@gmail.com', 'Registered', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 04:53:06', '2022-03-18 04:53:06'),
(94, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-03-18 05:13:46', '2022-03-18 05:13:46'),
(95, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-03-18 05:16:38', '2022-03-18 05:16:38'),
(96, 'naylaraisi360@gmail.com', 'LoggedIn', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 05:18:22', '2022-03-18 05:18:22'),
(97, 'naylaraisi360@gmail.com', 'LoggedOut', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 05:19:04', '2022-03-18 05:19:04'),
(98, 'All Patner', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-18 05:20:12', '2022-03-18 05:20:12'),
(99, 'Developer ', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-18 09:33:43', '2022-03-18 09:33:43'),
(100, 'Developer ', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-19 02:55:44', '2022-03-19 02:55:44'),
(101, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-22 12:29:14', '2022-03-22 12:29:14'),
(102, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-24 09:13:19', '2022-03-24 09:13:19'),
(103, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-25 03:43:07', '2022-03-25 03:43:07'),
(104, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 02:58:15', '2022-03-26 02:58:15'),
(105, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 08:45:21', '2022-03-26 08:45:21'),
(106, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 08:51:15', '2022-03-26 08:51:15'),
(107, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-28 08:21:11', '2022-03-28 08:21:11'),
(108, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 08:01:40', '2022-03-30 08:01:40'),
(109, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 08:07:06', '2022-03-30 08:07:06'),
(110, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 08:08:47', '2022-03-30 08:08:47'),
(111, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 08:41:24', '2022-03-30 08:41:24'),
(112, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 04:07:55', '2022-03-31 04:07:55'),
(113, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 04:13:09', '2022-03-31 04:13:09'),
(114, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 06:20:22', '2022-03-31 06:20:22'),
(115, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 07:05:39', '2022-03-31 07:05:39'),
(116, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 08:21:05', '2022-03-31 08:21:05'),
(117, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 08:21:35', '2022-03-31 08:21:35'),
(118, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 10:18:14', '2022-03-31 10:18:14'),
(119, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-04 07:43:02', '2022-04-04 07:43:02'),
(120, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-04 07:43:30', '2022-04-04 07:43:30'),
(121, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-05 05:56:00', '2022-04-05 05:56:00'),
(122, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-05 05:56:46', '2022-04-05 05:56:46'),
(123, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 04:17:52', '2022-04-07 04:17:52'),
(124, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 06:35:25', '2022-04-07 06:35:25'),
(125, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 06:35:31', '2022-04-07 06:35:31'),
(126, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 06:57:57', '2022-04-07 06:57:57'),
(127, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 06:58:01', '2022-04-07 06:58:01'),
(128, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 07:02:13', '2022-04-07 07:02:13'),
(129, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 07:02:21', '2022-04-07 07:02:21'),
(130, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 07:03:09', '2022-04-07 07:03:09'),
(131, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 07:04:48', '2022-04-07 07:04:48'),
(132, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 07:04:52', '2022-04-07 07:04:52'),
(133, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-08 02:16:50', '2022-04-08 02:16:50'),
(134, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-09 04:10:27', '2022-04-09 04:10:27'),
(135, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-04 07:28:06', '2022-06-04 07:28:06'),
(136, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-04 09:12:05', '2022-06-04 09:12:05'),
(137, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-04 09:37:58', '2022-06-04 09:37:58'),
(138, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-04 09:59:43', '2022-06-04 09:59:43'),
(139, 'ssds', 'Registered', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 10:44:02', '2022-06-06 10:44:02'),
(140, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 10:56:03', '2022-06-06 10:56:03'),
(141, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 10:56:17', '2022-06-06 10:56:17'),
(142, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 10:56:40', '2022-06-06 10:56:40'),
(143, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 10:57:10', '2022-06-06 10:57:10'),
(144, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 10:58:12', '2022-06-06 10:58:12'),
(145, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 10:59:47', '2022-06-06 10:59:47'),
(146, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 11:00:01', '2022-06-06 11:00:01'),
(147, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 11:01:30', '2022-06-06 11:01:30'),
(148, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 11:01:40', '2022-06-06 11:01:40'),
(149, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 11:01:54', '2022-06-06 11:01:54'),
(150, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 11:01:58', '2022-06-06 11:01:58'),
(151, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 11:02:07', '2022-06-06 11:02:07'),
(152, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 11:02:11', '2022-06-06 11:02:11'),
(153, 'username123', 'Registered', 11, 'App\\User', 11, 'App\\User', '[]', '2022-06-06 11:03:41', '2022-06-06 11:03:41'),
(154, 'username123', 'LoggedOut', 11, 'App\\User', 11, 'App\\User', '[]', '2022-06-06 11:03:54', '2022-06-06 11:03:54'),
(155, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 11:04:12', '2022-06-06 11:04:12'),
(156, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 11:05:42', '2022-06-06 11:05:42'),
(157, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 11:05:56', '2022-06-06 11:05:56'),
(158, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 08:16:58', '2022-06-13 08:16:58'),
(159, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 10:58:06', '2022-06-13 10:58:06'),
(160, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 10:59:45', '2022-06-13 10:59:45'),
(161, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:03:27', '2022-06-13 11:03:27'),
(162, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-13 11:03:35', '2022-06-13 11:03:35'),
(163, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:04:13', '2022-06-13 11:04:13'),
(164, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:37:23', '2022-06-13 11:37:23'),
(165, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:56:27', '2022-06-13 11:56:27'),
(166, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:56:51', '2022-06-13 11:56:51'),
(167, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 11:57:16', '2022-06-13 11:57:16'),
(168, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-13 11:57:22', '2022-06-13 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `id` int(11) NOT NULL,
  `price` int(191) NOT NULL,
  `discount_persent` int(191) NOT NULL,
  `quantity` int(191) NOT NULL,
  `sub_total` int(191) NOT NULL,
  `images` varchar(191) NOT NULL,
  `tour_id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`id`, `price`, `discount_persent`, `quantity`, `sub_total`, `images`, `tour_id`, `user_id`, `title`, `created_at`, `deleted_at`, `updated_at`) VALUES
(7, 124342, 3, 2, 241223, '/uploads/TourImages/2022/June/jsO7AFtTe7LjtEOM20220606040521000000.png', 130, 2, 'Turkey', '2022-06-06 16:06:27', NULL, '2022-06-06 11:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `amunities`
--

CREATE TABLE `amunities` (
  `id` int(11) NOT NULL,
  `title` varchar(11) NOT NULL,
  `icon` varchar(99) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amunities`
--

INSERT INTO `amunities` (`id`, `title`, `icon`, `created_at`, `deleted_at`) VALUES
(6, 'dinner', '/uploads/LunchIcons/2022/April/ELCjg8F9Rve7idIM20220409091732000000.png', '2022-03-19 16:13:39', '2022-03-19 16:13:39'),
(7, 'sports', '/uploads/LunchIcons/2022/April/Ddav9i3pnUFQUsjQ20220409091719000000.png', '2022-03-19 16:14:04', '2022-03-19 16:14:04'),
(10, 'flight', '/uploads/LunchIcons/2022/April/k5lwl3lPgN50weUS20220409091749000000.png', '2022-03-25 20:54:58', '2022-03-25 20:54:58'),
(11, 'lunch', '/uploads/LunchIcons/2022/April/RNM9SFSivwidsNzR20220409091801000000.png', '2022-03-25 20:55:26', '2022-03-25 20:55:26'),
(12, 'welcomeDish', '/uploads/LunchIcons/2022/April/qOmElf7CJaK8wAvw20220409091950000000.png', '2022-04-09 14:19:50', '2022-04-09 14:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `bests`
--

CREATE TABLE `bests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bests`
--

INSERT INTO `bests` (`id`, `created_at`, `updated_at`, `title`, `description`) VALUES
(1, '2020-07-24 20:25:48', '2020-07-24 20:25:48', 'Anonymous Boosting', 'We have real reviews spanning multiple sites such as EpicNPC so you know you are dealing with a trusted service.'),
(2, '2020-07-24 20:26:27', '2020-07-24 20:26:27', 'Profession ELO Booster', 'We have real reviews spanning multiple sites such as Epic NPC so you know you are dealing with a trusted service.'),
(3, '2020-07-24 20:26:59', '2020-07-24 20:26:59', 'Verified Reviews', 'We have real reviews spanning multiple sites such as EpicNPC so you know you are dealing with a trusted service.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `user_id`, `title`, `slug`, `content`, `image`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'My first blog', 'my-first-blog', '<p>Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.  <br> <br> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.\n</p>\n', NULL, 0, '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(2, 2, 1, 'My Second blog', 'my-second-blog', '<p>Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut atlis. Aliquam erat volutpat.  <br> <br> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipisci semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.<br><br>mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas. tincidunt sed enim. Sed et felis metus.\n</p>\n', NULL, 0, '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Love', 'love', '2020-07-17 15:23:08', '2020-07-17 15:23:08', NULL),
(2, 'Hate', 'hate', '2020-07-17 15:23:08', '2020-07-17 15:23:08', NULL),
(3, 'Inspiration', 'inspiration', '2020-07-17 15:23:08', '2020-07-17 15:23:09', NULL),
(4, 'Friends', 'friends', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(5, 'Motivational', 'motivational', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `version`) VALUES
(1, '2022-06-13 11:40:02', '2022-06-13 11:40:02', NULL, 'Devop360', 'testing_1');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `icon`) VALUES
(17, '2022-03-19 05:24:56', '2022-03-19 05:24:56', NULL, 'wsded', NULL),
(18, '2022-03-19 05:27:44', '2022-03-19 05:27:44', NULL, 'ismailk', '/uploads/LunchIcons/2022/March/FjgjTKNW5GjDaDbB20220319102744000000.png');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `give__discounts`
--

CREATE TABLE `give__discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `general_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_persent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2016_01_01_193651_create_roles_permissions_tables', 1),
(4, '2018_06_15_045804_create_profiles_table', 1),
(5, '2018_06_15_092930_create_social_accounts_table', 1),
(6, '2018_06_16_054705_create_activity_log_table', 1),
(7, '2018_06_27_072626_create_blog_module', 1),
(8, '2020_03_20_050141_create_failed_jobs_table', 1),
(9, '2020_07_17_094804_create_testings_table', 2),
(10, '2020_07_20_072752_create_news_table', 3),
(11, '2020_07_20_073506_create_news_table', 4),
(12, '2020_07_20_073841_create_news_table', 5),
(13, '2020_07_20_082749_create_news_table', 6),
(14, '2020_07_20_145845_create_categories_table', 7),
(15, '2020_07_21_083742_create_categories_table', 8),
(16, '2020_07_21_085604_create_e_l_o__boosters_table', 9),
(17, '2020_07_21_091528_create_games_table', 10),
(18, '2020_07_21_091920_create_game_details_table', 11),
(19, '2020_07_21_092259_create_game_options_table', 12),
(20, '2020_07_21_092554_create_testimonials_table', 13),
(21, '2020_07_21_093120_create_orders_table', 14),
(22, '2020_07_21_093642_create_order_account_details_table', 15),
(23, '2020_07_21_095223_create_payment_details_table', 16),
(24, '2020_07_21_104147_create_about_uses_table', 16),
(25, '2020_07_21_105148_create_payment_details_table', 17),
(26, '2020_07_21_130530_create_expertise_levels_table', 18),
(27, '2020_07_23_122132_create_services_table', 19),
(28, '2020_07_23_131731_create_services_table', 20),
(29, '2020_07_23_133028_create_services_table', 21),
(30, '2020_07_24_132418_create_bests_table', 22),
(31, '2020_07_27_122059_create_game_levels_table', 23),
(32, '2020_07_30_103506_create_game_regions_table', 24),
(33, '2020_08_03_105019_create_game_roles_table', 25),
(34, '2022_03_08_112846_create_tips_table', 26),
(35, '2022_03_18_103849_create_tour_listings_table', 27),
(36, '2022_03_19_095020_create_facilities_table', 28),
(37, '2022_05_31_072827_create_coupons_table', 29),
(38, '2022_06_03_145812_create_give__discounts_table', 29),
(39, '2022_06_04_135522_create_orderlists_table', 29),
(40, '2021_05_10_170301_create_tests_table', 30),
(41, '2022_06_13_132902_create_documents_table', 30),
(42, '2022_06_13_163413_create_documents_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `description`, `image`) VALUES
(1, '2020-07-20 16:09:45', '2020-07-21 22:52:01', '2020-07-21 22:52:01', 'Gaming Machine', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ipsa recusandae explicabo atque facilis dolorem labore deserunt modi ex. Aliquam amet incidunt ex quis illum. Accusamus a nesciunt enim reiciendis.', 'testimonialleft_1595334642.png'),
(2, '2020-07-20 16:11:12', '2020-07-21 22:49:20', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'new2_1595346560.png'),
(3, '2020-07-20 16:11:42', '2020-07-21 22:50:17', NULL, 'Top 9 Ways to Display True LOL Sportsmanship', 'Top 9 Ways to Display True LOL Sportsmanship Most people enjoy a bit of harmless banter', 'new3_1595346617.png'),
(4, '2020-07-20 17:21:09', '2020-07-21 22:48:28', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'new2_1595346508.png'),
(5, '2020-07-20 18:40:43', '2020-07-21 22:51:29', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'h2_1595346689.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(191) NOT NULL,
  `gateway_name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `gateway_name`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'paypal_payment', 'approved', 7, '2022-06-04 07:58:24', '2022-06-04 07:58:24', NULL),
(2, 'paypal_payment', 'approved', 7, '2022-06-04 07:59:27', '2022-06-04 07:59:27', NULL),
(3, 'payment_stripe', 'succeeded', 7, '2022-06-04 08:00:46', '2022-06-04 08:00:46', NULL),
(4, 'paypal_payment', 'approved', 2, '2022-06-06 11:07:10', '2022-06-06 11:07:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderlists`
--

CREATE TABLE `orderlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderlists`
--

INSERT INTO `orderlists` (`id`, `created_at`, `updated_at`, `tour_title`, `tourist_name`, `status`) VALUES
(1, '2022-06-04 09:04:28', '2022-06-04 09:04:37', 'Dubai', 'Muhammad Ali', 'pending'),
(2, '2022-06-04 09:07:05', '2022-06-04 09:07:25', 'USA , Neywork', 'Usman Nadeem', 'completed');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'All Permission', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(2, 'add-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(3, 'view-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(4, 'edit-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(5, 'delete-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(6, 'add-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(7, 'view-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(8, 'edit-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(9, 'delete-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(10, 'add-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(11, 'edit-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(12, 'view-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(13, 'delete-testing', NULL, '2020-07-17 16:48:06', '2020-07-17 16:48:06'),
(14, 'add-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(15, 'edit-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(16, 'view-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(17, 'delete-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(18, 'add-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(19, 'edit-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(20, 'view-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(21, 'delete-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(22, 'add-elo-booster', NULL, '2020-07-21 15:56:04', '2020-07-21 15:56:04'),
(23, 'edit-elo-booster', NULL, '2020-07-21 15:56:04', '2020-07-21 15:56:04'),
(24, 'view-elo-booster', NULL, '2020-07-21 15:56:05', '2020-07-21 15:56:05'),
(25, 'delete-elo-booster', NULL, '2020-07-21 15:56:05', '2020-07-21 15:56:05'),
(26, 'add-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(27, 'edit-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(28, 'view-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(29, 'delete-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(30, 'add-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(31, 'edit-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(32, 'view-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(33, 'delete-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(34, 'add-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(35, 'edit-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(36, 'view-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(37, 'delete-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(38, 'add-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(39, 'edit-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(40, 'view-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(41, 'delete-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(42, 'add-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(43, 'edit-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(44, 'view-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(45, 'delete-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(46, 'add-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(47, 'edit-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(48, 'view-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(49, 'delete-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(50, 'add-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(51, 'edit-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(52, 'view-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(53, 'delete-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(54, 'add-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(55, 'edit-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(56, 'view-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(57, 'delete-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(58, 'add-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(59, 'edit-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(60, 'view-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(61, 'delete-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(62, 'add-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(63, 'edit-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(64, 'view-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(65, 'delete-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(66, 'add-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(67, 'edit-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(68, 'view-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(69, 'delete-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(70, 'add-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(71, 'edit-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(72, 'view-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(73, 'delete-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(74, 'add-gameregion', NULL, '2020-07-30 17:35:07', '2020-07-30 17:35:07'),
(75, 'edit-gameregion', NULL, '2020-07-30 17:35:07', '2020-07-30 17:35:07'),
(76, 'view-gameregion', NULL, '2020-07-30 17:35:08', '2020-07-30 17:35:08'),
(77, 'delete-gameregion', NULL, '2020-07-30 17:35:08', '2020-07-30 17:35:08'),
(78, 'add-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(79, 'edit-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(80, 'view-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(81, 'delete-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(82, 'add-tips', NULL, '2022-03-08 10:28:48', '2022-03-08 10:28:48'),
(83, 'edit-tips', NULL, '2022-03-08 10:28:48', '2022-03-08 10:28:48'),
(84, 'view-tips', NULL, '2022-03-08 10:28:48', '2022-03-08 10:28:48'),
(85, 'delete-tips', NULL, '2022-03-08 10:28:48', '2022-03-08 10:28:48'),
(86, 'add-tourlisting', NULL, '2022-03-18 05:38:49', '2022-03-18 05:38:49'),
(87, 'edit-tourlisting', NULL, '2022-03-18 05:38:49', '2022-03-18 05:38:49'),
(88, 'view-tourlisting', NULL, '2022-03-18 05:38:49', '2022-03-18 05:38:49'),
(89, 'delete-tourlisting', NULL, '2022-03-18 05:38:49', '2022-03-18 05:38:49'),
(90, 'add-facility', NULL, '2022-03-19 04:50:21', '2022-03-19 04:50:21'),
(91, 'edit-facility', NULL, '2022-03-19 04:50:21', '2022-03-19 04:50:21'),
(92, 'view-facility', NULL, '2022-03-19 04:50:21', '2022-03-19 04:50:21'),
(93, 'delete-facility', NULL, '2022-03-19 04:50:22', '2022-03-19 04:50:22'),
(94, 'add-orderlist', NULL, '2022-06-04 08:55:23', '2022-06-04 08:55:23'),
(95, 'edit-orderlist', NULL, '2022-06-04 08:55:23', '2022-06-04 08:55:23'),
(96, 'view-orderlist', NULL, '2022-06-04 08:55:23', '2022-06-04 08:55:23'),
(97, 'delete-orderlist', NULL, '2022-06-04 08:55:23', '2022-06-04 08:55:23'),
(98, 'add-documents', NULL, '2022-06-13 08:29:02', '2022-06-13 08:29:02'),
(99, 'edit-documents', NULL, '2022-06-13 08:29:02', '2022-06-13 08:29:02'),
(100, 'view-documents', NULL, '2022-06-13 08:29:02', '2022-06-13 08:29:02'),
(101, 'delete-documents', NULL, '2022-06-13 08:29:02', '2022-06-13 08:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(98, 2),
(98, 4),
(99, 2),
(99, 4),
(100, 2),
(100, 4),
(101, 2),
(101, 4);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `gender`, `dob`, `pic`, `country`, `state`, `city`, `address`, `postal`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'male', NULL, 'ProfilePicture/MjmJr0rYg4aUVEnQ5Y4Yj7n026GrOgfTJ5bAYrdq.png', 'Pakistan', 'Sindh', 'karachi', 'Karachi', '75200', '2020-07-17 15:23:06', '2022-03-18 05:14:47'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(3, 3, 'Developer', 'male', '1995-07-31', 'IaIt6ScFMD.jpeg', 'Pakistan', 'Sindh', 'Karachi', 'Hyderabad', '70010', '2020-07-17 16:39:45', '2020-07-17 16:39:45'),
(4, 4, 'Testing', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-20 22:06:17', '2020-07-20 22:06:17'),
(5, 5, 'testing', 'male', '1995-07-31', 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-23 19:28:44', '2020-07-23 19:28:44'),
(6, 7, 'TEsting Description', 'male', '1996-06-22', 'ProfilePicture/aWvqF4ZmQwEEh0K2YImIuCULkqNS7BH6iU2ENmqo.png', 'Pakistan', 'Sindh', 'karachi', 'House no d563', '75200', '2022-03-04 14:51:56', '2022-03-19 07:44:53'),
(7, 8, 'Testing Patner', 'male', NULL, 'kjgbyzrEyI.png', 'Pakistan', 'Sindh', 'karachi', 'House no d563', '75200', '2022-03-07 18:44:55', '2022-03-07 18:46:46'),
(8, 9, NULL, NULL, NULL, NULL, 'Pakistan', 'Sindh', 'karachi', 'Karachi', '75200', '2022-03-18 04:53:06', '2022-03-18 05:19:00'),
(9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 10:44:02', '2022-06-06 10:44:02'),
(10, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 11:03:41', '2022-06-06 11:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(2, 'user', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(4, 'developer', NULL, '2021-01-02 08:42:39', '2021-01-02 08:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\Blog', NULL, NULL, NULL),
(2, 1, 'App\\Blog', NULL, NULL, NULL),
(3, 1, 'App\\Blog', NULL, NULL, NULL),
(4, 2, 'App\\Blog', NULL, NULL, NULL),
(5, 2, 'App\\Blog', NULL, NULL, NULL),
(6, 2, 'App\\Blog', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'first blog', 'first-blog', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(2, 'new blog', 'new-blog', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(3, 'love', 'love', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(4, 'second blog', 'second-blog', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL),
(5, 'new one', 'new-one', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL),
(6, ' another blog', 'another-blog', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Uploaded_On` datetime DEFAULT NULL,
  `total_likes` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tour_amunities`
--

CREATE TABLE `tour_amunities` (
  `id` int(11) NOT NULL,
  `amunities_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_amunities`
--

INSERT INTO `tour_amunities` (`id`, `amunities_id`, `tour_id`, `created_at`, `updated_at`) VALUES
(131, 6, 116, '2022-06-04 12:38:04', '2022-06-04 12:38:04'),
(132, 7, 116, '2022-06-04 12:38:04', '2022-06-04 12:38:04'),
(133, 11, 116, '2022-06-04 12:38:04', '2022-06-04 12:38:04'),
(134, 7, 117, '2022-06-04 13:06:23', '2022-06-04 13:06:23'),
(135, 10, 117, '2022-06-04 13:06:23', '2022-06-04 13:06:23'),
(136, 11, 117, '2022-06-04 13:06:23', '2022-06-04 13:06:23'),
(137, 12, 117, '2022-06-04 13:06:23', '2022-06-04 13:06:23'),
(138, 6, 118, '2022-06-04 13:08:21', '2022-06-04 13:08:21'),
(139, 12, 118, '2022-06-04 13:08:21', '2022-06-04 13:08:21'),
(140, 7, 119, '2022-06-04 13:12:10', '2022-06-04 13:12:10'),
(141, 11, 119, '2022-06-04 13:12:10', '2022-06-04 13:12:10'),
(142, 12, 119, '2022-06-04 13:12:10', '2022-06-04 13:12:10'),
(143, 6, 120, '2022-06-04 13:40:28', '2022-06-04 13:40:28'),
(144, 7, 120, '2022-06-04 13:40:28', '2022-06-04 13:40:28'),
(145, 10, 120, '2022-06-04 13:40:28', '2022-06-04 13:40:28'),
(146, 10, 121, '2022-06-04 13:42:00', '2022-06-04 13:42:00'),
(147, 11, 121, '2022-06-04 13:42:00', '2022-06-04 13:42:00'),
(148, 6, 122, '2022-06-04 13:43:28', '2022-06-04 13:43:28'),
(149, 7, 122, '2022-06-04 13:43:28', '2022-06-04 13:43:28'),
(150, 11, 122, '2022-06-04 13:43:28', '2022-06-04 13:43:28'),
(151, 10, 123, '2022-06-04 13:45:51', '2022-06-04 13:45:51'),
(152, 11, 123, '2022-06-04 13:45:51', '2022-06-04 13:45:51'),
(153, 12, 123, '2022-06-04 13:45:51', '2022-06-04 13:45:51'),
(154, 11, 129, '2022-06-06 15:59:40', '2022-06-06 15:59:40'),
(155, 12, 129, '2022-06-06 15:59:40', '2022-06-06 15:59:40'),
(156, 10, 130, '2022-06-06 16:05:21', '2022-06-06 16:05:21'),
(157, 11, 130, '2022-06-06 16:05:21', '2022-06-06 16:05:21'),
(158, 12, 130, '2022-06-06 16:05:21', '2022-06-06 16:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `tour_images`
--

CREATE TABLE `tour_images` (
  `id` int(11) NOT NULL,
  `tour_id` int(10) NOT NULL,
  `images` varchar(99) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updates_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_images`
--

INSERT INTO `tour_images` (`id`, `tour_id`, `images`, `created_at`, `updates_at`) VALUES
(107, 116, '/uploads/TourImages/2022/June/QnIRFLCQDsp0zZZz20220604123804000000.jpeg', '2022-06-04 17:38:04', '2022-06-04 12:38:04'),
(108, 117, '/uploads/TourImages/2022/June/F3sGw8tHJLIfVbFI20220604010623000000.jpeg', '2022-06-04 18:06:23', '2022-06-04 13:06:23'),
(109, 118, '/uploads/TourImages/2022/June/N6HAnphlAoCdtLRV20220604010821000000.jpeg', '2022-06-04 18:08:21', '2022-06-04 13:08:21'),
(110, 119, '/uploads/TourImages/2022/June/w93kTIk3MQVpjSCV20220604011210000000.jpeg', '2022-06-04 18:12:10', '2022-06-04 13:12:10'),
(111, 120, '/uploads/TourImages/2022/June/hwBMyLSZ43gmnFyQ20220604014028000000.jpeg', '2022-06-04 18:40:28', '2022-06-04 13:40:28'),
(112, 121, '/uploads/TourImages/2022/June/mXkwYfEaArCKaAwU20220604014200000000.jpeg', '2022-06-04 18:42:00', '2022-06-04 13:42:00'),
(113, 122, '/uploads/TourImages/2022/June/uHafObzJSBex325B20220604014328000000.png', '2022-06-04 18:43:28', '2022-06-04 13:43:28'),
(114, 123, '/uploads/TourImages/2022/June/jymtSbHMt2du1hIP20220604014551000000.png', '2022-06-04 18:45:51', '2022-06-04 13:45:51'),
(115, 129, '/uploads/TourImages/2022/June/yoN4doN30AWmtcmp20220606035940000000.png', '2022-06-06 20:59:40', '2022-06-06 15:59:40'),
(116, 130, '/uploads/TourImages/2022/June/jsO7AFtTe7LjtEOM20220606040521000000.png', '2022-06-06 21:05:21', '2022-06-06 16:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `tour_listings`
--

CREATE TABLE `tour_listings` (
  `id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_persent` int(11) DEFAULT NULL,
  `amunities_id` int(11) DEFAULT NULL,
  `is_favourite` int(11) DEFAULT NULL,
  `order_count_id` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visiter_listed_id` int(11) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tourdifficutilties` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departuretime` datetime NOT NULL,
  `returntime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_listings`
--

INSERT INTO `tour_listings` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `location`, `country`, `description`, `price`, `discount_persent`, `amunities_id`, `is_favourite`, `order_count_id`, `is_featured`, `is_hot`, `rating_id`, `user_id`, `visiter_listed_id`, `duration`, `tourdifficutilties`, `departure`, `departuretime`, `returntime`) VALUES
(116, NULL, NULL, NULL, 'Dubai', 'Dubai - United Arab Emirates', 'Dubai', 'Dubai - United Arab EmiratesDubai - United Arab EmiratesDubai - United Arab Emirates', '23423', 3, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '1 week', 'easy', 'uk states', '2022-06-04 08:16:00', '2022-06-04 21:14:00'),
(117, NULL, NULL, NULL, 'Italy', 'Cinque Terre, SP, Italy', 'Italy', 'Cinque Terre, SP, ItalyCinque Terre, SP, ItalyCinque Terre, SP, ItalyCinque Terre, SP, ItalyCinque Terre, SP, Italy', '23423', 3, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '1 week', 'easy', 'USA', '2022-06-04 22:18:00', '2022-06-04 18:20:00'),
(118, NULL, NULL, NULL, 'Saudi Arabia', 'Riyadh Saudi Arabia', 'Saudi Arabia', 'Riyadh Saudi ArabiaRiyadh Saudi ArabiaRiyadh Saudi ArabiaRiyadh Saudi ArabiaRiyadh Saudi Arabia', '124342', 3, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'Canada', '2022-06-04 18:18:00', '2022-06-04 18:15:00'),
(119, NULL, NULL, '2022-06-04 08:46:04', 'India', 'Khatu Shyam Ji Temple, Rajasthan, India', 'India', 'Khatu Shyam Ji Temple, Rajasthan, India Khatu Shyam Ji Temple, Rajasthan, India', '52342', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'high', 'uk states', '2022-06-04 21:18:00', '2022-06-04 11:20:00'),
(120, NULL, NULL, NULL, 'Portugal', 'Porto, Portugal', 'Portugal', 'Porto, PortugalPorto, PortugalPorto, PortugalPorto, PortugalPorto, Portugal', '234213412', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'USA', '2022-07-13 21:42:00', '2022-05-28 18:44:00'),
(121, NULL, NULL, NULL, 'Turkey', 'Yalova, Yalova Merkez/Yalova, Turkey', 'Turkey', 'Yalova, Yalova Merkez/Yalova, Turkey Yalova, Yalova Merkez/Yalova, Turkey Yalova, Yalova Merkez/Yalova, Turkey', '4234123', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'high', 'Canada', '2022-06-04 06:41:00', '2022-05-29 18:41:00'),
(122, NULL, NULL, NULL, 'Germany', 'Frankfurt, Germany', 'Frankfurt, Germany', 'Frankfurt, Germany Frankfurt, GermanyFrankfurt, GermanyFrankfurt, Germany', '5345234', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '1 week', 'easy', 'uk states', '2022-06-24 23:47:00', '2022-06-24 12:48:00'),
(123, NULL, NULL, NULL, 'Pakistan', 'Karachi, Pakistan', 'Pakistan', 'Karachi, PakistanKarachi, PakistanKarachi, PakistanKarachi, Pakistan', '52342', 5, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'USA', '2022-06-21 18:50:00', '2022-06-30 23:45:00'),
(124, NULL, NULL, NULL, 'Germany', 'Frankfurt, Germany', 'Frankfurt, Germany', 'Frankfurt, Germany Frankfurt, GermanyFrankfurt, GermanyFrankfurt, Germany', '5345234', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '1 week', 'easy', 'uk states', '2022-06-24 23:47:00', '2022-06-24 12:48:00'),
(125, NULL, NULL, NULL, 'Pakistan', 'Karachi, Pakistan', 'Pakistan', 'Karachi, PakistanKarachi, PakistanKarachi, PakistanKarachi, Pakistan', '52342', 5, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'USA', '2022-06-21 18:50:00', '2022-06-30 23:45:00'),
(129, NULL, NULL, NULL, 'Poland', 'Rzepakowa 4r, Kraków, Poland', 'Poland', 'Rzepakowa 4r, Kraków, PolandRzepakowa 4r, Kraków, PolandRzepakowa 4r, Kraków, Poland', '124342', 5, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'north Karachi', '2022-07-06 14:04:00', '2022-06-14 13:04:00'),
(130, NULL, NULL, NULL, 'Turkey', 'Çifte Havuzlar, YTÜ-Davutpaşa Kampüsü, Esenler/İstanbul, Turkey', 'Turkey', 'Çifte Havuzlar, YTÜ-Davutpaşa Kampüsü, Esenler/İstanbul, Turkey', '124342', 3, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '2 week', 'medium', 'Canada', '2022-05-18 10:06:00', '2022-07-01 13:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1-active,2-banned',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider_id`, `provider`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', NULL, NULL, 1, NULL, '2020-07-17 15:23:06', '2022-03-18 05:14:45', NULL),
(2, 'User', 'user@user.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', NULL, NULL, 1, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06', NULL),
(3, 'Developer', 'dev@admin.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', NULL, NULL, 1, NULL, '2020-07-17 16:39:44', '2022-03-08 11:36:47', '2022-03-08 11:36:47'),
(4, 'myuser', 'myuser@admin.com', '$2y$10$0ESM0g3SFtpyadRGGziYR.AoQbu/wmIJg21oa3xO2joIiRLoPDGMW', NULL, NULL, 1, NULL, '2020-07-20 22:06:17', '2022-03-08 11:33:02', '2022-03-08 11:33:02'),
(5, 'New User', 'username@admin.com', '$2y$10$nAdl2mwTUZ080.tYxvQfCOPJGstlMIP7nKtTlYlf9BoigLNBXY3ve', NULL, NULL, 1, NULL, '2020-07-23 19:28:44', '2020-07-23 19:28:44', NULL),
(6, 'Moiz', 'moiz@gmail.com', '$2y$10$PU9XQmLZAKCtHinp2dYwj.oVanfXTpQgcgXIfP9iodEtroWRUg0NK', NULL, NULL, 1, NULL, '2020-08-19 15:10:21', '2020-08-19 15:10:21', NULL),
(7, 'Muhammad Faisal Qasim', 'dev1@gmail.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', NULL, NULL, 1, NULL, '2022-03-04 14:51:56', '2022-03-19 07:44:53', NULL),
(8, 'Ismail Rehman', 'ismailrehman0331@gmail.com', '$2y$10$hO5KtgmMLnmPtjhsNVR9NOe.FRX6HT0a65xOLc2O./Mw1/Xudyl.6', NULL, NULL, 1, NULL, '2022-03-07 18:44:55', '2022-03-07 18:46:46', NULL),
(9, 'naylaraisi360@gmail.com', 'naylaraisi360@gmail.com', '$2y$10$UOPBYavKg0T/QOWfK9XSgOqFSG3yrnZAeyrJm3UV.lQkBMoBaD7ZO', NULL, NULL, 1, NULL, '2022-03-18 04:53:06', '2022-03-18 05:19:00', NULL),
(10, 'ssds', 'dev123@admin.com', '$2y$10$lkSzOH.h.HXdvqdcSZYvqe/yhyo1i8ENCx/6KY4I.3liUorOfgA6u', NULL, NULL, 1, NULL, '2022-06-06 10:44:02', '2022-06-06 10:44:02', NULL),
(11, 'username123', 'username123@admin.com', '$2y$10$icjFfD50HrMaascqQueQD.H8PPNqWBzyYFT4/JQX72ydF8H18KMn2', NULL, NULL, 1, NULL, '2022-06-06 11:03:41', '2022-06-06 11:03:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amunities`
--
ALTER TABLE `amunities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bests`
--
ALTER TABLE `bests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `give__discounts`
--
ALTER TABLE `give__discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderlists`
--
ALTER TABLE `orderlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_amunities`
--
ALTER TABLE `tour_amunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amunities_id` (`amunities_id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Indexes for table `tour_images`
--
ALTER TABLE `tour_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_images_ibfk_1` (`tour_id`);

--
-- Indexes for table `tour_listings`
--
ALTER TABLE `tour_listings`
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
-- AUTO_INCREMENT for table `about_uses`
--
ALTER TABLE `about_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `amunities`
--
ALTER TABLE `amunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bests`
--
ALTER TABLE `bests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `give__discounts`
--
ALTER TABLE `give__discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderlists`
--
ALTER TABLE `orderlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_amunities`
--
ALTER TABLE `tour_amunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tour_images`
--
ALTER TABLE `tour_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tour_listings`
--
ALTER TABLE `tour_listings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_amunities`
--
ALTER TABLE `tour_amunities`
  ADD CONSTRAINT `tour_amunities_ibfk_1` FOREIGN KEY (`amunities_id`) REFERENCES `amunities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_amunities_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour_listings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tour_images`
--
ALTER TABLE `tour_images`
  ADD CONSTRAINT `tour_images_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour_listings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
