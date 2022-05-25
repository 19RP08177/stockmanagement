-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 08:03 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(23) NOT NULL,
  `lastname` varchar(23) NOT NULL,
  `username` varchar(67) NOT NULL,
  `password` varchar(78) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'uwayezu', 'violete', 'vio', '123');

-- --------------------------------------------------------

--
-- Table structure for table `item_tbl`
--

CREATE TABLE `item_tbl` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `cost` int(20) NOT NULL,
  `enter_date` date NOT NULL,
  `serial_number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_tbl`
--

INSERT INTO `item_tbl` (`item_id`, `item_name`, `cost`, `enter_date`, `serial_number`) VALUES
(4, 'desktop', 2000000, '2022-05-25', 'p265y768t'),
(7, 'router', 12000, '2022-05-20', '4356gf456h'),
(8, 'switch', 2000000, '2022-05-28', 'weqwsd23fg');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `p_id` int(1) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `phonenumber` varchar(23) NOT NULL,
  `email` varchar(90) NOT NULL,
  `borrowdate` varchar(23) NOT NULL,
  `item_id` varchar(34) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`p_id`, `fullname`, `phonenumber`, `email`, `borrowdate`, `item_id`, `status`) VALUES
(7, 'violette', '2345678', 'soso@gmail.com', '2022-05-26', '4', 1),
(8, 'ange UWIMANA', '0781990789', 'ange@gmail.com', '2022-05-26', '4', 0),
(9, 'pacc', '0789876543', 'fdhstrydhh@gmail.com', '2022-05-21', '8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_keeper`
--

CREATE TABLE `store_keeper` (
  `id` int(11) NOT NULL,
  `firstname` varchar(34) NOT NULL,
  `lastname` varchar(34) NOT NULL,
  `username` varchar(89) NOT NULL,
  `password` varchar(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_keeper`
--

INSERT INTO `store_keeper` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'uwayezu', 'violete', 'vio', '123'),
(2, 'pascasie', 'tuyisenge', 'pacc', '123');

-- --------------------------------------------------------

--
-- Table structure for table `store_login`
--

CREATE TABLE `store_login` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tbl`
--
ALTER TABLE `item_tbl`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `store_keeper`
--
ALTER TABLE `store_keeper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_tbl`
--
ALTER TABLE `item_tbl`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `p_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_keeper`
--
ALTER TABLE `store_keeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
