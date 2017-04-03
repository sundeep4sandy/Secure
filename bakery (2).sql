-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2016 at 09:25 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `username` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`username`, `firstname`, `password`, `lastname`, `email`, `role`) VALUES
('bala', 'bala', 'bala', 'kishore', 'bala@gmail.com', 'user'),
('bargav', 'bargav', 'bargav', 'nagaraju', 'bargav@gmail.com', 'user'),
('gopi', 'gopi', 'gopi', 'swargam', 'gopi@swargam.edu', 'admin'),
('rishi', 'rishi', 'rishi', 'ankenpally', 'rishi@hotkidz.com', 'user'),
('sandeep', 'sundeep', 'sandeep', 'yerramsetti', 'sundeep@coolboys.com', 'admin'),
('sreeteja', 'sree tejs', 'Steja727876', 'nann', 'sree.5unixz@gmail.com', 'user'),
('sundeep', 'sundeep', 'sundeep', 'yerramsetti', 'sundeep@coolboys.com', 'user'),
('surendra', 'surendra', 'surendra', 'naidu', 'surendra@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(20) NOT NULL,
  `item_description` varchar(20) NOT NULL,
  `item_cost` int(20) NOT NULL,
  `imagename` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_description`, `item_cost`, `imagename`, `quantity`) VALUES
(1, 'plain bagel', 9, 'plain', 10),
(2, 'sesame bagel', 9, 'sesame', 0),
(3, 'sunflowerseeds bagel', 9, 'sunflower', 10),
(4, 'poppyseed bagel', 9, 'poppyseed', 10),
(5, 'whole wheat bagel', 9, 'wholewheat', 10),
(6, 'whole wheat seeds', 9, 'wholeseeds', 10),
(7, 'sourdough', 9, 'sourdough', 10),
(8, 'wholegrain sourdough', 9, 'wholegrain', 10),
(9, 'wholewheat sourdough', 9, 'wwsourdough', 10),
(10, 'challa bread', 9, 'challa', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `total_cost` int(20) NOT NULL,
  `order_date` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `total_cost`, `order_date`, `address`, `city`, `state`, `zip`, `status`) VALUES
(15, 'surendra', 18, '16/06/25', '106 E 3rd St', 'Arlington', 'Texas', '12345', 'delivered'),
(16, 'surendra', 18, '16/06/25', 'xxxx', 'yyyy', 'zzz', '12345', 'delivered'),
(17, 'sundeep', 9, '16/06/25', 'xx', 'yy', 'zzz', '12345', 'delivered'),
(18, 'rishi', 18, '16/06/25', 'gegre', 'eff', 'ebbe', 'veve', 'delivered'),
(19, 'surendra', 9, '16/06/25', 'xxxx', 'yyyy', 'zzz', '12345', 'pending'),
(20, 'bala', 27, '16/06/25', 'xxxx', 'yyyy', 'zzz', '12345', 'pending'),
(21, 'sundeep', 54, '16/06/25', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '76010', 'delivered'),
(22, 'sundeep', 27, '16/06/25', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '76010', 'delivered'),
(23, 'sundeep', 18, '16/06/25', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '76010', 'delivered'),
(24, 'bargav', 27, '16/06/25', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '76010', 'delivered'),
(25, 'bargav', 27, '16/06/25', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '76010', 'delivered'),
(26, 'bargav', 387, '16/06/25', '106 E 3rd St', 'Arlington', 'zzz', '12345', 'delivered'),
(27, 'surendra', 18, '16/06/25', 'xxxx', 'yyyy', 'zzz', '12345', 'delivered'),
(28, 'surendra', 18, '16/06/27', '106 E 3rd St, Apt #5', 'Arlington', 'Texas', '12345', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `order_id` int(20) NOT NULL,
  `items_id` int(20) NOT NULL,
  `cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`order_id`, `items_id`, `cost`) VALUES
(15, 2, 9),
(15, 6, 9),
(16, 2, 9),
(16, 6, 9),
(17, 10, 9),
(18, 1, 9),
(18, 2, 9),
(19, 2, 9),
(20, 6, 9),
(20, 9, 9),
(20, 8, 9),
(21, 4, 9),
(21, 5, 9),
(21, 8, 9),
(21, 7, 9),
(21, 1, 9),
(21, 2, 9),
(22, 1, 9),
(22, 3, 9),
(22, 2, 9),
(23, 10, 9),
(23, 7, 9),
(24, 1, 9),
(24, 3, 9),
(24, 9, 9),
(25, 5, 9),
(25, 4, 9),
(25, 2, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 1, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(26, 2, 9),
(27, 2, 9),
(27, 3, 9),
(28, 2, 9),
(28, 3, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
