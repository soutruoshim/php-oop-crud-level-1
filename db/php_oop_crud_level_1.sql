-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2022 at 02:30 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_oop_crud_level_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 10:34:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 10:34:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 10:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `image`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, '', '2014-06-01 01:12:26', '2014-05-30 19:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '', '2014-06-01 01:13:45', '2014-05-30 19:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '', '2014-06-01 01:14:13', '2014-05-30 19:14:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, '', '2014-06-01 01:18:36', '2014-05-30 19:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '', '2014-06-06 17:10:01', '2014-06-05 11:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '', '2014-06-06 17:11:04', '2014-06-05 11:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '', '2014-06-06 17:12:21', '2014-06-05 11:12:11'),
(26, 'Another product', 'Awesome product!', 555, 2, '', '2014-11-22 19:07:34', '2014-11-21 13:07:34'),
(27, 'Bag', 'Awesome bag for you!', 999, 1, '', '2014-12-04 21:11:36', '2014-12-03 15:11:36'),
(28, 'Wallet', 'You can absolutely use this one!', 799, 1, '', '2014-12-04 21:12:03', '2014-12-03 15:12:03'),
(30, 'Wal-mart Shirt', '', 555, 2, '', '2014-12-13 00:52:29', '2014-12-11 18:52:29'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, '', '2014-12-13 00:52:54', '2014-12-11 18:52:54'),
(32, 'Washing Machine Model PTRR', 'Some new product.', 999, 1, '', '2015-01-08 22:44:15', '2015-01-07 16:44:15'),
(38, 'Au', 'N/Au', 1006, 1, '', '2022-03-23 06:56:26', '2022-03-23 06:56:26'),
(40, 'Au2020', 'NAU', 10052020, 3, '', '2022-03-23 07:53:52', '2022-03-23 07:53:52'),
(41, 'Ku', 'N/A', 2000, 2, '9910c74943c221b50abf3d4066848b2d5c7bf6ac-215112.jpg', '2022-03-24 02:28:44', '2022-03-24 02:28:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
