-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 02:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_16_083821_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `song_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Themusic.themusic.albumcover.jpg/220px-Themusic.themusic.albumcover.jpg',
  `english` tinyint(1) DEFAULT 0,
  `hindi` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `artist`, `song_image_url`, `english`, `hindi`, `created_at`, `updated_at`) VALUES
(1, 'Summer of 69', 'Bryan Adams', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Bryan_Adams_-_Summer_of_%2769.jpg/220px-Bryan_Adams_-_Summer_of_%2769.jpg', 1, 0, '2020-03-16 03:33:45', '2020-03-16 03:33:45'),
(2, 'Shape of You', 'Ed Sheeran', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png/220px-Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png', 1, 0, '2020-03-16 03:36:21', '2020-03-16 03:36:21'),
(3, 'Closer', 'The Chainsmokers', 'https://upload.wikimedia.org/wikipedia/en/a/a5/Closer_%28featuring_Halsey%29_%28Official_Single_Cover%29_by_The_Chainsmokers.png', 1, 0, '2020-03-16 06:49:55', '2020-03-16 06:49:55'),
(4, 'Cheap Thrills', 'Sia', 'https://i1.sndcdn.com/artworks-000174898618-vsdrz9-t500x500.jpg', 1, 0, '2020-03-16 06:55:29', '2020-03-16 06:57:53'),
(5, 'Girls Like You', 'Maroon 5', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/57/Girls_like_You_cover.png/220px-Girls_like_You_cover.png', 1, 0, '2020-03-16 06:59:41', '2020-03-16 06:59:41'),
(6, 'Ghungroo', 'Arijit Singh', 'https://1.bp.blogspot.com/-vz1g2lU9DRc/XX_LOp8phLI/AAAAAAAAA8U/9fSy-85VpjER94QoLSjOkUR_HiQgIa1zQCNcBGAsYHQ/s1600/Ghungroo-Lyrics-Full-Song-Arijit-Singh-shilpa-Rao-War-2019.jpeg', 0, 1, '2020-03-16 07:02:35', '2020-03-16 07:02:35');

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
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
