-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 10:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_shoe_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Heels'),
(2, 'Sandals'),
(3, 'Boots');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `listPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productCode`, `productName`, `listPrice`) VALUES
(1, 1, 'trina-heel', 'Trina Heel - Black', '34.99'),
(2, 1, 'vivian-hee', 'Vivian Heel - Nude', '299.00'),
(3, 1, 'tiffany-he', 'Tiffany Heel - Orange', '38.99'),
(4, 1, 'bianca-hee', 'Bianca Heel - Tan', '499.99'),
(5, 1, 'basic-lola', 'Basic Lola Heel - Red', '699.99'),
(6, 1, 'selena-hee', 'Selena Heel - Black', '799.99'),
(7, 2, 'kat-slides', 'Kat Slides - Orange', '21.99'),
(8, 2, 'becca-sand', 'Becca Sandal - White', '17.99'),
(9, 2, 'robyn-sand', 'Robyn Sandal - Black', '415.00'),
(10, 2, 'kristen-sn', 'Kristen Sandal - Snake', '799.99'),
(11, 1, 'patty-heel', 'Patty Heel - Olive', '17.99'),
(12, 1, 'debbie-hee', 'Debbie Heel - Leopard', '21.99'),
(13, 3, 'jodie-boot', 'Jodie Bootie - Olive', '38.99'),
(14, 1, 'sadie-heel', 'Sadie Heel - Red', '34.99'),
(15, 3, 'jojo-lace-', 'Jojo Lace Up Bootie - Black', '299.00'),
(16, 3, 'ari-lace-b', 'Ari Lace Bootie - Cognac', '415.00'),
(17, 3, 'kelly-comb', 'Kelly Combat Boot', '799.99'),
(18, 3, 'jamie-boot', 'Jamie Bootie', '499.99'),
(19, 3, 'jazzy-boot', 'Jazzy Bootie - Nude', '699.99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productCode` (`productCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
