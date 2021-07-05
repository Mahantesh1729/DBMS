-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2021 at 05:55 AM
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
-- Table structure for table `CLASS`
--

CREATE TABLE `CLASS` (
  `USN` varchar(10) NOT NULL,
  `SSID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CLASS`
--

INSERT INTO `CLASS` (`USN`, `SSID`) VALUES
('1RN13CS020', 'CSE8A'),
('1RN13CS062', 'CSE8A'),
('1RN13CS066', 'CSE8B'),
('1RN13CS091', 'CSE8C'),
('1RN14CS010', 'CSE7A'),
('1RN14CS025', 'CSE7A'),
('1RN14CS032', 'CSE7A'),
('1RN15CS011', 'CSE4A'),
('1RN15CS029', 'CSE4A'),
('1RN15CS045', 'CSE4B'),
('1RN15CS091', 'CSE4C'),
('1RN16CS045', 'CSE3A'),
('1RN16CS088', 'CSE3B'),
('1RN16CS122', 'CSE3C');

-- --------------------------------------------------------

--
-- Table structure for table `IAMARKS`
--

CREATE TABLE `IAMARKS` (
  `USN` char(10) NOT NULL,
  `SUBCODE` char(10) NOT NULL,
  `SSID` char(10) NOT NULL,
  `TEST1` int(11) NOT NULL,
  `TEST2` int(11) NOT NULL,
  `TEST3` int(11) NOT NULL,
  `FINALIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `IAMARKS`
--

INSERT INTO `IAMARKS` (`USN`, `SUBCODE`, `SSID`, `TEST1`, `TEST2`, `TEST3`, `FINALIA`) VALUES
('1RN13CS091', '10CS81', 'CSE8C', 15, 16, 18, NULL),
('1RN13CS091', '10CS82', 'CSE8C', 12, 19, 14, NULL),
('1RN13CS091', '10CS83', 'CSE8C', 19, 15, 20, NULL),
('1RN13CS091', '10CS84', 'CSE8C', 20, 16, 19, NULL),
('1RN13CS091', '10CS85', 'CSE8C', 15, 15, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SEMSEC`
--

CREATE TABLE `SEMSEC` (
  `SSID` varchar(10) NOT NULL,
  `SEM` int(11) NOT NULL,
  `SEC` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SEMSEC`
--

INSERT INTO `SEMSEC` (`SSID`, `SEM`, `SEC`) VALUES
('CSE1A', 1, 'A'),
('CSE1B', 1, 'B'),
('CSE1C', 1, 'C'),
('CSE2A', 2, 'A'),
('CSE2B', 2, 'B'),
('CSE2C', 2, 'C'),
('CSE3A', 3, 'A'),
('CSE3B', 3, 'B'),
('CSE3C', 3, 'C'),
('CSE4A', 4, 'A'),
('CSE4B', 4, 'B'),
('CSE4C', 4, 'C'),
('CSE5A', 5, 'A'),
('CSE5B', 5, 'B'),
('CSE5C', 5, 'C'),
('CSE6A', 6, 'A'),
('CSE6B', 6, 'B'),
('CSE6C', 6, 'C'),
('CSE7A', 7, 'A'),
('CSE7B', 7, 'B'),
('CSE7C', 7, 'C'),
('CSE8A', 8, 'A'),
('CSE8B', 8, 'B'),
('CSE8C', 8, 'C');

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

-- --------------------------------------------------------

--
-- Table structure for table `SUBJECT`
--

CREATE TABLE `SUBJECT` (
  `SUBCODE` varchar(10) NOT NULL,
  `TITLE` varchar(20) NOT NULL,
  `SEM` int(11) NOT NULL,
  `CREDITS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SUBJECT`
--

INSERT INTO `SUBJECT` (`SUBCODE`, `TITLE`, `SEM`, `CREDITS`) VALUES
('10CS71', 'OOAD', 7, 4),
('10CS72', 'ECS', 7, 4),
('10CS73', 'PTW', 7, 4),
('10CS74', 'DWDM', 7, 4),
('10CS75', 'JAVA', 7, 4),
('10CS76', 'SAN', 7, 4),
('10CS81', 'ACA', 8, 4),
('10CS82', 'SSM', 8, 4),
('10CS83', 'NM', 8, 4),
('10CS84', 'CC', 8, 4),
('10CS85', 'PW', 8, 4),
('15CS31', 'M3', 3, 4),
('15CS32', 'ADE', 3, 4),
('15CS33', 'DSA', 3, 4),
('15CS34', 'CO', 3, 4),
('15CS35', 'USP', 3, 3),
('15CS36', 'DMS', 3, 3),
('15CS41', 'M4', 4, 4),
('15CS42', 'SE', 4, 4),
('15CS43', 'DAA', 4, 4),
('15CS44', 'MPMC', 4, 4),
('15CS45', 'OOC', 4, 3),
('15CS46', 'DC', 4, 3),
('15CS51', 'ME', 5, 4),
('15CS52', 'CN', 5, 4),
('15CS53', 'DBMS', 5, 4),
('15CS54', 'ATC', 5, 4),
('15CS55', 'JAVA', 5, 3),
('15CS56', 'AI', 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASS`
--
ALTER TABLE `CLASS`
  ADD KEY `USN` (`USN`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `IAMARKS`
--
ALTER TABLE `IAMARKS`
  ADD KEY `USN` (`USN`),
  ADD KEY `SUBCODE` (`SUBCODE`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `SEMSEC`
--
ALTER TABLE `SEMSEC`
  ADD PRIMARY KEY (`SSID`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`USN`);

--
-- Indexes for table `SUBJECT`
--
ALTER TABLE `SUBJECT`
  ADD PRIMARY KEY (`SUBCODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CLASS`
--
ALTER TABLE `CLASS`
  ADD CONSTRAINT `CLASS_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `STUDENT` (`USN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CLASS_ibfk_2` FOREIGN KEY (`SSID`) REFERENCES `SEMSEC` (`SSID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IAMARKS`
--
ALTER TABLE `IAMARKS`
  ADD CONSTRAINT `IAMARKS_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `STUDENT` (`USN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IAMARKS_ibfk_2` FOREIGN KEY (`SUBCODE`) REFERENCES `SUBJECT` (`SUBCODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IAMARKS_ibfk_3` FOREIGN KEY (`SSID`) REFERENCES `SEMSEC` (`SSID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
