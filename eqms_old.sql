-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 05:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
  `deleted_at` datetime DEFAULT NULL,
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
(1, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 23:19:39', '2020-07-17 23:19:39'),
(2, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 23:33:07', '2020-07-17 23:33:07'),
(3, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 23:34:15', '2020-07-17 23:34:15'),
(4, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 23:37:23', '2020-07-17 23:37:23'),
(5, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 23:37:38', '2020-07-17 23:37:38'),
(6, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 23:58:27', '2020-07-17 23:58:27'),
(7, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 23:59:03', '2020-07-17 23:59:03'),
(8, 'User', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 23:59:26', '2020-07-17 23:59:26'),
(9, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 23:59:50', '2020-07-17 23:59:50'),
(10, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:00:31', '2020-07-18 00:00:31'),
(11, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:00:42', '2020-07-18 00:00:42'),
(12, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:02:40', '2020-07-18 00:02:40'),
(13, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:02:52', '2020-07-18 00:02:52'),
(14, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:05:17', '2020-07-18 00:05:17'),
(15, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:05:27', '2020-07-18 00:05:27'),
(16, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:05:34', '2020-07-18 00:05:34'),
(17, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:05:46', '2020-07-18 00:05:46'),
(18, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:06:56', '2020-07-18 00:06:56'),
(19, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:07:07', '2020-07-18 00:07:07'),
(20, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:08:12', '2020-07-18 00:08:12'),
(21, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:08:24', '2020-07-18 00:08:24'),
(22, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-18 00:08:33', '2020-07-18 00:08:33'),
(23, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 00:08:44', '2020-07-18 00:08:44'),
(24, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 02:00:36', '2020-07-18 02:00:36'),
(25, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 03:23:28', '2020-07-18 03:23:28'),
(26, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 03:26:38', '2020-07-18 03:26:38'),
(27, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 03:33:26', '2020-07-18 03:33:26'),
(28, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 03:34:13', '2020-07-18 03:34:13'),
(29, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 04:13:42', '2020-07-18 04:13:42'),
(30, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 04:21:23', '2020-07-18 04:21:23'),
(31, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 04:38:46', '2020-07-18 04:38:46'),
(32, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 04:39:07', '2020-07-18 04:39:07'),
(33, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-18 05:24:51', '2020-07-18 05:24:51'),
(34, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 21:23:55', '2020-07-20 21:23:55'),
(35, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 22:25:01', '2020-07-20 22:25:01'),
(36, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 22:25:15', '2020-07-20 22:25:15'),
(37, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 02:01:56', '2020-07-21 02:01:56'),
(38, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 04:54:01', '2020-07-21 04:54:01'),
(39, 'myuser', 'LoggedIn', 4, 'App\\User', 4, 'App\\User', '[]', '2020-07-21 05:06:38', '2020-07-21 05:06:38'),
(40, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 22:33:53', '2020-07-21 22:33:53'),
(41, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 23:56:52', '2020-07-21 23:56:52'),
(42, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-22 00:35:54', '2020-07-22 00:35:54'),
(43, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 01:22:17', '2020-07-24 01:22:17'),
(44, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 01:46:47', '2020-07-24 01:46:47'),
(45, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 01:58:29', '2020-07-24 01:58:29'),
(46, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 02:02:25', '2020-07-24 02:02:25'),
(47, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 02:07:13', '2020-07-24 02:07:13'),
(48, 'New User', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2020-07-24 02:30:11', '2020-07-24 02:30:11'),
(49, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 03:37:56', '2020-07-24 03:37:56'),
(50, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 03:58:48', '2020-07-24 03:58:48'),
(51, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-25 01:34:16', '2020-07-25 01:34:16'),
(52, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-25 03:23:33', '2020-07-25 03:23:33'),
(53, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-25 03:45:13', '2020-07-25 03:45:13'),
(54, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-27 23:10:14', '2020-07-27 23:10:14'),
(55, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-28 22:57:09', '2020-07-28 22:57:09'),
(56, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-30 21:26:58', '2020-07-30 21:26:58'),
(57, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-31 00:03:27', '2020-07-31 00:03:27'),
(58, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-03 21:28:35', '2020-08-03 21:28:35'),
(59, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 06:06:42', '2020-08-05 06:06:42'),
(60, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 19:15:03', '2020-08-05 19:15:03'),
(61, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-06 03:18:05', '2020-08-06 03:18:05'),
(62, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-06 19:33:16', '2020-08-06 19:33:16'),
(63, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-07 20:35:39', '2020-08-07 20:35:39'),
(64, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-10 20:17:14', '2020-08-10 20:17:14'),
(65, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-19 20:51:16', '2020-08-19 20:51:16'),
(66, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:10:40', '2020-08-19 22:10:40'),
(67, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:21:00', '2020-08-19 22:21:00'),
(68, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:21:19', '2020-08-19 22:21:19'),
(69, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:21:23', '2020-08-19 22:21:23'),
(70, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:24:31', '2020-08-19 22:24:31'),
(71, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 22:24:52', '2020-08-19 22:24:52'),
(72, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 19:17:50', '2020-08-20 19:17:50'),
(73, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 19:18:34', '2020-08-20 19:18:34'),
(74, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-20 19:19:47', '2020-08-20 19:19:47'),
(75, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-21 03:59:53', '2020-08-21 03:59:53'),
(76, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 16:35:13', '2021-01-02 16:35:13'),
(77, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 16:44:05', '2021-01-02 16:44:05'),
(78, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 16:44:25', '2021-01-02 16:44:25'),
(79, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 16:46:42', '2021-01-02 16:46:42'),
(80, 'Developer', 'Registered', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 22:51:56', '2022-03-04 22:51:56'),
(81, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 22:52:02', '2022-03-04 22:52:02'),
(82, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-04 22:52:09', '2022-03-04 22:52:09'),
(83, 'Ismail Rehman', 'Registered', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 02:44:55', '2022-03-08 02:44:55'),
(84, 'Ismail Rehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 16:34:16', '2022-03-08 16:34:16'),
(85, 'Ismail Rehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 17:14:20', '2022-03-08 17:14:20'),
(86, 'Ismail Rehman', 'LoggedOut', 8, 'App\\User', 8, 'App\\User', '[]', '2022-03-08 17:41:44', '2022-03-08 17:41:44'),
(87, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 17:42:32', '2022-03-08 17:42:32'),
(88, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 19:39:15', '2022-03-08 19:39:15'),
(89, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 19:39:32', '2022-03-08 19:39:32'),
(90, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-08 19:40:27', '2022-03-08 19:40:27'),
(91, 'All Patner', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-17 19:34:13', '2022-03-17 19:34:13'),
(92, 'All Patner', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-17 19:48:10', '2022-03-17 19:48:10'),
(93, 'naylaraisi360@gmail.com', 'Registered', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 11:53:06', '2022-03-18 11:53:06'),
(94, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-03-18 12:13:46', '2022-03-18 12:13:46'),
(95, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-03-18 12:16:38', '2022-03-18 12:16:38'),
(96, 'naylaraisi360@gmail.com', 'LoggedIn', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 12:18:22', '2022-03-18 12:18:22'),
(97, 'naylaraisi360@gmail.com', 'LoggedOut', 9, 'App\\User', 9, 'App\\User', '[]', '2022-03-18 12:19:04', '2022-03-18 12:19:04'),
(98, 'All Patner', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-18 12:20:12', '2022-03-18 12:20:12'),
(99, 'Developer ', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-18 16:33:43', '2022-03-18 16:33:43'),
(100, 'Developer ', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-19 09:55:44', '2022-03-19 09:55:44'),
(101, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-22 19:29:14', '2022-03-22 19:29:14'),
(102, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-24 16:13:19', '2022-03-24 16:13:19'),
(103, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-25 10:43:07', '2022-03-25 10:43:07'),
(104, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 09:58:15', '2022-03-26 09:58:15'),
(105, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 15:45:21', '2022-03-26 15:45:21'),
(106, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-26 15:51:15', '2022-03-26 15:51:15'),
(107, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-28 15:21:11', '2022-03-28 15:21:11'),
(108, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 15:01:40', '2022-03-30 15:01:40'),
(109, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 15:07:06', '2022-03-30 15:07:06'),
(110, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 15:08:47', '2022-03-30 15:08:47'),
(111, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-30 15:41:24', '2022-03-30 15:41:24'),
(112, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 11:07:55', '2022-03-31 11:07:55'),
(113, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 11:13:09', '2022-03-31 11:13:09'),
(114, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 13:20:22', '2022-03-31 13:20:22'),
(115, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 14:05:39', '2022-03-31 14:05:39'),
(116, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 15:21:05', '2022-03-31 15:21:05'),
(117, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 15:21:35', '2022-03-31 15:21:35'),
(118, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-03-31 17:18:14', '2022-03-31 17:18:14'),
(119, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-04 14:43:02', '2022-04-04 14:43:02'),
(120, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-04 14:43:30', '2022-04-04 14:43:30'),
(121, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-05 12:56:00', '2022-04-05 12:56:00'),
(122, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-05 12:56:46', '2022-04-05 12:56:46'),
(123, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 11:17:52', '2022-04-07 11:17:52'),
(124, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 13:35:25', '2022-04-07 13:35:25'),
(125, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 13:35:31', '2022-04-07 13:35:31'),
(126, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 13:57:57', '2022-04-07 13:57:57'),
(127, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 13:58:01', '2022-04-07 13:58:01'),
(128, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 14:02:13', '2022-04-07 14:02:13'),
(129, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 14:02:21', '2022-04-07 14:02:21'),
(130, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 14:03:09', '2022-04-07 14:03:09'),
(131, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 14:04:48', '2022-04-07 14:04:48'),
(132, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-07 14:04:52', '2022-04-07 14:04:52'),
(133, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-08 09:16:50', '2022-04-08 09:16:50'),
(134, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-04-09 11:10:27', '2022-04-09 11:10:27'),
(135, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-04 14:28:06', '2022-06-04 14:28:06'),
(136, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-04 16:12:05', '2022-06-04 16:12:05'),
(137, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-04 16:37:58', '2022-06-04 16:37:58'),
(138, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-04 16:59:43', '2022-06-04 16:59:43'),
(139, 'ssds', 'Registered', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 17:44:02', '2022-06-06 17:44:02'),
(140, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 17:56:03', '2022-06-06 17:56:03'),
(141, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 17:56:17', '2022-06-06 17:56:17'),
(142, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 17:56:40', '2022-06-06 17:56:40'),
(143, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 17:57:10', '2022-06-06 17:57:10'),
(144, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 17:58:12', '2022-06-06 17:58:12'),
(145, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 17:59:47', '2022-06-06 17:59:47'),
(146, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 18:00:01', '2022-06-06 18:00:01'),
(147, 'ssds', 'LoggedIn', 10, 'App\\User', 10, 'App\\User', '[]', '2022-06-06 18:01:30', '2022-06-06 18:01:30'),
(148, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 18:01:40', '2022-06-06 18:01:40'),
(149, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 18:01:54', '2022-06-06 18:01:54'),
(150, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-06 18:01:58', '2022-06-06 18:01:58'),
(151, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 18:02:07', '2022-06-06 18:02:07'),
(152, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 18:02:11', '2022-06-06 18:02:11'),
(153, 'username123', 'Registered', 11, 'App\\User', 11, 'App\\User', '[]', '2022-06-06 18:03:41', '2022-06-06 18:03:41'),
(154, 'username123', 'LoggedOut', 11, 'App\\User', 11, 'App\\User', '[]', '2022-06-06 18:03:54', '2022-06-06 18:03:54'),
(155, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 18:04:12', '2022-06-06 18:04:12'),
(156, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-06 18:05:42', '2022-06-06 18:05:42'),
(157, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-06 18:05:56', '2022-06-06 18:05:56'),
(158, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 15:16:58', '2022-06-13 15:16:58'),
(159, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 17:58:06', '2022-06-13 17:58:06'),
(160, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 17:59:45', '2022-06-13 17:59:45'),
(161, 'Developer', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:03:27', '2022-06-13 18:03:27'),
(162, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-13 18:03:35', '2022-06-13 18:03:35'),
(163, 'Developer', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:04:13', '2022-06-13 18:04:13'),
(164, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:37:23', '2022-06-13 18:37:23'),
(165, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:56:27', '2022-06-13 18:56:27'),
(166, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:56:51', '2022-06-13 18:56:51'),
(167, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-13 18:57:16', '2022-06-13 18:57:16'),
(168, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-13 18:57:22', '2022-06-13 18:57:22'),
(169, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-14 13:07:58', '2022-06-14 13:07:58'),
(170, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-14 13:08:56', '2022-06-14 13:08:56'),
(171, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-14 13:09:02', '2022-06-14 13:09:02'),
(172, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-14 13:09:08', '2022-06-14 13:09:08'),
(173, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-14 13:09:12', '2022-06-14 13:09:12'),
(174, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 13:21:42', '2022-06-15 13:21:42'),
(175, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 13:22:15', '2022-06-15 13:22:15'),
(176, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 13:25:08', '2022-06-15 13:25:08'),
(177, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 14:04:04', '2022-06-15 14:04:04'),
(178, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 16:11:12', '2022-06-15 16:11:12'),
(179, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:32:57', '2022-06-15 18:32:57'),
(180, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:33:00', '2022-06-15 18:33:00'),
(181, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:33:41', '2022-06-15 18:33:41'),
(182, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:33:47', '2022-06-15 18:33:47'),
(183, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:34:03', '2022-06-15 18:34:03'),
(184, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:34:19', '2022-06-15 18:34:19'),
(185, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:34:29', '2022-06-15 18:34:29'),
(186, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:34:50', '2022-06-15 18:34:50'),
(187, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:34:58', '2022-06-15 18:34:58'),
(188, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-15 18:38:18', '2022-06-15 18:38:18'),
(189, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:51:26', '2022-06-16 09:51:26'),
(190, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:54:10', '2022-06-16 09:54:10'),
(191, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:54:20', '2022-06-16 09:54:20'),
(192, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:55:15', '2022-06-16 09:55:15'),
(193, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:55:45', '2022-06-16 09:55:45'),
(194, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 09:55:53', '2022-06-16 09:55:53'),
(195, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 11:18:57', '2022-06-16 11:18:57'),
(196, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 15:45:56', '2022-06-16 15:45:56'),
(197, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 15:47:06', '2022-06-16 15:47:06'),
(198, 'Muhammad Faisal Qasim', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 15:47:45', '2022-06-16 15:47:45'),
(199, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 15:47:57', '2022-06-16 15:47:57'),
(200, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-16 15:58:43', '2022-06-16 15:58:43'),
(201, 'Muhammad Faisal Qasim', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 09:12:06', '2022-06-17 09:12:06'),
(202, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:06:06', '2022-06-17 10:06:06'),
(203, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:06:10', '2022-06-17 10:06:10'),
(204, 'UserA', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:06:14', '2022-06-17 10:06:14'),
(205, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:06:19', '2022-06-17 10:06:19'),
(206, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:06:35', '2022-06-17 10:06:35'),
(207, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:07:36', '2022-06-17 10:07:36'),
(208, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:08:10', '2022-06-17 10:08:10'),
(209, 'UserA', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:14:33', '2022-06-17 10:14:33'),
(210, 'UserA', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:14:39', '2022-06-17 10:14:39'),
(211, 'UserA', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:14:59', '2022-06-17 10:14:59'),
(212, 'UserA', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:15:24', '2022-06-17 10:15:24'),
(213, 'UserA', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:16:03', '2022-06-17 10:16:03'),
(214, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:16:08', '2022-06-17 10:16:08'),
(215, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:18:42', '2022-06-17 10:18:42'),
(216, 'admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 10:19:43', '2022-06-17 10:19:43'),
(217, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:19:47', '2022-06-17 10:19:47'),
(218, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:20:10', '2022-06-17 10:20:10'),
(219, 'UserB', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:20:18', '2022-06-17 10:20:18'),
(220, 'UserB', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:21:41', '2022-06-17 10:21:41'),
(221, 'UserC1', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2022-06-17 10:21:46', '2022-06-17 10:21:46'),
(222, 'UserC1', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2022-06-17 10:21:56', '2022-06-17 10:21:56'),
(223, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:22:55', '2022-06-17 10:22:55'),
(224, 'UserC1', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2022-06-17 10:23:40', '2022-06-17 10:23:40'),
(225, 'UserB', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:23:59', '2022-06-17 10:23:59'),
(226, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:24:20', '2022-06-17 10:24:20'),
(227, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:25:32', '2022-06-17 10:25:32'),
(228, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:25:41', '2022-06-17 10:25:41'),
(229, 'UserC1', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2022-06-17 10:26:01', '2022-06-17 10:26:01'),
(230, 'Devop360', 'Registered', 12, 'App\\User', 12, 'App\\User', '[]', '2022-06-17 10:30:54', '2022-06-17 10:30:54'),
(231, 'Devop360', 'LoggedOut', 12, 'App\\User', 12, 'App\\User', '[]', '2022-06-17 10:33:49', '2022-06-17 10:33:49'),
(232, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:33:54', '2022-06-17 10:33:54'),
(233, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:35:30', '2022-06-17 10:35:30'),
(234, 'UserC1', 'Registered', 13, 'App\\User', 13, 'App\\User', '[]', '2022-06-17 10:36:15', '2022-06-17 10:36:15'),
(235, 'UserC1', 'LoggedIn', 13, 'App\\User', 13, 'App\\User', '[]', '2022-06-17 10:37:55', '2022-06-17 10:37:55'),
(236, 'UserC1', 'LoggedIn', 13, 'App\\User', 13, 'App\\User', '[]', '2022-06-17 10:39:22', '2022-06-17 10:39:22'),
(237, 'UserC1', 'LoggedIn', 13, 'App\\User', 13, 'App\\User', '[]', '2022-06-17 10:39:28', '2022-06-17 10:39:28'),
(238, 'UserC1', 'LoggedIn', 13, 'App\\User', 13, 'App\\User', '[]', '2022-06-17 10:40:00', '2022-06-17 10:40:00'),
(239, 'Devop360', 'LoggedIn', 12, 'App\\User', 12, 'App\\User', '[]', '2022-06-17 10:40:21', '2022-06-17 10:40:21'),
(240, 'Devop360', 'LoggedIn', 12, 'App\\User', 12, 'App\\User', '[]', '2022-06-17 10:40:42', '2022-06-17 10:40:42'),
(241, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:41:00', '2022-06-17 10:41:00'),
(242, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:41:29', '2022-06-17 10:41:29'),
(243, 'Devop360', 'Registered', 14, 'App\\User', 14, 'App\\User', '[]', '2022-06-17 10:41:49', '2022-06-17 10:41:49'),
(244, 'Devop360', 'LoggedOut', 14, 'App\\User', 14, 'App\\User', '[]', '2022-06-17 10:42:25', '2022-06-17 10:42:25'),
(245, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:42:29', '2022-06-17 10:42:29'),
(246, 'Devop360', 'LoggedIn', 14, 'App\\User', 14, 'App\\User', '[]', '2022-06-17 10:43:42', '2022-06-17 10:43:42'),
(247, 'Devop360', 'LoggedIn', 14, 'App\\User', 14, 'App\\User', '[]', '2022-06-17 10:43:57', '2022-06-17 10:43:57'),
(248, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:44:00', '2022-06-17 10:44:00'),
(249, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 10:44:30', '2022-06-17 10:44:30'),
(250, 'Devop360', 'LoggedIn', 14, 'App\\User', 14, 'App\\User', '[]', '2022-06-17 10:44:33', '2022-06-17 10:44:33'),
(251, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 10:45:03', '2022-06-17 10:45:03'),
(252, 'userc1', 'Registered', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 10:45:52', '2022-06-17 10:45:52'),
(253, 'userc1', 'LoggedOut', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 10:45:58', '2022-06-17 10:45:58'),
(254, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 10:46:02', '2022-06-17 10:46:02'),
(255, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 10:46:05', '2022-06-17 10:46:05'),
(256, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 10:47:23', '2022-06-17 10:47:23'),
(257, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 11:34:25', '2022-06-17 11:34:25'),
(258, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 11:35:01', '2022-06-17 11:35:01'),
(259, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 11:35:21', '2022-06-17 11:35:21'),
(260, 'userc1', 'LoggedIn', 15, 'App\\User', 15, 'App\\User', '[]', '2022-06-17 11:35:34', '2022-06-17 11:35:34'),
(261, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:36:34', '2022-06-17 11:36:34'),
(262, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:37:41', '2022-06-17 11:37:41'),
(263, 'user', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:37:50', '2022-06-17 11:37:50'),
(264, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:38:26', '2022-06-17 11:38:26'),
(265, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:38:42', '2022-06-17 11:38:42'),
(266, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:39:36', '2022-06-17 11:39:36'),
(267, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:40:57', '2022-06-17 11:40:57'),
(268, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:41:27', '2022-06-17 11:41:27'),
(269, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:42:37', '2022-06-17 11:42:37'),
(270, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:43:04', '2022-06-17 11:43:04'),
(271, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:43:21', '2022-06-17 11:43:21'),
(272, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:43:36', '2022-06-17 11:43:36'),
(273, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:43:39', '2022-06-17 11:43:39'),
(274, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:43:52', '2022-06-17 11:43:52'),
(275, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:46:36', '2022-06-17 11:46:36'),
(276, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:46:56', '2022-06-17 11:46:56'),
(277, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 11:47:00', '2022-06-17 11:47:00'),
(278, 'admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 11:47:04', '2022-06-17 11:47:04'),
(279, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:47:14', '2022-06-17 11:47:14'),
(280, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 11:47:19', '2022-06-17 11:47:19'),
(281, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 11:47:22', '2022-06-17 11:47:22'),
(282, 'admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-17 11:47:53', '2022-06-17 11:47:53'),
(283, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 11:48:05', '2022-06-17 11:48:05'),
(284, 'User', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 12:09:06', '2022-06-17 12:09:06'),
(285, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 12:09:18', '2022-06-17 12:09:18'),
(286, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 12:20:01', '2022-06-17 12:20:01'),
(287, 'UserC1', 'Registered', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-17 12:22:08', '2022-06-17 12:22:08'),
(288, 'User', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-06-17 12:22:37', '2022-06-17 12:22:37'),
(289, 'UserC2', 'Registered', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 12:23:03', '2022-06-17 12:23:03'),
(290, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 13:48:07', '2022-06-17 13:48:07'),
(291, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 13:48:22', '2022-06-17 13:48:22'),
(292, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 13:48:41', '2022-06-17 13:48:41'),
(293, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 13:55:47', '2022-06-17 13:55:47'),
(294, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-17 14:14:12', '2022-06-17 14:14:12'),
(295, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:15:15', '2022-06-17 17:15:15'),
(296, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:15:25', '2022-06-17 17:15:25'),
(297, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-17 17:21:33', '2022-06-17 17:21:33'),
(298, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:23:54', '2022-06-17 17:23:54'),
(299, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:24:02', '2022-06-17 17:24:02'),
(300, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-17 17:25:10', '2022-06-17 17:25:10'),
(301, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-17 17:25:15', '2022-06-17 17:25:15'),
(302, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:44:59', '2022-06-17 17:44:59'),
(303, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 17:45:05', '2022-06-17 17:45:05'),
(304, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-17 17:58:40', '2022-06-17 17:58:40'),
(305, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-17 17:58:45', '2022-06-17 17:58:45'),
(306, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 09:36:59', '2022-06-18 09:36:59'),
(307, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 09:51:34', '2022-06-18 09:51:34'),
(308, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 09:51:58', '2022-06-18 09:51:58'),
(309, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 10:00:55', '2022-06-18 10:00:55'),
(310, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 10:01:00', '2022-06-18 10:01:00'),
(311, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 18:33:38', '2022-06-18 18:33:38'),
(312, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 18:33:42', '2022-06-18 18:33:42'),
(313, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 18:33:46', '2022-06-18 18:33:46'),
(314, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-18 18:33:54', '2022-06-18 18:33:54'),
(315, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-18 18:37:00', '2022-06-18 18:37:00'),
(316, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-18 18:37:05', '2022-06-18 18:37:05'),
(317, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-18 18:38:14', '2022-06-18 18:38:14'),
(318, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-18 18:40:30', '2022-06-18 18:40:30'),
(319, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-19 06:30:47', '2022-06-19 06:30:47'),
(320, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-19 06:30:52', '2022-06-19 06:30:52'),
(321, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-19 06:31:43', '2022-06-19 06:31:43'),
(322, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:31:50', '2022-06-19 06:31:50'),
(323, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:45:01', '2022-06-19 06:45:01'),
(324, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:45:33', '2022-06-19 06:45:33'),
(325, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:47:43', '2022-06-19 06:47:43'),
(326, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-19 06:47:56', '2022-06-19 06:47:56'),
(327, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-06-19 06:50:20', '2022-06-19 06:50:20'),
(328, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:50:28', '2022-06-19 06:50:28'),
(329, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-06-19 06:52:48', '2022-06-19 06:52:48'),
(330, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-20 04:55:42', '2022-06-20 04:55:42'),
(331, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-20 04:56:18', '2022-06-20 04:56:18'),
(332, 'admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-06-20 04:57:17', '2022-06-20 04:57:17'),
(333, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-20 04:57:50', '2022-06-20 04:57:50'),
(334, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-06-30 09:11:18', '2022-06-30 09:11:18'),
(335, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 02:24:13', '2022-07-08 02:24:13'),
(336, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 21:37:39', '2022-07-08 21:37:39'),
(337, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-08 21:38:00', '2022-07-08 21:38:00'),
(338, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 21:42:32', '2022-07-08 21:42:32'),
(339, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-08 21:55:35', '2022-07-08 21:55:35'),
(340, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 21:56:13', '2022-07-08 21:56:13'),
(341, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-08 22:24:19', '2022-07-08 22:24:19'),
(342, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 22:48:28', '2022-07-08 22:48:28'),
(343, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-08 23:16:28', '2022-07-08 23:16:28'),
(344, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-10 10:29:11', '2022-07-10 10:29:11'),
(345, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-10 23:41:52', '2022-07-10 23:41:52'),
(346, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-11 06:29:54', '2022-07-11 06:29:54'),
(347, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-13 11:42:45', '2022-07-13 11:42:45'),
(348, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-13 17:53:41', '2022-07-13 17:53:41'),
(349, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-13 17:54:50', '2022-07-13 17:54:50'),
(350, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 16:53:04', '2022-07-16 16:53:04'),
(351, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 16:55:21', '2022-07-16 16:55:21'),
(352, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 17:03:38', '2022-07-16 17:03:38'),
(353, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 17:06:58', '2022-07-16 17:06:58'),
(354, 'Muhammad Faisal Qasim', 'Registered', 18, 'App\\User', 18, 'App\\User', '[]', '2022-07-16 17:07:49', '2022-07-16 17:07:49'),
(355, 'Muhammad Faisal Qasim', 'LoggedIn', 18, 'App\\User', 18, 'App\\User', '[]', '2022-07-16 17:10:14', '2022-07-16 17:10:14'),
(356, 'Muhammad Faisal Qasim', 'LoggedIn', 18, 'App\\User', 18, 'App\\User', '[]', '2022-07-16 17:11:49', '2022-07-16 17:11:49'),
(357, 'Muhammad Faisal Qasim', 'LoggedIn', 18, 'App\\User', 18, 'App\\User', '[]', '2022-07-16 17:13:00', '2022-07-16 17:13:00'),
(358, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 17:13:34', '2022-07-16 17:13:34'),
(359, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 17:15:28', '2022-07-16 17:15:28'),
(360, 'admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-16 17:15:34', '2022-07-16 17:15:34'),
(361, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-16 17:27:10', '2022-07-16 17:27:10'),
(362, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-16 17:27:17', '2022-07-16 17:27:17'),
(363, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 18:09:46', '2022-07-23 18:09:46'),
(364, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 18:30:49', '2022-07-23 18:30:49'),
(365, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 18:31:10', '2022-07-23 18:31:10'),
(366, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:16:28', '2022-07-23 20:16:28'),
(367, 'FaisalTesting1', 'LoggedIn', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-23 20:16:39', '2022-07-23 20:16:39'),
(368, 'FaisalTesting1', 'LoggedOut', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-23 20:16:50', '2022-07-23 20:16:50'),
(369, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:17:29', '2022-07-23 20:17:29'),
(370, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:22:19', '2022-07-23 20:22:19'),
(371, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:22:26', '2022-07-23 20:22:26'),
(372, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:40:05', '2022-07-23 20:40:05'),
(373, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:40:12', '2022-07-23 20:40:12'),
(374, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:42:34', '2022-07-23 20:42:34'),
(375, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 20:42:39', '2022-07-23 20:42:39'),
(376, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 20:46:27', '2022-07-23 20:46:27'),
(377, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:46:35', '2022-07-23 20:46:35'),
(378, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:48:51', '2022-07-23 20:48:51'),
(379, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:48:59', '2022-07-23 20:48:59'),
(380, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:51:10', '2022-07-23 20:51:10'),
(381, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:51:17', '2022-07-23 20:51:17'),
(382, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 20:57:06', '2022-07-23 20:57:06'),
(383, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 20:57:13', '2022-07-23 20:57:13'),
(384, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 21:07:04', '2022-07-23 21:07:04'),
(385, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 21:07:07', '2022-07-23 21:07:07'),
(386, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 21:07:12', '2022-07-23 21:07:12'),
(387, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 21:07:19', '2022-07-23 21:07:19'),
(388, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 21:24:06', '2022-07-23 21:24:06'),
(389, 'User B2', 'LoggedIn', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-23 21:24:11', '2022-07-23 21:24:11'),
(390, 'User B2', 'LoggedOut', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-23 21:24:22', '2022-07-23 21:24:22'),
(391, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 21:24:32', '2022-07-23 21:24:32'),
(392, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 22:16:54', '2022-07-23 22:16:54'),
(393, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 22:17:09', '2022-07-23 22:17:09'),
(394, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 22:17:24', '2022-07-23 22:17:24'),
(395, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-23 22:18:14', '2022-07-23 22:18:14'),
(396, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-23 22:18:50', '2022-07-23 22:18:50'),
(397, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-23 22:19:00', '2022-07-23 22:19:00'),
(398, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-23 22:20:58', '2022-07-23 22:20:58'),
(399, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-23 22:21:02', '2022-07-23 22:21:02'),
(400, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-23 22:21:11', '2022-07-23 22:21:11'),
(401, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 22:21:20', '2022-07-23 22:21:20'),
(402, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-23 22:26:12', '2022-07-23 22:26:12'),
(403, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 22:26:19', '2022-07-23 22:26:19'),
(404, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 22:28:15', '2022-07-23 22:28:15'),
(405, 'User B2', 'LoggedIn', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-23 22:29:12', '2022-07-23 22:29:12'),
(406, 'User B2', 'LoggedOut', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-23 22:29:37', '2022-07-23 22:29:37'),
(407, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 22:29:44', '2022-07-23 22:29:44'),
(408, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-23 22:30:43', '2022-07-23 22:30:43'),
(409, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-23 22:32:10', '2022-07-23 22:32:10'),
(410, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-25 15:12:36', '2022-07-25 15:12:36'),
(411, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 15:21:47', '2022-07-25 15:21:47'),
(412, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 17:09:29', '2022-07-25 17:09:29'),
(413, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 17:09:36', '2022-07-25 17:09:36'),
(414, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-25 17:09:46', '2022-07-25 17:09:46'),
(415, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 17:10:08', '2022-07-25 17:10:08'),
(416, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 18:34:31', '2022-07-25 18:34:31'),
(417, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 18:35:38', '2022-07-25 18:35:38'),
(418, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 18:35:43', '2022-07-25 18:35:43'),
(419, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-25 18:35:51', '2022-07-25 18:35:51'),
(420, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 18:57:14', '2022-07-25 18:57:14'),
(421, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-25 18:57:47', '2022-07-25 18:57:47'),
(422, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-25 18:57:52', '2022-07-25 18:57:52'),
(423, 'UserC2', 'LoggedOut', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-25 18:58:48', '2022-07-25 18:58:48'),
(424, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 18:59:07', '2022-07-25 18:59:07'),
(425, 'FaisalTesting1', 'LoggedIn', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-25 19:00:21', '2022-07-25 19:00:21'),
(426, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 19:01:35', '2022-07-25 19:01:35'),
(427, 'FaisalTesting1', 'LoggedOut', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-25 19:02:01', '2022-07-25 19:02:01'),
(428, 'FaisalTesting1', 'LoggedIn', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-25 19:02:13', '2022-07-25 19:02:13'),
(429, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 19:03:54', '2022-07-25 19:03:54'),
(430, 'FaisalTesting1', 'LoggedOut', 19, 'App\\User', 19, 'App\\User', '[]', '2022-07-25 19:05:20', '2022-07-25 19:05:20'),
(431, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 19:05:32', '2022-07-25 19:05:32'),
(432, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 19:06:03', '2022-07-25 19:06:03'),
(433, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-07-25 19:06:44', '2022-07-25 19:06:44'),
(434, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 19:07:45', '2022-07-25 19:07:45'),
(435, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 19:07:54', '2022-07-25 19:07:54'),
(436, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 19:13:26', '2022-07-25 19:13:26'),
(437, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 19:13:46', '2022-07-25 19:13:46'),
(438, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 19:26:16', '2022-07-25 19:26:16');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(439, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 19:26:23', '2022-07-25 19:26:23'),
(440, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 19:33:15', '2022-07-25 19:33:15'),
(441, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-25 19:33:22', '2022-07-25 19:33:22'),
(442, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-07-25 19:33:38', '2022-07-25 19:33:38'),
(443, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 19:33:45', '2022-07-25 19:33:45'),
(444, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-07-25 20:24:05', '2022-07-25 20:24:05'),
(445, 'User B2', 'LoggedIn', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-25 20:24:24', '2022-07-25 20:24:24'),
(446, 'User B2', 'LoggedOut', 21, 'App\\User', 21, 'App\\User', '[]', '2022-07-25 20:24:32', '2022-07-25 20:24:32'),
(447, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 20:24:38', '2022-07-25 20:24:38'),
(448, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 20:42:18', '2022-07-25 20:42:18'),
(449, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 20:42:28', '2022-07-25 20:42:28'),
(450, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 20:56:41', '2022-07-25 20:56:41'),
(451, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 21:04:04', '2022-07-25 21:04:04'),
(452, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 21:05:09', '2022-07-25 21:05:09'),
(453, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 21:05:18', '2022-07-25 21:05:18'),
(454, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-07-25 22:04:45', '2022-07-25 22:04:45'),
(455, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-07-25 22:04:51', '2022-07-25 22:04:51'),
(456, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-01 17:37:36', '2022-08-01 17:37:36'),
(457, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-01 17:40:51', '2022-08-01 17:40:51'),
(458, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-01 19:50:50', '2022-08-01 19:50:50'),
(459, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-01 19:51:00', '2022-08-01 19:51:00'),
(460, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-01 19:51:08', '2022-08-01 19:51:08'),
(461, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-01 19:51:15', '2022-08-01 19:51:15'),
(462, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-01 19:59:42', '2022-08-01 19:59:42'),
(463, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-02 14:40:47', '2022-08-02 14:40:47'),
(464, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-02 17:10:48', '2022-08-02 17:10:48'),
(465, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-02 17:11:59', '2022-08-02 17:11:59'),
(466, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-02 19:31:21', '2022-08-02 19:31:21'),
(467, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-02 22:01:31', '2022-08-02 22:01:31'),
(468, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-03 00:44:37', '2022-08-03 00:44:37'),
(469, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-03 00:44:41', '2022-08-03 00:44:41'),
(470, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-03 00:44:47', '2022-08-03 00:44:47'),
(471, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-03 15:20:31', '2022-08-03 15:20:31'),
(472, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-03 16:51:45', '2022-08-03 16:51:45'),
(473, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-03 16:57:36', '2022-08-03 16:57:36'),
(474, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-03 21:19:29', '2022-08-03 21:19:29'),
(475, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-04 15:25:14', '2022-08-04 15:25:14'),
(476, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-04 16:39:23', '2022-08-04 16:39:23'),
(477, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-04 16:42:58', '2022-08-04 16:42:58'),
(478, 'Nayla R', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-04 17:18:57', '2022-08-04 17:18:57'),
(479, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-04 17:19:16', '2022-08-04 17:19:16'),
(480, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-04 17:19:24', '2022-08-04 17:19:24'),
(481, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-04 18:48:16', '2022-08-04 18:48:16'),
(482, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-04 18:48:24', '2022-08-04 18:48:24'),
(483, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-04 18:48:32', '2022-08-04 18:48:32'),
(484, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-04 18:48:47', '2022-08-04 18:48:47'),
(485, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-04 22:10:57', '2022-08-04 22:10:57'),
(486, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-04 22:14:54', '2022-08-04 22:14:54'),
(487, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-04 22:15:00', '2022-08-04 22:15:00'),
(488, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-04 22:18:50', '2022-08-04 22:18:50'),
(489, 'User B2', 'LoggedIn', 21, 'App\\User', 21, 'App\\User', '[]', '2022-08-04 22:18:58', '2022-08-04 22:18:58'),
(490, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-04 22:45:21', '2022-08-04 22:45:21'),
(491, 'FaisalTesting9', 'LoggedIn', 30, 'App\\User', 30, 'App\\User', '[]', '2022-08-05 14:43:37', '2022-08-05 14:43:37'),
(492, 'FaisalTesting9', 'LoggedOut', 30, 'App\\User', 30, 'App\\User', '[]', '2022-08-05 14:47:52', '2022-08-05 14:47:52'),
(493, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-05 14:48:06', '2022-08-05 14:48:06'),
(494, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-05 14:49:53', '2022-08-05 14:49:53'),
(495, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 14:50:27', '2022-08-05 14:50:27'),
(496, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 14:50:39', '2022-08-05 14:50:39'),
(497, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-05 14:51:03', '2022-08-05 14:51:03'),
(498, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 15:04:49', '2022-08-05 15:04:49'),
(499, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-05 16:32:05', '2022-08-05 16:32:05'),
(500, 'ismailrehman2', 'LoggedIn', 35, 'App\\User', 35, 'App\\User', '[]', '2022-08-05 16:32:53', '2022-08-05 16:32:53'),
(501, 'ismailrehman2', 'LoggedOut', 35, 'App\\User', 35, 'App\\User', '[]', '2022-08-05 17:14:18', '2022-08-05 17:14:18'),
(502, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-05 17:16:30', '2022-08-05 17:16:30'),
(503, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-05 18:25:44', '2022-08-05 18:25:44'),
(504, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 18:27:47', '2022-08-05 18:27:47'),
(505, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-05 18:27:54', '2022-08-05 18:27:54'),
(506, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 21:22:45', '2022-08-05 21:22:45'),
(507, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 22:59:56', '2022-08-05 22:59:56'),
(508, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-05 22:59:59', '2022-08-05 22:59:59'),
(509, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-05 23:06:13', '2022-08-05 23:06:13'),
(510, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-06 18:11:55', '2022-08-06 18:11:55'),
(511, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-06 21:53:33', '2022-08-06 21:53:33'),
(512, 'User A', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-06 21:53:36', '2022-08-06 21:53:36'),
(513, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-06 21:53:42', '2022-08-06 21:53:42'),
(514, 'User B', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-06 22:32:32', '2022-08-06 22:32:32'),
(515, 'User B', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2022-08-06 22:32:37', '2022-08-06 22:32:37'),
(516, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-06 22:32:45', '2022-08-06 22:32:45'),
(517, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-09 16:41:46', '2022-08-09 16:41:46'),
(518, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-09 17:10:01', '2022-08-09 17:10:01'),
(519, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-09 17:26:49', '2022-08-09 17:26:49'),
(520, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-09 17:31:17', '2022-08-09 17:31:17'),
(521, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-10 15:20:33', '2022-08-10 15:20:33'),
(522, 'User A', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2022-08-10 16:15:55', '2022-08-10 16:15:55'),
(523, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 22:29:16', '2022-08-10 22:29:16'),
(524, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-10 22:32:55', '2022-08-10 22:32:55'),
(525, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:11:26', '2022-08-10 23:11:26'),
(526, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:11:49', '2022-08-10 23:11:49'),
(527, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:12:28', '2022-08-10 23:12:28'),
(528, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:13:52', '2022-08-10 23:13:52'),
(529, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:14:14', '2022-08-10 23:14:14'),
(530, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:14:58', '2022-08-10 23:14:58'),
(531, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:15:52', '2022-08-10 23:15:52'),
(532, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:16:49', '2022-08-10 23:16:49'),
(533, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:19:35', '2022-08-10 23:19:35'),
(534, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:21:58', '2022-08-10 23:21:58'),
(535, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:22:25', '2022-08-10 23:22:25'),
(536, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:22:29', '2022-08-10 23:22:29'),
(537, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:23:17', '2022-08-10 23:23:17'),
(538, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:23:23', '2022-08-10 23:23:23'),
(539, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:23:51', '2022-08-10 23:23:51'),
(540, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:24:14', '2022-08-10 23:24:14'),
(541, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:24:39', '2022-08-10 23:24:39'),
(542, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:25:07', '2022-08-10 23:25:07'),
(543, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:25:17', '2022-08-10 23:25:17'),
(544, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:26:29', '2022-08-10 23:26:29'),
(545, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:28:15', '2022-08-10 23:28:15'),
(546, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:29:24', '2022-08-10 23:29:24'),
(547, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:29:41', '2022-08-10 23:29:41'),
(548, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:30:56', '2022-08-10 23:30:56'),
(549, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:31:00', '2022-08-10 23:31:00'),
(550, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:31:45', '2022-08-10 23:31:45'),
(551, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:37:32', '2022-08-10 23:37:32'),
(552, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-10 23:39:47', '2022-08-10 23:39:47'),
(553, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 00:04:49', '2022-08-11 00:04:49'),
(554, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 00:05:05', '2022-08-11 00:05:05'),
(555, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 14:54:11', '2022-08-11 14:54:11'),
(556, 'UserC1', 'LoggedOut', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:25:13', '2022-08-11 15:25:13'),
(557, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:25:20', '2022-08-11 15:25:20'),
(558, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:28:07', '2022-08-11 15:28:07'),
(559, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:28:49', '2022-08-11 15:28:49'),
(560, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:29:48', '2022-08-11 15:29:48'),
(561, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:30:38', '2022-08-11 15:30:38'),
(562, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:34:13', '2022-08-11 15:34:13'),
(563, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:35:14', '2022-08-11 15:35:14'),
(564, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:35:44', '2022-08-11 15:35:44'),
(565, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:36:20', '2022-08-11 15:36:20'),
(566, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:38:48', '2022-08-11 15:38:48'),
(567, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 15:43:03', '2022-08-11 15:43:03'),
(568, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 16:21:43', '2022-08-11 16:21:43'),
(569, 'Nayla R', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2022-08-11 19:29:31', '2022-08-11 19:29:31'),
(570, 'UserC1', 'LoggedIn', 16, 'App\\User', 16, 'App\\User', '[]', '2022-08-11 21:45:21', '2022-08-11 21:45:21'),
(571, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 21:53:27', '2022-08-11 21:53:27'),
(572, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 21:53:35', '2022-08-11 21:53:35'),
(573, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 21:53:52', '2022-08-11 21:53:52'),
(574, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 21:54:40', '2022-08-11 21:54:40'),
(575, 'UserC2', 'LoggedIn', 17, 'App\\User', 17, 'App\\User', '[]', '2022-08-11 22:26:11', '2022-08-11 22:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `add_trainings`
--

CREATE TABLE `add_trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `response` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending ',
  `Location_Or_Link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MediaFiles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_trainings`
--

INSERT INTO `add_trainings` (`id`, `created_at`, `updated_at`, `start_date`, `end_date`, `response`, `Location_Or_Link`, `MediaFiles`) VALUES
(1, '2022-08-01 18:51:00', '2022-08-01 22:27:01', '2022-08-01', '2022-08-27', 'accept', 'asdwq3e23d', 'qasdasdw'),
(11, '2022-08-01 19:47:16', '2022-08-01 22:28:18', '2022-08-15', '2022-08-09', 'accept', 'return', 'return'),
(12, '2022-08-01 19:48:33', '2022-08-01 22:30:47', '2022-08-02', '2022-08-11', 'accept', 'return', 'return'),
(17, '2022-08-01 22:43:44', '2022-08-01 22:43:44', '2022-08-01', '2022-08-04', 'pending ', 'asdwq3e23d', 'qasdasdw'),
(18, '2022-08-01 22:44:27', '2022-08-01 22:44:27', '2022-08-10', '2022-08-16', 'pending ', 'asdwq3e23d', 'qasdasdw'),
(19, '2022-08-01 22:45:26', '2022-08-01 22:45:26', '2022-08-10', '2022-08-16', 'pending ', 'asdwq3e23d', 'qasdasdw'),
(20, '2022-08-01 22:45:41', '2022-08-01 22:45:41', '2022-08-01', '2022-08-04', 'pending ', 'asdwq3e23d', 'qasdasdw'),
(21, '2022-08-03 16:57:14', '2022-08-03 16:57:14', '2022-08-03', '2022-08-20', 'pending ', 'asdwq3e23d', 'qasdasdw');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `details`, `type`) VALUES
(1, '2022-06-16 04:40:33', '2022-06-16 04:40:33', NULL, 'Internal Employee Wellbeing and Engage', 'Internal Employee Wellbeing and Engage', 'Employee'),
(2, '2022-06-16 04:47:56', '2022-06-16 04:47:56', NULL, '2021 End of year appraisals', '2021 End of year appraisals 2021 End of year appraisals', 'Employee'),
(3, '2022-06-16 07:44:40', '2022-06-16 07:44:40', NULL, 'Office closure for Christmas holidays 2021', 'Office closure for Christmas holidays 2021', 'holidays'),
(4, '2022-06-16 07:44:59', '2022-06-16 07:44:59', NULL, 'Internal Employee Wellbeing and Engage', 'Internal Employee Wellbeing and Engage', 'Employee'),
(5, '2022-06-16 07:50:16', '2022-06-16 07:50:16', NULL, '2021 End of year appraisals', '2021 End of year appraisals', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending ',
  `schedule` datetime DEFAULT NULL,
  `inspector_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief_results` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `created_at`, `updated_at`, `signature`, `status`, `schedule`, `inspector_name`, `brief_results`) VALUES
(6, '2022-08-02 19:23:20', '2022-08-03 15:53:54', NULL, 'pending ', '2022-08-19 00:00:00', 'nayla R', NULL),
(8, '2022-08-02 19:29:08', '2022-08-03 15:54:28', NULL, 'pending ', '2022-08-02 00:00:00', 'nayla R', NULL),
(15, '2022-08-02 22:28:19', '2022-08-02 22:28:19', NULL, 'pending ', '2022-08-02 08:26:00', NULL, NULL),
(16, '2022-08-02 22:28:35', '2022-08-02 22:28:35', NULL, 'pending ', '2022-08-02 08:28:00', NULL, NULL),
(17, '2022-08-03 00:46:44', '2022-08-03 00:46:44', NULL, 'pending ', '2022-08-02 10:46:00', NULL, NULL);

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
-- Table structure for table `calenders`
--

CREATE TABLE `calenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calenders`
--

INSERT INTO `calenders` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `start`, `end`, `url`) VALUES
(1, '2022-06-18 10:22:26', '2022-06-18 10:22:26', NULL, 'testingday01', '2022-06-18', '2022-06-18', 'https://devop360.com/'),
(2, '2022-08-06 22:03:54', '2022-08-06 22:03:54', NULL, 'task1', '2022-08-06', '2022-08-27', 'calender/calender/create');

-- --------------------------------------------------------

--
-- Table structure for table `crud_events`
--

CREATE TABLE `crud_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start` date NOT NULL,
  `event_end` date NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(40, '2022-06-15 09:20:26', '2022-06-15 10:33:03', '2022-06-15 10:33:03', 'Devop360'),
(41, '2022-06-15 09:22:31', '2022-06-15 10:33:07', '2022-06-15 10:33:07', 'faiz'),
(42, '2022-06-15 10:29:34', '2022-06-15 10:33:11', '2022-06-15 10:33:11', 'Nayla'),
(43, '2022-06-15 10:34:00', '2022-06-15 10:37:06', '2022-06-15 10:37:06', 'Quality Assurance Manual'),
(44, '2022-06-15 10:34:32', '2022-06-15 10:38:02', '2022-06-15 10:38:02', 'Procedure Manual'),
(45, '2022-06-15 10:37:34', '2022-06-15 10:37:34', NULL, 'Quality Assurance Manual'),
(46, '2022-06-15 10:38:19', '2022-06-15 10:38:19', NULL, 'Procedure Manual'),
(47, '2022-06-15 10:38:55', '2022-06-15 10:38:55', NULL, 'Organogram'),
(48, '2022-06-16 08:33:31', '2022-06-16 08:33:45', '2022-06-16 08:33:45', 'Devop360'),
(49, '2022-06-17 10:24:23', '2022-06-17 10:24:23', NULL, 'Devop360'),
(50, '2022-06-18 23:46:07', '2022-06-18 23:46:07', NULL, 'Nayla'),
(51, '2022-06-18 23:48:16', '2022-06-18 23:48:16', NULL, 'Devop360'),
(52, '2022-06-18 23:50:54', '2022-06-18 23:50:54', NULL, 'Devop360');

-- --------------------------------------------------------

--
-- Table structure for table `documents_file`
--

CREATE TABLE `documents_file` (
  `id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `version` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents_file`
--

INSERT INTO `documents_file` (`id`, `name`, `doc_id`, `version`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'Devop360', 40, 'testing_1', '/uploads/DocumentFile/2022/June/mOcxjXJ72G11JBH420220615022026000000.png', '2022-06-15 14:20:26', '2022-06-15 14:20:26', NULL),
(25, 'Devop360', 40, 'testing_1', '/uploads/DocumentFile/2022/June/49mLrDD6ldU5pJ8320220615022026000000.sql', '2022-06-15 14:20:26', '2022-06-15 14:20:26', NULL),
(26, 'faiz', 41, 'asdasasd', '/uploads/DocumentFile/2022/June/HHykGz4UtyLI0Fwn20220615022231000000.html', '2022-06-15 14:22:31', '2022-06-15 14:22:31', NULL),
(27, 'faiz', 41, 'asdasasd', '/uploads/DocumentFile/2022/June/IneGnHaQqJdwlKB220220615022231000000.png', '2022-06-15 14:22:31', '2022-06-15 14:22:31', NULL),
(28, 'faiz', 41, 'asdasasd', '/uploads/DocumentFile/2022/June/mrMCOg9h08VLUsdd20220615022231000000.sql', '2022-06-15 14:22:31', '2022-06-15 14:22:31', NULL),
(29, 'faiz', 41, 'asdasasd', '/uploads/DocumentFile/2022/June/wqBbPwGfJGzwxB7620220615022231000000.sql', '2022-06-15 14:22:31', '2022-06-15 14:22:31', NULL),
(30, 'Nayla', 42, 'asdasasd', '/uploads/DocumentFile/2022/June/liFmG71shw1fPIza20220615032934000000.sql', '2022-06-15 15:29:34', '2022-06-15 15:29:34', NULL),
(31, 'Quality Assurance Manual', 43, '3', '/uploads/DocumentFile/2022/June/dnv27xFwScyp6JLA20220615033400000000.jpeg', '2022-06-15 15:34:00', '2022-06-15 15:34:00', NULL),
(32, 'Quality Assurance Manual', 43, '3', '/uploads/DocumentFile/2022/June/4Nr42qYbool9Zc2n20220615033400000000.png', '2022-06-15 15:34:00', '2022-06-15 15:34:00', NULL),
(33, 'Procedure Manual', 44, '2', '/uploads/DocumentFile/2022/June/g9RVAbEB2mcmKs1C20220615033432000000.docx', '2022-06-15 15:34:32', '2022-06-15 15:34:32', NULL),
(34, 'Procedure Manual', 44, '2', '/uploads/DocumentFile/2022/June/y4W1GfbJcKBgQUIq20220615033432000000.png', '2022-06-15 15:34:32', '2022-06-15 15:34:32', NULL),
(35, 'Quality Assurance Manual', 45, '3', '/uploads/DocumentFile/2022/June/gRiElywLmSkdpLFl20220615033734000000.pdf', '2022-06-15 15:37:34', '2022-06-15 15:37:34', NULL),
(36, 'Quality Assurance Manual', 45, '3', '/uploads/DocumentFile/2022/June/zeKtE7nCFGcFeXpu20220615033734000000.xlsx', '2022-06-15 15:37:34', '2022-06-15 15:37:34', NULL),
(37, 'Quality Assurance Manual', 45, '3', '/uploads/DocumentFile/2022/June/fX4wRhFZ4gzSTSiC20220615033734000000.docx', '2022-06-15 15:37:34', '2022-06-15 15:37:34', NULL),
(38, 'Procedure Manual', 46, '1', '/uploads/DocumentFile/2022/June/1PyJmgADGOOG4KU620220615033819000000.xlsx', '2022-06-15 15:38:19', '2022-06-15 15:38:19', NULL),
(39, 'Organogram', 47, '2', '/uploads/DocumentFile/2022/June/mig5ZT6822auBq4f20220615033855000000.docx', '2022-06-15 15:38:55', '2022-06-15 15:38:55', NULL),
(40, 'Organogram', 47, '2', '/uploads/DocumentFile/2022/June/DBPuCWfPWbWFLn9720220615033855000000.pdf', '2022-06-15 15:38:55', '2022-06-15 15:38:55', NULL),
(41, 'Devop360', 48, 'asdasasd', '/uploads/DocumentFile/2022/June/w3jT6mug01VexgI820220616013331000000.docx', '2022-06-16 13:33:31', '2022-06-16 13:33:31', NULL),
(42, 'Devop360', 49, '2', '/uploads/DocumentFile/2022/June/X1JYU96niZfUbGx120220617032423000000.pdf', '2022-06-17 15:24:23', '2022-06-17 15:24:23', NULL),
(43, 'Nayla', 50, '3', '/uploads/DocumentFile/2022/June/LbmlTN9ZBCqZe84W20220618054607000000.docx', '2022-06-18 17:46:07', '2022-06-18 17:46:07', NULL),
(44, 'Devop360', 51, '3', '/uploads/DocumentFile/2022/June/jcMU0yDsYeBRvcqh20220618054816000000.docx', '2022-06-18 17:48:16', '2022-06-18 17:48:16', NULL),
(45, 'Devop360', 52, 'testing_1', '/uploads/DocumentFile/2022/June/3idaHvl7iRTCUvNo20220618055054000000.docx', '2022-06-18 17:50:54', '2022-06-18 17:50:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_response_exercises`
--

CREATE TABLE `emergency_response_exercises` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `invitation_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending ',
  `corrective_actions` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `review_date` date DEFAULT NULL,
  `incident_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_response_exercises`
--

INSERT INTO `emergency_response_exercises` (`id`, `created_at`, `updated_at`, `employee_to`, `schedule`, `invitation_status`, `corrective_actions`, `review_date`, `incident_description`) VALUES
(1, '2022-08-02 23:01:46', '2022-08-03 16:48:45', NULL, '2022-08-02 09:01:00', '1', '$request', '2022-08-02', NULL),
(2, '2022-08-02 23:03:39', '2022-08-02 23:23:49', NULL, '2022-08-02 09:01:00', '1', 'none', '2022-08-02', NULL),
(3, '2022-08-03 00:40:23', '2022-08-03 00:40:23', NULL, '2022-08-02 10:40:00', 'pending ', 'none', NULL, NULL),
(4, '2022-08-03 00:49:44', '2022-08-03 00:50:41', NULL, '2022-08-02 10:49:00', '1', 'none', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(3, 'asdasdasd', '2022-08-03', '2022-08-04', '2022-08-10 17:10:39', '2022-08-10 17:10:39'),
(4, 'asdasdasdasd', '2022-08-25', '2022-08-26', '2022-08-10 17:10:44', '2022-08-10 17:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `external_audits`
--

CREATE TABLE `external_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending ',
  `brief_results` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areas_inspected` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_conformities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `external_audits`
--

INSERT INTO `external_audits` (`id`, `created_at`, `updated_at`, `name`, `schedule`, `status`, `brief_results`, `signature`, `areas_inspected`, `non_conformities`) VALUES
(2, '2022-08-02 21:26:01', '2022-08-03 15:58:58', 'Ismail2', '2022-08-02 07:27:00', 'pending ', NULL, NULL, NULL, NULL),
(3, '2022-08-02 21:26:42', '2022-08-02 21:26:42', 'Ismail2', '2022-08-02 07:27:00', 'pending ', NULL, NULL, NULL, NULL),
(4, '2022-08-02 21:28:34', '2022-08-02 21:28:34', 'Ismail2', '2022-08-02 07:27:00', 'pending ', NULL, NULL, NULL, NULL),
(5, '2022-08-02 21:31:52', '2022-08-02 21:31:52', 'Muhammad Faisal Qasim', '2022-08-02 07:31:00', 'pending ', NULL, NULL, NULL, NULL),
(6, '2022-08-02 21:32:28', '2022-08-02 21:32:28', 'Muhammad Faisal Qasim', '2022-08-02 07:31:00', 'pending ', NULL, NULL, NULL, NULL),
(7, '2022-08-02 22:40:09', '2022-08-02 22:40:09', NULL, '2022-08-02 08:40:00', 'pending ', NULL, NULL, NULL, NULL),
(8, '2022-08-03 00:37:48', '2022-08-03 00:37:48', 'nayla R', '2022-08-02 10:37:00', 'pending ', 'Incident Description', '62e960ec8d679.png', NULL, NULL),
(9, '2022-08-03 00:39:27', '2022-08-03 00:39:27', 'nayla R', '2022-08-02 10:37:00', 'pending ', 'Incident Description', '62e9614f06b54.png', NULL, NULL),
(10, '2022-08-03 00:48:12', '2022-08-03 00:48:12', 'nayla R', '2022-08-02 10:47:00', 'pending ', 'Brief Results', '62e9635c98b05.png', NULL, NULL);

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
-- Table structure for table `health_and_safety_inspections`
--

CREATE TABLE `health_and_safety_inspections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inspection_timing` date DEFAULT NULL,
  `invitation_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending ',
  `review` int(11) DEFAULT NULL,
  `upload_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_and_safety_inspections`
--

INSERT INTO `health_and_safety_inspections` (`id`, `created_at`, `updated_at`, `inspection_timing`, `invitation_status`, `review`, `upload_doc`) VALUES
(1, '2022-08-01 23:04:00', '2022-08-01 23:05:30', '2022-08-16', 'accept', NULL, NULL),
(2, '2022-08-01 23:09:01', '2022-08-01 23:09:01', '2022-08-15', 'pending ', NULL, NULL),
(3, '2022-08-01 23:11:17', '2022-08-01 23:11:17', '2022-08-16', 'pending ', NULL, NULL),
(9, '2022-08-01 23:16:47', '2022-08-01 23:16:47', '2022-08-18', 'pending ', NULL, NULL),
(10, '2022-08-01 23:24:19', '2022-08-01 23:24:19', '2022-08-17', 'pending ', NULL, NULL),
(11, '2022-08-01 23:25:20', '2022-08-01 23:28:57', '2022-08-25', 'accept', NULL, NULL),
(12, '2022-08-03 00:34:27', '2022-08-03 00:34:27', '2022-08-02', 'pending ', NULL, 'create'),
(13, '2022-08-03 00:42:59', '2022-08-03 00:42:59', '2022-08-02', 'pending ', NULL, 'create'),
(20, '2022-08-03 22:42:57', '2022-08-03 22:42:57', '2022-08-03', 'pending ', NULL, NULL),
(21, '2022-08-04 15:37:43', '2022-08-04 15:37:43', '2022-08-04', 'pending ', NULL, NULL),
(22, '2022-08-04 15:38:20', '2022-08-04 15:38:20', '2022-08-04', 'pending ', NULL, NULL),
(23, '2022-08-04 15:42:00', '2022-08-04 15:42:00', '2022-08-19', 'pending ', NULL, NULL),
(24, '2022-08-04 15:43:21', '2022-08-04 15:43:21', '2022-08-19', 'pending ', NULL, NULL),
(25, '2022-08-04 15:43:46', '2022-08-04 15:43:46', '2022-08-04', 'pending ', NULL, NULL),
(26, '2022-08-04 15:44:20', '2022-08-04 15:44:20', '2022-08-04', 'pending ', NULL, NULL),
(27, '2022-08-04 15:44:52', '2022-08-04 15:44:52', '2022-08-04', 'pending ', NULL, NULL),
(28, '2022-08-04 15:49:47', '2022-08-04 15:49:47', '2022-08-04', 'pending ', NULL, NULL),
(29, '2022-08-04 15:50:02', '2022-08-04 15:50:02', '2022-08-04', 'pending ', NULL, NULL),
(30, '2022-08-04 15:51:06', '2022-08-04 15:51:06', '2022-08-04', 'pending ', NULL, NULL),
(31, '2022-08-04 16:36:01', '2022-08-04 16:36:01', '2022-08-04', 'pending ', NULL, NULL),
(32, '2022-08-04 16:36:19', '2022-08-04 16:36:19', '2022-08-04', 'pending ', NULL, NULL),
(35, '2022-08-11 17:25:03', '2022-08-11 17:25:03', '2022-08-20', 'pending ', NULL, NULL),
(36, '2022-08-11 17:45:27', '2022-08-11 17:45:27', '2022-08-27', 'pending ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_and_safety_inspection_lists`
--

CREATE TABLE `health_and_safety_inspection_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `areas_inspected` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_and_safety_inspection_lists`
--

INSERT INTO `health_and_safety_inspection_lists` (`id`, `created_at`, `updated_at`, `areas_inspected`) VALUES
(12, '2022-08-04 16:00:19', '2022-08-04 16:00:19', 'Office'),
(13, '2022-08-04 16:00:50', '2022-08-04 16:00:50', 'ConstructionSite'),
(14, '2022-08-04 16:01:00', '2022-08-04 16:01:00', 'Warehouse'),
(15, '2022-08-04 16:01:07', '2022-08-04 16:01:07', 'Cars'),
(16, '2022-08-04 16:01:14', '2022-08-04 16:01:14', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `incident_reporter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `incident_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investigation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corrective_actions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incident_reported_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `responce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`id`, `created_at`, `updated_at`, `deleted_at`, `incident_reporter`, `date`, `incident_description`, `investigation`, `corrective_actions`, `incident_reported_to`, `review_date`, `responce`, `check_status`) VALUES
(6, '2022-06-17 08:58:25', '2022-07-25 21:55:24', NULL, 'UserC2', '2022-06-17', 'http://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', 'responce', 'responce', 'responce', '2022-07-25', 'Supplier_Problem', 'closed'),
(7, '2022-06-17 10:19:57', '2022-06-17 10:19:57', NULL, 'UserC2', '2022-06-17', 'http://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', NULL, NULL, NULL, NULL, NULL, 'pending'),
(9, '2022-06-17 10:23:03', '2022-08-11 00:23:21', NULL, 'UserC1', '2022-06-17', 'UserC1@user.comUserC1@user.com\r\nUserC1@user.comUserC1@user.com\r\nUserC1@user.comUserC1@user.com\r\nUserC1@user.comUserC1@user.com\r\nUserC1@user.com', NULL, NULL, NULL, '2022-08-10', NULL, 'closed'),
(10, '2022-06-17 10:26:24', '2022-06-17 10:26:24', NULL, 'UserC2', '2022-06-17', 'http://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2022-06-18 23:49:41', '2022-08-11 00:20:40', NULL, 'UserC2', '2022-06-18', 'Create New Incident\r\nCreate New Incident', NULL, NULL, NULL, '2022-08-10', NULL, 'closed'),
(12, '2022-07-08 14:39:07', '2022-07-08 14:39:07', NULL, 'UserC2', '1999-05-29', 'test to c1', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2022-07-08 15:06:57', '2022-07-08 15:06:57', NULL, 'UserC1', '2022-07-08', 'reporting to c1 test', NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2022-07-13 23:08:24', '2022-07-13 23:08:24', NULL, 'Nayla R', '2022-07-13', 'adasdasdasdfassfasf\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2022-07-13 23:08:47', '2022-07-13 23:08:47', NULL, 'Nayla R', '2022-07-13', 'adasdasdasdfassfasf\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2022-07-13 23:12:16', '2022-07-13 23:12:16', NULL, 'Nayla R', '2022-07-13', 'adasdasdasdfassfasf\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create\r\nhttp://127.0.0.1:8000/incident/incident/create', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2022-07-25 16:54:34', '2022-07-25 16:54:34', NULL, 'User A', '2022-07-25', 'profiles', NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2022-07-25 17:33:49', '2022-07-25 17:33:49', NULL, 'Nayla R', '2022-07-25', '$incident', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2022-07-25 17:34:37', '2022-07-25 17:34:37', NULL, 'Nayla R', '2022-07-25', '$incident', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2022-07-25 17:36:09', '2022-07-25 17:36:09', NULL, 'User B', '2022-07-25', '$request->', NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2022-07-25 17:37:03', '2022-07-25 17:37:03', NULL, 'User B', '2022-07-25', '$request->', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2022-07-25 18:15:37', '2022-07-25 18:15:37', NULL, 'User B', '2022-07-21', '$notification = new Notification();', NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2022-07-25 18:17:03', '2022-07-25 18:17:03', NULL, 'User B', '2022-07-21', '$notification = new Notification();', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2022-07-25 19:11:39', '2022-07-25 20:26:26', NULL, 'User B', '2022-07-21', '\"url\": \"\\/emergency-response-exercise\\/emergency-', NULL, NULL, NULL, '2022-07-25', NULL, 'closed'),
(25, '2022-07-25 21:59:45', '2022-07-25 21:59:45', NULL, 'User B', '2022-07-13', 'Incident', NULL, NULL, NULL, NULL, NULL, 'closed'),
(26, '2022-08-03 00:36:06', '2022-08-03 00:36:06', NULL, 'User B', '2022-08-02', 'Incident Description', NULL, NULL, NULL, NULL, NULL, 'closed'),
(27, '2022-08-03 00:44:10', '2022-08-03 00:46:03', NULL, 'User B', '2022-08-02', 'externalaudit', NULL, NULL, NULL, '2022-09-01', NULL, 'closed');

-- --------------------------------------------------------

--
-- Table structure for table `inspection_lists`
--

CREATE TABLE `inspection_lists` (
  `id` int(191) NOT NULL,
  `areas_inspected` varchar(191) NOT NULL,
  `health_and_safety_inspections_id` int(191) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inspection_lists`
--

INSERT INTO `inspection_lists` (`id`, `areas_inspected`, `health_and_safety_inspections_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Offices', 30, '2022-08-04', '2022-08-04', NULL),
(2, 'ConstructionSite', 30, '2022-08-04', '2022-08-04', NULL),
(3, 'Office', 32, '2022-08-04', '2022-08-04', NULL),
(4, 'ConstructionSite', 32, '2022-08-04', '2022-08-04', NULL),
(5, 'Warehouse', 32, '2022-08-04', '2022-08-04', NULL),
(6, 'Cars', 32, '2022-08-04', '2022-08-04', NULL),
(7, 'ConstructionSite', 34, '2022-08-11', '2022-08-11', NULL),
(8, 'Warehouse', 34, '2022-08-11', '2022-08-11', NULL),
(9, 'ConstructionSite', 35, '2022-08-11', '2022-08-11', NULL),
(10, 'Warehouse', 35, '2022-08-11', '2022-08-11', NULL),
(11, 'Office', 36, '2022-08-11', '2022-08-11', NULL),
(12, 'Warehouse', 36, '2022-08-11', '2022-08-11', NULL),
(13, 'Cars', 36, '2022-08-11', '2022-08-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_positions`
--

CREATE TABLE `job_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Purpose` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Answerable_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Responsible_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Skills` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_reviews`
--

CREATE TABLE `management_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `upload_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(42, '2022_06_13_163413_create_documents_table', 31),
(43, '2022_06_14_134413_create_personnel__records_table', 32),
(44, '2022_06_14_135719_create_personnel_records_table', 33),
(45, '2022_06_14_140829_create_personal_records_table', 34),
(46, '2022_06_14_152550_create_documents_table', 35),
(47, '2022_06_16_091820_create_motivational_quotes_table', 36),
(48, '2022_06_16_093935_create_announcements_table', 37),
(49, '2022_06_17_110814_create_vacations_table', 38),
(50, '2022_06_17_131837_create_incidents_table', 39),
(51, '2022_06_18_151733_create_calenders_table', 40),
(52, '2022_07_13_125328_create_health_and_safety_inspections_table', 41),
(53, '2022_07_13_134210_create_audits_table', 42),
(54, '2022_07_14_135453_create_test2s_table', 43),
(55, '2022_07_14_135527_create_test3s_table', 43),
(56, '2022_07_15_094137_create_tests_table', 44),
(57, '2022_07_15_100050_create_health_and_safety_inspections_table', 45),
(58, '2022_07_15_101324_create_audits_table', 46),
(59, '2022_07_15_105405_create_management_reviews_table', 47),
(60, '2022_07_15_114142_create_emergency_response_exercises_table', 48),
(61, '2022_08_01_113001_create_add_trainings_table', 49),
(62, '2022_08_01_115010_create_add_trainings_table', 50),
(63, '2022_08_02_123803_create_external_audits_table', 51),
(64, '2022_08_02_125413_create_external_audits_table', 52),
(65, '2022_08_03_122740_create_job_positions_table', 53),
(66, '2022_08_03_145459_create_health_and_safety_inspection_lists_table', 54),
(67, '2022_08_05_140450_create_reminders_table', 55),
(68, '2022_08_06_105422_create_notifications_table', 56),
(69, '2022_08_06_122948_create_employee_details_table', 57),
(70, '2022_08_06_123127_create_task_table', 58),
(71, '2022_08_06_153516_create_crud_events_table', 59),
(72, '2022_08_10_083817_create_events_table', 60),
(73, '2022_08_10_094832_create_events_table', 61);

-- --------------------------------------------------------

--
-- Table structure for table `motivational_quotes`
--

CREATE TABLE `motivational_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `qoute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motivational_quotes`
--

INSERT INTO `motivational_quotes` (`id`, `created_at`, `updated_at`, `deleted_at`, `qoute`, `image`) VALUES
(1, '2022-06-16 04:21:37', '2022-07-23 22:06:13', NULL, 'Give Your 100%', ''),
(8, '2022-06-16 08:45:09', '2022-06-16 08:45:09', NULL, 'Nothing is imposible', '/uploads/MotivationalQuote/2022/June/UNEAVrN725ekDQag20220616014509000000.jpeg');

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
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `reporter_name` varchar(191) NOT NULL,
  `reciver_name` varchar(191) NOT NULL,
  `reference_issue_id` int(11) NOT NULL,
  `response` varchar(11) NOT NULL DEFAULT 'pending ',
  `date` date NOT NULL,
  `remainder` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `notifications_title` varchar(191) NOT NULL,
  `notifications_description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `reporter_name`, `reciver_name`, `reference_issue_id`, `response`, `date`, `remainder`, `due_date`, `notifications_title`, `notifications_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'UserC1', 'UserC2', 1, 'accept', '2022-08-01', NULL, '2022-08-11', 'AddTraining Update', '', '2022-08-01 22:38:53', '2022-08-01 22:38:53', NULL),
(16, 'UserC1', 'UserC2', 19, 'pending ', '2022-08-10', NULL, NULL, 'AddTraining Created', NULL, '2022-08-01 22:45:26', '2022-08-01 22:45:26', NULL),
(17, 'UserC1', 'UserC2', 20, 'pending ', '2022-08-01', NULL, NULL, 'AddTraining Created', NULL, '2022-08-01 22:45:41', '2022-08-01 22:45:41', NULL),
(18, 'Nayla R', 'User B', 9, 'pending ', '2022-08-18', NULL, NULL, 'AddTraining Created', NULL, '2022-08-01 23:16:47', '2022-08-01 23:16:47', NULL),
(19, 'UserC1', 'User B', 10, 'pending ', '2022-08-17', NULL, NULL, 'AddTraining Created', NULL, '2022-08-01 23:24:19', '2022-08-01 23:24:19', NULL),
(20, 'UserC1', 'UserC2', 11, 'pending ', '2022-08-25', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-01 23:25:20', '2022-08-01 23:25:20', NULL),
(21, 'UserC1', 'UserC2', 11, 'pending ', '2022-08-25', NULL, NULL, 'HealthAndSafetyInspection Updated', NULL, '2022-08-01 23:31:57', '2022-08-01 23:31:57', NULL),
(22, 'UserC1', 'UserC2', 3, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 17:30:59', '2022-08-02 17:30:59', NULL),
(23, 'UserC1', 'UserC2', 4, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 18:43:13', '2022-08-02 18:43:13', NULL),
(24, 'UserC1', 'UserC2', 5, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 18:54:16', '2022-08-02 18:54:16', NULL),
(25, 'UserC1', 'UserC2', 6, 'pending ', '2022-08-19', NULL, NULL, 'Audit Created', NULL, '2022-08-02 19:23:20', '2022-08-02 19:23:20', NULL),
(26, 'UserC1', 'UserC2', 8, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 19:29:08', '2022-08-02 19:29:08', NULL),
(27, 'UserC1', 'UserC2', 6, 'pending ', '2022-08-02', NULL, NULL, 'External Audit Created', NULL, '2022-08-02 21:32:28', '2022-08-02 21:32:28', NULL),
(28, 'UserC1', 'UserC2', 15, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 22:28:20', '2022-08-02 22:28:20', NULL),
(29, 'UserC1', 'UserC2', 16, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-02 22:28:35', '2022-08-02 22:28:35', NULL),
(30, 'UserC1', 'UserC2', 7, 'pending ', '2022-08-02', NULL, NULL, 'External Audit Created', NULL, '2022-08-02 22:40:09', '2022-08-02 22:40:09', NULL),
(31, 'UserC1', 'UserC2', 2, 'pending ', '2022-08-02', NULL, NULL, 'Incident Created', 'employee_toemployee_to', '2022-08-02 23:03:39', '2022-08-02 23:03:39', NULL),
(32, 'UserC2', 'User B', 6, 'pending ', '2022-07-25', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:12:43', '2022-08-02 23:12:43', NULL),
(33, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:20:27', '2022-08-02 23:20:27', NULL),
(34, 'UserC1', 'User B', 6, 'pending ', '2022-07-25', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:22:58', '2022-08-02 23:22:58', NULL),
(35, 'UserC2', 'User B', 6, 'pending ', '2022-07-25', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:23:12', '2022-08-02 23:23:12', NULL),
(36, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:23:22', '2022-08-02 23:23:22', NULL),
(37, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:23:27', '2022-08-02 23:23:27', NULL),
(38, 'UserC2', 'UserC2', 2, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-02 23:23:49', '2022-08-02 23:23:49', NULL),
(39, 'UserC1', 'UserC2', 12, 'pending ', '2022-08-02', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-03 00:34:27', '2022-08-03 00:34:27', NULL),
(40, 'UserC1', 'User B', 26, 'pending ', '2022-08-02', NULL, NULL, 'Incident Created', 'Incident Description', '2022-08-03 00:36:06', '2022-08-03 00:36:06', NULL),
(41, 'UserC1', 'UserC2', 9, 'pending ', '2022-08-02', NULL, NULL, 'External Audit Created', NULL, '2022-08-03 00:39:27', '2022-08-03 00:39:27', NULL),
(42, 'UserC1', 'UserC2', 3, 'pending ', '2022-08-02', NULL, NULL, 'Incident Created', 'externalaudit', '2022-08-03 00:40:23', '2022-08-03 00:40:23', NULL),
(43, 'UserC1', 'UserC2', 13, 'pending ', '2022-08-02', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-03 00:42:59', '2022-08-03 00:42:59', NULL),
(44, 'UserC1', 'User B', 27, 'pending ', '2022-08-02', NULL, NULL, 'Incident Created', 'externalaudit', '2022-08-03 00:44:10', '2022-08-03 00:44:10', NULL),
(45, 'UserC2', 'User B', 27, 'pending ', '2022-09-01', NULL, NULL, 'Incident Updated', NULL, '2022-08-03 00:46:03', '2022-08-03 00:46:03', NULL),
(46, 'UserC1', 'UserC2', 17, 'pending ', '2022-08-02', NULL, NULL, 'Audit Created', NULL, '2022-08-03 00:46:44', '2022-08-03 00:46:44', NULL),
(47, 'UserC1', 'UserC2', 10, 'pending ', '2022-08-02', NULL, NULL, 'External Audit Created', NULL, '2022-08-03 00:48:12', '2022-08-03 00:48:12', NULL),
(48, 'UserC1', 'UserC2', 4, 'pending ', '2022-08-02', NULL, NULL, 'Incident Created', 'Incident Description', '2022-08-03 00:49:44', '2022-08-03 00:49:44', NULL),
(49, 'UserC2', 'UserC2', 4, 'pending ', '2022-08-17', NULL, NULL, 'Incident Updated', NULL, '2022-08-03 00:50:41', '2022-08-03 00:50:41', NULL),
(50, 'UserC1', 'UserC2', 2, 'pending ', '2022-08-02', NULL, NULL, 'External Audit Created', NULL, '2022-08-03 15:58:58', '2022-08-03 15:58:58', NULL),
(51, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-03 16:29:03', '2022-08-03 16:29:03', NULL),
(52, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-03 16:45:13', '2022-08-03 16:45:13', NULL),
(53, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-02', NULL, NULL, 'Incident Updated', NULL, '2022-08-03 16:48:45', '2022-08-03 16:48:45', NULL),
(54, 'UserC1', 'UserC2', 21, 'pending ', '2022-08-03', NULL, NULL, 'AddTraining Created', NULL, '2022-08-03 16:57:14', '2022-08-03 16:57:14', NULL),
(55, 'UserC2', 'UserC2', 1, 'accept', '2022-08-01', NULL, NULL, 'AddTraining Update', NULL, '2022-08-03 17:00:21', '2022-08-03 17:00:21', NULL),
(56, 'UserC2', 'UserC2', 1, 'accept', '2022-08-01', NULL, NULL, 'AddTraining Update', NULL, '2022-08-03 17:06:59', '2022-08-03 17:06:59', NULL),
(57, 'UserC2', 'UserC1', 1, 'accept', '2022-08-01', NULL, NULL, 'AddTraining Update', NULL, '2022-08-03 17:10:14', '2022-08-03 17:10:14', NULL),
(58, 'UserC1', 'UserC2', 20, 'pending ', '2022-08-03', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-03 22:42:57', '2022-08-03 22:42:57', NULL),
(59, 'UserC1', 'UserC2', 30, 'pending ', '2022-08-04', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-04 15:51:06', '2022-08-04 15:51:06', NULL),
(60, 'UserC1', 'UserC2', 32, 'pending ', '2022-08-04', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-04 16:36:19', '2022-08-04 16:36:19', NULL),
(61, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-16', NULL, NULL, 'HealthAndSafetyInspection Updated', NULL, '2022-08-04 16:45:26', '2022-08-04 16:45:26', NULL),
(62, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-16', NULL, '2022-08-11', 'HealthAndSafetyInspection Updated', NULL, '2022-08-04 16:47:21', '2022-08-04 16:47:21', NULL),
(63, 'UserC2', 'User B', 6, 'pending ', '2022-07-25', NULL, '2022-08-30', 'Incident Updated', NULL, '2022-08-11 00:18:14', '2022-08-11 00:18:14', NULL),
(64, 'UserC2', 'User B', 11, 'pending ', '2022-08-10', NULL, '2022-08-30', 'Incident Updated', NULL, '2022-08-11 00:20:51', '2022-08-11 00:20:51', NULL),
(65, 'UserC2', 'User B', 9, 'pending ', '2022-08-10', NULL, '2022-08-30', 'Incident Updated', NULL, '2022-08-11 00:23:21', '2022-08-11 00:23:21', NULL),
(66, 'UserC2', 'User B', 9, 'pending ', '2022-08-10', NULL, '2022-08-30', 'Incident Updated', NULL, '2022-08-11 00:23:51', '2022-08-11 00:23:51', NULL),
(67, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Incident Alert', '', '2022-08-11 16:19:54', '2022-08-11 16:19:54', NULL),
(80, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Incident Alert', '', '2022-08-11 16:27:31', '2022-08-11 16:27:31', NULL),
(81, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Incident Alert', NULL, '2022-08-11 16:27:31', '2022-08-11 16:27:31', NULL),
(82, 'UserC1', 'UserC2', 34, 'pending ', '2022-08-12', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-11 17:22:43', '2022-08-11 17:22:43', NULL),
(83, 'UserC1', 'UserC2', 35, 'pending ', '2022-08-20', NULL, NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-11 17:25:03', '2022-08-11 17:25:03', NULL),
(84, 'UserC1', 'UserC2', 36, 'pending ', '2022-08-27', '2022-08-26', NULL, 'HealthAndSafetyInspection Created', NULL, '2022-08-11 17:45:27', '2022-08-11 17:45:27', NULL),
(85, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Incident Alert', '', '2022-08-11 17:45:35', '2022-08-11 17:45:35', NULL),
(86, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Incident Alert', NULL, '2022-08-11 17:45:35', '2022-08-11 17:45:35', NULL),
(87, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'AddTraining Update Alert', '', '2022-08-11 17:55:27', '2022-08-11 17:55:27', NULL),
(88, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'HealthAndSafetyInspection Updated Alert', NULL, '2022-08-11 17:55:27', '2022-08-11 17:55:27', NULL),
(89, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 17:57:47', '2022-08-11 17:57:47', NULL),
(90, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', NULL, '2022-08-11 17:57:47', '2022-08-11 17:57:47', NULL),
(91, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 17:57:55', '2022-08-11 17:57:55', NULL),
(92, 'UserC2', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', NULL, '2022-08-11 17:57:55', '2022-08-11 17:57:55', NULL),
(93, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:53:27', '2022-08-11 21:53:27', NULL),
(94, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:53:36', '2022-08-11 21:53:36', NULL),
(95, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:53:52', '2022-08-11 21:53:52', NULL),
(96, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:41', '2022-08-11 21:54:41', NULL),
(97, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:44', '2022-08-11 21:54:44', NULL),
(98, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:47', '2022-08-11 21:54:47', NULL),
(99, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:50', '2022-08-11 21:54:50', NULL),
(100, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:54', '2022-08-11 21:54:54', NULL),
(101, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:54:57', '2022-08-11 21:54:57', NULL),
(102, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:55:00', '2022-08-11 21:55:00', NULL),
(103, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:55:04', '2022-08-11 21:55:04', NULL),
(104, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:55:07', '2022-08-11 21:55:07', NULL),
(105, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:55:10', '2022-08-11 21:55:10', NULL),
(106, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:56:39', '2022-08-11 21:56:39', NULL),
(107, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 21:57:56', '2022-08-11 21:57:56', NULL),
(108, 'UserC1', 'UserC2', 1, 'pending ', '2022-08-11', NULL, NULL, 'Due Date Alert', '', '2022-08-11 22:26:11', '2022-08-11 22:26:11', NULL);

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
(101, 'delete-documents', NULL, '2022-06-13 08:29:02', '2022-06-13 08:29:02'),
(102, 'add-personnelrecords', NULL, '2022-06-14 08:57:20', '2022-06-14 08:57:20'),
(103, 'edit-personnelrecords', NULL, '2022-06-14 08:57:20', '2022-06-14 08:57:20'),
(104, 'view-personnelrecords', NULL, '2022-06-14 08:57:20', '2022-06-14 08:57:20'),
(105, 'delete-personnelrecords', NULL, '2022-06-14 08:57:20', '2022-06-14 08:57:20'),
(106, 'add-personalrecords', NULL, '2022-06-14 09:08:29', '2022-06-14 09:08:29'),
(107, 'edit-personalrecords', NULL, '2022-06-14 09:08:29', '2022-06-14 09:08:29'),
(108, 'view-personalrecords', NULL, '2022-06-14 09:08:29', '2022-06-14 09:08:29'),
(109, 'delete-personalrecords', NULL, '2022-06-14 09:08:29', '2022-06-14 09:08:29'),
(110, 'add-motivationalquotes', NULL, '2022-06-16 04:18:21', '2022-06-16 04:18:21'),
(111, 'edit-motivationalquotes', NULL, '2022-06-16 04:18:21', '2022-06-16 04:18:21'),
(112, 'view-motivationalquotes', NULL, '2022-06-16 04:18:21', '2022-06-16 04:18:21'),
(113, 'delete-motivationalquotes', NULL, '2022-06-16 04:18:21', '2022-06-16 04:18:21'),
(114, 'add-announcement', NULL, '2022-06-16 04:39:36', '2022-06-16 04:39:36'),
(115, 'edit-announcement', NULL, '2022-06-16 04:39:36', '2022-06-16 04:39:36'),
(116, 'view-announcement', NULL, '2022-06-16 04:39:36', '2022-06-16 04:39:36'),
(117, 'delete-announcement', NULL, '2022-06-16 04:39:36', '2022-06-16 04:39:36'),
(118, 'add-vacation', NULL, '2022-06-17 06:08:15', '2022-06-17 06:08:15'),
(119, 'edit-vacation', NULL, '2022-06-17 06:08:15', '2022-06-17 06:08:15'),
(120, 'view-vacation', NULL, '2022-06-17 06:08:15', '2022-06-17 06:08:15'),
(121, 'delete-vacation', NULL, '2022-06-17 06:08:15', '2022-06-17 06:08:15'),
(122, 'add-incident', NULL, '2022-06-17 08:18:38', '2022-06-17 08:18:38'),
(123, 'edit-incident', NULL, '2022-06-17 08:18:38', '2022-06-17 08:18:38'),
(124, 'view-incident', NULL, '2022-06-17 08:18:38', '2022-06-17 08:18:38'),
(125, 'delete-incident', NULL, '2022-06-17 08:18:38', '2022-06-17 08:18:38'),
(126, 'add-calender', NULL, '2022-06-18 10:17:34', '2022-06-18 10:17:34'),
(127, 'edit-calender', NULL, '2022-06-18 10:17:34', '2022-06-18 10:17:34'),
(128, 'view-calender', NULL, '2022-06-18 10:17:34', '2022-06-18 10:17:34'),
(129, 'delete-calender', NULL, '2022-06-18 10:17:34', '2022-06-18 10:17:34'),
(130, 'add-test', NULL, NULL, NULL),
(131, 'edit-test', NULL, NULL, NULL),
(132, 'view-test', NULL, NULL, NULL),
(133, 'delete-test', NULL, NULL, NULL),
(134, 'add-healthandsafetyinspection', NULL, NULL, NULL),
(135, 'edit-healthandsafetyinspection', NULL, NULL, NULL),
(136, 'view-healthandsafetyinspection', NULL, NULL, NULL),
(137, 'delete-healthandsafetyinspection', NULL, NULL, NULL),
(138, 'add-audits', NULL, NULL, NULL),
(139, 'edit-audits', NULL, NULL, NULL),
(140, 'view-audits', NULL, NULL, NULL),
(141, 'delete-audits', NULL, NULL, NULL),
(142, 'add-managementreview', NULL, NULL, NULL),
(143, 'edit-managementreview', NULL, NULL, NULL),
(144, 'view-managementreview', NULL, NULL, NULL),
(145, 'delete-managementreview', NULL, NULL, NULL),
(146, 'add-emergencyresponseexercise', NULL, NULL, NULL),
(147, 'edit-emergencyresponseexercise', NULL, NULL, NULL),
(148, 'view-emergencyresponseexercise', NULL, NULL, NULL),
(149, 'delete-emergencyresponseexercise', NULL, NULL, NULL),
(150, 'add-addtraining', NULL, NULL, NULL),
(151, 'edit-addtraining', NULL, NULL, NULL),
(152, 'view-addtraining', NULL, NULL, NULL),
(153, 'delete-addtraining', NULL, NULL, NULL),
(154, 'add-external-audit', NULL, NULL, NULL),
(155, 'edit-external-audit', NULL, NULL, NULL),
(156, 'view-external-audit', NULL, NULL, NULL),
(157, 'delete-external-audit', NULL, NULL, NULL),
(158, 'add-externalaudit', NULL, NULL, NULL),
(159, 'edit-externalaudit', NULL, NULL, NULL),
(160, 'view-externalaudit', NULL, NULL, NULL),
(161, 'delete-externalaudit', NULL, NULL, NULL),
(162, 'add-jobposition', NULL, NULL, NULL),
(163, 'edit-jobposition', NULL, NULL, NULL),
(164, 'view-jobposition', NULL, NULL, NULL),
(165, 'delete-jobposition', NULL, NULL, NULL),
(166, 'add-healthandsafetyinspectionlist', NULL, NULL, NULL),
(167, 'edit-healthandsafetyinspectionlist', NULL, NULL, NULL),
(168, 'view-healthandsafetyinspectionlist', NULL, NULL, NULL),
(169, 'delete-healthandsafetyinspectionlist', NULL, NULL, NULL);

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
(98, 1),
(98, 2),
(98, 4),
(98, 7),
(98, 9),
(99, 1),
(99, 2),
(99, 4),
(99, 7),
(99, 9),
(100, 1),
(100, 2),
(100, 4),
(100, 7),
(100, 8),
(100, 9),
(101, 1),
(101, 4),
(101, 9),
(106, 1),
(106, 2),
(106, 4),
(106, 7),
(107, 1),
(107, 2),
(107, 4),
(107, 7),
(108, 1),
(108, 2),
(108, 4),
(108, 7),
(108, 8),
(109, 1),
(109, 4),
(110, 1),
(110, 2),
(110, 4),
(110, 7),
(111, 1),
(111, 2),
(111, 4),
(111, 7),
(112, 1),
(112, 2),
(112, 4),
(112, 7),
(112, 8),
(113, 1),
(113, 4),
(114, 1),
(114, 2),
(114, 4),
(114, 7),
(115, 1),
(115, 2),
(115, 4),
(115, 7),
(116, 1),
(116, 2),
(116, 4),
(116, 7),
(116, 8),
(117, 1),
(117, 4),
(118, 1),
(118, 2),
(118, 4),
(118, 7),
(119, 1),
(119, 2),
(119, 4),
(119, 7),
(120, 1),
(120, 2),
(120, 4),
(120, 7),
(120, 8),
(121, 1),
(121, 4),
(122, 1),
(122, 2),
(122, 4),
(122, 7),
(123, 1),
(123, 2),
(123, 4),
(123, 7),
(123, 8),
(124, 1),
(124, 2),
(124, 4),
(124, 7),
(124, 8),
(125, 1),
(125, 4),
(126, 1),
(126, 2),
(126, 4),
(126, 7),
(127, 1),
(127, 2),
(127, 4),
(127, 7),
(128, 1),
(128, 2),
(128, 4),
(128, 7),
(128, 8),
(129, 1),
(129, 4),
(134, 1),
(134, 2),
(134, 4),
(134, 7),
(135, 1),
(135, 2),
(135, 4),
(135, 7),
(135, 8),
(136, 1),
(136, 2),
(136, 4),
(136, 7),
(136, 8),
(137, 1),
(137, 4),
(138, 1),
(138, 2),
(138, 4),
(138, 7),
(139, 1),
(139, 2),
(139, 4),
(139, 7),
(140, 1),
(140, 2),
(140, 4),
(140, 7),
(140, 8),
(141, 1),
(141, 4),
(142, 1),
(142, 2),
(142, 4),
(142, 7),
(143, 1),
(143, 2),
(143, 4),
(143, 7),
(144, 1),
(144, 2),
(144, 4),
(144, 7),
(144, 8),
(145, 1),
(145, 4),
(146, 1),
(146, 2),
(146, 4),
(146, 7),
(147, 1),
(147, 2),
(147, 4),
(147, 7),
(147, 8),
(148, 1),
(148, 2),
(148, 4),
(148, 7),
(148, 8),
(149, 1),
(149, 4),
(150, 1),
(150, 2),
(150, 4),
(150, 7),
(151, 1),
(151, 2),
(151, 4),
(151, 7),
(151, 8),
(152, 1),
(152, 2),
(152, 4),
(152, 7),
(152, 8),
(153, 1),
(153, 4),
(162, 1),
(162, 2),
(162, 4),
(162, 7),
(163, 1),
(163, 2),
(163, 4),
(163, 7),
(164, 1),
(164, 2),
(164, 4),
(164, 7),
(164, 8),
(165, 1),
(165, 4),
(166, 1),
(166, 2),
(166, 4),
(166, 7),
(167, 1),
(167, 2),
(167, 4),
(167, 7),
(168, 1),
(168, 2),
(168, 4),
(168, 7),
(168, 8),
(169, 1),
(169, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_records`
--

CREATE TABLE `personal_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_records`
--

INSERT INTO `personal_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `position`, `details`) VALUES
(1, '2022-06-14 09:22:02', '2022-06-15 10:16:26', '2022-06-15 10:16:26', 'Nayla', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(2, '2022-06-14 09:38:31', '2022-06-15 09:35:30', '2022-06-15 09:35:30', 'faiz', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(3, '2022-06-15 06:57:08', '2022-06-15 10:16:23', '2022-06-15 10:16:23', 'faiz', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(4, '2022-06-15 08:41:01', '2022-06-15 10:16:18', '2022-06-15 10:16:18', 'Deutsch', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(5, '2022-06-15 08:41:13', '2022-06-15 10:16:21', '2022-06-15 10:16:21', 'Devop360', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(6, '2022-06-15 08:41:25', '2022-06-15 10:16:15', '2022-06-15 10:16:15', 'faiz', 'director state cargo Inc.', 'asfasdsd fsdfs f sdf sdf we e ef'),
(7, '2022-06-15 10:17:01', '2022-06-15 10:17:01', NULL, 'Jane Doe', 'Chief Executive Officer', 'Chief Executive Officer Chief Executive OfficerChief Executive OfficerChief Executive OfficerChief Executive Officer'),
(8, '2022-07-23 21:59:24', '2022-07-23 22:05:47', '2022-07-23 22:05:47', 'Muhammad Faisal Qasim', 'Developer', 'Jr Developer');

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
(6, 7, 'Testing Description', 'male', '1996-06-22', 'ProfilePicture/aWvqF4ZmQwEEh0K2YImIuCULkqNS7BH6iU2ENmqo.png', 'Pakistan', 'Sindh', 'karachi', 'House no d563', '75200', '2022-03-04 14:51:56', '2022-03-19 07:44:53'),
(15, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 05:22:08', '2022-06-17 05:22:08'),
(16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 05:23:03', '2022-06-17 05:23:03'),
(17, 18, 'Develper', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 21:32:14', '2022-07-23 21:15:53'),
(18, 19, 'user add by User B', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-15 22:27:24', '2022-07-23 19:35:17'),
(19, 20, 'ADDED BY USER B', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-23 20:06:56', '2022-07-23 20:06:56'),
(20, 21, 'userb2', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-23 21:23:58', '2022-07-23 21:23:58'),
(21, 22, 'faisaltesting3', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-23 22:27:40', '2022-07-23 22:27:40'),
(22, 23, 'FaisalTesting4', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-23 22:30:33', '2022-07-23 22:30:33'),
(23, 24, 'FaisalTesting1', 'male', '2022-08-03', 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 17:55:44', '2022-08-04 17:55:44'),
(24, 25, 'FaisalTesting4', 'male', '2022-08-03', 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 18:06:33', '2022-08-04 18:06:33'),
(25, 27, 'FaisalTesting4', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 18:40:37', '2022-08-04 18:40:37'),
(26, 28, 'ismailrehman1', 'male', '2022-08-03', 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 18:51:29', '2022-08-04 18:51:29'),
(27, 29, 'FaisalTesting7', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 22:11:51', '2022-08-04 22:11:51'),
(28, 30, 'FaisalTesting8', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 22:44:15', '2022-08-04 22:44:15'),
(29, 31, 'return Auth::user();', 'female', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 23:17:46', '2022-08-04 23:22:40'),
(30, 32, 'return Auth::user();', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 23:24:37', '2022-08-04 23:24:37'),
(31, 33, 'return Auth::user();', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-04 23:29:40', '2022-08-04 23:29:40'),
(32, 34, 'auth()->user()->hasRole(\'UserC1\')', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-05 14:58:29', '2022-08-05 14:58:29'),
(33, 35, 'ismailrehman2', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-05 16:05:55', '2022-08-05 16:05:55'),
(34, 36, 'ismailrehman2@gmail.com', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-05 16:39:27', '2022-08-05 16:39:27'),
(35, 61, 'use Illuminate\\Notifications\\Notification;', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-06 20:45:47', '2022-08-06 20:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reminder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminder_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `lead_id`, `user_id`, `reminder`, `note`, `reminder_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'adsasfdasf', 'asfdasdfasdf', '2022-08-05', 'pending', NULL, NULL),
(2, 0, 1, 'afasdfasdfasdoi;u;ljio;luiol', 'asdfasdfasdf', '2022-08-05', 'pending', NULL, NULL),
(3, 0, 1, 'adsasfdasf', 'asfdasdfasdf', '2022-08-05', 'pending', NULL, NULL),
(4, 0, 1, 'afasdfasdfasdoi;u;ljio;luiol', 'asdfasdfasdf', '2022-08-05', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'User A', NULL, '2020-07-16', '2022-06-29'),
(2, 'User B', NULL, '2020-07-16', '2022-06-29'),
(4, 'Developer', NULL, '2020-07-16', '2022-06-29'),
(7, 'UserC1', NULL, '2020-07-16', '2022-08-04'),
(8, 'UserC2', NULL, '1900-01-23', '2022-06-29');

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
(2, 2),
(2, 21),
(2, 28),
(2, 35),
(2, 61),
(4, 7),
(7, 16),
(7, 22),
(7, 25),
(7, 27),
(7, 30),
(7, 32),
(7, 33),
(7, 34),
(7, 36),
(8, 17),
(8, 19),
(8, 20),
(8, 23),
(8, 24),
(8, 29),
(8, 31);

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
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `notifiable`, `description`, `due_date`, `created_at`, `updated_at`) VALUES
('4bc4d202-1595-11ed-ac6f-1cb72c3032dd', 'task1', 'task1', 'task1', '2022-08-31', NULL, NULL),
('4bc50260-1595-11ed-ac6f-1cb72c3032dd', 'task2', 'task2', 'task2', '2022-08-31', NULL, NULL);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Managed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1-active,2-banned',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Managed_by`, `provider_id`, `provider`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User A', 'admin@admin.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', '', NULL, NULL, 1, NULL, '2020-07-17 22:23:06', '2022-03-18 12:14:45', NULL),
(2, 'User B', 'userb@userb.com', '$2y$10$YeDqbz6CyT2bxl2K3pDcuefaAtSS.as4yxy/.01hgom4cMCWM8ZYy', '', NULL, NULL, 1, NULL, '2020-07-17 22:23:06', '2022-07-23 21:17:51', NULL),
(7, 'Nayla R', 'dev1@gmail.com', '$2y$10$PWsYJJSFcNKGsnUclBBU9e9TiLBtfBuzUu3Cd2T6WmJOia6PeeL2S', '', NULL, NULL, 1, NULL, '2022-03-04 22:51:56', '2022-03-19 14:44:53', NULL),
(16, 'UserC1', 'UserC1@user.com', '$2y$10$SrKmQWvqMXX2tTrlNt4lzeEHyLJ9l3KSihVeLBxeaO85uHAy8X30u', '', NULL, NULL, 1, NULL, '2022-06-17 12:22:08', '2022-06-17 12:22:08', NULL),
(17, 'UserC2', 'UserC2@user.com', '$2y$10$sTnCkv.ke5mOzwTHNx6X9u/FAci99HNgBvD1j.cmvusexIZJ7oZ3m', '', NULL, NULL, 1, NULL, '2022-06-17 12:23:03', '2022-06-17 12:23:03', NULL),
(18, 'Muhammad Faisal Qasim', 'mfaisalqasimtesting123@gmail.com', '$2y$10$sTnCkv.ke5mOzwTHNx6X9u/FAci99HNgBvD1j.cmvusexIZJ7oZ3m', '', NULL, NULL, 1, NULL, '2022-07-16 17:07:49', '2022-07-16 17:07:49', NULL),
(19, 'FaisalTesting1', 'mfaisalqasimtesting1@gmail.com', '$2y$10$MNn09WQidvaaU2aEmBXzu.kxB.5a0JEZK6mbN1twgwRzRBusByXHq', 'User B', NULL, NULL, 1, NULL, '2022-07-23 19:35:17', '2022-07-23 19:35:17', NULL),
(20, 'FaisalTesting2', 'mfaisalqasimtesting2@gmail.com', '$2y$10$RuU/O4iFLWbMOrxNiASgg.StYfP7yjrtNyJSpGx1l97C7Mk.cFeia', 'User B', NULL, NULL, 1, NULL, '2022-07-23 20:06:56', '2022-07-23 20:06:56', NULL),
(21, 'User B2', 'userb2@userb.com', '$2y$10$iS4VmeR1hQKtCrn1QGbWwOrtiVkHHdT/bAiOdYKXl3XTBk4InIX6e', '', NULL, NULL, 1, NULL, '2022-07-23 21:23:58', '2022-07-23 21:23:58', NULL),
(27, 'FaisalTesting7', 'mfaisalqasimtesting7@gmail.com', '$2y$10$IVH3vwCeCbf0jCVNAAW.YuUa5BK8YnMvHZmQAzdAFC4yaszpPeEPu', 'User B', NULL, NULL, 1, NULL, '2022-08-04 18:39:07', '2022-08-04 18:40:37', NULL),
(28, 'ismailrehman1', 'ismailrehman1@gmail.com', '$2y$10$TpAaaxZusY3Q4fG06zHz4upY7iKpKCND/.7ioGtx.0BbRbmC/39pO', 'User A', NULL, NULL, 1, NULL, '2022-08-04 18:51:28', '2022-08-04 18:51:28', NULL),
(29, 'FaisalTesting8', 'mfaisalqasimtesting8@gmail.com', '$2y$10$p0W/YXLrBQVV.Y/zvzexjeLl5LVCutBYe7/Sc93zgJc/Oa7gUwUUq', 'User B', NULL, NULL, 1, NULL, '2022-08-04 22:11:51', '2022-08-04 22:11:51', NULL),
(30, 'FaisalTesting9', 'mfaisalqasimtesting9@gmail.com', '$2y$10$Vg69C0dwa6lvSzeoPy6W3et6cSklMIir2.cx9XqD37WH4zu0UrAve', 'User B2', NULL, NULL, 1, NULL, '2022-08-04 22:44:15', '2022-08-05 14:44:50', NULL),
(31, 'Muhammad Faisal Qasim', 'mfaisalqasimtesting9@gmail.com', '$2y$10$CXs1iJ4QFpVJlKHiQOrSteGPoxHftq7AyvJixSioXqiP4Nr8/zAS.', 'User B2', NULL, NULL, 1, NULL, '2022-08-04 23:17:46', '2022-08-04 23:22:40', NULL),
(32, 'Muhammad Faisal Qasim2', 'mfaisalqasimtesting1232@gmail.com', '$2y$10$FkHy1oKvICUBqtdpc4Bd7OuMMi0tYXK.ZsofvZlzyT1AR4GDKjqWO', 'User B2', NULL, NULL, 1, NULL, '2022-08-04 23:24:37', '2022-08-04 23:24:37', NULL),
(33, 'Muhammad Faisal Qasim3', 'mfaisalqasimtesting1233@gmail.com', '$2y$10$P4hzBML0nFrg2.mIeskoyOataj.b6oILNGedlViBu29seaMN5u5Nq', 'User B2', NULL, NULL, 1, NULL, '2022-08-04 23:29:39', '2022-08-04 23:29:40', NULL),
(34, 'Muhammad Faisal Qasim4', 'mfaisalqasimtesting1234@gmail.com', '$2y$10$m80uNtJAx1sEXNm4AGr/5OaQ.JTSkXfzBVJUC6eTJ6.JvReiW8PwK', 'User B', NULL, NULL, 1, NULL, '2022-08-05 14:58:29', '2022-08-05 14:58:29', NULL),
(35, 'ismailrehman2', 'ismailrehman2@gmail.com', '$2y$10$A7AKzawIzKw53G2zqD/g8OCBffaP76maIcDHzgDWjzqTygaMBvvE6', 'User A', NULL, NULL, 1, NULL, '2022-08-05 16:05:55', '2022-08-05 16:05:55', NULL),
(36, 'Muhammad Faisal Qasim5', 'mfaisalqasimtesting1235@gmail.com', '$2y$10$u4cLUb2YWowsCLtnqewXDuLSVzHG8n9FJ/2lg1V8qI9QkClEolP.6', 'ismailrehman2', NULL, NULL, 1, NULL, '2022-08-05 16:39:27', '2022-08-05 16:39:27', NULL),
(60, 'regiater test5', 'regiaterTest5@user.com', '$2y$10$xFhDiObtTJ6QB0JnK8WFpOY8rPexXUG2KfVe7p3AuYuvwn1YfooMS', NULL, NULL, NULL, 1, NULL, '2022-08-06 20:44:54', '2022-08-06 20:44:54', NULL),
(61, 'Muhammad Faisal Qasim2', 'mfaisalqasimtesting123@gmail.com', '$2y$10$CzQByxHXklHOFjIQ.g9Rfu3mLgcVWtHXuq50PxutKse9.YLvjZiqa', 'User A', NULL, NULL, 1, NULL, '2022-08-06 20:45:47', '2022-08-06 20:45:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `approval`, `start_date`, `end_date`, `emp_id`) VALUES
(3, '2022-06-17 06:51:38', '2022-06-17 09:39:46', NULL, 'UserC2', 'approved', '2022-06-17 00:00:00', '2022-06-24 00:00:00', 17),
(4, '2022-06-17 09:10:30', '2022-06-17 09:10:30', NULL, 'UserC2', 'pending', '2022-06-17 19:10:00', '2022-08-27 19:10:00', 17),
(5, '2022-06-17 09:10:55', '2022-06-17 09:10:55', NULL, 'UserC2', 'pending', '2022-06-17 19:10:00', '2022-09-29 19:10:00', 17),
(7, '2022-06-17 09:13:10', '2022-06-17 09:13:10', NULL, 'Devop360', 'pending', '2022-06-17 19:12:00', '2022-07-16 19:13:00', 17),
(8, '2022-06-17 09:13:28', '2022-06-17 09:13:28', NULL, 'Nayla', 'pending', '2022-06-17 19:13:00', '2022-07-15 19:13:00', 17),
(9, '2022-06-17 09:13:48', '2022-06-17 09:13:48', NULL, 'Deutsch', 'pending', '2022-06-17 19:13:00', '2022-09-03 19:13:00', 17),
(10, '2022-06-17 10:19:09', '2022-06-17 10:19:09', NULL, 'UserC2', 'pending', '2022-06-17 20:18:00', '2022-07-22 20:18:00', 17),
(11, '2022-06-17 10:24:58', '2022-06-17 10:25:41', NULL, 'UserC2', 'approval', '2022-06-17 00:00:00', '2022-07-22 00:00:00', 17),
(12, '2022-06-18 23:49:06', '2022-06-18 23:49:06', NULL, 'UserC2', 'pending', '2022-06-18 22:48:00', '2022-07-09 22:49:00', 17);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_trainings`
--
ALTER TABLE `add_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
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
-- Indexes for table `calenders`
--
ALTER TABLE `calenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_events`
--
ALTER TABLE `crud_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_file`
--
ALTER TABLE `documents_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_response_exercises`
--
ALTER TABLE `emergency_response_exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_audits`
--
ALTER TABLE `external_audits`
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
-- Indexes for table `health_and_safety_inspections`
--
ALTER TABLE `health_and_safety_inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_and_safety_inspection_lists`
--
ALTER TABLE `health_and_safety_inspection_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspection_lists`
--
ALTER TABLE `inspection_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_positions`
--
ALTER TABLE `job_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_reviews`
--
ALTER TABLE `management_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motivational_quotes`
--
ALTER TABLE `motivational_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

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
-- Indexes for table `personal_records`
--
ALTER TABLE `personal_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_lead_id_index` (`lead_id`);

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
-- Indexes for table `task`
--
ALTER TABLE `task`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `add_trainings`
--
ALTER TABLE `add_trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `calenders`
--
ALTER TABLE `calenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crud_events`
--
ALTER TABLE `crud_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `documents_file`
--
ALTER TABLE `documents_file`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `emergency_response_exercises`
--
ALTER TABLE `emergency_response_exercises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `external_audits`
--
ALTER TABLE `external_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_and_safety_inspections`
--
ALTER TABLE `health_and_safety_inspections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `health_and_safety_inspection_lists`
--
ALTER TABLE `health_and_safety_inspection_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `inspection_lists`
--
ALTER TABLE `inspection_lists`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `job_positions`
--
ALTER TABLE `job_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_reviews`
--
ALTER TABLE `management_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `motivational_quotes`
--
ALTER TABLE `motivational_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `personal_records`
--
ALTER TABLE `personal_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
