-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2018 at 09:47 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bike`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `username`) VALUES
(1, 'admin@gmail.com', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bike_table`
--

CREATE TABLE `bike_table` (
  `SN` int(11) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Bike_Model` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Year` year(4) NOT NULL,
  `Engine_Size` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_table`
--

CREATE TABLE `brand_table` (
  `SN` int(11) NOT NULL,
  `Brand_ID` varchar(255) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_table`
--

INSERT INTO `brand_table` (`SN`, `Brand_ID`, `Brand_Name`) VALUES
(1, 'B101', 'Yamaha'),
(2, 'B102', 'Hero'),
(3, 'B103', 'HONDA'),
(4, 'B104', 'BAJAJ'),
(5, 'B105', 'TVS'),
(6, 'B106', 'ROYAL ENFIELD');

-- --------------------------------------------------------

--
-- Table structure for table `buy_table`
--

CREATE TABLE `buy_table` (
  `SN` int(11) NOT NULL,
  `SessionID` varchar(255) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `cat_id` int(11) NOT NULL,
  `SN` int(11) NOT NULL,
  `Category_ID` varchar(255) NOT NULL,
  `Category_Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`cat_id`, `SN`, `Category_ID`, `Category_Name`) VALUES
(15, 3, 'C103', 'Cables and Levers'),
(16, 2, 'C102', 'Brakes'),
(17, 1, 'C101', 'Common Services'),
(18, 4, 'C104', 'Tyres/Tubes'),
(19, 5, 'C105', 'Body Parts'),
(20, 6, 'C106', 'Lights and Electricals'),
(21, 12, 'C107', 'Other Fluids'),
(22, 13, 'C108', 'Engine and Clutch');

-- --------------------------------------------------------

--
-- Table structure for table `classification_categories`
--

CREATE TABLE `classification_categories` (
  `Classification_ID` varchar(255) NOT NULL,
  `Engine_Classification` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classification_categories`
--

INSERT INTO `classification_categories` (`Classification_ID`, `Engine_Classification`) VALUES
('CID101', 'Bikes Below 150CC'),
('CID102', 'Scooters Below 150CC'),
('CID103', 'Bikes 150CC and 220CC'),
('CID104', 'Bikes 220CC and 500CC');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_table`
--

CREATE TABLE `pricing_table` (
  `SN` int(11) NOT NULL,
  `Service_Name` varchar(255) NOT NULL,
  `Category_Name` varchar(255) NOT NULL,
  `Bikes_Below_150CC` int(11) NOT NULL,
  `Scooters_Below_150CC` int(11) NOT NULL,
  `Bikes_Btw_150_220CC` int(11) NOT NULL,
  `Bikes_Btw_220_500CC` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing_table`
--

INSERT INTO `pricing_table` (`SN`, `Service_Name`, `Category_Name`, `Bikes_Below_150CC`, `Scooters_Below_150CC`, `Bikes_Btw_150_220CC`, `Bikes_Btw_220_500CC`) VALUES
(3, 'Battery Replacement', 'Common Services', 50, 50, 50, 50),
(4, 'Battery Charging', 'Common Services', 50, 50, 50, 100),
(5, 'Health Inspection', 'Common Services', 200, 200, 200, 200),
(6, 'Clutch Cable Replacement', 'Common Services', 50, 0, 50, 50),
(7, 'Carburetor Clean', 'Common Services', 50, 150, 100, 100),
(8, 'Lock assy or Ignition Key assy replacement', 'Common Services', 200, 250, 300, 300),
(9, 'Front Fork Oil or Seal replacement', 'Common Services', 200, 200, 300, 300),
(10, 'Petrol Pipe replacement', 'Common Services', 50, 50, 50, 50),
(11, 'Chain Sprocket Replacement', 'Common Services', 200, 0, 350, 350),
(12, 'Clutch Overhaul', 'Common Services', 300, 250, 350, 350),
(13, 'Cone Set or Steering Ball Race Replacement', 'Common Services', 250, 250, 350, 350),
(14, 'Fork Bend Removal', 'Common Services', 500, 500, 500, 500),
(15, 'Tappet Adjustment', 'Common Services', 50, 50, 50, 50),
(16, 'Spark Plug replacement', 'Common Services', 50, 50, 50, 50),
(17, 'Air Filter Replacement ', 'Common Services', 50, 50, 50, 50),
(20, 'Air Filter Replacement ', 'Other Fluids', 50, 50, 50, 50),
(21, 'dhfsajd', 'hjf', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sell_table`
--

CREATE TABLE `sell_table` (
  `SN` int(11) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Version` varchar(255) NOT NULL,
  `Year` year(4) NOT NULL,
  `Kilometers_run` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `SN` int(11) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `Service_ID` varchar(255) NOT NULL,
  `Service_Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_table`
--

INSERT INTO `service_table` (`SN`, `cat_id`, `Service_ID`, `Service_Name`) VALUES
(5, '0', 'S101', 'Battery Replacement'),
(6, '0', 'S102', 'Battery Charging'),
(7, '0', 'S103', 'Health Inspection'),
(8, '0', 'S104', 'Clutch Cable Replacement'),
(9, '0', 'S105', 'Carburetor Clean'),
(10, '0', 'S106', 'Lock assy or Ignition Key assy replacement'),
(11, '0', 'S107', 'Front Fork Oil or Seal replacement'),
(12, '0', 'S108', 'Petrol Pipe replacement'),
(13, '0', 'S109', 'Chain Sprocket Replacement'),
(14, '0', 'S110', 'Clutch Overhaul'),
(15, '0', 'S111', 'Cone Set or Steering Ball Race Replacement'),
(16, '0', 'S112', 'Fork Bend Removal'),
(17, '0', 'S113', 'Tappet Adjustment'),
(18, '0', 'S114', 'Spark Plug replacement'),
(19, '0', 'S115', 'Air Filter Replacement '),
(20, '0', 'S116', 'Brake Shoe Replacement'),
(21, '0', 'S117', 'Brake Pad Replacement'),
(22, '0', 'S118', 'Disc Brake Bleeding'),
(23, '0', 'S119', 'Disc Plate Replacement'),
(24, '0', 'S120', 'Disc Caliper Replacement'),
(25, '0', 'S121', 'Master Cylinder Overhaul'),
(26, '0', 'S122', 'Brakes Cleaning'),
(27, '0', 'S123', 'Accelerator Cable Replacement'),
(28, '0', 'S124', 'Speedometer Cable Replacement'),
(29, '0', 'S125', 'Throttle Cable Replacement'),
(30, '0', 'S126', 'Brake Cable Replacement'),
(31, '0', 'S127', 'Seat Cable Replacement'),
(32, '0', 'S128', 'Clutch Lever Replacement'),
(33, '0', 'S129', 'Brake Lever Replacement'),
(34, '0', 'S130', 'Rear Brake Pedal Replacement'),
(35, '0', 'S131', 'Tyre Replacement'),
(36, '0', 'S132', 'Tube Replacement'),
(37, '0', 'S133', 'Spoke Wheel Replacement'),
(38, '0', 'S134', 'Alloy Wheel Replacement'),
(39, '0', 'S135', 'Rim or Alloy Wheel Truing'),
(40, '0', 'S136', 'Wheel Bearing Replacement'),
(41, '0', 'S137', 'Tyre Tubeless Puncture'),
(42, '0', 'S138', 'Tyre Tube Puncture'),
(43, '0', 'S139', 'Center Stand Replacement'),
(44, '0', 'S140', 'Side Stand Replacement'),
(45, '0', 'S141', 'Mirror Replacement'),
(46, '0', 'S142', 'Handle Bar Replacement'),
(47, '0', 'S143', 'Lock Set Replacement'),
(48, '0', 'S144', 'Foot Rest Replacement'),
(49, '0', 'S145', 'Mudguard Replacement'),
(50, '0', 'S146', 'Crash Guard Replacement'),
(51, '0', 'S147', 'Chain Cover Replacement'),
(52, '0', 'S148', 'Head Light Unit'),
(53, '0', 'S149', 'Headlight Bulb Replacement'),
(54, '0', 'S150', 'Tail Light Bulb Replacement'),
(55, '0', 'S151', 'Indicator Bulb or Indicator Replacement'),
(56, '0', 'S152', 'Switch Assembly Replacement'),
(57, '0', 'S153', 'Wiring Checkup'),
(58, '0', 'S154', 'Wiring Harness Replacement'),
(59, '0', 'S155', 'Fuse Replacement'),
(60, '0', 'S156', 'Parking Bulbs Replacement'),
(61, '0', 'S157', 'Magnet Coil Checkup'),
(62, '0', 'S158', 'Wiring Overhaul'),
(63, '0', 'S159', 'Oiling and Lubrication'),
(64, '0', 'S160', 'Fork Oil Replacement'),
(65, '0', 'S161', 'Brake Fluid Replacement'),
(66, '0', 'S162', 'Coolant Top Up'),
(67, '0', 'S163', 'Battery Distilled Water Top Up'),
(68, '0', 'S164', 'Half Engine Overhaul'),
(69, '0', 'S165', 'Full Engine Overhaul');

-- --------------------------------------------------------

--
-- Table structure for table `subplans_pricing`
--

CREATE TABLE `subplans_pricing` (
  `Plan_ID` int(11) NOT NULL,
  `Engine_Classification` varchar(255) NOT NULL,
  `Plan_Name` varchar(255) NOT NULL,
  `No_of_Services` int(11) NOT NULL,
  `Breakdown_Assist` int(11) NOT NULL,
  `Duration_Years` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subplans_pricing`
--

INSERT INTO `subplans_pricing` (`Plan_ID`, `Engine_Classification`, `Plan_Name`, `No_of_Services`, `Breakdown_Assist`, `Duration_Years`, `Price`, `Discount`) VALUES
(1, 'Bikes Below 150CC', 'Basic Plan', 3, 0, 1, 1061, 14),
(2, 'Bikes Below 150CC', 'Standard Plan', 4, 0, 1, 1356, 18),
(3, 'Bikes Below 150CC', 'Premium Plan', 6, 0, 1, 2005, 19),
(4, 'Bikes 150CC and 220CC', 'Basic Plan', 4, 0, 1, 1189, 17),
(5, 'Bikes 150CC and 220CC', 'Standard Plan', 5, 0, 1, 1533, 19),
(6, 'Bikes 150CC and 220CC', 'Premium Plan', 6, 0, 1, 2233, 20),
(7, 'Bikes 220CC and 500CC', 'Basic Plan', 3, 0, 1, 1651, 15),
(8, 'Bikes 220CC and 500CC', 'Standard Plan', 4, 0, 1, 2133, 18),
(9, 'Bikes 220CC and 500CC', 'Premium Plan', 6, 0, 1, 3067, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `login_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `status`, `login_time`, `created_at`, `updated_at`, `login_status`) VALUES
(3, 'amit', 'amit@gmail.com', '9990708450', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2018-06-11 22:03:00', '2018-06-05 19:49:26', '2018-06-11 22:03:00', 0),
(4, 'Shubham Sahu', 'sahutech8@gmail.com', '3468732547', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bikes`
--

CREATE TABLE `user_bikes` (
  `User_BikeID` int(11) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Year` year(4) NOT NULL,
  `Variant` varchar(255) NOT NULL,
  `Registration_No` varchar(10) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Kilometers_Driven` int(11) NOT NULL,
  `Insurance_Validity` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_database`
--

CREATE TABLE `user_database` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_Mobile` varchar(10) NOT NULL,
  `User_Address` varchar(255) NOT NULL,
  `User_Password` varchar(255) NOT NULL,
  `OTP` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_database`
--

INSERT INTO `user_database` (`User_ID`, `User_Name`, `User_Email`, `User_Mobile`, `User_Address`, `User_Password`, `OTP`) VALUES
(1, 'Admin', 'admin@vkbikes.com', '', '', 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike_table`
--
ALTER TABLE `bike_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `brand_table`
--
ALTER TABLE `brand_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `buy_table`
--
ALTER TABLE `buy_table`
  ADD PRIMARY KEY (`SN`),
  ADD UNIQUE KEY `SN` (`SN`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `classification_categories`
--
ALTER TABLE `classification_categories`
  ADD PRIMARY KEY (`Classification_ID`);

--
-- Indexes for table `pricing_table`
--
ALTER TABLE `pricing_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sell_table`
--
ALTER TABLE `sell_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `subplans_pricing`
--
ALTER TABLE `subplans_pricing`
  ADD PRIMARY KEY (`Plan_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bikes`
--
ALTER TABLE `user_bikes`
  ADD PRIMARY KEY (`User_BikeID`),
  ADD UNIQUE KEY `Registration_No` (`Registration_No`);

--
-- Indexes for table `user_database`
--
ALTER TABLE `user_database`
  ADD PRIMARY KEY (`User_Email`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bike_table`
--
ALTER TABLE `bike_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `brand_table`
--
ALTER TABLE `brand_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `buy_table`
--
ALTER TABLE `buy_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pricing_table`
--
ALTER TABLE `pricing_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `sell_table`
--
ALTER TABLE `sell_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `subplans_pricing`
--
ALTER TABLE `subplans_pricing`
  MODIFY `Plan_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_bikes`
--
ALTER TABLE `user_bikes`
  MODIFY `User_BikeID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
