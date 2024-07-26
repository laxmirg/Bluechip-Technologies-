-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 10:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluechip_techonologies`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_address` varchar(500) NOT NULL,
  `employee_city` varchar(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `employee_type` varchar(100) NOT NULL,
  `employee_designaton` varchar(200) NOT NULL,
  `basic_salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`employee_id`, `employee_name`, `employee_address`, `employee_city`, `gender`, `contact_no`, `employee_type`, `employee_designaton`, `basic_salary`) VALUES
(23, 'sanvi', 'kumareshwarnagar', 'dharwad', 'female', '9353959460', 'manger', 'chief executive officer', 55000),
(24, 'naveen', 'newbus stop', 'hubli', 'male', '9856321478', 'officer', 'chief operating officer', 54390),
(25, 'shreyas', 'nagar', 'bangalore', 'male', '8775565855', 'asstofficer', 'chief marketing officer', 52369),
(26, 'laxmi', 'sadhankeri', 'bijapur', 'female', '77859642', 'president', 'vice president', 75879);

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary`
--

CREATE TABLE `emp_salary` (
  `salary_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_sal` int(11) NOT NULL,
  `working_days` int(11) NOT NULL,
  `worked_days` int(11) NOT NULL,
  `ot_days` int(11) NOT NULL,
  `other_charges` int(11) NOT NULL,
  `pf` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `salary_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_salary`
--

INSERT INTO `emp_salary` (`salary_id`, `employee_id`, `basic_sal`, `working_days`, `worked_days`, `ot_days`, `other_charges`, `pf`, `month`, `year`, `salary_date`) VALUES
(1, 23, 2000, 25, 20, 15, 2569, 2500, 9, 2001, '2022-07-15'),
(2, 24, 30000, 30, 20, 10, 250, 2596, 8, 1996, '2022-07-21'),
(3, 25, 75000, 29, 24, 15, 2574, 2058, 12, 2012, '2022-07-29'),
(4, 26, 60000, 31, 30, 25, 3002, 25785, 12, 2019, '2022-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `expenditure_id` int(11) NOT NULL,
  `expenditure_name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `total_amount` double NOT NULL,
  `given_to` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `given_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`expenditure_id`, `expenditure_name`, `description`, `total_amount`, `given_to`, `voucher_no`, `given_date`) VALUES
(9, 'chip mounting', 'good', 786, 'sanvi', '169', '2022-07-07'),
(10, 'wire bonding', 'it was good', 654, 'shravya', '234', '2022-07-20'),
(11, 'molding', 'good and bad', 654, 'jyoti', '98', '2022-07-14'),
(12, 'dicing of silicon wafer', 'bad', 324, 'mahalaxmi', '873', '2022-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `hint_q` varchar(100) NOT NULL,
  `hint_a` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `production_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_production` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `production_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`production_id`, `product_id`, `total_production`, `description`, `production_date`) VALUES
(17, 16, 876, 'good', '2022-07-20'),
(18, 18, 2545, 'it was good', '2022-07-30'),
(19, 19, 789, 'good one', '2022-07-26'),
(20, 20, 345, 'good', '2022-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(200) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_image`, `product_price`) VALUES
(16, 'fan regulator', 'good', 'IMG_20220714_204442.jpg', 7896),
(18, 'smart phone', 'it was good', 'IMG_20220714_205131 (1).jpg', 35678),
(19, 'personal computer', 'good one', 'IMG_20220714_205421.jpg', 60000),
(20, 'medical equipment', 'good', 'IMG_20220714_210052.jpg', 99876);

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_details`
--

CREATE TABLE `raw_material_details` (
  `raw_material_id` int(11) NOT NULL,
  `raw_material_name` varchar(100) NOT NULL,
  `raw_material_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material_details`
--

INSERT INTO `raw_material_details` (`raw_material_id`, `raw_material_name`, `raw_material_description`) VALUES
(7, 'silicon', 'good'),
(8, 'wafer', 'good'),
(9, 'dicing tape', 'good'),
(10, 'die collet', 'bad');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_purchase`
--

CREATE TABLE `raw_material_purchase` (
  `raw_material_purchase_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material_purchase`
--

INSERT INTO `raw_material_purchase` (`raw_material_purchase_id`, `vendor_id`, `date`) VALUES
(9, 15, '2022-07-07'),
(10, 169, '2022-07-06'),
(11, 176, '2022-07-23'),
(12, 166, '2022-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_purchase_details`
--

CREATE TABLE `raw_material_purchase_details` (
  `raw_material_purchase_details_id` int(11) NOT NULL,
  `raw_material_purchase_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` double NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material_purchase_details`
--

INSERT INTO `raw_material_purchase_details` (`raw_material_purchase_details_id`, `raw_material_purchase_id`, `raw_material_id`, `quantity`, `rate`, `discount`) VALUES
(1, 9, 7, 345, 8765, 10),
(2, 10, 8, 789, 3652, 20),
(3, 10, 9, 89, 3659, 15),
(4, 12, 9, 2596, 22589, 25);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`stock_id`, `product_id`, `stock`) VALUES
(6, 16, 345),
(7, 18, 256),
(8, 19, 98),
(9, 20, 87);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

CREATE TABLE `vendor_details` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(50) NOT NULL,
  `vendor_address` varchar(200) NOT NULL,
  `vendor_city` varchar(20) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `vendor_code` varchar(50) NOT NULL,
  `gst_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`vendor_id`, `vendor_name`, `vendor_address`, `vendor_city`, `contact_no`, `email_id`, `vendor_code`, `gst_no`) VALUES
(2, 'shashank', 'tumkur village', 'tumkur', '8896523258', 'shash@gamil.com', '654', '345'),
(3, 'larku', 'vijaypur nagar', 'vijaypur', '7789652376', 'lr@gmail.com', '969', '116'),
(4, 'geeta', 'bangalor nagar', 'bangalor', '6363424292', 'geetarg@gmail.com', '879', '567'),
(5, 'karna', 'mangalore nagar', 'mangalore ', '9856325697', 'karna@gmail.com', '768', '16');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment`
--

CREATE TABLE `vendor_payment` (
  `vendor_payment_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `narration` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_payment`
--

INSERT INTO `vendor_payment` (`vendor_payment_id`, `vendor_id`, `amount`, `narration`, `date`) VALUES
(3, 2, 4000, 'good', '2022-07-22'),
(4, 3, 25689, 'okay', '2022-07-15'),
(5, 4, 36589, 'bad', '2022-07-16'),
(6, 5, 5896, 'bad', '2022-07-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`expenditure_id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`production_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `raw_material_details`
--
ALTER TABLE `raw_material_details`
  ADD PRIMARY KEY (`raw_material_id`);

--
-- Indexes for table `raw_material_purchase`
--
ALTER TABLE `raw_material_purchase`
  ADD PRIMARY KEY (`raw_material_purchase_id`);

--
-- Indexes for table `raw_material_purchase_details`
--
ALTER TABLE `raw_material_purchase_details`
  ADD PRIMARY KEY (`raw_material_purchase_details_id`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `vendor_details`
--
ALTER TABLE `vendor_details`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  ADD PRIMARY KEY (`vendor_payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `emp_salary`
--
ALTER TABLE `emp_salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `expenditure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `production_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `raw_material_details`
--
ALTER TABLE `raw_material_details`
  MODIFY `raw_material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `raw_material_purchase`
--
ALTER TABLE `raw_material_purchase`
  MODIFY `raw_material_purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `raw_material_purchase_details`
--
ALTER TABLE `raw_material_purchase_details`
  MODIFY `raw_material_purchase_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock_details`
--
ALTER TABLE `stock_details`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor_details`
--
ALTER TABLE `vendor_details`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  MODIFY `vendor_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
