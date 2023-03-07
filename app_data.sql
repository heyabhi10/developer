-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 10:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `user_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `detail` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`user_id`, `email`, `first_name`, `last_name`, `phone`, `detail`, `password`) VALUES
(1, 'admin@gmail.com', 'monali', 'khairnra', 1234567890, 'abc xyz', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer_data`
--

CREATE TABLE `customer_data` (
  `cust_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_data`
--

INSERT INTO `customer_data` (`cust_id`, `first_name`, `email`, `password`, `phone`, `last_name`) VALUES
(1, 'Monali', 'monali@gmail.com', '12345', 1234567890, ''),
(2, 'Monali', 'm@gmail.com', 'm1234', 0, 'Khairnar'),
(3, '', '', '', 0, ''),
(4, '', '', '', 0, ''),
(5, '', '', '', 0, ''),
(6, 'Monali', 'm@gmail.com', 'm1234', 1234567890, 'Khairnra'),
(7, 'Tejas', 't@gmail.com', 't1234', 1234567890, 'xyz'),
(8, 'Mona', 'mona@gmail.com', 'mona123', 2147483647, 'Khairnar');

-- --------------------------------------------------------

--
-- Table structure for table `employee_data`
--

CREATE TABLE `employee_data` (
  `emp_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `phase` varchar(50) NOT NULL,
  `material_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_data`
--

INSERT INTO `employee_data` (`emp_id`, `employee_name`, `phase`, `material_name`) VALUES
(7, 'test Employee', '6', 'bvc'),
(8, 'fffggg', '8', 'yyy'),
(9, 'FGeorge', '6', 'test'),
(10, 'Tejas', '8', 'test wires'),
(12, 'Johnny', '5', 'ty'),
(13, 'Ayesha', '8', 'Mat'),
(14, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `material_data`
--

CREATE TABLE `material_data` (
  `id` int(10) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `customer_name` text NOT NULL,
  `unique_id` int(50) NOT NULL,
  `phase` varchar(50) NOT NULL,
  `error` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material_data`
--

INSERT INTO `material_data` (`id`, `material_name`, `quantity`, `customer_name`, `unique_id`, `phase`, `error`) VALUES
(3, 'Test Material', '4', 'Test Details', 1234, '', ''),
(5, 'Test Material', '70', 'Monali', 456, '', ''),
(6, 'Test Material', '4', 'Test', 1234, '', ''),
(7, 'gauge', '56', 'khairnar', 456, '', ''),
(8, 'test mat', '57', 'mnop', 45, '', ''),
(9, 'test material', '78', 'abc', 90, '', ''),
(10, 'Wires', '20', 'george', 567, '', ''),
(11, 'pipe', '10', 'ryan', 678, '', 'error'),
(12, 'Test Material', '4', 'Test', 1234, '', ''),
(13, 'Test Wires', '20', 'ABC XYZ', 67, '78', ''),
(14, 'Test Material', '4', 'Test', 1234, '', ''),
(15, 'Test Material', '4', 'Test', 1234, '', ''),
(16, 'Test Material', '4', 'Test', 1234, '', ''),
(17, 'Test Material', '4', 'Test', 1234, '5', ''),
(18, 'Test Pipes', '10', 'Monali', 1234, '5', ''),
(19, 'Ware', '19', 'Abc xyz', 5, '', 'error'),
(20, 'Test Material', '4', 'ABc', 67, '78', ''),
(21, 'jhjh', 'gh', 'hjhj', 0, '2', ''),
(22, 'Test WIres', '100', 'monali', 456, '', ''),
(23, 'test metal', '78', 'monali', 67, '2', ''),
(24, 'test gauge', '89', 'monali', 9, '2', ''),
(25, 'material qr', '80', 'monali', 67, '2', ''),
(26, 'ydfuigog', 'dyuig', 'uxicig', 9, '2', ''),
(27, 'ghjj', 'fjgkgk', 'fikv', 7, '2', ''),
(28, 'dyfj', 'udjf', 'udif', 6, '2', ''),
(29, 'tidyooy', 'tzkxyl', 'otzylx', 66, '2', ''),
(30, 'otdotd', 'a5o5eo', 'tsosyo', 6, '2', ''),
(31, 'Test Wires', '10', 'Monali', 89, '2', ''),
(32, 'Test Pipes', '10', 'Monali', 578, '', 'Error');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `user_name`, `phone`, `email`, `password`, `phase`) VALUES
(3, 'abc', 1234567890, 'abc@gmail.com', '12345', 'Phase1'),
(4, 'Monali', 1234567890, 'monali@gmail.com', 'monali', '3'),
(5, 'xyz', 1234567890, 'xyz@gmail.com', 'xyz123', '7'),
(6, 'Tejas', 1234567890, 't@gmail.com', 't1234', '2'),
(7, '', 0, '', '', '7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `customer_data`
--
ALTER TABLE `customer_data`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employee_data`
--
ALTER TABLE `employee_data`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `material_data`
--
ALTER TABLE `material_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data`
--
ALTER TABLE `admin_data`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_data`
--
ALTER TABLE `customer_data`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_data`
--
ALTER TABLE `employee_data`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `material_data`
--
ALTER TABLE `material_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
