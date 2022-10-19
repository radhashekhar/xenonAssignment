-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2022 at 04:03 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19735852_bike_selling_web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE `contact_page` (
  `id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `userid`, `email`, `subject`, `description`, `status`, `date`) VALUES
(NULL, 2, 'test@gmail.com', 'subject', 'description', 0, '2022-10-19 17:58:49'),
(NULL, 0, 'xyz@gmail.com', 'sdd', 'hjbj\r\n', 0, '2022-10-19 19:34:10'),
(NULL, 0, 'xyz@gmail.com', 'sdd', 'hjbj\r\n', 0, '2022-10-19 19:34:31'),
(NULL, 0, 'ss@gmail.com', 'jjk', 'jk', 0, '2022-10-19 19:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_status` int(11) DEFAULT 1 COMMENT 'status 1 = active user, status 2 =Inactive user, status 0 = deleted user',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `user_status`, `date`) VALUES
(1, 'rahul', '123', 1, '2022-10-19 18:44:17'),
(2, 'yogesh', '123', 1, '2022-10-19 19:20:03'),
(3, 'ram', '123', 1, '2022-10-19 19:23:45'),
(4, 'xyz', '123', 1, '2022-10-19 19:27:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
