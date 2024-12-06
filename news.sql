-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 11:25 AM
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
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'Miss', 'Qui minus sit voluptate pariatur quae magni. Et est et eos architecto placeat eum. Dolor quia porro dolores voluptatem qui maxime.', 0, '2024-12-06 04:15:09', '2024-12-06 04:15:09'),
(2, 'Dr.', 'Fuga blanditiis repellendus est qui neque cumque aut earum. Nobis sed eligendi eveniet alias provident. Alias ea dolore nobis harum. Maxime accusantium voluptas dolor nemo aut.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(3, 'Mrs.', 'Architecto sapiente labore necessitatibus. Iure voluptatem quia aliquam qui eos quo voluptas. Distinctio ea laboriosam adipisci optio est eum dolores. Harum rem exercitationem porro in et inventore.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(4, 'Dr.', 'Asperiores voluptatem quia quo dignissimos enim labore asperiores. Deserunt sapiente nobis quam sapiente. Sint unde itaque sed.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(5, 'Prof.', 'Est nihil aliquid quia ut fugiat ipsam. Tempore ducimus sed dolorem est eveniet qui. Tempora corporis molestias qui voluptates voluptatem quaerat in a.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(6, 'Dr.', 'Dicta qui quo nulla non veniam. Quos doloremque eligendi veritatis officia corporis a iste. Consequatur iste consequatur minus rerum.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(7, 'Ms.', 'Est et qui error quae dignissimos. Perspiciatis praesentium eligendi quisquam ut a. Repellendus molestias omnis similique rerum exercitationem. Quis hic aut facilis.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(8, 'Dr.', 'Facilis optio numquam dolorum pariatur. Et doloribus fugiat impedit. Explicabo sequi est voluptatum quidem libero libero aspernatur.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(9, 'Prof.', 'Aut labore provident ipsam sequi sit consectetur sequi ad. Minima vitae tenetur qui ut est doloribus. Assumenda dolorum similique est voluptas atque aut.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(10, 'Dr.', 'Aut aut qui hic. Corporis sunt voluptatem assumenda.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(11, 'Prof.', 'Sapiente sed eos corrupti distinctio voluptas nostrum. Qui in rerum tempora reprehenderit et. Ipsa rerum beatae optio a.', 0, '2024-12-06 04:15:22', '2024-12-06 04:15:22'),
(12, 'new post', 'demo news here', 0, '2024-12-06 04:23:07', '2024-12-06 04:23:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
