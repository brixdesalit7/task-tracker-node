-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2024 at 10:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task-tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbltask`
--

CREATE TABLE `tbltask` (
  `id` int(11) NOT NULL,
  `taskname` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`id`, `taskname`, `status`, `datetime`, `modified_date`) VALUES
(1, 'taskname1', 0, '2024-07-08 09:21:56', NULL),
(2, 'taskname2', 1, '2024-07-08 09:24:18', '2024-07-08 09:25:34'),
(3, 'taskname3', 1, '2024-07-08 09:25:16', NULL),
(4, 'taskname4', 1, '2024-07-08 09:25:16', NULL),
(5, 'taskname5', 1, '2024-07-08 09:25:16', NULL),
(6, 'taskname6', 1, '2024-07-08 09:25:16', NULL),
(7, 'RTSFAS', 0, '2024-07-08 15:34:29', NULL),
(8, 'Tasjname', 0, '2024-07-08 15:55:17', NULL),
(9, 'R23423423421', 0, '2024-07-08 15:55:57', NULL),
(10, 'taskname13', 0, '2024-07-08 16:20:29', NULL),
(11, '3423423', 0, '2024-07-08 16:34:59', NULL),
(12, 'TEST', 0, '2024-07-08 16:36:37', NULL),
(13, 'test22', 0, '2024-07-08 16:48:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbltask`
--
ALTER TABLE `tbltask`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbltask`
--
ALTER TABLE `tbltask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
