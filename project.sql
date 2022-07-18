-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 06:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopter`
--

CREATE TABLE `adopter` (
  `adopter_id` varchar(3) NOT NULL,
  `adopter_name` varchar(32) DEFAULT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `orphan_ID` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adopter`
--

INSERT INTO `adopter` (`adopter_id`, `adopter_name`, `phone_number`, `address`, `orphan_ID`) VALUES
('501', 'Joey Tribbiany', '01866853354', 'Agrabad, Chittagong', '601'),
('502', 'Monica Geller', '01588853354', 'Chowmuhoni, Chittagong', '604'),
('503', 'Ross Geller', '01599953354', 'Mogbazar, Dhaka', '603'),
('504', 'Pheobe Buffay', '01599954454', 'Uttara, Dhaka', '605'),
('505', 'Chandler Bing', '01599957654', 'Bashundhara, Dhaka', '609');

-- --------------------------------------------------------

--
-- Table structure for table `orphan`
--

CREATE TABLE `orphan` (
  `orphan_id` varchar(5) NOT NULL,
  `orphan_name` varchar(32) DEFAULT NULL,
  `supervisor_id` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphan`
--

INSERT INTO `orphan` (`orphan_id`, `orphan_name`, `supervisor_id`) VALUES
('601', 'Ria Hasan', '201'),
('602', 'Joya Ahsan', '201'),
('603', 'Joy Islam', '202'),
('604', 'Rakib Hasan', '202'),
('605', 'Emon pasha', '203'),
('606', 'Musa Aman', '203'),
('607', 'Robin Rogers', '204'),
('608', 'Kishor Dutt', '204'),
('609', 'Kishor Kumar', '205'),
('610', 'Anupam Roy', '205');

-- --------------------------------------------------------

--
-- Table structure for table `orphan_age`
--

CREATE TABLE `orphan_age` (
  `orphan_ID` varchar(3) NOT NULL,
  `date_of_birth` varchar(15) DEFAULT NULL,
  `age` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphan_age`
--

INSERT INTO `orphan_age` (`orphan_ID`, `date_of_birth`, `age`) VALUES
('601', '18-01-2010', 11),
('602', '19-02-2011', 10),
('603', '12-03-2012', 9),
('604', '13-03-2013', 8),
('605', '14-04-2014', 7),
('606', '18-05-2009', 12),
('607', '24-07-2014', 7),
('608', '14-09-2015', 6),
('609', '29-10-2016', 5),
('610', '20-11-2016', 5);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` varchar(3) NOT NULL,
  `owner_name` varchar(10) DEFAULT NULL,
  `owner_mail` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `owner_name`, `owner_mail`) VALUES
('101', 'Tuba Azad', 'tubaazad@gmail.com'),
('102', 'Nitu Hasan', 'nituhasan@gmail.com'),
('103', 'Riad Islam', 'riadislam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `owner_phone`
--

CREATE TABLE `owner_phone` (
  `owner_id` varchar(3) DEFAULT NULL,
  `owner_phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_phone`
--

INSERT INTO `owner_phone` (`owner_id`, `owner_phone`) VALUES
('101', '01848484848'),
('101', '01948575747'),
('102', '01586881818'),
('103', '01686666666');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` varchar(3) NOT NULL,
  `supervisor_name` varchar(32) DEFAULT NULL,
  `supervisor_phone` varchar(11) DEFAULT NULL,
  `salary` varchar(5) DEFAULT NULL,
  `owner_id` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisor_id`, `supervisor_name`, `supervisor_phone`, `salary`, `owner_id`) VALUES
('201', 'Bashar Kazi', '01588594853', '12000', '101'),
('202', 'Arafat Islam', '01590984950', '12000', '101'),
('203', 'Naim Islam', '01586881234', '13000', '102'),
('204', 'Emon Hasan', '01586878987', '16000', '103'),
('205', 'karim rahman', '01580008354', '11000', '103');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopter`
--
ALTER TABLE `adopter`
  ADD PRIMARY KEY (`adopter_id`);

--
-- Indexes for table `orphan`
--
ALTER TABLE `orphan`
  ADD PRIMARY KEY (`orphan_id`);

--
-- Indexes for table `orphan_age`
--
ALTER TABLE `orphan_age`
  ADD PRIMARY KEY (`orphan_ID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
