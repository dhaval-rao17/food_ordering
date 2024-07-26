-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 09:35 PM
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
-- Database: `lucknow_tiffin_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('dhaval', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `order_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `bdate` varchar(222) NOT NULL,
  `edate` varchar(222) NOT NULL,
  `tiffin` varchar(222) NOT NULL,
  `food_type` varchar(222) NOT NULL,
  `cost` varchar(222) NOT NULL,
  `total` varchar(222) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `cardnumber` int(20) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `expiry` varchar(100) NOT NULL,
  `cvv` int(5) NOT NULL,
  `pin` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`order_id`, `username`, `bdate`, `edate`, `tiffin`, `food_type`, `cost`, `total`, `ctype`, `cardnumber`, `hname`, `expiry`, `cvv`, `pin`) VALUES
(16, 'am', '22-05-24', '24-05-24', '2', 'veg', '200', '800', 'credit', 2147483647, 'ram', '2022', 123, 3455),
(17, 'am', '22-05-24', '23-05-24', '2', 'veg', '200', '400', 'null', 0, 'null', 'null', 0, 0),
(18, 'am', '22-05-24', '24-05-24', '2', 'veg', '200', '800', 'null', 0, 'null', 'null', 0, 0),
(19, 'am', '22-05-24', '24-05-24', '2', 'veg', '200', '800', 'null', 0, 'null', 'null', 0, 0),
(20, 'am', '22-05-24', '24-05-24', '2', 'veg', '200', '800', 'null', 0, 'null', 'null', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cus_reg`
--

CREATE TABLE `cus_reg` (
  `cname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cus_reg`
--

INSERT INTO `cus_reg` (`cname`, `uname`, `email`, `phone`, `password`, `pincode`, `address`) VALUES
('abhay', 'abh', 'abh@gmail.com', 99878899, '1234', 7897, 'lucknow'),
('aman', 'am', 'aman@gmail.com', 123434, '123', 3455, 'lucknow'),
('Dhaval Pratap Rao', 'dhaval', 'raodhaval89@gmail.co', 2147483647, '123', 27440, 'Kanakpura Tarkulwa Deoria Uttar Pradesh'),
('Shwet', 'sw', 'dhaval@gmail.com', 245637783, '123', 345, 'dfhgjhcfghvgjvjvjhvjh');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `dname` varchar(255) NOT NULL,
  `dusename` varchar(222) NOT NULL,
  `pass` varchar(222) NOT NULL,
  `con` int(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `aadhar` int(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `img` varchar(222) NOT NULL,
  `allot` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`dname`, `dusename`, `pass`, `con`, `email`, `aadhar`, `address`, `img`, `allot`) VALUES
('Dhaval Pratap Rao', 'dh', '1234', 2147483647, 'raodhaval89@gmail.com', 34567, 'Kanakpura Tarkulwa Deoria Uttar Pradesh', 'uploadimage/d3.jpg', '27440'),
('ram', 'ra', '2345', 123456, 'szfgsghs', 23456, 'dsfgs', 'uploadimage/d2.jpg', '3455'),
('Dhaval Pratap Rao', 'styy', '2345', 2147483647, 'raodhaval89@gmail.com', 2345455, 'Kanakpura Tarkulwa Deoria Uttar Pradesh', 'uploadimage/d1.jpg', '3455');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cus_reg`
--
ALTER TABLE `cus_reg`
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD UNIQUE KEY `dusename` (`dusename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
