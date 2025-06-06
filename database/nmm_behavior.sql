-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 05:39 PM
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
-- Database: `nmm_behavior`
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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
('wTr0P3zXqO0esjiyTAcKgy8gnS7Jjb0s3Fo8w5XR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjFIUm9TRFl4UFlHbldZNmlCbnoyMVBrc2NBaDZLU3BoMlZsZ0g3dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745163099),
('Z2RRcVPTP2QFepT50DnhHNTdLrvicE5yxCrO5qA3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTBlRHl5N2I2anFvTUdUUURaa01zTnd3MmRQUE5XcHcycEZRTDdWQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9iZWhhdmlvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744995085);

-- --------------------------------------------------------

--
-- Table structure for table `tb_behavior_logs`
--

CREATE TABLE `tb_behavior_logs` (
  `logs_id` int(11) NOT NULL,
  `students_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `types_id` int(11) DEFAULT NULL,
  `logs_date` datetime DEFAULT NULL,
  `logs_note` text DEFAULT NULL,
  `logs_image_path` varchar(200) DEFAULT NULL,
  `logs_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_behavior_types`
--

CREATE TABLE `tb_behavior_types` (
  `types_id` int(11) NOT NULL,
  `types_name` varchar(100) DEFAULT NULL,
  `types_description` text DEFAULT NULL,
  `types_score_deducted` int(11) DEFAULT NULL,
  `types_severity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_notifications`
--

CREATE TABLE `tb_notifications` (
  `notifications_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `notifications_message` text DEFAULT NULL,
  `notifications_is_read` tinyint(1) DEFAULT NULL,
  `notifications_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_parents`
--

CREATE TABLE `tb_parents` (
  `parents_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `students_id` int(11) DEFAULT NULL,
  `parents_first_name` varchar(100) DEFAULT NULL,
  `parents_last_name` varchar(100) DEFAULT NULL,
  `parents_relationship` varchar(50) DEFAULT NULL,
  `parents_phone` varchar(15) DEFAULT NULL,
  `parents_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_score_history`
--

CREATE TABLE `tb_score_history` (
  `history_id` int(11) NOT NULL,
  `students_id` int(11) DEFAULT NULL,
  `history_year` int(11) DEFAULT NULL,
  `history_score` int(11) DEFAULT NULL,
  `history_archived_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_students`
--

CREATE TABLE `tb_students` (
  `students_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `students_code` varchar(20) DEFAULT NULL,
  `students_first_name` varchar(100) DEFAULT NULL,
  `students_last_name` varchar(100) DEFAULT NULL,
  `students_classroom` varchar(10) DEFAULT NULL,
  `students_current_score` int(11) DEFAULT NULL,
  `students_status` varchar(10) DEFAULT NULL,
  `students_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_teachers`
--

CREATE TABLE `tb_teachers` (
  `teachers_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `teachers_full_name` varchar(200) DEFAULT NULL,
  `teachers_position` varchar(50) DEFAULT NULL,
  `teachers_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) DEFAULT NULL,
  `users_phone` varchar(15) DEFAULT NULL,
  `users_password` varchar(100) DEFAULT NULL,
  `users_role` varchar(20) DEFAULT NULL,
  `users_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `users_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tb_behavior_logs`
--
ALTER TABLE `tb_behavior_logs`
  ADD PRIMARY KEY (`logs_id`),
  ADD KEY `students_id` (`students_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `types_id` (`types_id`);

--
-- Indexes for table `tb_behavior_types`
--
ALTER TABLE `tb_behavior_types`
  ADD PRIMARY KEY (`types_id`);

--
-- Indexes for table `tb_notifications`
--
ALTER TABLE `tb_notifications`
  ADD PRIMARY KEY (`notifications_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `tb_parents`
--
ALTER TABLE `tb_parents`
  ADD PRIMARY KEY (`parents_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `students_id` (`students_id`);

--
-- Indexes for table `tb_score_history`
--
ALTER TABLE `tb_score_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `students_id` (`students_id`);

--
-- Indexes for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD PRIMARY KEY (`students_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tb_teachers`
--
ALTER TABLE `tb_teachers`
  ADD PRIMARY KEY (`teachers_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`users_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_behavior_logs`
--
ALTER TABLE `tb_behavior_logs`
  ADD CONSTRAINT `tb_behavior_logs_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `tb_students` (`students_id`),
  ADD CONSTRAINT `tb_behavior_logs_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `tb_teachers` (`teachers_id`),
  ADD CONSTRAINT `tb_behavior_logs_ibfk_3` FOREIGN KEY (`types_id`) REFERENCES `tb_behavior_types` (`types_id`);

--
-- Constraints for table `tb_notifications`
--
ALTER TABLE `tb_notifications`
  ADD CONSTRAINT `tb_notifications_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `tb_users` (`users_id`);

--
-- Constraints for table `tb_parents`
--
ALTER TABLE `tb_parents`
  ADD CONSTRAINT `tb_parents_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `tb_users` (`users_id`),
  ADD CONSTRAINT `tb_parents_ibfk_2` FOREIGN KEY (`students_id`) REFERENCES `tb_students` (`students_id`);

--
-- Constraints for table `tb_score_history`
--
ALTER TABLE `tb_score_history`
  ADD CONSTRAINT `tb_score_history_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `tb_students` (`students_id`);

--
-- Constraints for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD CONSTRAINT `tb_students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`users_id`);

--
-- Constraints for table `tb_teachers`
--
ALTER TABLE `tb_teachers`
  ADD CONSTRAINT `tb_teachers_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `tb_users` (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
