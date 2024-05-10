-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batech`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact_number`, `reference_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Morgan Wisoky', 'bechtelar.joan@example.org', '361.590.9329', NULL, '2024-05-10 02:37:59', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'u31zli6x10', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(2, 'Mr. Vaughn Klocko III', 'salma.daugherty@example.net', '+1-212-261-7999', 7, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'TaPKXfnRnn', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(3, 'Asha Lubowitz', 'blemke@example.org', '804.310.8937', NULL, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'PKmMwfS56w', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(4, 'Myrtle Koss II', 'vmann@example.org', '+1-681-471-1960', 3, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'D4jxEbJFwg', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(5, 'Gregoria Beahan II', 'parisian.katrine@example.net', '+13864978951', 3, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'IPqESl08Wb', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(6, 'Reuben Hyatt', 'fconn@example.org', '959.816.3834', 7, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'zAiO5JWwHu', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(7, 'Dr. Theo Gorczany DDS', 'desmond.hettinger@example.org', '+15209098484', NULL, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'ryM8uzbE7I', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(8, 'Prof. Tristian White', 'holly36@example.org', '779-790-3753', 1, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'ZYE0D0IuwE', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(9, 'Fabian Shields', 'homenick.tito@example.net', '(409) 538-7096', 3, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'QQ9p01M0Tm', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(10, 'Raphaelle Lakin', 'skohler@example.net', '217.223.0624', 7, '2024-05-10 02:38:00', '$2y$12$5aWLl56JZSo08/ia4wZjqumTWqtv8OejImEQzsUfbVjT.2bjUxzg6', 'CEW6n7Vm1l', '2024-05-10 02:38:00', '2024-05-10 02:38:00'),
(11, 'vengat', 'vengat0691@gmail.com', '1234567890', NULL, NULL, '$2y$12$vHBHfEJksoq31rnSXjpHou/x0cNZWoRjl3eGtRlhiwF2xefM1Os1i', NULL, '2024-05-10 03:39:10', '2024-05-10 03:39:10'),
(12, 'vengat1', 'vengat06911@gmail.com', '1234567890', 11, NULL, '$2y$12$aNlJKX2EMSZz5sF50im8feAFGxvQgvDhuq61u9LNDHuyzpI8fMeqm', NULL, '2024-05-10 03:39:29', '2024-05-10 03:39:29');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_reference_id_index` (`reference_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
