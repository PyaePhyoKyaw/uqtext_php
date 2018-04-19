-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2018 at 05:56 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uqtext`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `isbn` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `price` varchar(50) NOT NULL,
  `original_price` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `book_cover` text NOT NULL,
  `rating` int(1) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `title`, `author`, `publish_date`, `price`, `original_price`, `quantity`, `book_cover`, `rating`, `description`) VALUES
('9781548955465', 'Javascript and jquery: Interactive front-end web development', 'Jon Duckett', '2018-04-01', '12', '100', 5, 'http://t3.gstatic.com/images?q=tbn:ANd9GcRPdxZ6ZTJQIN_hbwBwQ9AWUa2DPXyr-QCGyiSuhF173yL2fvFs', 3, 'This javascript and jquery book is used in infs23123 course. This is second hand book so it is way cheaper than the original.'),
('2342352525', 'SQL Introduction', 'James', '2018-04-01', '21', '90', 3, 'https://images-na.ssl-images-amazon.com/images/I/41QrQ03cxRL._SX376_BO1,204,203,200_.jpg', 2, 'This book is use in infs3321. This is way cheaper than original.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
