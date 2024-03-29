-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 04:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `renter_id` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `papers` varchar(100) NOT NULL,
  `reg_no` varchar(30) NOT NULL,
  `price` bigint(20) NOT NULL,
  `km` int(11) NOT NULL,
  `excess` int(11) NOT NULL,
  `mileage` float NOT NULL,
  `c_stat` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `renter_id`, `company`, `name`, `year`, `model`, `image`, `papers`, `reg_no`, `price`, `km`, `excess`, `mileage`, `c_stat`, `availability`) VALUES
(5, 1, 'Toyota', 'innovva', 2000, 2, 'car1.jpg', 'assignment_ML1.pdf', 'KL05AS1752', 750, 150, 10, 1, 1, 1),
(6, 2, 'maruti', 'maruti 800', 2010, 3, '800.jpg', 'assignment_ML1.pdf', 'kl34e4567', 600, 150, 10, 17, 1, 1),
(7, 3, 'Mahindra', 'xuv 500', 2020, 1, 'xuv500.jpg', 'assignment_ML1.pdf', 'kl05as1756', 780, 150, 10, 6, 1, 1),
(8, 3, 'Renault', 'Triber', 2010, 2, 'Renault-Triber-PNG-Photos.png', 'assignment_ML1.pdf', 'kl05as1759', 780, 140, 9, 10, 1, 1),
(10, 5, 'Suzuki', 'dzire', 2020, 3, 'dzire.png', 'assignment_ML1.pdf', 'kl05as3752', 600, 150, 10, 12, 3, 1),
(11, 9, 'renalt', 'duster', 2010, 1, 'Renault-Triber-PNG-Photos.png', 'assignment_ML1.pdf', 'kl05as1754', 750, 150, 10, 12, 1, 1),
(13, 3, 'toyota', 'corolla', 2022, 3, 'corolla.jpg', 'assignment_ML1.pdf', 'KL34D6754', 789, 130, 0, 12, 1, 1),
(20, 4, 'Maruti', 'Swift', 2010, 1, 'swift.jpg', 'assignment_ML1.pdf', 'KL34D6122', 800, 150, 10, 12, 1, 1),
(21, 4, 'Tata', 'Sumo', 2000, 2, 'sumo.jpg', 'assignment_ML1.pdf', 'KL34D6151', 800, 150, 15, 12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `addresss` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `license` varchar(100) DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `log_id`, `fname`, `lname`, `email`, `phone`, `addresss`, `place`, `license`) VALUES
(2, 4, 'alen', 'philip', 'alan@gmail.com', 9447017345, 'kottayam', 'kerala', 'license.pdf'),
(4, 12, 'babu', 'suresh', 'babu@gmail.com', 9888888888, 'koplantharachirayil', 'punchavayal', 'license.pdf'),
(5, 14, 'akshay', 'kumar', 'arunbabu8074@gmail.com', 9878654334, 'house', 'punchavayal', 'license.pdf'),
(6, 16, 'bindhu', 'babu', 'arunbabu202a@mca.ajce.in', 9888888889, 'house', 'punchavayal', 'license.pdf'),
(7, 18, 'bilu', 'amsu', 'arunbabu023a@mca.ajce.in', 9888888877, 'house', 'mundakayam', 'license.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dbook`
--

CREATE TABLE `dbook` (
  `book_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `book_date` date NOT NULL,
  `drop_date` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `start_km` bigint(20) NOT NULL,
  `end_km` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbook`
--

INSERT INTO `dbook` (`book_id`, `cus_id`, `driver_id`, `book_date`, `drop_date`, `location`, `destination`, `start_km`, `end_km`, `amount`, `stat`) VALUES
(1, 4, 11, '2023-03-01', '2023-03-03', 'mundakayam', 'thrisur', 0, 0, 0, 0),
(2, 4, 11, '2023-03-29', '2023-03-29', 'mundakayam', 'kannur', 6000, 6170, 900, 5),
(3, 4, 11, '2023-03-30', '2023-03-30', 'mundakayam', 'kottayam', 8000, 8100, 800, 4);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `renter_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `addresss` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pincode` bigint(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `license` varchar(200) NOT NULL,
  `dim` varchar(100) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `log_id`, `renter_id`, `fname`, `lname`, `email`, `phone`, `addresss`, `place`, `pincode`, `district`, `license`, `dim`, `availability`) VALUES
(14, 39, 3, 'Remo', 'Vikram', 'golejeb908@dogemn.com', 8975645345, 'muthotil', 'Karinilam', 686513, 'Kottayam', 'license.pdf', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driverpay`
--

CREATE TABLE `driverpay` (
  `pay_id` int(11) NOT NULL,
  `dbook_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `pdate` date NOT NULL,
  `payment_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driverpay`
--

INSERT INTO `driverpay` (`pay_id`, `dbook_id`, `amount`, `pdate`, `payment_id`) VALUES
(3, 2, 900, '2023-03-29', 'pay_LXJs6Gt9UknDSY'),
(4, 3, 800, '2023-03-30', 'pay_LXeBItbHNya03l');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL,
  `usertype` int(11) NOT NULL,
  `statuss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `username`, `passwd`, `usertype`, `statuss`) VALUES
(1, 'admin', 'admin', 0, 1),
(2, 'drax', 'drax', 2, 1),
(4, 'alen', 'alen', 1, 1),
(5, 'manu', 'manu', 2, 1),
(7, 'abhi', 'abhi', 2, 1),
(8, 'arun1', 'arun1', 2, 1),
(9, 'don', 'don', 2, 1),
(10, 'sonu', 'sonu', 2, 1),
(12, 'babu12', '1234', 1, 1),
(13, 'george', 'george', 2, 1),
(14, 'akshay', 'akshay', 1, 1),
(15, 'grace', 'grace', 2, 1),
(16, 'bindhu', 'bindhu', 1, 1),
(18, 'bilu', 'bilu', 1, 1),
(20, 'anton', 'anton', 2, 2),
(25, 'baby12', 'baby', 3, 1),
(27, 'Paul', 'paul', 3, 1),
(28, 'uyiu', 'hg', 3, 2),
(30, 'Paulg', 'gg', 3, 0),
(32, 'alex', 'alex', 3, 1),
(33, 'akersh', 'akersh@123', 3, 1),
(34, 'sd', '123234', 3, 2),
(36, 'shijo', 'shijo', 4, 1),
(37, 'arjun', 'arjun', 4, 1),
(39, 'remo', 'remo', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `sender_id`, `receiver_id`, `message`) VALUES
(1, 2, 3, 'hai'),
(2, 3, 2, 'helo'),
(5, 2, 5, 'how r u'),
(6, 3, 7, 'how r u'),
(7, 3, 7, 'how r u'),
(8, 3, 7, 'ggh'),
(9, 3, 7, '1234'),
(10, 2, 0, 'done'),
(11, 2, 0, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model_id`, `model`) VALUES
(1, 'suv'),
(2, 'muv'),
(3, 'sedan'),
(9, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `regpay`
--

CREATE TABLE `regpay` (
  `rpay_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regpay`
--

INSERT INTO `regpay` (`rpay_id`, `name`, `email`, `pay_id`, `amount`) VALUES
(4, 'remo', 'golejeb908@dogemn.com', 'pay_LcOTRdUrPvVSPN', 50);

-- --------------------------------------------------------

--
-- Table structure for table `renter`
--

CREATE TABLE `renter` (
  `renter_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `addresss` varchar(100) NOT NULL,
  `place` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `license` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renter`
--

INSERT INTO `renter` (`renter_id`, `log_id`, `fname`, `lname`, `email`, `phone`, `addresss`, `place`, `district`, `pincode`, `license`) VALUES
(1, 2, 'wargod', 'drax', 'wargoddrax@gmail.com', 9543214567, 'wargod', 'kerala', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(2, 5, 'manu', 'sunu', 'qwe@gmail.com', 9447017876, 'hjk', 'punchavayal', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(3, 7, 'abhijith', 'babu', 'abhi@gmail.com', 9447017805, 'koplantharachirayil', 'punchavayal', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(4, 8, 'arun', 'babu', 'arunbabu23a@mca.ajce.in', 9447017805, 'koplantharachirayil', 'punchavayal', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(5, 9, 'don', 'don', 'don@gmail.com', 9876543210, 'sdfs', 'munk', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(6, 10, 'sonu', 'sonu', 'sonu@gmail.com', 8798654321, 'house', 'koovapally', 'Kottayam', 686513, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(8, 13, 'george', 'jacob', 'georgejacob2023a@mca.ajce.in', 8798654321, 'house', 'punchavayal', 'Idukki', 686514, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(9, 15, 'babu', 'suresh', 'gracekjoseph@gmail.com', 9656968676, 'house', 'koovapally', 'Idukki', 686514, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(10, 8, 'arun', 'babu', 'arunbabu20a@mca.ajce.in', 9447017805, 'koplantharachirayil', 'punchavayal', 'Idukki', 686514, 'Arun_ Sem 1 Grade Card.pdf\r\n'),
(11, 20, 'anton', 's', 'arunbabu2023a@mca.ajce.in', 9888888870, 'house', 'mundakayam', 'Idukki', 686514, 'Arun_ Sem 1 Grade Card.pdf\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `book_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `book_date` date NOT NULL,
  `drop_date` date NOT NULL,
  `stat` int(11) NOT NULL,
  `drive_stat` int(11) NOT NULL,
  `start_km` bigint(20) NOT NULL,
  `end_km` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`book_id`, `cus_id`, `car_id`, `driver_id`, `book_date`, `drop_date`, `stat`, `drive_stat`, `start_km`, `end_km`, `amount`) VALUES
(11, 4, 13, 0, '2022-11-30', '2022-12-01', 3, 0, 0, 0, 0),
(12, 4, 20, 0, '2022-11-26', '2022-11-19', 3, 0, 0, 0, 0),
(18, 6, 20, 0, '2022-11-24', '2022-11-26', 3, 0, 0, 0, 0),
(19, 4, 13, 0, '2022-11-24', '2022-11-26', 3, 0, 0, 0, 0),
(20, 4, 11, 0, '2023-03-24', '2023-03-29', 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_check`
--

CREATE TABLE `tbl_check` (
  `ch_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `checker_id` int(11) NOT NULL,
  `details` varchar(500) NOT NULL,
  `stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_check`
--

INSERT INTO `tbl_check` (`ch_id`, `car_id`, `checker_id`, `details`, `stat`) VALUES
(3, 10, 3, '', 1),
(4, 8, 3, 'good<br>All papers provided by the renter are correct and it is in running condition. No over damage detected. The details about the car are true. The price given is apt for this car and it is apt for our website. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checker`
--

CREATE TABLE `tbl_checker` (
  `checker_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `home` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_checker`
--

INSERT INTO `tbl_checker` (`checker_id`, `log_id`, `fname`, `lname`, `email`, `phone`, `home`, `district`, `city`, `pincode`) VALUES
(2, 36, 'shijo', 'alan', 'golot99820@wifame.com', 9888888870, 'villa', 'Kottayam', 'paika', 686513),
(3, 37, 'arjun', 'rajeev', 'comasi8097@vootin.com', 9687564323, 'arjun villa', 'Kottayam', 'punchavayal', 686513);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fid` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `score` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fid`, `cus_id`, `car_id`, `book_id`, `feedback`, `score`) VALUES
(1, 5, 8, 0, 'its really good', '1.000'),
(2, 5, 8, 0, 'its bad', '1.000'),
(25, 4, 11, 20, 'its a very good option for your drive', '0.910'),
(26, 4, 13, 19, 'very bad experience', '-0.910'),
(27, 4, 5, 14, 'amazing', '0.600'),
(28, 4, 20, 12, 'good for price', '0.700'),
(29, 4, 13, 11, 'its good for price', '0.700');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `l_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `lattitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`l_id`, `log_id`, `lattitude`, `longitude`) VALUES
(1, 7, '9.527869', '76.822154');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `email`, `token`) VALUES
(77, 'docago1795@vootin.com', 293842);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `renter_id` (`renter_id`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `foreign key` (`log_id`);

--
-- Indexes for table `dbook`
--
ALTER TABLE `dbook`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `driverpay`
--
ALTER TABLE `driverpay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `unique` (`username`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `regpay`
--
ALTER TABLE `regpay`
  ADD PRIMARY KEY (`rpay_id`);

--
-- Indexes for table `renter`
--
ALTER TABLE `renter`
  ADD PRIMARY KEY (`renter_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_check`
--
ALTER TABLE `tbl_check`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `tbl_checker`
--
ALTER TABLE `tbl_checker`
  ADD PRIMARY KEY (`checker_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dbook`
--
ALTER TABLE `dbook`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driverpay`
--
ALTER TABLE `driverpay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `regpay`
--
ALTER TABLE `regpay`
  MODIFY `rpay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `renter`
--
ALTER TABLE `renter`
  MODIFY `renter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_check`
--
ALTER TABLE `tbl_check`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_checker`
--
ALTER TABLE `tbl_checker`
  MODIFY `checker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`renter_id`) REFERENCES `renter` (`renter_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`model`) REFERENCES `model` (`model_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `renter`
--
ALTER TABLE `renter`
  ADD CONSTRAINT `renter_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
