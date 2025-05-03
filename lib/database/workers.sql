-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 05:06 PM
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
-- Database: `wtms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `full_name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'Kim Tae Hyung', 'vante@example.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '01112301230', 'No. 1 Jalan Ampang'),
(2, 'Jeon Jung Kook', 'kookie@example.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '012901901', 'No. 2 Jalan Kuching'),
(3, 'Tan Pei Yong', 'jemins2001@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0110291688', 'No. 3 Jalan Klang'),
(4, 'Kim Seok Jin', 'jinn12@example.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', '0161204120', 'No. 4 Jalan Genting'),
(5, 'Park Ji Min', 'jm.park@example.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', '0181013101', 'No. 5 Jalan Imbi'),
(6, 'Kim Nam Joon', 'rm@example.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', '0120912123', 'No. 6 Jalan Tun Razak'),
(7, 'Min Yoon Gi', 'agustd@example.com', '356a192b7913b04c54574d18c28d46e6395428ab', '0181230309', 'No. 7 Jalan Loke Yew'),
(8, 'Jung Ho Seok', 'jhoooope@example.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0172220218', 'No. 8 Jalan Cheras'),
(9, 'Ivan Teh', 'ivan.teh@example.com', 'c6490f67d4f56bb4891e847583660deff479e50d', '0123456789', 'No. 9 Jalan Bangsar'),
(10, 'Jasmine Yap', 'jasmine.yap@example.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '0123456790', 'No. 10 Jalan Damansara'),
(11, 'Lee Hee Seung', 'hs@example.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0171005123', 'No. 10 Jalan Busan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
