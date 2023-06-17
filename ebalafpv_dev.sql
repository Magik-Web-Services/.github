-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2023 at 11:45 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebalafpv_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_students`
--

DROP TABLE IF EXISTS `api_students`;
CREATE TABLE IF NOT EXISTS `api_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `round` int NOT NULL,
  `course` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `api_students`
--

INSERT INTO `api_students` (`id`, `name`, `email`, `round`, `course`) VALUES
(1, 'Kabir Hossain', 'kabir@gmail.com', 41, 'WPDF'),
(2, 'Helal Uddin', 'helal@gmail.com', 41, 'WPDF'),
(3, 'Mahmuda Akter', 'mahmuda@gmail.com', 41, 'WPDF'),
(4, 'Habibur Rahman', 'habib@gmail.com', 41, 'WPDF'),
(5, 'Nusrat Jahan', 'nusrat@gmail.com', 41, 'WPDF');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard2_customers`
--

DROP TABLE IF EXISTS `dashboard2_customers`;
CREATE TABLE IF NOT EXISTS `dashboard2_customers` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customerType` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `salutation` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `firstName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `lastName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `customerPhone` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `customerEmail` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `companyName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Website` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Creation_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modified_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customerId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `dashboard2_customers`
--

INSERT INTO `dashboard2_customers` (`customerId`, `user_id`, `customerType`, `salutation`, `firstName`, `lastName`, `customerPhone`, `customerEmail`, `companyName`, `Website`, `Creation_Date`, `Modified_Date`) VALUES
(1, 1, 'Business', 'Salutation', 'Atul', 'Goyal', '0123456789', 'atu@gmail.com', 'MWS', 'zxc', '2023-06-15 09:36:56', '2023-06-15 09:36:56'),
(3, 3, 'Business', 'Salutation', 'Atul', 'Goyal', '0123456789', 'atu@gmail.com', 'MWS', 'zxc', '2023-06-15 09:43:59', '2023-06-15 09:43:59'),
(4, 1, 'Business', 'Salutation', 'Bogota', 'bogota', '0123456789', 'bogota@gmail.com', 'MWS', 'zxc', '2023-06-15 09:45:46', '2023-06-15 09:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard2_invoices`
--

DROP TABLE IF EXISTS `dashboard2_invoices`;
CREATE TABLE IF NOT EXISTS `dashboard2_invoices` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customerName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `invoice` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `orderNumber` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `InvoiceDate` date NOT NULL,
  `Terms` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `expireyDate` date NOT NULL,
  `salesperson` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `subject` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `subTotal` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Discount` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `discount2` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Adjustment` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `TCS` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `total` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `termsAndConditions` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `creation_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `files` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ;

--
-- Dumping data for table `dashboard2_invoices`
--

INSERT INTO `dashboard2_invoices` (`invoice_id`, `user_id`, `customerName`, `invoice`, `orderNumber`, `InvoiceDate`, `Terms`, `expireyDate`, `salesperson`, `subject`, `subTotal`, `Discount`, `discount2`, `Adjustment`, `TCS`, `total`, `termsAndConditions`, `items`, `creation_Date`, `files`) VALUES
(1, 1, 'Bogota bogota', '001', '1234', '2023-06-02', 'NET 45', '2023-06-09', '2', 'subject', '200', '10', '%', '10', 'gold tax', '190', 'tcs', '{\"name\":[\"item\"],\"qty\":[\"2\"],\"unit\":[\"box\"],\"rate\":[\"100\"],\"amount\":[\"200.00\"]}', '2023-06-15 10:11:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard2_items`
--

DROP TABLE IF EXISTS `dashboard2_items`;
CREATE TABLE IF NOT EXISTS `dashboard2_items` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `unit` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `sellingPrice` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `qty` int NOT NULL,
  `amount` int NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`itemId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `dashboard2_items`
--

INSERT INTO `dashboard2_items` (`itemId`, `user_id`, `type`, `name`, `unit`, `sellingPrice`, `description`, `qty`, `amount`, `creation_date`, `modification_date`) VALUES
(1, 1, 'Good', 'item', 'box', '100', 'zxc', 0, 0, '2023-06-15 09:37:33', '2023-06-15 09:37:33'),
(2, 3, 'Good', 'item', 'box', '123', 'zxc', 0, 0, '2023-06-15 09:44:18', '2023-06-15 09:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard2_quote`
--

DROP TABLE IF EXISTS `dashboard2_quote`;
CREATE TABLE IF NOT EXISTS `dashboard2_quote` (
  `quote_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customerName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `invoice` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `orderNumber` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `quoteDate` date NOT NULL,
  `expireyDate` date NOT NULL,
  `salesperson` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `subject` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `subTotal` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Discount` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `discount2` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `Adjustment` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `TCS` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `total` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `termsAndConditions` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `creation_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `files` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`quote_id`)
) ;

--
-- Dumping data for table `dashboard2_quote`
--

INSERT INTO `dashboard2_quote` (`quote_id`, `user_id`, `customerName`, `invoice`, `orderNumber`, `quoteDate`, `expireyDate`, `salesperson`, `subject`, `subTotal`, `Discount`, `discount2`, `Adjustment`, `TCS`, `total`, `termsAndConditions`, `items`, `creation_Date`, `files`) VALUES
(1, 1, 'Atul Goyal', '2345', '1234', '2023-06-15', '2023-06-16', '1', 'subject', '100', '0', '%', '55', 'gold tax', '155', 'Terms And Conditions', '{\"name\":[\"item\"],\"qty\":[\"1\"],\"unit\":[\"box\"],\"rate\":[\"100\"],\"amount\":[\"100\"]}', '2023-06-15 10:15:53', ''),
(2, 1, 'Atul Goyal', '2345', '1234', '2023-06-10', '2023-06-06', '4', 'subject', '100', '0', '%', '32', 'gold tax', '132', 'Terms And Conditions', '{\"name\":[\"item\"],\"qty\":[\"1\"],\"unit\":[\"box\"],\"rate\":[\"100\"],\"amount\":[\"100\"]}', '2023-06-15 10:20:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard2_users`
--

DROP TABLE IF EXISTS `dashboard2_users`;
CREATE TABLE IF NOT EXISTS `dashboard2_users` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `country` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `role` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `dashboard2_users`
--

INSERT INTO `dashboard2_users` (`sno`, `userName`, `email`, `country`, `password`, `role`, `register_date`) VALUES
(1, 'admin', 'admin@gmaill.com', 'India', '$2y$10$GSyJRzk89J9NrCmql2HqnOrB8b.DaLo/oJLJJjxFCFWJpII5DKetW', 'admin', '2023-06-09 11:06:46'),
(2, 'Atul', 'atul@gmail.com', 'India', '$2y$10$oWMHoZ1kWxBjSZAN19NmDu7E0Qbv8bDZVUHmp8KRsGRxCEltvNs76', 'customers', '2023-06-09 11:17:56'),
(3, 'bogota', 'bogota@gmail.com', 'India', '$2y$10$X3JTOgwemEz6jCfCB3rPpu8iQvAsNlV3nS0O2Y6qnEqIrUtZ2Sm7u', 'customers', '2023-06-15 07:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_customers`
--

DROP TABLE IF EXISTS `dashboard_customers`;
CREATE TABLE IF NOT EXISTS `dashboard_customers` (
  `customers_id` int NOT NULL AUTO_INCREMENT,
  `customerType` varchar(255) NOT NULL,
  `salutation` varchar(255) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `customerDisplayName` varchar(255) NOT NULL,
  `customerEmail` varchar(255) NOT NULL,
  `workPhone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `Skype` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `create_customer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_customer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customers_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard_customers`
--

INSERT INTO `dashboard_customers` (`customers_id`, `customerType`, `salutation`, `fName`, `lName`, `companyName`, `customerDisplayName`, `customerEmail`, `workPhone`, `mobile`, `Skype`, `Designation`, `Department`, `website`, `create_customer`, `update_customer`) VALUES
(6, 'business', 'Mr', 'atul', 'goyal', 'mws', 'mws', 'atul@gmaill.com', '123', '123', 'atul', 'zxc', 'zxc', 'zxc', '2023-06-06 06:57:38', '2023-06-06 06:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_items`
--

DROP TABLE IF EXISTS `dashboard_items`;
CREATE TABLE IF NOT EXISTS `dashboard_items` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `productType` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `sellingPrice` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day2_form`
--

DROP TABLE IF EXISTS `day2_form`;
CREATE TABLE IF NOT EXISTS `day2_form` (
  `Sno` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `Email` text NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CPassword` varchar(255) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day2_form`
--

INSERT INTO `day2_form` (`Sno`, `UserName`, `Email`, `Password`, `CPassword`) VALUES
(1, 'Atul', 'atul22g2468@gmail.com', 'asd', 'asd'),
(2, 'asd', 'asd@gmail.com', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `yourpds_data`
--

DROP TABLE IF EXISTS `yourpds_data`;
CREATE TABLE IF NOT EXISTS `yourpds_data` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `model_number` varchar(255) NOT NULL,
  `yourpds` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yourpds_data`
--

INSERT INTO `yourpds_data` (`sno`, `name`, `model`, `generation`, `model_number`, `yourpds`) VALUES
(1, 'ipad', 'ipad', '10th gen', 'A2601', 'Selected'),
(2, 'ipad', 'ipad', '10th gen', 'A2602', 'Selected'),
(3, 'ipad', 'ipad', '10th gen', 'A2696', ''),
(4, 'ipad', 'ipad', '10th gen', 'A2757', ''),
(5, 'ipad', 'ipad', '10th gen', 'A2777', ''),
(6, 'ipad', 'ipad', '9th gen', 'A2567', 'Selected'),
(7, 'ipad', 'ipad', '9th gen', 'A2568', 'Selected'),
(8, 'ipad', 'ipad', '9th gen', 'A2602', ''),
(9, 'ipad', 'ipad', '9th gen', 'A2604', ''),
(10, 'ipad', 'ipad', '9th gen', 'A2603', ''),
(11, 'ipad', 'ipad', '9th gen', 'A2605', ''),
(12, 'ipad', 'ipad', '8th gen', 'A2270', 'Selected'),
(13, 'ipad', 'ipad', '8th gen', 'A2270', 'Selected'),
(14, 'ipad', 'ipad', '8th gen', 'A2428', 'Selected'),
(15, 'ipad', 'ipad', '8th gen', 'A2429', 'Selected'),
(16, 'ipad', 'ipad', '8th gen', 'A2430', 'Selected'),
(17, 'ipad', 'ipad', '7th gen', 'A2197', 'Selected'),
(18, 'ipad', 'ipad', '7th gen', 'A2200', 'Selected'),
(19, 'ipad', 'ipad', '7th gen', 'A2198', 'Selected'),
(20, 'ipad', 'ipad', '6th gen', 'A1893', 'Selected'),
(21, 'ipad', 'ipad', '6th gen', 'A1954', 'Selected'),
(22, 'ipad', 'ipad', '5th gen', 'A1822', 'Selected'),
(23, 'ipad', 'ipad', '5th gen', 'A1823', 'Selected'),
(24, 'ipad', 'ipad', '4th gen', 'A1458', 'Selected'),
(25, 'ipad', 'ipad', '4th gen', 'A1459', 'Selected'),
(26, 'ipad', 'ipad', '4th gen', 'A1460', 'Selected'),
(27, 'ipad', 'ipad', '3rd gen', 'A1416', 'Selected'),
(28, 'ipad', 'ipad', '3rd gen', 'A1430', 'Selected'),
(29, 'ipad', 'ipad', '3rd gen', 'A1403', 'Selected'),
(30, 'ipad', 'ipad', '2nd gen', 'A1395', 'Selected'),
(31, 'ipad', 'ipad', '2nd gen', 'A1396', 'Selected'),
(32, 'ipad', 'ipad', '2rd gen', 'A1397', 'Selected'),
(33, 'ipad', 'ipad', '1st gen', 'A1219', 'Selected'),
(34, 'ipad', 'ipad', '1st gen', 'A1337', 'Selected'),
(35, 'ipad', 'mini', '6nd gen', 'A2567', ''),
(36, 'ipad', 'mini', '6th gen', 'A2568', ''),
(37, 'ipad', 'mini', '6th gen', 'A2569', ''),
(38, 'ipad', 'mini', '5th gen', 'A2133', 'Selected'),
(39, 'ipad', 'mini', '5th gen', 'A2126', 'Selected'),
(40, 'ipad', 'mini', '5th gen', 'A2125', 'Selected'),
(41, 'ipad', 'mini', '5th gen', 'A2124', 'Selected'),
(42, 'ipad', 'mini', '4th gen', 'A1538', 'Selected'),
(43, 'ipad', 'mini', '4th gen', 'A1550', 'Selected'),
(44, 'ipad', 'mini', '3rd gen', 'A1599', 'Selected'),
(45, 'ipad', 'mini', '3rd gen', 'A1600', 'Selected'),
(46, 'ipad', 'mini', '2nd gen', 'A1489', 'Selected'),
(47, 'ipad', 'mini', '2nd gen', 'A1490', 'Selected'),
(48, 'ipad', 'mini', '2nd gen', 'A1491', 'Selected'),
(49, 'ipad', 'mini', '1st gen', 'A1432', 'Selected'),
(50, 'ipad', 'mini', '1st gen', 'A1454', 'Selected'),
(51, 'ipad', 'mini', '1st gen', 'A1455', 'Selected'),
(52, 'ipad', 'air', '5th gen', 'A2588', ''),
(53, 'ipad', 'air', '5th gen', 'A2589', ''),
(54, 'ipad', 'air', '5th gen', 'A2591', ''),
(55, 'ipad', 'air', '4th gen', 'A2072', 'Selected'),
(56, 'ipad', 'air', '4th gen', 'A2316', 'Selected'),
(57, 'ipad', 'air', '4th gen', 'A2324', 'Selected'),
(58, 'ipad', 'air', '4th gen', 'A2325', 'Selected'),
(59, 'ipad', 'air', '3rd gen', 'A2152', 'Selected'),
(60, 'ipad', 'air', '3rd gen', 'A2123', 'Selected'),
(61, 'ipad', 'air', '3rd gen', 'A2153', 'Selected'),
(62, 'ipad', 'air', '3rd gen', 'A2154', 'Selected'),
(63, 'ipad', 'air', '2nd gen', 'A1566', 'Selected'),
(64, 'ipad', 'air', '2nd gen', 'A1567', 'Selected'),
(65, 'ipad', 'air', '1st gen', 'A1474', ''),
(66, 'ipad', 'air', '1st gen', 'A1475', ''),
(67, 'ipad', 'air', '1st gen', 'A1476', ''),
(68, 'ipad', 'pro 12.9', '6th gen', 'A2436', ''),
(69, 'ipad', 'pro 12.9', '6th gen', 'A2764', ''),
(70, 'ipad', 'pro 12.9', '6th gen', 'A2437', ''),
(71, 'ipad', 'pro 12.9', '6th gen', 'A2766', ''),
(72, 'ipad', 'pro 12.9', '5th gen', 'A2378', ''),
(73, 'ipad', 'pro 12.9', '5th gen', 'A2461', ''),
(74, 'ipad', 'pro 12.9', '5th gen', 'A2379', ''),
(75, 'ipad', 'pro 12.9', '5th gen', 'A2362', ''),
(76, 'ipad', 'pro 12.9', '4th gen', 'A2229', 'Selected'),
(77, 'ipad', 'pro 12.9', '4th gen', 'A2069', 'Selected'),
(78, 'ipad', 'pro 12.9', '4th gen', 'A2232', 'Selected'),
(79, 'ipad', 'pro 12.9', '4th gen', 'A2233', 'Selected'),
(80, 'ipad', 'pro 12.9', '3rd gen', 'A1876', 'Selected'),
(81, 'ipad', 'pro 12.9', '3rd gen', 'A2014', 'Selected'),
(82, 'ipad', 'pro 12.9', '3rd gen', 'A1895', 'Selected'),
(83, 'ipad', 'pro 12.9', '3rd gen', 'A1983', 'Selected'),
(84, 'ipad', 'pro 12.9', '2nd gen', 'A1670', 'Selected'),
(85, 'ipad', 'pro 12.9', '2nd gen', 'A1671', 'Selected'),
(86, 'ipad', 'pro 12.9', '2nd gen', 'A1821', 'Selected'),
(87, 'ipad', 'pro 12.9', '1st gen', 'A1584', 'Selected'),
(88, 'ipad', 'pro 12.9', '1st gen', 'A165', 'Selected'),
(89, 'ipad', 'pro 12.9', '1nd gen', 'A1652', ''),
(90, 'ipad', 'pro 11', '4th gen', 'A2759', ''),
(91, 'ipad', 'pro 11', '4th gen', 'A2435', ''),
(92, 'ipad', 'pro 11', '4th gen', 'A2761', ''),
(93, 'ipad', 'pro 11', '4th gen', 'A2762', ''),
(94, 'ipad', 'pro 11', '3rd gen', 'A2377', 'Selected'),
(95, 'ipad', 'pro 11', '3rd gen', 'A2459', 'Selected'),
(96, 'ipad', 'pro 11', '3rd gen', 'A2460', 'Selected'),
(97, 'ipad', 'pro 11', '3rd gen', 'A2301', 'Selected'),
(98, 'ipad', 'pro 11', '2nd gen', 'A2228', 'Selected'),
(99, 'ipad', 'pro 11', '2nd gen', 'A2068', 'Selected'),
(100, 'ipad', 'pro 11', '2nd gen', 'A2230', 'Selected'),
(101, 'ipad', 'pro 11', '2nd gen', 'A2231', 'Selected'),
(102, 'ipad', 'pro 11', '1st gen', 'A1980', 'Selected'),
(103, 'ipad', 'pro 11', '1st gen', 'A2013', 'Selected'),
(104, 'ipad', 'pro 11', '1st gen', 'A1934', 'Selected'),
(105, 'ipad', 'pro 11', '1st gen', 'A1979', 'Selected'),
(106, 'ipad', 'pro 10.5', '', 'A1701', 'Selected'),
(107, 'ipad', 'pro 10.5', '', 'A1709', 'Selected'),
(108, 'ipad', 'pro 10.5', '', 'A1852', ''),
(109, 'ipad', 'pro 9.7', '', 'A1673', 'Selected'),
(110, 'ipad', 'pro 9.7', '', 'A1674', 'Selected'),
(111, 'ipad', 'pro 9.7', '', 'A1675', 'Selected');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
