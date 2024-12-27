-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 03:39 AM
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
-- Database: `task_management`
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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_26_034100_create_tasks_table', 1),
(5, '2024_12_26_040546_create_personal_access_tokens_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', '74a40f527bff9e1bb333da0aec8f4d62a5f360e4f187bc13892ef6b30df9d61c', '[\"*\"]', NULL, NULL, '2024-12-26 20:04:44', '2024-12-26 20:04:44'),
(2, 'App\\Models\\User', 1, 'API Token', 'f4cb4d716f7b065f9819f73eb228f5cbe40459151c2bb5ef53cd2abeb7ddbb14', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:04', '2024-12-26 20:05:04'),
(3, 'App\\Models\\User', 1, 'API Token', 'aa26f1ed0361721cb6b1cccc9507404746e91e6d958c2910bce1b7e7fbf69cf1', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:06', '2024-12-26 20:05:06'),
(4, 'App\\Models\\User', 1, 'API Token', 'd0b32d0a582aa1c63cccbe6d4c85c31b21a18d8a01a341f53bc6286308113890', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:07', '2024-12-26 20:05:07'),
(5, 'App\\Models\\User', 1, 'API Token', '87741d73eafaf03b95790c3729e4ea76fdda9f28ddf80892080f1986cb1aa1a9', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:09', '2024-12-26 20:05:09'),
(6, 'App\\Models\\User', 1, 'API Token', '63706adc4b4ce776141f336665b8e54c524acd996c97e5a68619e49892502bb7', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:15', '2024-12-26 20:05:15'),
(7, 'App\\Models\\User', 1, 'API Token', '5e197d2b6f93652b05846d370889d92f050f65d52bf6d1d4af33cb538acda378', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:16', '2024-12-26 20:05:16'),
(8, 'App\\Models\\User', 1, 'API Token', 'dc82c55a3a0048020e8a6f2ca9c184a41b216de02b98ce1a4819e709ec24024b', '[\"*\"]', NULL, NULL, '2024-12-26 20:05:17', '2024-12-26 20:05:17'),
(9, 'App\\Models\\User', 1, 'API Token', '8e553bf0ff032967caedc2dc3f1f7c8ea3cdf9fd0f08f0f5a39cb22e49757432', '[\"*\"]', '2024-12-26 20:27:47', NULL, '2024-12-26 20:05:28', '2024-12-26 20:27:47');

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
('aYH3akWaS34W3b1iQWLsgnBGShaqqf7nqBMaf6wy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR01rN2d6TG1kR1dRT1Fydnp3RHVJbXRiREx4eWZZMWdNNm95UkpkYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735264864),
('GnJLKb6PjW5AffABuFUa8X41qYcjlzftrOHZSAJI', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUhrNDREUlpNellwUFVpUTJQZnJzN3BDRkhuNkg2bW5KMFZ2VFlKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735264712);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') NOT NULL DEFAULT 'Pending',
  `due_date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `due_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Updated Task Title', 'Updated Description', 'Completed', '2025-01-15', 5, '2024-12-26 19:57:10', '2024-12-26 20:23:55'),
(2, 'Cumque et voluptatem ab nesciunt assumenda deleniti ex.', 'Exercitationem est quis doloribus et atque. Consectetur aut omnis eius alias. Recusandae vel qui rerum dolorem qui. Aut facilis delectus et nemo excepturi amet ab.', 'Pending', '2025-07-28', 6, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(3, 'Aperiam voluptatum optio assumenda nobis veritatis voluptatem.', 'Rerum neque enim atque veniam perspiciatis commodi. Ipsam dolorem autem eos labore dignissimos blanditiis asperiores a. Quas architecto hic nostrum at qui aut.', 'Pending', '2025-02-06', 4, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(4, 'Exercitationem reprehenderit porro fugiat earum reiciendis voluptatem repellat.', 'Esse quidem est necessitatibus illo odio. Aut ullam quos assumenda qui quidem velit. Est nemo vero earum voluptate in laudantium.', 'In Progress', '2024-12-28', 3, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(5, 'Aut mollitia quisquam illo eaque quod.', 'Harum modi quo quis reiciendis culpa maiores necessitatibus. Est adipisci necessitatibus quidem aut. Dolore tempore ex incidunt nobis magnam libero voluptas. Consequuntur et vitae qui neque omnis mollitia deleniti ipsam.', 'In Progress', '2025-01-19', 2, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(6, 'Et aut voluptas est necessitatibus nesciunt ea.', 'Consequatur quia suscipit magni beatae inventore voluptatem corporis. Quae voluptate necessitatibus voluptate vitae eveniet maxime animi. Et enim magnam unde nisi tempora.', 'Completed', '2025-07-12', 4, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(7, 'Rem pariatur pariatur est nihil rerum quia.', 'Minus expedita sed illum qui. In quibusdam corporis deleniti nihil quia. Aut tempora id commodi. Numquam consequuntur dolores et eius deserunt.', 'Completed', '2025-08-22', 6, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(8, 'Dignissimos voluptas minus ea qui asperiores.', 'Eos natus sequi soluta. Veniam reiciendis enim rerum. Praesentium itaque enim tempore dolorem.', 'In Progress', '2025-09-08', 3, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(9, 'Dignissimos aut unde assumenda dignissimos.', 'Non quibusdam eveniet voluptate eum dolor odio. Perferendis qui quia dignissimos cum eos dolor. Impedit temporibus illum ipsam vitae. Molestiae quis dolore fuga deserunt assumenda voluptate.', 'Completed', '2025-08-21', 3, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(10, 'Et est nihil et aut officiis culpa est.', 'Perferendis et ea itaque id quia. Ex eligendi et exercitationem error sint. Consectetur iste earum est ad atque.', 'Pending', '2025-07-22', 2, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(11, 'Est reprehenderit nihil voluptate saepe tempora fugit similique soluta.', 'Aut eos aut et quo temporibus. Occaecati minima veritatis voluptatem doloribus aut magni explicabo. Reprehenderit velit ut tempore rerum sint quaerat aut.', 'Completed', '2025-09-07', 4, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(12, 'Laudantium fugit in sequi laboriosam omnis qui delectus.', 'Animi numquam necessitatibus ea molestias rerum consequuntur error. Ad repudiandae officiis dolore consequatur repellat quod.', 'In Progress', '2025-08-31', 2, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(13, 'Enim fuga similique et.', 'Nam et cupiditate velit accusantium officiis. Debitis nemo nostrum magnam tempora eum eum incidunt. Quisquam sint sit aut aliquam cumque consequatur. Tempore ratione iste aperiam earum quibusdam.', 'Completed', '2025-11-19', 5, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(14, 'Totam ipsam asperiores omnis id enim vero.', 'Ut laudantium voluptatem eius. Eos sapiente ducimus sequi repudiandae. At facere non cum sint corporis.', 'Pending', '2025-04-08', 1, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(15, 'Consequuntur beatae ut in libero occaecati ea.', 'Aut harum nesciunt eius in porro alias voluptas. Aliquam eum at explicabo occaecati corporis. Facere omnis sequi quam et. Cumque quia unde autem illo unde.', 'In Progress', '2025-04-13', 5, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(16, 'Est ab voluptas quos itaque soluta officiis sequi.', 'Repellat enim esse earum omnis. Sit eveniet officiis voluptatem ut quam. Occaecati velit consequatur non aut ut voluptatem. Itaque non esse et magnam sed molestiae culpa.', 'Completed', '2025-12-23', 6, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(17, 'Sed inventore laboriosam esse laudantium.', 'Et vel quas repudiandae rerum. Ut ea sed adipisci rem. Aut et est id dignissimos et ullam. Id vel autem sunt aut.', 'In Progress', '2025-09-01', 6, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(18, 'Dicta quaerat aut sit.', 'Quasi corporis adipisci dignissimos. Hic et excepturi molestiae sit perferendis. Atque quia placeat nostrum itaque quisquam dolorum et eos. Vitae perferendis neque a nobis porro.', 'Pending', '2025-11-14', 3, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(19, 'Ut omnis quisquam dolor sit ratione enim.', 'Id illum ut ad veniam omnis. Voluptatum quia repudiandae accusamus aut voluptates. Sed ratione nihil est et corporis. Est debitis est impedit nostrum est distinctio deserunt.', 'In Progress', '2025-10-18', 4, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(20, 'Veniam perferendis quia omnis similique ipsa dolorem.', 'Quia in atque nobis necessitatibus sit. Molestias provident nisi repellat error porro est rem. Enim nulla modi debitis amet. Temporibus sint blanditiis velit est iure dolorem quos.', 'Completed', '2025-04-07', 4, '2024-12-26 19:57:10', '2024-12-26 19:57:10'),
(21, 'Task Title', 'Task Description', 'Pending', '2024-12-31', 1, '2024-12-26 20:19:27', '2024-12-26 20:19:27'),
(23, 'Task Title', 'Task Description', 'Pending', '2024-12-31', 1, '2024-12-26 20:27:47', '2024-12-26 20:27:47');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Sandrine Fritsch IV', 'josefina.hudson@example.org', '2024-12-26 19:57:09', '$2y$12$.NKxbzI4dRpEWEdEP6h8PeFDC9aO7lE7LrcCttMs2s/5MBirebECO', 'EQRCJpSTWv', '2024-12-26 19:57:09', '2024-12-26 19:57:09'),
(2, 'Alfredo O\'Connell', 'erdman.carissa@example.com', '2024-12-26 19:57:09', '$2y$12$.NKxbzI4dRpEWEdEP6h8PeFDC9aO7lE7LrcCttMs2s/5MBirebECO', 'oC31zinM4v', '2024-12-26 19:57:09', '2024-12-26 19:57:09'),
(3, 'Mr. Wiley Kulas', 'bartoletti.victoria@example.org', '2024-12-26 19:57:09', '$2y$12$.NKxbzI4dRpEWEdEP6h8PeFDC9aO7lE7LrcCttMs2s/5MBirebECO', 'MOoOlsWPWi', '2024-12-26 19:57:09', '2024-12-26 19:57:09'),
(4, 'River McCullough', 'morton.shanahan@example.org', '2024-12-26 19:57:09', '$2y$12$.NKxbzI4dRpEWEdEP6h8PeFDC9aO7lE7LrcCttMs2s/5MBirebECO', 'Kpz4gyQ0l4', '2024-12-26 19:57:09', '2024-12-26 19:57:09'),
(5, 'Graciela Cronin', 'lakin.roslyn@example.com', '2024-12-26 19:57:09', '$2y$12$.NKxbzI4dRpEWEdEP6h8PeFDC9aO7lE7LrcCttMs2s/5MBirebECO', 'jGocKkDNZi', '2024-12-26 19:57:09', '2024-12-26 19:57:09'),
(6, 'Test User', 'test@example.com', '2024-12-26 19:57:10', '$2y$12$XmxsHAGFnv79F63iJ1mxtOC2t3OCyjaKnf2HRbb1uF2YocUq9AUFe', 'imQLfGnvwc', '2024-12-26 19:57:10', '2024-12-26 19:57:10');

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
