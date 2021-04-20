-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 04:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Suraj', 'Tejas', 10000, '2021-04-18 13:04:29'),
(2, 'Shreyas', 'Suraj', 10000, '2021-04-18 13:17:57'),
(3, 'Priya', 'Shanmuk', 5000, '2021-04-18 13:25:37'),
(4, 'Jai', 'Ashwini', 2500, '2021-04-18 17:39:44'),
(5, 'Sonu', 'Suraj', 20000, '2021-04-19 13:41:56'),
(6, 'Shreyas', 'Sameer', 2000, '2021-04-19 13:49:53'),
(7, 'Josna', 'Nikhil', 3000, '2021-04-19 13:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Shreyas', 'shreyas@gmail.com', 36000),
(2, 'Ashwini', 'ashwini@gmail.com', 32500),
(3, 'Shanmuk', 'shanmuk@gmail.com', 45000),
(4, 'Priya', 'priya@gmail.com', 45000),
(5, 'Arjun', 'arjun@gmail.com', 40000),
(6, 'Rajesh', 'rajesh@gmail.com', 30000),
(7, 'Sameer', 'sameer@gmail.com', 54000),
(8, 'Josna', 'josna@gmail.com', 34000),
(9, 'Nikhil', 'nikhil@gmail.com', 36000),
(10, 'Tejas', 'tejas@gmail.com', 60000),
(11, 'Suraj', 'surajb@gmail.com', 50000),
(12, 'Jai', 'jai@gmail.com', 37500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
