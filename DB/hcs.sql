-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 09:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL COMMENT 'Primary key',
  `BillID` varchar(50) NOT NULL,
  `PaymentDate` varchar(15) NOT NULL,
  `PaymentAmount` double NOT NULL,
  `PaymentType` varchar(20) NOT NULL,
  `PaymentDescription` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `BillID`, `PaymentDate`, `PaymentAmount`, `PaymentType`, `PaymentDescription`) VALUES
(67, 'B5555', '0000-00-00', 1200, 'cash', 'passed'),
(68, 'B007', '0000-00-00', 1000, 'cash', 'fail'),
(69, 'B009', '2019-08-08', 7000, 'cash', 'fail'),
(70, 'B890', '2019', 20000, 'debit', 'passed'),
(71, 'b111', '2010', 4500, 'cash', 'failed'),
(73, 'B009', '2020-05-28', 2000, 'cash-df', 'failed+man'),
(74, 'B80028', '2020-05-28', 23000, 'cashed', 'hii'),
(75, 'B5888', '2020-05-19', 60000, 'cash', 'passed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
