-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2025 at 08:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` enum('high','medium','low') NOT NULL,
  `deadlineDate` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`_id`, `title`, `description`, `priority`, `deadlineDate`, `status`, `createDate`, `updateDate`) VALUES
(2, 'gagagagagag', 'fafafafafafaf', 'medium', '2025-04-22 00:00:00', 0, '2025-04-22 08:58:09', '2025-04-22 09:01:57'),
(3, 'hahahahahaha', 'ggggggggggg', 'medium', '2025-04-22 00:00:00', 0, '2025-04-22 08:58:21', '2025-04-22 10:27:37'),
(4, 'fafafafafa', 'jajajaajaaajaj', 'medium', '2025-04-23 00:00:00', 1, '2025-04-22 08:59:00', '2025-04-22 08:59:00'),
(5, 'ukk', 'ukk', 'high', '2025-04-22 00:00:00', 1, '2025-04-22 10:25:33', '2025-04-22 10:25:33'),
(6, 'kakaka', 'fafafa', 'low', '2025-04-22 00:00:00', 1, '2025-04-22 10:26:33', '2025-04-22 10:26:33'),
(7, 'h', 'bbb', 'medium', '2025-04-15 00:00:00', 0, '2025-04-22 10:26:56', '2025-04-22 10:35:57'),
(8, '1', '1', 'medium', '2025-04-25 00:00:00', 1, '2025-04-22 10:34:46', '2025-04-22 10:34:59'),
(9, 'dsadasd', 'sdasdasdasda', 'medium', '2025-04-22 00:00:00', 1, '2025-04-22 11:38:14', '2025-04-22 11:38:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
