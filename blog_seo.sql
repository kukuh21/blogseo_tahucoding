-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 07:03 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_seo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Berita', 'berita', NULL, NULL),
(2, 'Puisi Terindah', 'puisi-terindah', NULL, '2020-03-07 06:28:22'),
(3, 'Sendal', 'sendal', '2020-03-03 16:07:44', '2020-03-03 16:07:44'),
(4, 'Sepatu', 'sepatu', '2020-03-03 16:08:37', '2020-03-03 16:08:37'),
(6, 'Vue JS', 'vue-js', '2020-03-04 17:08:57', '2020-03-04 17:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_03_130802_create_category_table', 1),
(4, '2020_03_07_133304_create_tags_table', 2),
(5, '2020_03_07_140434_create_posts_table', 3),
(6, '2020_03_11_231716_add_new_slug_posts_table', 4),
(7, '2020_03_12_234153_create_post_tag_table', 5),
(8, '2020_03_12_234153_create_posts_tag_table', 6),
(9, '2020_03_12_234153_create_posts_tags_table', 7),
(10, '2020_03_15_035136_tambah_softdeletes', 8),
(11, '2020_03_17_005515_tambah_field_user_post', 9),
(12, '2020_03_18_132244_add_tipe_user', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `slug`, `gambar`, `created_at`, `updated_at`, `deleted_at`, `users_id`) VALUES
(3, 'Buku Aku', 2, 'Aku Membuat Buku', 'buku-aku', 'public/uploads/posts/1583980625logo.jpg', '2020-03-11 19:37:05', '2020-03-18 16:54:15', '2020-03-18 16:54:15', 1),
(4, 'Coba Tags', 3, 'Ada', 'coba-tags', 'public/uploads/posts/15840698442.PNG', '2020-03-12 20:24:04', '2020-03-18 16:54:19', '2020-03-18 16:54:19', 1),
(6, 'Buku Aku', 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit libero reprehenderit a dolore vitae aperiam eveniet necessitatibus numquam quos, maxime quo hic eum dolor beatae! Quas distinctio incidunt dolore molestias!', 'buku-aku', 'public/uploads/posts/15840822471_BCZkmZR1_YzDZy22Vn4uUw.png', '2020-03-12 23:50:47', '2020-03-18 16:54:26', NULL, 1),
(9, 'xx', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit libero reprehenderit a dolore vitae aperiam eveniet necessitatibus numquam quos, maxime quo hic eum dolor beatae! Quas distinctio incidunt dolore molestias!', 'xx', 'public/uploads/posts/15840909803.PNG', '2020-03-13 02:16:20', '2020-03-18 16:54:33', NULL, 1),
(10, 'dsfadc', 2, 'sdasd', 'dsfadc', 'public/uploads/posts/15844083262.PNG', '2020-03-16 18:25:26', '2020-03-16 18:25:26', NULL, 1),
(11, 'ad', 2, 'ad', 'ad', 'public/uploads/posts/1584408702like.png', '2020-03-16 18:31:42', '2020-03-16 18:31:42', NULL, 2),
(12, 'CK Editor', 1, '<blockquote>\r\n<p><strong>Membaca </strong><em>adalah</em> <s>hal </s>saya sangat sukai <big>dari kecil</big></p>\r\n</blockquote>', 'ck-editor', 'public/uploads/posts/15845971761.PNG', '2020-03-18 22:52:56', '2020-03-18 22:52:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2020-03-13 08:49:04', '2020-03-13 08:49:04'),
(2, 9, 1, '2020-03-13 09:16:20', '2020-03-13 09:16:20'),
(3, 9, 2, '2020-03-13 09:16:20', '2020-03-13 09:16:20'),
(4, 9, 3, '2020-03-13 09:16:20', '2020-03-13 09:16:20'),
(5, 10, 2, '2020-03-17 01:25:26', '2020-03-17 01:25:26'),
(6, 11, 1, '2020-03-17 01:31:42', '2020-03-17 01:31:42'),
(7, 12, 2, '2020-03-19 05:52:56', '2020-03-19 05:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hard', 'hard', '2020-03-07 06:55:06', '2020-03-07 07:01:55'),
(2, 'Baca', 'baca', '2020-03-07 06:56:10', '2020-03-07 07:01:48'),
(3, 'Dia', 'dia', '2020-03-12 20:10:50', '2020-03-12 20:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipe` enum('1','0') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `tipe`) VALUES
(1, 'Kukuh Aprianto', 'kaprianto@gmail.com', NULL, '$2y$10$gFPZnZ3gz4HW50fKe.IksuMSJsBGX9fxmgu0hLRzXUdwbBaZjIKp6', NULL, '2020-03-16 16:20:55', '2020-03-16 16:20:55', '1'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$hN0OF1CRyHs/dNxt.mWGr.DJ4Pc1VQAt.k16VNCYtcLyq/omfbrn6', NULL, '2020-03-16 18:31:02', '2020-03-16 18:31:02', '0'),
(3, 'Ria', 'ria@gmail.com', NULL, '$2y$10$xFmJYTaLY8AE1ODciVhMveNAFzig/UlfuLghHKLmMUTpy0RI.pRay', NULL, '2020-03-18 06:27:22', '2020-03-18 06:39:02', '0'),
(4, 'coba', 'coba@gmail.com', NULL, '$2y$10$6yd6qyKqiJaD/qQnCG1kH.IkwOY.Q5ot21Ofv8mWHWPqQRFtYkGEm', NULL, '2020-03-18 06:32:15', '2020-03-18 06:32:15', '1'),
(6, 'kaka', 'daffa@gmail.com', NULL, '$2y$10$smekOVADnt6IUaQV3tpke.Q1kXFLVs4JpTRl9TDTjneLRxKMPpmaK', NULL, '2020-03-18 06:38:29', '2020-03-18 06:38:29', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
