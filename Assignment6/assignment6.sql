-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2018 at 09:49 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment6`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `country`) VALUES
('Alfreds Futterkiste', 'Germany'),
('Ana Trujillo Emparedados y helados', 'Mexico'),
('Antonio Moreno Taquería', 'Mexico'),
('Around the Horn', 'UK'),
('B\'s Beverages', 'UK'),
('Berglunds snabbköp', 'Sweden'),
('Blauer See Delikatessen', 'Germany'),
('Blondel père et fils', 'France'),
('Bólido Comidas preparadas', 'Spain'),
('Bon app\'', 'France'),
('Bottom-Dollar Marketse', 'Canada'),
('Cactus Comidas para llevar', 'Argentina'),
('Centro comercial Moctezuma', 'Mexico'),
('Chop-suey Chinese', 'Switzerland'),
('Comércio Mineiro', 'Brazil');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
