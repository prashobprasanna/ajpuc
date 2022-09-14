-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 12:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_ID` int(11) NOT NULL,
  `Branch_Name` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `br_details`
--

CREATE TABLE `br_details` (
  `Br_Details_ID` int(11) NOT NULL,
  `Branch_ID` int(11) NOT NULL,
  `Br_Details_Name` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Fac_ID` int(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email_ID` varchar(20) NOT NULL,
  `Status` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Add_1` varchar(100) NOT NULL,
  `Add_2` varchar(100) NOT NULL,
  `Pincode` int(10) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Fac_ID`, `Fname`, `Lname`, `Phone_No`, `Email_ID`, `Status`, `Gender`, `Qualification`, `password`, `Add_1`, `Add_2`, `Pincode`, `url`) VALUES
(1, 'Ram', 'R', '9876543211', 'ram@gmail.com', 'working', 'm', 'BA', 'pass', '', '', 0, ''),
(7, 'cc', 'cc', '2222', 'c@gmail.com', 'cc', '', 'B.Sc/M.Sc/B.Ed', 'password', '', '', 0, ''),
(8, 'kkkk', 'k', '000', 'k@gmail.com', 'k', 'm', 'B.Sc/M.Sc/B.Ed', 'password', 'kkkkk', 'lm', 0, '../img/faculty/000.JPG'),
(9, 'Akash', 'D', '1', 'c@gmail.com', 'a', 'm', 'B.Sc/M.Sc/B.Ed', '12345', 'awww', 'awww', 1, '../img/faculty/1.'),
(11, 'ab', 'ab', '1', 'ab@gmail.com', 'ab', 'f', 'B.Sc/M.Sc/B.Ed', 'password', 'ab', 'ab', 1, ''),
(13, 'ammm', 'D', '97', 'c@gmail.com', 'a', 'f', 'B.Sc/M.Sc/B.Ed', 'password', 'ammm', 'maaa', 977, '../img/faculty/97.'),
(14, 'zz', 'zz', '2', 'z@gmail.com', 'z', 'f', 'B.Sc/M.Sc/B.Ed', 'password', 'z', 'z', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `Student_ID` int(11) NOT NULL,
  `Test_ID` int(11) NOT NULL,
  `Obtained_Marks` int(11) NOT NULL,
  `Marks_ID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Student_ID` int(20) NOT NULL,
  `Roll_No` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email_ID` varchar(25) NOT NULL,
  `Remarks` text NOT NULL,
  `Reg_No` int(20) NOT NULL,
  `SATS_No` int(11) NOT NULL,
  `Enroll_No` int(11) NOT NULL,
  `Fathers_Name` varchar(25) NOT NULL,
  `Mothers_Name` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `Address_1` varchar(30) NOT NULL,
  `Address_2` varchar(30) NOT NULL,
  `City` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Pincode` int(10) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Fname`, `Lname`, `Student_ID`, `Roll_No`, `Gender`, `Phone_No`, `Email_ID`, `Remarks`, `Reg_No`, `SATS_No`, `Enroll_No`, `Fathers_Name`, `Mothers_Name`, `DOB`, `Address_1`, `Address_2`, `City`, `password`, `Pincode`, `url`) VALUES
('2', '2', 9, '2', '2', '1111', 'email@gmail.com', '', 2, 2, 2, 'aaaa', 'aaaa', '0000-00-00', 'abcd', 'abcd', 'abcd', '', 2, ''),
('1', '1', 10, '2022-09-01', '1', '1111', 'abc@gmail.com', '', 1, 1, 1, 'aaaa', 'aaaa', '2022-09-01', 'abcd', '', 'abcd', '', 1, ''),
('ss', 'ss', 13, '11', 'f', '1111', 'email@gmail.com', '', 11, 11, 11, 'aaa', 'aaa', '2022-09-05', 'aaa', 'aaa', 'aaa', '', 574314, ''),
('b', 'b', 14, '0', 'f', '0', 'b@gmail.com', '', 0, 0, 0, 'b', 'b', '2022-09-01', 'b', 'b', 'b', '', 0, ''),
('d', 'd', 15, '4', 'f', '4', 'd@gmail.com', '', 4, 4, 4, 'd', 'd', '2022-06-08', 'd', 'd', 'd', '', 4, ''),
('oo', 'oo', 16, '333', 'm', '00000', 'a@gmail.com', '', 333, 333, 333, 'b', 'b', '2022-05-04', 'ooo', 'ooo', 'ooo', '', 0, ''),
('bbbb', 'bb', 17, '1', 'm', '6666', 'a@gmail.com', '', 1, 1, 1, 'bbbbbb', 'bbbb', '2022-08-07', 'bbbb', 'bbb', 'bbb', '', 555, ''),
('seetha', 'sm', 18, '2', 'f', '22', 'c@gmail.com', '', 2, 2, 2, 'ss', 'ss', '2022-09-04', 'ss', 'ss', 'ss', '', 22, ''),
('n', 'n', 19, '6', 'm', '666', 'c@gmail.com', '', 6, 6, 6, 'nn', 'nn', '2022-09-24', 'n', 'n', 'n', '', 6, ''),
('n', 'n', 20, '6', 'm', '666', 'c@gmail.com', '', 6, 6, 6, 'nn', 'nn', '2022-09-24', 'n', 'n', 'n', '', 6, ''),
('nnn', 'nnnn', 21, '6555', 'm', '666', 'c@gmail.com', '', 6, 6, 6, 'nn', 'nn', '2022-09-24', 'n', 'n', 'n', 'password', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_ID` int(11) NOT NULL,
  `Sub_Name` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `Br_Details_ID` int(11) NOT NULL,
  `Sub_Code` varchar(25) DEFAULT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Sub_ID`, `Sub_Name`, `Description`, `Br_Details_ID`, `Sub_Code`, `Status`) VALUES
(2, 'biology', 'science stream', 1, '11', 'sample'),
(5, 'english', 'eng', 2, 'e1', 'active'),
(6, 'kannada', 'second language', 4, 'kan21', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Test_ID` int(11) NOT NULL,
  `Test_Name` varchar(25) NOT NULL,
  `Max_marks` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Sub_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Test_ID`, `Test_Name`, `Max_marks`, `Description`, `Sub_ID`) VALUES
(2, 'First Preparotory', 31, 'exam', 1),
(3, 'Bhavana', 45, 'abcd', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_ID`);

--
-- Indexes for table `br_details`
--
ALTER TABLE `br_details`
  ADD PRIMARY KEY (`Br_Details_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Fac_ID`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`Marks_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Test_ID` (`Test_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_ID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Test_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `Branch_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `br_details`
--
ALTER TABLE `br_details`
  MODIFY `Br_Details_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `Fac_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `Marks_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Sub_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `Test_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `marks` (`Marks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`Test_ID`) REFERENCES `marks` (`Marks_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
