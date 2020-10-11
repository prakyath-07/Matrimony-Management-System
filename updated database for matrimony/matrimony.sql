-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 06:03 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'ad', 'ad', 'ad@m');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` int(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `education` text NOT NULL,
  `firstname` text NOT NULL,
  `mothertounge` text NOT NULL,
  `weight` int(5) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(20) NOT NULL,
  `no_bro` int(5) NOT NULL,
  `no_sis` int(5) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `email`, `age`, `height`, `sex`, `religion`, `district`, `state`, `country`, `maritalstatus`, `education`, `firstname`, `mothertounge`, `weight`, `dateofbirth`, `occupation`, `occupation_descr`, `annual_income`, `no_bro`, `no_sis`, `aboutme`, `profilecreationdate`) VALUES
(4, 32, 'joken@yahoo.com', '12', 654, 'Male', 'Christian', 'Trivandrum', 'Kerala', 'India', 'Married', 'Tenth level', 'Akshay Diaz', 'Hindi', 45, '0000-00-00', 'dfefGw', 'ewhg', '54.354', 1, 1, '', '2019-10-16'),
(5, 34, '', '26', 5, 'Female', 'Christian', 'Trivandrum', 'Kerala', 'India', 'Married', 'Tenth level', 'Manu Mayya', 'Hindi', 878, '1994-05-02', 'jj', 'nn', ' nmn', 5, 4, 'jhbhb', '2019-11-09'),
(6, 15, '', '22', 0, 'Male', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Tenth level', 'Pranith Shetty', 'Hindi', 4566666, '1998-02-22', '', '', '', 1, 1, '', '2019-11-09'),
(10, 31, '', '28', 6, 'Male', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Married', 'Tenth level', 'abdul', 'Hindi', 69, '1993-02-16', 'haha', 'hhe', '999', 1, 1, 'hhh', '2019-11-09'),
(11, 38, '', '28', 6, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Married', 'Tenth level', 'Akhila janney', 'Hindi', 75, '1992-09-04', 'Engineer', 'Student', '350000', 1, 1, 'You knows me!!', '2019-11-09'),
(12, 39, '', '28', 6, 'Female', 'Christian', '', 'Kerala', 'China', 'Married', 'Tenth level', 'Anjali', 'Hindi', 45, '1991-03-03', 'Engineer', 'Dont know', '1485526', 1, 1, 'you knowsme', '2019-11-09'),
(13, 51, '', '21', 123, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'Prajna Bhat', 'Malayalam', 48, '1998-07-31', 'Engineer', 'Student', '175000', 1, 1, 'singer', '2019-11-14'),
(14, 52, '', '19', 123, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'Roopa', 'Malayalam', 89, '1998-01-03', 'Engineer', 'Student', '380000', 1, 1, '', '2019-11-14'),
(15, 53, '', '20', 123, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Married', 'Tenth level', 'Rakshitha', 'Malayalam', 52, '0000-00-00', 'Engineer', 'Student', '123456', 1, 1, '', '2019-11-14'),
(16, 42, '', '21', 123, 'Female', 'Muslim', 'Trivandrum', 'Kerala', 'China', 'Married', 'Primary', 'Nihala', 'Hindi', 25, '1998-02-07', 'Engineer', '', '', 1, 1, '', '2019-11-14'),
(17, 55, '', '21', 25, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Married', 'Primary', 'sampritha', 'Malayalam', 45, '1991-01-02', 'Engineer', 'Student', '12345', 1, 1, '', '2019-11-14'),
(18, 56, '', '20', 123, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'shreya', 'Malayalam', 99, '1998-11-20', '', '', '', 1, 1, '', '2019-11-14'),
(19, 57, '', '19', 134, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'Harsha', 'Malayalam', 45, '1991-02-02', 'Engineer', 'Student', '456321', 1, 1, '', '2019-11-14'),
(20, 58, '', '23', 123, 'Female', 'Christian', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'Venisha', 'Malayalam', 56, '1998-04-04', 'Engineer', 'Student', '789654', 1, 1, '', '2019-11-14'),
(21, 41, '', '21', 123, 'Female', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'PG', 'Pooja Naik', 'Malayalam', 89, '1998-01-01', 'Engineer', 'Student', '789456', 1, 1, 'Parameshwar is my ammer!!!', '2019-11-14'),
(22, 29, '', '21', 135, 'Male', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Degree', 'Prakyath', 'Hindi', 65, '1998-09-16', 'Engineer', 'Student', '7894552', 1, 1, '', '2019-11-14'),
(23, 62, '', '21', 134, 'Male', 'Christian', 'Trivandrum', 'Kerala', 'India', 'Single', 'Primary', 'Dhanush', 'Malayalam', 69, '1993-02-03', 'Engineer', 'Student', '12356', 1, 1, 'Single from last 20 years!!\r\nHey stranger! please help me!!', '2019-11-14'),
(24, 63, '', '19', 96, 'Male', 'Hindu', 'Trivandrum', 'Kerala', 'India', 'Single', 'Tenth level', 'sharath krishnappa', 'Hindi', 96, '1999-02-02', 'Engineer', 'Student', '54543', 1, 1, 'I Love you stranger!', '2019-11-14'),
(25, 64, '', '20', 20, 'Male', 'Hindu', 'Kollam', 'Taminadu', 'India', 'Married', 'Tenth level', 'ashok', 'English', 52, '1992-01-11', 'heg', 'tfhg', '200', 1, 1, '', '2019-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `partnerprefs`
--

CREATE TABLE `partnerprefs` (
  `id` int(10) NOT NULL,
  `custId` int(10) NOT NULL,
  `agemin` varchar(3) NOT NULL,
  `agemax` int(3) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `complexion` varchar(10) NOT NULL,
  `height` int(3) NOT NULL,
  `diet` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partnerprefs`
