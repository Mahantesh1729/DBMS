-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2021 at 05:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `COLLEGE DATABASE`
--

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `USN` char(10) NOT NULL,
  `SNAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `PHONE` bigint(20) NOT NULL,
  `GENDER` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`USN`, `SNAME`, `ADDRESS`, `PHONE`, `GENDER`) VALUES
('1RN13CS020', 'AKSHAY', 'BELAGAVI', 8877881122, 'M'),
('1RN13CS062', 'SANDHYA', 'BENGALURU', 7722829912, 'F'),
('1RN13CS066', 'SUPRIYA', 'MANGALURU', 8877881122, 'F'),
('1RN13CS091', 'TEESHA', 'BENGALURU', 7712312312, 'F'),
('1RN14CS010', 'ABHAY', 'BENGALURU', 9900211201, 'M'),
('1RN14CS025', 'ASMI', 'BENGALURU', 7894737377, 'F'),
('1RN14CS032', 'BHASKAR', 'BENGALURU', 9923211099, 'M'),
('1RN15CS011', 'AJAY', 'TUMKUR', 9845091341, 'M'),
('1RN15CS029', 'CHITRA', 'DAVANGERE', 7696772121, 'F'),
('1RN15CS045', 'JEEVA', 'BELLARY', 9944850121, 'M'),
('1RN15CS091', 'SANTOSH', 'MANGALURU', 8812332201, 'M'),
('1RN16CS045', 'ISMAIL', 'KALBURGI', 9900232201, 'M'),
('1RN16CS088', 'SAMEERA', 'SHIMOGA', 9905542212, 'F'),
('1RN16CS122', 'VINAYAKA', 'CHIKAMAGALUR', 8800880011, 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`USN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;