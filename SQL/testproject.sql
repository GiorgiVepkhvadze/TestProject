-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 02:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `phone`) VALUES
(2, 'Carroll Wilkinson', 'victoria32@example.org', '+16627298678'),
(3, 'Sedrick Frami MD', 'oherzog@example.net', '(334) 887-3911 x349'),
(4, 'Keagan Cruickshank', 'robin26@example.net', '(269) 477-9239'),
(5, 'Justine Nolan I', 'hbrakus@example.com', '1-770-691-9493 x899'),
(6, 'Mrs. River Ward I', 'heloise32@example.net', '1-865-671-6488 x03780'),
(8, 'Adela McGlynn', 'nstamm@example.org', '(715) 331-6498'),
(9, 'Scottie Jaskolski', 'ehahn@example.com', '616-723-3465 x5419'),
(10, 'Nona Cruickshank', 'melody.langosh@example.org', '262.968.9411 x52981'),
(11, 'Colt Kris PhD', 'kgleichner@example.net', '1-983-253-7711'),
(12, 'Haven Connelly', 'oheaney@example.net', '676-485-6406'),
(13, 'Joanie Casper PhD', 'carole.effertz@example.com', '(305) 800-7419 x135'),
(14, 'Viviane Kris', 'larkin.jimmie@example.net', '768.738.6478'),
(15, 'Mrs. Elisa Kirlin I', 'jrau@example.com', '878-317-5672 x88001'),
(16, 'Jazmin Mueller', 'mcclure.ona@example.net', '1-520-719-1849 x98660'),
(17, 'Prof. Jacky Kilback IV', 'brett68@example.org', '(246) 435-4822'),
(18, 'Prof. Merritt Nolan MD', 'haley.cletus@example.net', '+13587373396');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Rossie Padberg DDS', 'kennith.lockman@example.org', '896.225.1554'),
(2, 'Mr. Floy Cummerata', 'schmidt.sheldon@example.org', '879-846-1746'),
(3, 'Mrs. Donna Runolfsdottir IV', 'ncole@example.org', '1-473-399-8065'),
(4, 'Prof. Blaise Weber MD', 'angie37@example.net', '(640) 732-6314 x16178'),
(5, 'Prof. Nathan Ziemann IV', 'kilback.augustus@example.com', '240-726-3281 x596'),
(6, 'Mia Kuvalis', 'hills.roy@example.org', '(438) 333-6519 x42364'),
(7, 'Hallie Roob', 'noemie65@example.org', '509.728.5163'),
(8, 'Dayana Feest', 'lowe.faye@example.net', '(706) 450-6411 x579'),
(9, 'Nasir Reichert', 'kuhlman.muhammad@example.org', '928-546-0181'),
(10, 'Moses Zieme', 'nmetz@example.com', '+1-240-931-2636'),
(11, 'Roel Satterfield', 'chesley.sauer@example.net', '+1-624-869-9051'),
(12, 'Prof. Melvin Heaney', 'jacobson.fannie@example.com', '+1 (209) 784-1767'),
(13, 'Edward Powlowski', 'jwisozk@example.com', '(885) 703-9851 x572'),
(14, 'Winston Keebler DDS', 'felton54@example.net', '739-406-7293 x672'),
(15, 'Kyler Hickle', 'stamm.arlo@example.net', '1-847-603-3959'),
(16, 'Owen Mayer', 'elody95@example.com', '1-482-542-3062 x23501'),
(17, 'Christopher Predovic III', 'kendrick.denesik@example.org', '284.979.8240 x2766'),
(18, 'Maryjane Emard', 'roselyn25@example.com', '364.745.0925'),
(19, 'Nathan Lehner', 'willard25@example.com', '339.658.3532 x3229'),
(20, 'Cleta Jacobs', 'mireille22@example.net', '1-532-502-7947');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_07_06_111026_create_candidates_table', 1),
(10, '2020_07_06_111219_create_employees_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vallie Wuckert I', 'theresa31@example.net', '2020-07-06 08:19:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yKlMZAkzhy', '2020-07-06 08:19:01', '2020-07-06 08:19:01'),
(2, 'Ralph Daniel Sr.', 'heidi.towne@example.net', '2020-07-06 08:22:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yA4NhPiTu2', '2020-07-06 08:22:40', '2020-07-06 08:22:40'),
(4, 'Admin', 'admin@admin.com', '2020-07-06 08:19:01', '$2y$10$OtPeQwWRh/ZGpj/Fdyf.E.sU99TGCx.vN8aaPPentE8bgKIiOF94y', 'V3bJ3hrjbIQxNls1yc4mLLXsuHE2sFlR8NIVg80gQU1WPkU9Q4pX7Xa4nXZR', '2020-07-06 08:19:01', '2020-07-06 08:19:01'),
(5, 'Magdalen Beahan', 'owehner@example.com', '2020-07-06 09:30:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cFs3CUerv4', '2020-07-06 09:30:14', '2020-07-06 09:30:14'),
(6, 'Vella Braun DVM', 'harvey.alejandra@example.net', '2020-07-06 09:32:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LjBF1VHuDF', '2020-07-06 09:32:17', '2020-07-06 09:32:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `candidates_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
