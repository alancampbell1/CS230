-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2018 at 11:46 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dublin_Core_Metadata_Specification`
--

-- --------------------------------------------------------

--
-- Table structure for table `eBook_MetaData`
--

CREATE TABLE `eBook_MetaData` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `Creator` text NOT NULL,
  `Title` text NOT NULL,
  `Type` text NOT NULL,
  `Identifier` text NOT NULL,
  `Date` date NOT NULL,
  `Language` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eBook_MetaData`
--

INSERT INTO `eBook_MetaData` (`ID`, `Creator`, `Title`, `Type`, `Identifier`, `Date`, `Language`, `Description`) VALUES
(1, 'Alan James Campbell', 'CS230', 'Fantasy', '123-456', '2018-10-14', 'en-GB', 'Web Info. Processing'),
(2, 'Stephen OBrien', 'CS210', 'Non-Fiction', '321-654-CBA', '2018-01-01', 'fr-FR', 'Algorithms & Data Structures'),
(3, 'Sean Kelly', 'CS265', 'Young Adult', '987-654-ABC', '2018-02-02', 'de-DE', 'Software Testing'),
(5, 'Cathal McCabe', 'CS335', 'Non-Fiction', '165-437-XYZ', '2018-06-06', 'es-ES', 'Software Engineering & Processing'),
(7, 'William Carter', 'CS267C', 'Non-Fiction', '584-123-REC', '2016-08-08', 'de-DE', 'Object-Orientated Programming');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eBook_MetaData`
--
ALTER TABLE `eBook_MetaData`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eBook_MetaData`
--
ALTER TABLE `eBook_MetaData`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