--

INSERT INTO `partnerprefs` (`id`, `custId`, `agemin`, `agemax`, `maritalstatus`, `complexion`, `height`, `diet`, `religion`, `caste`, `subcaste`, `mothertounge`, `education`, `occupation`, `country`, `descr`) VALUES
(10, 32, '', 0, '', '', 0, '', '', '', '', '', '', '', '', ''),
(11, 34, '18', 23, 'Single', '', 10, '', 'Hindu', '', '', '', 'PG', 'Illad ithndala malljii marre', 'Hindu', 'Must Be Loyal.'),
(13, 31, '18', 45, 'Single', '', 79, '', 'Hindu', '', '', '', 'PG', 'jygyjg', 'Muslim', 'illad ithndala mallejji edde ithnda aand'),
(14, 64, '25', 52, 'Single', '', 0, '', 'Hindu', '', '', '', 'PG', 'thgfh', 'Hindu', 'tygyjh');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(25) NOT NULL,
  `pic2` varchar(40) NOT NULL,
  `pic3` varchar(40) NOT NULL,
  `pic4` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `cust_id`, `pic1`, `pic2`, `pic3`, `pic4`) VALUES
(36, 32, '2.jpg', '3.jpg', '', '9.jpg'),
(37, 34, 'baby-2047595_960_720.jpg', '', '', ''),
(38, 15, '6.jpg', '', '', ''),
(39, 31, '5.jpg', '', '', ''),
(40, 38, 'IMG_8331.JPG', '', '', ''),
(41, 39, 'IMG_8583.JPG', '', '', ''),
(42, 51, 'IMG_8626.JPG', '', '', ''),
(43, 52, 'IMG_8911.JPG', '', '', ''),
(44, 53, 'IMG_8541.JPG', '', '', ''),
(45, 42, 'IMG_8424.JPG', '', '', ''),
(46, 55, 'IMG_8251.JPG', '', '', ''),
(47, 56, 'IMG_8370.JPG', '', '', ''),
(48, 57, 'IMG_8407.JPG', '', '', ''),
(49, 58, 'IMG_8790.JPG', '', '', ''),
(50, 41, 'IMG_8338.JPG', '', '', ''),
(51, 29, '5555.jpg', '', '', ''),
(52, 61, 'xS5D8Py-meme-wallpaper.jp', '', '', ''),
(53, 62, 'IMG_9186.JPG', '', '', ''),
(54, 63, 'IMG_9059.JPG', '', '', ''),
(55, 64, 'FINAL1.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(29, 0, 'prakyath', '123', 'pranith@gmail.com', '2005-11-13', 'male', 0),
(31, 0, 'abdul', '123', 'pranith@gmail.com', '2004-12-11', 'male', 0),
(32, 0, 'akshay dias', '123', 'joken@yahoo.com', '2005-11-11', 'male', 0),
(34, 0, 'manu', 'manu', 'manu@gmail.com', '1998-11-11', 'male', 0),
(38, 0, 'akhila', '123', '123', '1999-12-12', 'male', 0),
(39, 0, 'anjali', '123', '123', '2006-11-11', 'male', 0),
(40, 0, 'admin', 'admin', 'admin@admin.com', '2006-12-09', 'male', 0),
(41, 0, 'pooja', '123', 'pooja@gmail.com', '0000-00-00', 'male', 0),
(42, 0, 'Nihala', '123456', 'nihala@gmail.com', '1998-12-12', 'femal', 0),
(48, 0, 'old site', '123', 'juhd', '1998-11-17', 'male', 0),
(51, 0, 'prajna', '123456', 'prajna@gmail.com', '2006-12-11', 'femal', 0),
(52, 0, 'Roopa', '123456', 'roopa@gmail.com', '2005-12-11', 'femal', 0),
(53, 0, 'Rakshitha', '123456', 'rakshith@gmail.com', '2005-10-12', 'femal', 0),
(55, 0, 'sampritha', '123456', 'sampritha@gmail.com', '0000-00-00', 'femal', 0),
(56, 0, 'shreya', '123456', 'shreya@gmail.com', '2006-11-09', 'male', 0),
(57, 0, 'harsha', '123456', 'h@gm', '0000-00-00', 'male', 0),
(58, 0, 'venisha', '123456', 'joken@yahoo.com', '0000-00-00', 'male', 0),
(62, 0, 'dhanush', '123456', 'joken@yahoo.com', '0000-00-00', 'male', 0),
(63, 0, 'sharath', '123456', 'joken@yahoo.com', '0000-00-00', 'male', 0),
(64, 0, 'ashok', '123456', 'ashok@gmail.com', '1999-01-19', 'male', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custId` (`custId`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
