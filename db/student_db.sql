-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 09:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_ID`, `Branch_Name`, `Description`, `Status`) VALUES
(1, 'Science', 'PUC science', 'active'),
(2, 'Commerce', 'PUC commerce', 'active');

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

--
-- Dumping data for table `br_details`
--

INSERT INTO `br_details` (`Br_Details_ID`, `Branch_ID`, `Br_Details_Name`, `Description`, `Status`) VALUES
(1, 1, 'PCMB', 'PUC science', 'active'),
(2, 1, 'PCMC', 'PUC  science', 'active'),
(3, 2, 'SEBA', 'PUC commerce', 'active'),
(4, 2, 'CEBA', 'PUC commerce', 'active');

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
(16, 'dfgds', 'ghfnd', '988679474265', 'z@gmail.com', 'pendingu67', 'm', 'B.Sc/M.Sc/B.Ed', 'password', 'PRATHEEKSHA,KEREMOOLE, POST SULLIA', '6uy5', 574239, '');

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
  `url` varchar(200) NOT NULL,
  `Remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Fname`, `Lname`, `Student_ID`, `Roll_No`, `Gender`, `Phone_No`, `Email_ID`, `Reg_No`, `SATS_No`, `Enroll_No`, `Fathers_Name`, `Mothers_Name`, `DOB`, `Address_1`, `Address_2`, `City`, `password`, `Pincode`, `url`, `Remarks`) VALUES
('bob', 'boby', 24, '1', 'm', '9886794742', 'z@gmail.com', 1235, 12, 1213, 'bomb', 'bomby', '2022-09-01', 'PRATHEEKSHA,KEREMOOLE, POST SU', 'ff', 'SULLIA', 'password', 574239, '', '');

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
(9, 'Calculus and Linear ', 'rhbndftye', 1, '21MAT11', 'okkkkkkk');

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
  MODIFY `Branch_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `br_details`
--
ALTER TABLE `br_details`
  MODIFY `Br_Details_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `Fac_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `Marks_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Sub_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
