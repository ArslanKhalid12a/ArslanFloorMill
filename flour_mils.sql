-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 09:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flour_mils`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart1`
--

CREATE TABLE `cart1` (
  `Cart_id` int(5) NOT NULL,
  `Order_id` int(10) NOT NULL,
  `Product_id` int(5) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `Imagepath` varchar(500) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Total_price` bigint(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `temp` varchar(40) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart1`
--

INSERT INTO `cart1` (`Cart_id`, `Order_id`, `Product_id`, `productname`, `brand`, `description`, `Imagepath`, `price`, `quantity`, `Total_price`, `email`, `temp`, `date_time`) VALUES
(109, 1072, 1184, 'sugarcane', '34', ' sugarcane.jpg', 'sugarcane.jpg', 100, 1, 100, 'admin2@gmail.com', '', '2022-07-28 06:02:09'),
(108, 1071, 1184, 'sugarcane', '34', ' sugarcane.jpg', 'sugarcane.jpg', 100, 1, 100, 'admin2@gmail.com', '', '2022-07-28 06:01:59'),
(107, 1070, 1182, 'flour10kg', '34', ' Fine atta 10kg', 'flour10kg.jpg', 900, 1, 900, 'admin2@gmail.com', '', '2022-07-28 06:01:45'),
(106, 1070, 1186, 'Powered Suger', '34', '  powered suger', 'poweredsuger.jpg', 2566, 1, 2566, 'admin2@gmail.com', '', '2022-07-28 06:01:45'),
(105, 1069, 1181, 'fineata', '34', ' Super Fine 10kg', 'fineata.jpg', 850, 1, 850, 'admin2@gmail.com', '', '2022-07-28 01:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactus_id` int(20) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact_no` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactus_id`, `name`, `email`, `subject`, `message`, `Date`, `contact_no`) VALUES
(7, 'xyz', 'xyz@gmail.com', 'GOOD', 'NICE', '2018-10-14 08:05:32', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `picture` varchar(20) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `mobile_no`, `email_id`, `address`, `password`, `role`, `status`, `picture`, `Date`) VALUES
(1, 'Aftab', 'Khan', '123456789', 'admin@gmail.com', 'Pakistan', '123', 'Owner', 1, 'umair.jpg', '2018-12-16 07:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(258) NOT NULL,
  `status` varchar(20) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `status`, `Date`) VALUES
(1, 'Test Title', 'Put simply, event management is the coordination, planning, organising and execution of an event. The term covers project management across every aspect of an event, which can be anything from finding speakers to sending out post-event surveys.', 'Activate', '2022-07-11 10:48:43'),
(2, 'second one', 'Canned stopped ', 'Activate', '2022-07-11 10:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_id` int(10) NOT NULL,
  `FirstName` varchar(15) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Country` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Zip_code` int(10) NOT NULL,
  `contactNo` varchar(11) DEFAULT NULL,
  `ShippingAddress` varchar(40) DEFAULT NULL,
  `ShippingMethod` varchar(20) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  `TypeOfCreditcard` varchar(25) DEFAULT '                  -',
  `NameOnCC` varchar(30) DEFAULT '                   -',
  `CCNo` bigint(50) DEFAULT NULL,
  `CVV` int(5) DEFAULT NULL,
  `ExpirationDate` varchar(20) DEFAULT NULL,
  `Order_Ammount` bigint(50) NOT NULL,
  `temp` varchar(50) DEFAULT NULL,
  `OrderDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Email_id` varchar(40) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `FirstName`, `LastName`, `Email`, `Country`, `State`, `City`, `Zip_code`, `contactNo`, `ShippingAddress`, `ShippingMethod`, `PaymentMethod`, `TypeOfCreditcard`, `NameOnCC`, `CCNo`, `CVV`, `ExpirationDate`, `Order_Ammount`, `temp`, `OrderDateTime`, `Email_id`, `order_status`) VALUES
(1068, 'Arslan', 'khalid', 'arslan@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 0, '03125333273', '123', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 2211, '', '2022-07-11 10:44:41', 'arslan@gmail.com', 'Approved'),
(1067, 'Arslan', 'khalid', 'arslan@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 2222, '03125333273', '123', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 4322, '', '2022-07-11 10:43:55', 'arslan@gmail.com', 'Approved'),
(1066, 'Arslan', 'khalid', 'arslan@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 213212, '03125333273', '123', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 7088, '', '2022-07-11 10:42:12', 'arslan@gmail.com', 'Approved'),
(1069, 'suny', 'suny', 'admin2@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 5, '123', 'asd', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 850, '', '2022-07-28 06:04:40', 'admin2@gmail.com', 'Pending'),
(1070, 'suny', 'suny', 'admin2@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 3, '123', 'asd', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 3466, '', '2022-07-28 06:04:45', 'admin2@gmail.com', 'Pending'),
(1071, 'suny', 'suny', 'admin2@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 0, '123', 'asd', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 100, '', '2022-07-28 06:04:50', 'admin2@gmail.com', 'Pending'),
(1072, 'suny', 'suny', 'admin2@gmail.com', 'Pakistan', 'ABC', 'Islamabad', 0, '123', 'asd', '0', 'Free Shipping', '                  -', '                   -', NULL, NULL, NULL, 100, '', '2022-07-28 06:04:56', 'admin2@gmail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_id` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `product_category_id` int(20) UNSIGNED NOT NULL,
  `ProductType` varchar(30) NOT NULL,
  `product_brand_id` int(11) UNSIGNED NOT NULL,
  `Price` int(10) NOT NULL,
  `Imagepath` varchar(500) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `stock` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_id`, `gender`, `product_category_id`, `ProductType`, `product_brand_id`, `Price`, `Imagepath`, `Description`, `stock`) VALUES
(1180, 'Men', 38, 'superfineatta', 34, 800, 'superfineatta.jpg', 'Nayab  Atta 10kg ', 34),
(1181, 'Men', 38, 'fineata', 34, 850, 'fineata.jpg', ' Super Fine 10kg', 31),
(1182, 'Men', 38, 'flour10kg', 34, 900, 'flour10kg.jpg', ' Fine atta 10kg', 25),
(1183, 'Men', 38, 'rice', 34, 100, 'rice.jpg', ' rice', 43),
(1184, 'Men', 40, 'sugarcane', 34, 100, 'sugarcane.jpg', ' sugarcane.jpg', 42),
(1185, 'Men', 38, 'Stocked Grocer.', 34, 2577, 'sugarcane.jpg', ' sugarcane.jpg', 5),
(1186, 'Men', 38, 'Powered Suger', 34, 2566, 'poweredsuger.jpg', '  powered suger', 6),
(1187, 'Men', 38, 'yourstory', 34, 4322, 'yourstry.JPG', ' yourstory', 10),
(1188, 'Men', 38, 'Pasta', 34, 2211, 'Pasta.jpg', ' Pasta', 22),
(1189, 'Men', 38, 'healthline', 34, 2211, 'healthline.jpg', ' healthline', 4),
(1190, 'Men', 38, 'Eggs', 34, 1255, 'Eggs.jpg', ' Eggs', 12),
(1191, 'Men', 38, 'Canned ', 34, 2211, 'Canned.jpg', ' Canned ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `product_brand_id` int(11) UNSIGNED NOT NULL,
  `product_brand_name` varchar(30) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`product_brand_id`, `product_brand_name`, `Date`) VALUES
(34, 'Arslan Mill ', '2022-07-11 10:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(20) UNSIGNED NOT NULL,
  `product_category_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`, `gender`, `Date`) VALUES
(38, 'Flour', 'abc', '2018-10-14 08:03:50'),
(40, 'Souji', 'Men', '2018-09-27 14:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `sales_invoice_id` int(11) UNSIGNED NOT NULL,
  `User_id` int(5) NOT NULL,
  `employee_id` int(11) UNSIGNED DEFAULT NULL,
  `total_amount` int(5) NOT NULL,
  `total_items` int(5) NOT NULL,
  `paid` int(20) NOT NULL,
  `change_amount` int(5) NOT NULL DEFAULT '0',
  `profit` int(20) NOT NULL DEFAULT '0',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_invoice`
--

INSERT INTO `sales_invoice` (`sales_invoice_id`, `User_id`, `employee_id`, `total_amount`, `total_items`, `paid`, `change_amount`, `profit`, `creation_date`) VALUES
(76, 63, 1, 1100, 2, 0, 0, 0, '2018-10-22 19:27:32'),
(77, 63, 1, 1100, 2, 0, 0, 0, '2018-10-22 19:37:28'),
(78, 57, 1, 9400, 2, 0, 0, 0, '2018-10-22 19:52:34'),
(79, 63, 1, 1100, 2, 0, 0, 0, '2018-10-22 19:58:10'),
(80, 57, 1, 850, 1, 0, 0, 0, '2018-10-24 15:54:06'),
(81, 57, 1, 850, 1, 0, 0, 0, '2018-10-25 18:32:48'),
(82, 62, 1, 2600, 2, 0, 0, 0, '2018-10-25 20:30:47'),
(83, 62, 1, 1750, 2, 0, 0, 0, '2018-10-26 16:13:58'),
(84, 57, 1, 9400, 2, 0, 0, 0, '2018-10-26 16:54:00'),
(85, 57, 1, 1750, 2, 0, 0, 0, '2018-10-27 08:54:15'),
(86, 57, 1, 900, 1, 0, 0, 0, '2018-10-28 09:38:22'),
(87, 57, 1, 800, 1, 0, 0, 0, '2018-12-10 19:18:21'),
(88, 56, 1, 950, 2, 1000, 50, 10, '2018-12-15 19:25:16'),
(89, 56, 1, 1750, 2, 2000, 250, 10, '2018-12-15 19:25:21'),
(90, 56, 1, 2400, 1, 3000, 600, 10, '2018-12-15 19:27:33'),
(91, 56, 1, 1800, 2, 1800, 0, 10, '2018-12-16 07:37:17'),
(92, 56, 1, 800, 14, 1000, 200, 10, '2018-12-24 17:53:01'),
(93, 56, 1, 4250, 1, 5000, 750, 10, '2018-12-25 07:45:13'),
(94, 56, 1, 800, 1, 800, 0, 10, '2018-12-25 07:46:54'),
(95, 57, 1, 900, 1, 0, 0, 0, '2018-12-25 07:54:59'),
(96, 62, 1, 3477, 2, 0, 0, 0, '2022-07-11 10:04:53'),
(97, 64, 1, 7088, 3, 0, 0, 0, '2022-07-11 10:42:12'),
(98, 64, 1, 4322, 1, 0, 0, 0, '2022-07-11 10:43:55'),
(99, 64, 1, 2211, 1, 0, 0, 0, '2022-07-11 10:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_items`
--

CREATE TABLE `sales_invoice_items` (
  `sales_invoice_item_id` int(11) UNSIGNED NOT NULL,
  `sales_invoice_id` int(11) UNSIGNED DEFAULT NULL,
  `Product_id` int(5) DEFAULT NULL,
  `item_quantity` int(5) NOT NULL,
  `total` int(30) NOT NULL,
  `profit` int(11) NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_invoice_items`
--

INSERT INTO `sales_invoice_items` (`sales_invoice_item_id`, `sales_invoice_id`, `Product_id`, `item_quantity`, `total`, `profit`, `Date`) VALUES
(141, 76, 1182, 1, 900, 1, '2018-10-22 19:27:32'),
(142, 76, 1183, 2, 100, 1, '2018-10-22 19:27:32'),
(143, 77, 1182, 1, 900, 1, '2018-10-22 19:37:28'),
(144, 77, 1183, 2, 100, 1, '2018-10-22 19:37:29'),
(145, 78, 1180, 5, 800, 1, '2018-10-22 19:52:34'),
(146, 78, 1182, 6, 900, 1, '2018-10-22 19:52:34'),
(147, 79, 1182, 1, 900, 1, '2018-10-22 19:58:10'),
(148, 79, 1183, 2, 100, 1, '2018-10-22 19:58:11'),
(149, 80, 1181, 1, 850, 1, '2018-10-24 15:54:06'),
(150, 81, 1181, 1, 850, 1, '2018-10-25 18:32:48'),
(151, 82, 1182, 1, 900, 1, '2018-10-25 20:30:47'),
(152, 82, 1181, 2, 850, 1, '2018-10-25 20:30:47'),
(153, 83, 1181, 1, 850, 1, '2018-10-26 16:13:58'),
(154, 83, 1182, 1, 900, 1, '2018-10-26 16:13:58'),
(155, 84, 1180, 5, 800, 1, '2018-10-26 16:54:00'),
(156, 84, 1182, 6, 900, 1, '2018-10-26 16:54:00'),
(157, 85, 1181, 1, 850, 1, '2018-10-27 08:54:15'),
(158, 85, 1182, 1, 900, 1, '2018-10-27 08:54:15'),
(159, 86, 1182, 1, 900, 1, '2018-10-28 09:38:22'),
(160, 87, 1180, 1, 800, 1, '2018-12-10 19:18:21'),
(161, 88, 1181, 2, 850, 10, '2018-12-15 18:55:11'),
(162, 88, 1184, 3, 100, 10, '2018-12-15 18:55:11'),
(163, 88, 1182, 2, 900, 10, '2018-12-15 18:55:11'),
(164, 88, 1181, 2, 850, 10, '2018-12-15 18:55:35'),
(165, 88, 1184, 3, 100, 10, '2018-12-15 18:55:35'),
(166, 88, 1182, 2, 900, 10, '2018-12-15 18:55:35'),
(167, 88, 1184, 1, 100, 10, '2018-12-15 18:58:32'),
(168, 88, 1184, 1, 100, 10, '2018-12-15 19:00:44'),
(169, 88, 1181, 1, 850, 10, '2018-12-15 19:11:15'),
(170, 88, 1183, 1, 100, 10, '2018-12-15 19:11:15'),
(171, 89, 1182, 1, 900, 10, '2018-12-15 19:12:11'),
(172, 89, 1181, 1, 850, 10, '2018-12-15 19:12:11'),
(173, 90, 1180, 3, 800, 10, '2018-12-15 19:27:33'),
(174, 91, 1181, 2, 850, 10, '2018-12-16 07:37:17'),
(175, 91, 1183, 1, 100, 10, '2018-12-16 07:37:17'),
(176, 92, 1180, 1, 800, 10, '2018-12-24 17:53:01'),
(177, 93, 1181, 5, 850, 10, '2018-12-25 07:45:13'),
(178, 94, 1180, 1, 800, 10, '2018-12-25 07:46:54'),
(179, 95, 1182, 1, 900, 1, '2018-12-25 07:54:59'),
(180, 96, 1185, 1, 2577, 1, '2022-07-11 10:04:53'),
(181, 96, 1182, 1, 900, 1, '2022-07-11 10:04:53'),
(182, 97, 1191, 2, 2211, 1, '2022-07-11 10:42:12'),
(183, 97, 1183, 1, 100, 1, '2022-07-11 10:42:12'),
(184, 97, 1186, 1, 2566, 1, '2022-07-11 10:42:12'),
(185, 98, 1187, 1, 4322, 1, '2022-07-11 10:43:55'),
(186, 99, 1189, 1, 2211, 1, '2022-07-11 10:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `signuptable`
--

CREATE TABLE `signuptable` (
  `User_id` int(5) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `EmailId` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `DateAndTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remaining_amount` int(10) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `country` varchar(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signuptable`
--

INSERT INTO `signuptable` (`User_id`, `FirstName`, `LastName`, `Gender`, `ContactNo`, `EmailId`, `Password`, `DateAndTime`, `remaining_amount`, `address`, `country`, `state`, `city`) VALUES
(64, 'Arslan', 'khalid', 'Male', '031253332732', 'arslan@gmail.com', '444', '2022-07-11 10:43:11', 0, '123', 'Pakistan', 'ABC', 'Islamabad'),
(65, 'Arslan', 'khalid', 'Male', '123', 'admin2@gmail.com', '123', '2022-07-28 06:04:21', 0, '123', 'Pakistan', 'ABC', 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `temp_sales_invoice`
--

CREATE TABLE `temp_sales_invoice` (
  `sales_invoice_id` int(11) UNSIGNED NOT NULL,
  `User_id` int(5) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `total_amount` int(5) NOT NULL,
  `total_items` int(5) NOT NULL,
  `paid` int(20) UNSIGNED NOT NULL,
  `change_amount` int(5) NOT NULL DEFAULT '0',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_sales_invoice_items`
--

CREATE TABLE `temp_sales_invoice_items` (
  `sales_invoice_item_id` int(11) UNSIGNED NOT NULL,
  `sales_invoice_id` int(11) DEFAULT NULL,
  `Product_id` int(5) DEFAULT NULL,
  `item_quantity` int(5) NOT NULL,
  `total` int(30) NOT NULL,
  `profit` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart1`
--
ALTER TABLE `cart1`
  ADD PRIMARY KEY (`Cart_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactus_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `product_category_id` (`product_category_id`),
  ADD KEY `product_brand_id` (`product_brand_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`product_brand_id`),
  ADD KEY `item_brand_id` (`product_brand_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`),
  ADD KEY `item_category_id` (`product_category_id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`sales_invoice_id`),
  ADD KEY `sales_invoice_id` (`sales_invoice_id`),
  ADD KEY `salesmen_id` (`employee_id`);

--
-- Indexes for table `sales_invoice_items`
--
ALTER TABLE `sales_invoice_items`
  ADD PRIMARY KEY (`sales_invoice_item_id`),
  ADD KEY `sales_invoice_item_id` (`sales_invoice_item_id`),
  ADD KEY `sales_invoice_id` (`sales_invoice_id`),
  ADD KEY `item_name_id` (`Product_id`);

--
-- Indexes for table `signuptable`
--
ALTER TABLE `signuptable`
  ADD PRIMARY KEY (`EmailId`),
  ADD UNIQUE KEY `User_id` (`User_id`);

--
-- Indexes for table `temp_sales_invoice`
--
ALTER TABLE `temp_sales_invoice`
  ADD PRIMARY KEY (`sales_invoice_id`);

--
-- Indexes for table `temp_sales_invoice_items`
--
ALTER TABLE `temp_sales_invoice_items`
  ADD PRIMARY KEY (`sales_invoice_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart1`
--
ALTER TABLE `cart1`
  MODIFY `Cart_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactus_id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1192;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `product_brand_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `sales_invoice_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `sales_invoice_items`
--
ALTER TABLE `sales_invoice_items`
  MODIFY `sales_invoice_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `signuptable`
--
ALTER TABLE `signuptable`
  MODIFY `User_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `temp_sales_invoice`
--
ALTER TABLE `temp_sales_invoice`
  MODIFY `sales_invoice_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_sales_invoice_items`
--
ALTER TABLE `temp_sales_invoice_items`
  MODIFY `sales_invoice_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_brand_id`) REFERENCES `product_brand` (`product_brand_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`product_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
