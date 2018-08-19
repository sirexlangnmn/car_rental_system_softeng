-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2017 at 12:06 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_softeng`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(9, 'Vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`) VALUES
(1, 'Car 2', '5000.00'),
(2, 'Jeep 1', '800.00'),
(3, 'Taxi 1', '1500.00'),
(4, 'LBT1', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

CREATE TABLE `combo_details` (
  `combo_details_id` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `menu_id`) VALUES
(8, 1, 5),
(9, 2, 7),
(10, 3, 11),
(12, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_what`, `event_date`, `event_time`, `event_where`) VALUES
(1, 'SoftEng Project on Process', '2017-09-30', '10:39:00', 'Kahit saan, bahala'),
(2, 'Testing', '2017-07-13', '12:59:00', 'Testing location');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_status`, `member_contact`, `member_address`) VALUES
(1, 'Oro', 'Tata', 'active', '12345678873', 'dadadadadasdasdas'),
(2, 'Driver LN1', 'Diver FN1', 'active', '09098202040', 'vnnvjalkjdlkjlkfjaklfjslajsdklfj');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `cat_id`, `subcat_name`, `menu_desc`, `menu_price`, `menu_pic`) VALUES
(2, 'Bakareta', 2, 'pork', 'Pork Adobo', '100.00', 'indian-food-platter.jpg'),
(18, 'Toyota Altis', 9, 'Cars', 'White', '1000.00', '46996627.jpg'),
(19, 'INNOVA', 9, 'Cars', 'Black', '1100.00', '44220422.jpg'),
(21, 'Toyota Hi Ace', 9, 'Cars', 'White, Good for Family outing', '2500.00', '89681411.jpg'),
(22, 'Chevrolet Tavera', 9, 'Cars', 'White', '1100.00', '8.jpg'),
(23, 'BMW_X6M', 9, 'Cars', 'White', '4500.00', 'BMW_X6M.jpg'),
(24, 'xCar1', 9, 'Cars', 'fnfnsfsnf,m', '2000.00', 'Audi_A4.jpg'),
(25, 'xCar2', 9, 'Cars', 'hkhkh', '3500.00', 'Audi_Q7.jpg'),
(26, 'xCar3', 9, 'Cars', 'ffkdfs', '4500.00', 'Bendz_GLA.jpg'),
(27, 'xCar5', 9, 'Cars', 'fffs', '2800.00', 'Bendz_Vito.jpg'),
(28, 'xCar4', 9, 'Cars', 'afafa', '2800.00', 'bm_x6.jpg'),
(29, 'xCar6', 9, 'Cars', 'ddada', '4800.00', 'BMW_3S.jpg'),
(30, 'xCar7', 9, 'Cars', 'jlj', '3500.00', 'BMW_X6M.jpg'),
(31, 'xCar8', 9, 'Cars', 'fsfs', '4300.00', 'car1.jpg'),
(32, 'xCar9', 9, 'Cars', 'jjh', '4500.00', 'car3.jpg'),
(33, 'xCar10', 9, 'Cars', 'hjhkhkj', '4200.00', 'Corolla.jpg'),
(34, 'xCar11', 9, 'Cars', 'ghfghg', '2300.00', 'CX3.jpg'),
(35, 'xCar12', 9, 'Cars', 'jkhkjkj', '2300.00', 'CX3.jpg'),
(36, 'xCar13', 9, 'Cars', 'mbmbm', '1200.00', 'Duster.jpg'),
(37, 'xCar14', 9, 'Cars', 'fsffs', '1200.00', 'Ford-E_150.jpg'),
(38, 'xCar15', 9, 'Cars', 'hgj', '1400.00', 'Highlander.jpg'),
(39, 'xCar16', 9, 'Cars', 'hhkhjk', '2600.00', 'Legend_45.jpg'),
(40, 'xCar17', 9, 'Cars', 'gffa', '2700.00', 'Navara.jpg'),
(41, 'xCar18', 9, 'Cars', 'hjkhhjk', '2800.00', 'Sportage.jpg'),
(42, 'xCar19', 9, 'Cars', 'kk', '3400.00', 'Volvo_V40.jpg'),
(43, 'xCar20', 9, 'Cars', 'jj', '2220.00', 'Volvo_XC60.jpg'),
(44, 'xCar21', 9, 'Cars', 'jjkl', '1900.00', 'VW_Amarok.JPG'),
(45, 'xCar23', 9, 'Cars', 'jjljl', '5000.00', 'VW_Carra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `fullname`, `email`, `subject`, `message`, `date`) VALUES
(1, 'test5', 'test5@gmail.com', 'Reklamo', 'COmments', '2017-07-22 01:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28'),
(2, 2, 42, '2017-07-16'),
(3, 2, 42, '2017-07-16'),
(4, 2, 45, '2017-07-16'),
(5, 7500, 66, '2017-07-24'),
(6, 10, 64, '2017-07-24'),
(7, 10, 64, '2017-07-24'),
(8, 500, 66, '2017-07-24'),
(9, 700, 66, '2017-07-24'),
(10, 700, 66, '2017-07-24'),
(11, 1, 64, '2017-07-24'),
(12, 1, 64, '2017-07-24'),
(13, 2, 73, '2017-07-25'),
(14, 500, 73, '2017-07-25'),
(15, 850, 65, '2017-07-27'),
(16, 35000, 75, '2017-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) NOT NULL,
  `r_ocassion` varchar(50) NOT NULL,
  `r_motif` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `r_venue` varchar(100) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(75, '2017-07-31', '05:00:00', 'test1', 'test1', '09098202040', 'test1@gmail.com', 'test 1 adress', 'Personal', 'Valenzuela', 'Black', 0, 'Wedding', '25000.00', '-10000.00', 'Approved', '2017-07-27', 'vVUZoz0H7X', 5, 1, '5000.00', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

CREATE TABLE `r_combo` (
  `r_combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_details`
--

INSERT INTO `r_details` (`r_details_id`, `rid`, `combo_id`, `r_nop`, `r_total`, `r_price`) VALUES
(1, 53, 0, 0, '1000.00', '0.00'),
(2, 54, 0, 0, '1000.00', '0.00'),
(3, 54, 0, 0, '1000.00', '0.00'),
(4, 54, 0, 0, '6000.00', '0.00'),
(5, 55, 0, 0, '2000.00', '0.00'),
(6, 55, 0, 0, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

CREATE TABLE `r_noncombo` (
  `r_non_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_noncombo`
--

INSERT INTO `r_noncombo` (`r_non_id`, `rid`, `menu_id`, `serve`) VALUES
(1, 53, 5, 1),
(2, 54, 5, 1),
(3, 54, 5, 1),
(4, 54, 5, 6),
(5, 55, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`) VALUES
(1, 'Cars'),
(2, 'Jeep'),
(3, 'Taxi'),
(10, 'Lipat Bahay Truck');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'Federex A. Potolin', 'admin', '123', 'active'),
(2, 'Federex A. Potolin', 'federexpotolin', 'federexpotolin', 'active'),
(3, 'Princess Mae Zorca', 'princesszorca', 'princesszorca', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `combo_details`
--
ALTER TABLE `combo_details`
  ADD PRIMARY KEY (`combo_details_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `r_combo`
--
ALTER TABLE `r_combo`
  ADD PRIMARY KEY (`r_combo_id`);

--
-- Indexes for table `r_details`
--
ALTER TABLE `r_details`
  ADD PRIMARY KEY (`r_details_id`);

--
-- Indexes for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  ADD PRIMARY KEY (`r_non_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`team_member_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `combo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `combo_details`
--
ALTER TABLE `combo_details`
  MODIFY `combo_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `r_combo`
--
ALTER TABLE `r_combo`
  MODIFY `r_combo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_details`
--
ALTER TABLE `r_details`
  MODIFY `r_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  MODIFY `r_non_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `team_member_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
