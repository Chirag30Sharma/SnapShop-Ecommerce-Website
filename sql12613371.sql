-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freemysqlhosting.net
-- Generation Time: Apr 28, 2023 at 01:25 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ``
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'kiddo'),
(4, 'jed blue'),
(5, 'Roadster'),
(6, 'Fusion '),
(7, 'Pink Chicken'),
(8, 'Classic Curves'),
(9, 'JACKSON FURNITURE'),
(10, 'IEKA '),
(11, 'Little Green Paint & Paper');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(300) NOT NULL,
  `product_image` text NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(144, 1, '::1', 1, 'Samsung Galaxy A10e', 'Samsung Galaxy A10e.jpg', 1, 25000, 25000),
(145, 2, '::1', 1, 'Samsung Galaxy A51', 'Samsung Galaxy A51.JPG', 1, 20000, 20000),
(146, 52, '::1', 1, 'sofa set - 2', 'sofa2.jpeg', 1, 39999, 39999),
(151, 68, '', 3, 'home decor 2', 'homedecor2.jpeg', 1, 3999, 3999),
(152, 1, '', 3, 'Samsung Galaxy A10e', 'Samsung Galaxy A10e.jpg', 1, 25000, 25000),
(155, 76, '2401:4900:56fc:b3b3:96d9:1eb1:18b0:67d4', -1, 'painting 5', 'painting5.jpeg', 1, 5000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wear'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `trx_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `trx_id`) VALUES
(5, 1, 12, 'baby boy pant', 999, 1, 'Completed', '75781633UX351953K'),
(6, 1, 17, 'Kids Unisex dungrees ', 1100, 1, 'Completed', '75781633UX351953K'),
(7, 1, 14, 'little boy black shirt', 1050, 2, 'Completed', '75781633UX351953K'),
(8, 1, 27, 'women black kurta set', 999, 2, 'Completed', '3GM52353G87090846'),
(9, 1, 28, 'Women Yellow Kurta with Payjama set', 1200, 1, 'Completed', '3GM52353G87090846'),
(10, 1, 22, 'girls floral pant cloth set', 1250, 1, 'Completed', '9E7132542A1265943'),
(11, 3, 17, 'Kids Unisex dungrees ', 1100, 1, '', 'R8PUXJSE9CJK2'),
(12, 3, 12, 'baby boy pant', 999, 1, 'Completed', 'R8PUXJSE9CJK2'),
(13, 4, 1, 'Samsung Galaxy A10e', 25000, 2, 'Completed', 'R8PUXJSE9CJK2'),
(14, 4, 2, 'Samsung Galaxy A51', 20000, 1, 'Completed', 'R8PUXJSE9CJK2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat_id` int(100) NOT NULL,
  `product_brand_id` int(100) NOT NULL,
  `product_title` varchar(300) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat_id`, `product_brand_id`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Galaxy A10e', 25000, 'The Samsung Galaxy A10e is a budget-friendly smartphone with a 5.8-inch display and a decent camera for its price range.', 'Samsung Galaxy A10e.jpg', 'samsung, samsung galaxy'),
(2, 1, 2, 'Samsung Galaxy A51', 20000, 'The Samsung Galaxy A51 is a mid-range smartphone released in 2019, featuring a 6.5-inch Super AMOLED display, Exynos 9611 chipset, 4/6GB of RAM, 64/128GB of storage, and a quad-camera setup on the back.', 'Samsung Galaxy A51.jpg', 'samsung ,samsung galaxy'),
(3, 1, 2, 'Samsung Galaxy A71', 30000, 'The Samsung Galaxy A71 is a mid-range smartphone released in 2020, featuring a 6.7-inch Super AMOLED display, Snapdragon 730 chipset, 6/8GB of RAM, 128GB of storage, and a quad-camera setup on the back.', 'Samsung Galaxy A71.jpg', 'samsung ,samsung galaxy'),
(4, 1, 2, 'Samsung Galaxy Note 9', 34000, 'The Samsung Galaxy Note 9 is a high-end smartphone released in 2018, featuring a 6.4-inch Super AMOLED display, Exynos 9810 or Snapdragon 845 chipset (depending on the region), 6/8GB of RAM, 128/512GB of storage, and a dual-camera setup on the back. It also comes with the signature S Pen stylus, which offers additional functionality such as remote control and handwriting recognition.', 'Samsung Galaxy Note 9.jpg', 'samsung ,samsung galaxy'),
(5, 1, 2, 'Samsung Galaxy Note 10 Lite N770F', 38999, '', 'Samsung Galaxy Note 10 Lite N770F.jpg', 'samsung ,samsung galaxy'),
(6, 1, 2, 'Samsung Galaxy S9+ Plus', 35999, '', 'Samsung Galaxy S9+ Plus.jpg', 'samsung ,samsung galaxy'),
(7, 1, 2, 'Samsung Galaxy S10 Lite New', 28999, '', 'Samsung Galaxy S10 Lite New.jpg', 'samsung , samsung galaxy'),
(8, 1, 2, 'Samsung Galaxy S10+', 29999, '', 'Samsung Galaxy S10+.jpg', 'samsung ,samsung galaxy'),
(9, 1, 2, 'Samsung Galaxy S20 5G', 37999, '', 'Samsung Galaxy S20 5G.jpg', 'samsung ,samsung galaxy'),
(10, 1, 2, 'Samsung Galaxy S20+ Plus', 40999, '', 'Samsung Galaxy S20+ Plus.jpg', 'samsung ,samsung galaxy'),
(11, 1, 2, 'Samsung Galaxy Z FLIP', 36569, '', 'Samsung Galaxy Z FLIP.jpg', 'samsung ,samsung galaxy'),
(12, 4, 3, 'baby boy pant', 999, '', 'kids1.jpg', 'kids'),
(13, 4, 3, 'baby boy shirt', 1450, '', 'kids2.jpg', 'kids'),
(14, 4, 3, 'little boy black shirt', 1050, '', 'kids3.jpg', 'kids'),
(15, 4, 3, 'boys long sleeves t shirt ', 1100, '', 'kids4.jpg', 'kids'),
(16, 4, 3, 'boys tommy long sleeves t-shirt', 1599, '', 'kids5.jpg', 'kids'),
(17, 4, 3, 'Kids Unisex dungrees ', 1100, '', 'kids6.jpg', 'kids'),
(18, 4, 3, 'boy dungrees', 1349, '', 'kids7.jpg', 'kids'),
(19, 4, 3, 'kids Pajama-tshirt Set', 1399, '', 'kids8.jpg', 'kids'),
(20, 4, 3, 'boy soft pant ', 899, '', 'kids9.jpg', 'kids'),
(21, 4, 3, 'boys striped pant', 799, '', 'kids10.jpg', 'kids'),
(22, 4, 7, 'girls floral pant cloth set', 1250, '', 'kids11.jpg', 'girls wear'),
(23, 4, 7, 'girls skirt Tshirt Set', 1149, '', 'kids12.jpg', 'girls wear'),
(24, 4, 7, 'girls funky party wear', 1399, '', 'kids13.jpg', 'girls wear'),
(25, 4, 7, 'girls crop top and long skirt set', 1350, '', 'kids14.jpg', 'girls wear'),
(26, 4, 7, 'girl stripped plazzo & crop top set', 1249, '', 'kids15.jpg', 'girls wear'),
(27, 2, 6, 'women black kurta set', 999, '', 'kurta1.jpg', 'women kurta set'),
(28, 2, 6, 'Women Yellow Kurta with Payjama set', 1200, '', 'kurta2.jpg', 'women kurta set'),
(29, 2, 6, 'Women Carrot dress Material', 1100, '', 'kurta3.jpg', 'women kurta set'),
(30, 2, 6, 'Women Dress Combo', 1199, '', 'kurta4.jpg', 'women kurta set'),
(31, 2, 6, 'Women Dress MAterial', 799, '', 'kurta5.jpg', 'women kurta set'),
(32, 2, 8, 'Women Black Skirt', 999, '', 'skirt1.jpg', 'Womens Skirt'),
(33, 2, 8, 'Women Yellow skirt', 899, '', 'skirt2.jpg', 'Womens Skirt'),
(34, 2, 8, 'Women Pink Printed Skirt', 850, '', 'skirt3.jpg', 'Womens Skirt'),
(35, 2, 8, 'Women Maroon Printed skirt', 899, '', 'skirt4.jpg', 'Womens Skirt'),
(36, 2, 8, 'Women Black Printed Skirt', 850, '', 'skirt5.jpg', 'Womens Skirt'),
(37, 3, 4, 'men-kurta1', 1200, '', 'men-kurta1.jpg', 'men kurta'),
(38, 3, 4, 'men-kurta2', 1299, '', 'men-kurta2.jpg', 'men kurta'),
(39, 3, 4, 'men-kurta3', 1250, '', 'men-kurta3.jpg', 'men kurta'),
(40, 3, 4, 'men-kurta4', 1350, '', 'men-kurta4.jpg', 'men kurta'),
(41, 3, 4, 'men kurta set', 1350, '', 'men-kurta5.jpg', 'men kurta'),
(42, 3, 5, 'men-t-shirt1', 999, '', 'men-t-shirt1.jpg', 'men t-shirt'),
(43, 3, 5, 'men-t-shirt2', 899, '', 'men-t-shirt2.jpg', 'men t-shirt'),
(44, 3, 5, 'men-t-shirt3', 799, '', 'men-t-shirt3.jpg', 'men t-shirt'),
(45, 3, 5, 'men-t-shirt4', 899, '', 'men-t-shirt4.jpg', 'men t-shirt'),
(46, 3, 5, 'men-t-shirt5', 999, '', 'men-t-shirt5.jpg', 'men t-shirt'),
(47, 1, 1, '2020 HP_touchscreen_premium_leptop', 52000, '', '2020 HP_touchscreen_premium_leptop.jpg', 'HP leptop '),
(48, 1, 1, 'HP 14 HD AMD Ryzen_Leptop', 58999, '', 'HP 14 HD AMD Ryzen_Leptop.jpg', 'HP leptop'),
(49, 1, 1, 'HP Full-HD IPS LED Monitor', 38999, '', 'HP 27er 27-Inch Full HD 1080p IPS LED Monitor.jpg', ''),
(50, 1, 1, 'HP Elite Dragonfly Home and Business Laptop', 28500, '', 'HP Elite Dragonfly Home and Business Laptop.jpg', 'hp leptop'),
(51, 5, 9, 'Sofa set 1 ', 30000, '', 'sofa1.jpeg', 'sofa set'),
(52, 5, 9, 'sofa set - 2', 39999, '', 'sofa2.jpeg', 'sofa set'),
(53, 5, 9, 'sofa set -3 ', 37999, '', 'sofa3.jpeg', 'sofa set'),
(54, 5, 9, 'sofa set 4', 40000, '', 'sofa4.jpeg', 'sofa set'),
(55, 5, 9, 'sofa set 5', 41999, '', 'sofa5.jpeg', 'sofa set '),
(56, 5, 9, 'Dinner Set1', 25000, '', 'dinner1.jpeg', 'Dinner Set'),
(57, 5, 9, 'Dinner Set2', 27999, '', 'dinner2.jpeg', 'Dinner Set'),
(58, 5, 9, 'Dinner Set 3', 29999, '', 'dinner3.jpeg', 'Dinner Set'),
(59, 5, 9, 'Dinner Set 4', 26999, '', 'dinner4.jpeg', 'dinner set'),
(60, 5, 9, 'Dinner Set 5', 26999, '', 'dinner5.jpeg', 'dinner set'),
(61, 6, 10, 'Wall Shleves 1', 12999, '', 'wallshleves1.jpeg', 'Wall Shleves'),
(62, 6, 10, 'Wall Shleves', 9999, '', 'wallshleves2.jpeg', 'Wall Shleves'),
(63, 6, 10, 'wall shleves2', 11999, '', 'wallshleves3.jpeg', 'wall shleves'),
(64, 6, 10, 'wall shleves ', 12000, '', 'wallshleves5.jpeg', 'wall shleves'),
(65, 6, 10, 'wall shleves ', 13999, '', 'wallshleves7.jpeg', 'wall shleves'),
(66, 6, 10, 'wall shleves', 13999, '', 'wallshleves10.jpeg', 'wall shleves'),
(67, 6, 10, 'Home Decor', 5000, '', 'homedecor1.jpeg', 'home decor'),
(68, 6, 10, 'home decor 2', 3999, '', 'homedecor2.jpeg', 'home decor'),
(69, 6, 10, 'home decor 3', 3500, '', 'homedecor3.jpeg', 'home decor'),
(70, 6, 10, 'home decor', 3999, '', 'homedecor4.jpeg', 'home decor'),
(71, 6, 10, 'home decor Item', 4500, '', 'homedecor5.jpeg', 'home decor'),
(72, 6, 11, 'Painting 1', 9999, '', 'painting1.jpeg', 'painting'),
(73, 6, 11, 'painting 2', 8999, '', 'painting2.jpeg', 'painting'),
(74, 6, 11, 'painting 3', 7999, '', 'painting3.jpeg', 'painting'),
(75, 6, 11, 'painting 4', 9999, '', 'painting4.jpeg', 'painting'),
(76, 6, 11, 'painting 5', 5000, '', 'painting5.jpeg', 'painting'),
(77, 6, 11, 'painting 6', 3999, '', 'painting6.jpeg', 'painting'),
(78, 6, 11, 'painting 7', 5000, '', 'painting7.jpeg', 'painting');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'Chirag', 'Sharma', 'abc@gmail.com', 'f15d1a6fd4046af5034799a3851302c5', '7016309072', 'Vidyavihar, Near Ghatkopar, Mumbai, Maharashtra', '512, Ambe Bhawan'),
(4, 'Abc', 'Xyz', 'xyz@gmail.com', 'e471113bae7cb2de30ff181e439e69a1', '9422068953', 'Vidyavihar, Maharashtra', 'Mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
