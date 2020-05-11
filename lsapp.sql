-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 04:39 PM
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
  `song_source_url` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `artist`, `song_image_url`, `english`, `hindi`, `song_source_url`, `created_at`, `updated_at`) VALUES
(1, 'Summer of 69', 'Bryan Adams', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Bryan_Adams_-_Summer_of_%2769.jpg/220px-Bryan_Adams_-_Summer_of_%2769.jpg', 1, 0, 'https://cs1.mp3.pm/listen/83967214/UXVjU2ZpWlBnR1V0WmVIS0ZxMjNNeERvWkpqSzNVY1ZNQjNwRkIyNGtaUFZuRE0rcTdJWkx1SjM0ajRlL1NEWXdOUmNKODhEREU3bTdQLzdFNW1uQXdidUtLVmVtUXR0SjlvSXVjQzZ0Rnp1NHRud29DVkpOdXBleTdsN3BCRGg/Bryan_Adams_-_Summer_Of_69_(mp3.pm).mp3', '2020-03-16 03:33:45', '2020-03-16 03:33:45'),
(2, 'Shape of You', 'Ed Sheeran', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png/220px-Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png', 1, 0, 'https://s1.mp3fast.me/0/download.php?id=409ce899f7913d2b844b521cf6da65d6', '2020-03-16 03:36:21', '2020-03-16 03:36:21'),
(3, 'Closer', 'The Chainsmokers', 'https://upload.wikimedia.org/wikipedia/en/a/a5/Closer_%28featuring_Halsey%29_%28Official_Single_Cover%29_by_The_Chainsmokers.png', 1, 0, 'https://cs1.mp3.pm/listen/103003493/UXVjU2ZpWlBnR1V0WmVIS0ZxMjNNeERvWkpqSzNVY1ZNQjNwRkIyNGtaT2NBaGcra3NsOWdJcUdBYllEclpQd0RZZ2dWTEpHY3UzSFZQVDJsTWNsdnVKalk5NENPT0l6d21vcExzWTBrQ2ZadHlxWnpHc280d3h2dFpOYmxISTM/Chainsmokers_Halsey_-_Closer_(mp3.pm).mp3', '2020-03-16 06:49:55', '2020-03-16 06:49:55'),
(4, 'Cheap Thrills', 'Sia', 'https://i1.sndcdn.com/artworks-000174898618-vsdrz9-t500x500.jpg', 1, 0, 'https://s1.mp3fast.me/0/download.php?id=f3f085e21438697894aa5f8a26c5c9c6', '2020-03-16 06:55:29', '2020-03-16 06:57:53'),
(5, 'Girls Like You', 'Maroon 5', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/57/Girls_like_You_cover.png/220px-Girls_like_You_cover.png', 1, 0, 'https://opradre.com/wp-content/uploads/2019/05/Girls-like-you.mp3', '2020-03-16 06:59:41', '2020-03-16 06:59:41'),
(6, 'Ghungroo', 'Arijit Singh,Shilpa Rao', 'https://1.bp.blogspot.com/-vz1g2lU9DRc/XX_LOp8phLI/AAAAAAAAA8U/9fSy-85VpjER94QoLSjOkUR_HiQgIa1zQCNcBGAsYHQ/s1600/Ghungroo-Lyrics-Full-Song-Arijit-Singh-shilpa-Rao-War-2019.jpeg', 0, 1, 'https://cs1.mp3.pm/listen/163202710/UXVjU2ZpWlBnR1V0WmVIS0ZxMjNNeERvWkpqSzNVY1ZNQjNwRkIyNGtaT09hd1FwSFlNb1hjRHpCeDBkUk8yRTJ1aFF3UlIwWE9Mdkx0UmJxNG5CSFRLcEtaRFVhYVpHVkVVZTlFamZSV1hGNUsrYzlsUXlLUWgyZTBPQXQ5WHQ/Arijit_Singh_Shilpa_Rao_-_Ghungroo_-_WAR_2019_(mp3.pm).mp3', '2020-03-16 07:02:35', '2020-03-16 07:02:35'),
(7, 'Lost In Your Light', 'Dua Lipa(feat. Miguel)', 'https://img.discogs.com/lVeYkgspRsyriNfgizNZDB1GE4M=/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-12762388-1541453589-9795.jpeg.jpg', 1, 0, 'https://cs1.mp3.pm/listen/77040035/WXlDZ3pnRzZlM3hFekRTUUc3VG1BaXVhcUwvVEttbXFCZXowTU5ESHYrMExhT3ZDQXEvcDRnQ1RMbW1TOWFidkpqSmdUcmRtYk9LV2FxYVNMT1B3NFRoRXlLUlhtNDJwUzlVZS8rK281a1pNNEY0SGgvb3BjbWozYkhWR2xiV0Y/Dua_Lipa_-_Lost_In_Your_Light_feat._Miguel_(mp3.pm).mp3', '2020-03-21 12:07:39', '2020-03-21 12:07:39'),
(8, 'Tum Hi Ho', 'Arijit Singh', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4f/Aashiqui_2.jpeg/220px-Aashiqui_2.jpeg', 0, 1, 'https://cs1.mp3.pm/listen/724026/WXlDZ3pnRzZlM3hFekRTUUc3VG1BaXVhcUwvVEttbXFCZXowTU5ESHYrMVY2ejhBNTltOWVDdmY3ckEvZWY4b25MM2hNUGd1MkE4ZFk3N1JnQjdDMzFhTkdMMGtSUWtqYzh4d1U2QS85NThBckhkVUttV2FlYWdRcmgzV3BmNFM/Arijit_Singh_-_Tum_Hi_Ho_(mp3.pm).mp3', '2020-03-21 12:08:12', '2020-03-21 12:08:12'),
(9, 'Yeh Dooriyan', 'Mohit Chauhan', 'https://a10.gaanacdn.com/gn_img/albums/D0PKLrWGl9/0PKLDnzwKG/size_xxl_1581694054.webp', 0, 1, 'https://cs1.mp3.pm/listen/30481792/WXlDZ3pnRzZlM3hFekRTUUc3VG1BaXVhcUwvVEttbXFCZXowTU5ESHYrMUJiZjB2UFlSUEJGZ0w4WHpDWEFTTFBFUDRyQ0FBZW5EQ2ttdVlKVzB0UTJxdjRWY25tc1lwV3dHSEFwYXpqUXVReFJrMElQNjZrNGNRcFMyQ01IazE/Mohit_Chauhan_-_Yeh_Dooriyan_(mp3.pm).mp3', '2020-03-21 12:10:56', '2020-03-21 12:10:56'),
(10, 'Aankh Maare', 'Neha Kakkar,Mika Singh,Kumar Sanu', 'https://c.saavncdn.com/453/Aankh-Marey-From-Simmba-Hindi-2018-20181206064340-500x500.jpg', 0, 1, 'https://pagalsong.in/uploads/systemuploads/mp3/Simmba/Aankh Marey - Simmba 128 Kbps.mp3', '2020-03-21 12:13:25', '2020-03-21 12:13:25'),
(11, 'Bom Diggy Diggy', 'Zack Knight,Jasmin Walia', 'https://a10.gaanacdn.com/images/song/87/23046587/crop_175x175_1518091053.jpg', 0, 1, 'https://pagalsong.in/uploads/systemuploads/mp3/Sonu Ke Titu Ki Sweety/Bom Diggy Diggy (Sonu Ke Titu Ki Sweety) 128 Kbps.mp3', '2020-03-21 12:22:02', '2020-03-21 12:22:02'),
(12, 'Makhna', 'Yo Yo Honey Singh(ft. Neha Kakkar)', 'https://a10.gaanacdn.com/images/song/96/24880696/crop_175x175_1545388310.jpg', 0, 1, 'https://pagalsong.in/uploads/systemuploads/mp3/Makhna/Makhna - Yo Yo Honey Singh 128 Kbps.mp3', '2020-03-21 12:23:01', '2020-03-21 12:23:01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
