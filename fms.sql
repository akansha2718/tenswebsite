-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 10:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `CLASS_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`CLASS_ID`, `CLASS_NAME`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 'XII', 'hemant', '2017-09-03 03:53:37', 1),
(5, 'VII', 'hemant', '2017-09-03 03:54:21', 1),
(8, 'V', 'hemant', '2017-09-03 03:54:29', 1),
(13, 'X', 'hemant', '2017-11-21 10:23:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classes_in_session`
--

CREATE TABLE `classes_in_session` (
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `SESSION_ID` varchar(7) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes_in_session`
--

INSERT INTO `classes_in_session` (`CLASS_SESSION_ID`, `CLASS_ID`, `SESSION_ID`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 8, '2017-18', 'hemant', '2003-09-17 03:53:00', 1),
(2, 5, '2017-18', 'hemant', '2003-09-17 03:53:00', 1),
(3, 1, '2017-18', 'hemant', '2003-09-17 03:53:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_wise_students`
--

CREATE TABLE `class_wise_students` (
  `CLASS_WISE_SESSION_ID` int(11) NOT NULL,
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_wise_students`
--

INSERT INTO `class_wise_students` (`CLASS_WISE_SESSION_ID`, `CLASS_SESSION_ID`, `STUDENT_ID`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 1, 1, 'hemant', '2017-11-30 09:50:03', 1),
(2, 1, 2, 'hemant', '2017-11-30 09:50:03', 1),
(3, 1, 3, 'hemant', '2017-11-30 09:50:03', 1),
(4, 1, 4, 'hemant', '2017-11-30 09:50:03', 1),
(5, 1, 5, 'hemant', '2017-11-30 09:50:03', 1),
(6, 1, 6, 'hemant', '2017-11-30 09:50:03', 1),
(7, 1, 7, 'hemant', '2017-11-30 09:50:03', 1),
(8, 1, 8, 'hemant', '2017-11-30 09:50:03', 1),
(9, 1, 9, 'hemant', '2017-11-30 09:50:03', 1),
(10, 1, 10, 'hemant', '2017-11-30 09:50:03', 1),
(11, 2, 11, 'hemant', '2017-11-30 09:53:13', 1),
(12, 2, 12, 'hemant', '2017-11-30 09:55:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_flexible_heads`
--

CREATE TABLE `fee_flexible_heads` (
  `FLEXIBLE_HEAD_ID` int(11) NOT NULL,
  `FLEXIBLE_HEAD_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_flexible_heads`
--

INSERT INTO `fee_flexible_heads` (`FLEXIBLE_HEAD_ID`, `FLEXIBLE_HEAD_NAME`, `DESCRIPTION`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 'C.C.A. Fee', 'The fee to be paid for co-curricular activities.', 'user', '2017-09-03 04:01:43', 1),
(2, 'Mess Fee', 'The fee to be paid for meals at the school mess.', 'user', '2017-09-03 03:59:47', 1),
(3, 'Bus Fee', 'The fee to be paid for availing transportation facilities.', 'user', '2017-10-04 16:32:02', 1),
(5, 'Hostel Fee', 'The Fee to be paid for availing hostel.', 'karan', '2017-11-19 07:52:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_static_heads`
--

CREATE TABLE `fee_static_heads` (
  `STATIC_HEAD_ID` int(11) NOT NULL,
  `STATIC_HEAD_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_static_heads`
--

INSERT INTO `fee_static_heads` (`STATIC_HEAD_ID`, `STATIC_HEAD_NAME`, `DESCRIPTION`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 'Admission Fee', 'The fee to be paid for admission.', 'user', '2017-09-03 04:02:27', 1),
(2, 'Registration Fee', 'The fee to be paid for registration.', 'user', '2017-09-03 04:02:50', 1),
(3, 'Tuition Fee', 'The fee to be paid for tuition.', 'user', '2017-09-03 04:03:11', 1),
(4, 'Examination Fee', 'The fee to be paid for examination.', 'karan', '2017-11-28 09:52:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flexible_to_students`
--

CREATE TABLE `flexible_to_students` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `FLEXIBLE_HEAD_ID` int(11) NOT NULL,
  `FLEXIBLE_HEAD_AMOUNT` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flexible_to_students`
--

INSERT INTO `flexible_to_students` (`ID`, `STUDENT_ID`, `CLASS_SESSION_ID`, `FLEXIBLE_HEAD_ID`, `FLEXIBLE_HEAD_AMOUNT`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 1, 1, 1, 1500, 'hemant', '2004-10-17 16:32:00', 1),
(2, 1, 1, 2, 6000, 'hemant', '2004-10-17 16:32:00', 1),
(3, 2, 1, 3, 4000, 'hemant', '2005-10-17 16:32:00', 1),
(4, 2, 1, 2, 6000, 'hemant', '2006-10-17 16:32:00', 1),
(6, 3, 1, 1, 3000, 'hemant', '2008-10-17 16:32:00', 1),
(7, 4, 1, 3, 3000, 'hemant', '2009-10-17 16:32:00', 1),
(8, 5, 1, 2, 6000, 'hemant', '2010-10-17 16:32:00', 1),
(9, 7, 1, 2, 6000, 'hemant', '2011-10-17 16:32:00', 1),
(10, 8, 1, 1, 1500, 'hemant', '2012-10-17 16:32:00', 1),
(11, 9, 1, 3, 5000, 'hemant', '2013-10-17 16:32:00', 1),
(12, 10, 1, 3, 5000, 'hemant', '2014-10-17 16:32:00', 1),
(15, 8, 1, 2, 5000, 'hemant', '2017-11-02 06:16:19', 1),
(16, 9, 1, 2, 2, 'Hemant Singh Bathyal', '2017-11-16 15:01:42', 1),
(17, 2, 1, 1, 5050, 'Hemant Singh Bathyal', '2017-11-16 15:01:57', 1),
(19, 10, 1, 1, 2000, 'Karan Sati', '2017-11-18 04:39:24', 1),
(20, 9, 1, 1, 2000, 'karan', '2017-11-18 04:43:43', 1),
(21, 1, 1, 3, 3000, 'karan', '2017-11-18 15:57:14', 1),
(22, 5, 1, 1, 2500, 'karan', '2017-11-18 16:07:41', 1),
(23, 11, 2, 1, 500, 'karan', '2017-11-30 09:56:46', 1),
(24, 12, 2, 5, 4500, 'karan', '2017-11-30 09:57:10', 1),
(25, 12, 2, 2, 3000, 'karan', '2017-11-30 09:57:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `STATIC_HEADS` varchar(200) NOT NULL,
  `FLEXIBLE_HEADS` varchar(200) NOT NULL,
  `STATIC_SPLIT_AMOUNT` int(50) NOT NULL,
  `FLEXIBLE_SPLIT_AMOUNT` int(50) NOT NULL,
  `ACTUAL_AMOUNT` int(50) NOT NULL,
  `PREVIOUS_DUES` int(50) NOT NULL,
  `MONTH_FROM` varchar(50) NOT NULL,
  `YEAR_FROM` varchar(50) NOT NULL,
  `MONTH_TO` varchar(50) NOT NULL,
  `YEAR_TO` varchar(50) NOT NULL,
  `NUMBER_OF_MONTHS` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `CLASS_SESSION_ID`, `STUDENT_ID`, `STATIC_HEADS`, `FLEXIBLE_HEADS`, `STATIC_SPLIT_AMOUNT`, `FLEXIBLE_SPLIT_AMOUNT`, `ACTUAL_AMOUNT`, `PREVIOUS_DUES`, `MONTH_FROM`, `YEAR_FROM`, `MONTH_TO`, `YEAR_TO`, `NUMBER_OF_MONTHS`, `DESCRIPTION`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(381, 1, 1, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee, Mess Fee, Bus Fee', 95700, 115500, 211200, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(382, 1, 2, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, Mess Fee, C.C.A. Fee', 95700, 165550, 261250, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(383, 1, 3, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee', 95700, 33000, 128700, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(384, 1, 4, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee', 95700, 33000, 128700, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(385, 1, 5, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Mess Fee, C.C.A. Fee', 95700, 93500, 189200, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(386, 1, 6, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', '-', 95700, 0, 95700, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(387, 1, 7, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Mess Fee', 95700, 66000, 161700, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(388, 1, 8, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee, Mess Fee', 95700, 71500, 167200, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(389, 1, 9, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, Mess Fee, C.C.A. Fee', 95700, 77022, 172722, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(390, 1, 10, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, C.C.A. Fee', 95700, 77000, 172700, 0, 'April', '2017', 'March', '2018', '11', 'No dues.', 'karan', '2017-11-30 09:28:18', 1),
(391, 1, 1, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee, Mess Fee, Bus Fee', 8700, 10500, 19200, 211200, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:05', 1),
(392, 1, 2, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, Mess Fee, C.C.A. Fee', 8700, 15050, 23750, 261250, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:05', 1),
(393, 1, 3, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee', 8700, 3000, 11700, 128700, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:05', 1),
(394, 1, 4, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee', 8700, 3000, 11700, 128700, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(395, 1, 5, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Mess Fee, C.C.A. Fee', 8700, 8500, 17200, 189200, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(396, 1, 6, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', '-', 8700, 0, 8700, 95700, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(397, 1, 7, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Mess Fee', 8700, 6000, 14700, 161700, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(398, 1, 8, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'C.C.A. Fee, Mess Fee', 8700, 6500, 15200, 167200, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(399, 1, 9, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, Mess Fee, C.C.A. Fee', 8700, 7002, 15702, 172722, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(400, 1, 10, 'Registration Fee, Tuition Fee, Admission Fee, Examination Fee', 'Bus Fee, C.C.A. Fee', 8700, 7000, 15700, 172700, 'March', '2018', 'April', '2018', '1', 'Remaining dues.', 'karan', '2017-11-30 09:29:06', 1),
(401, 2, 11, 'Admission Fee, Registration Fee', 'C.C.A. Fee', 3500, 500, 4000, 0, 'April', '2017', 'May', '2017', '1', 'No dues.', 'karan', '2017-11-30 09:58:03', 1),
(402, 2, 12, 'Admission Fee, Registration Fee', 'Hostel Fee, Mess Fee', 3500, 7500, 11000, 0, 'April', '2017', 'May', '2017', '1', 'No dues.', 'karan', '2017-11-30 09:58:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `RECEIPT_ID` int(11) NOT NULL,
  `INVOICE_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `FLEXIBLE_STATUS` varchar(50) NOT NULL,
  `FLEXIBLE_HEADS` varchar(50) NOT NULL,
  `DISCOUNT` int(50) NOT NULL,
  `DISCOUNT_AMOUNT` int(50) NOT NULL,
  `FINE` int(50) NOT NULL,
  `FINE_AMOUNT` int(50) NOT NULL,
  `ACTUAL_PAID_AMOUNT` int(50) NOT NULL,
  `MODE_OF_PAYMENT` varchar(50) NOT NULL,
  `DD_CHEQUE_NUMBER` varchar(50) NOT NULL,
  `DD_CHEQUE_DATEYEAR` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SESSION_ID` varchar(7) NOT NULL,
  `START_DATE` varchar(20) NOT NULL,
  `END_DATE` varchar(20) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SESSION_ID`, `START_DATE`, `END_DATE`, `USER_ID`, `DATE_`, `STATUS`) VALUES
('2015-16', '01-04-2015', '31-03-2016', 'hemant', '2017-10-04 16:35:41', 0),
('2016-17', '01-04-2016', '31-03-2017', 'hemant', '2017-10-04 16:35:41', 0),
('2017-18', '01-04-2017', '31-03-2018', 'hemant', '2017-10-04 16:35:41', 0),
('2018-19', '01-04-2018', '31-03-2019', 'mahendrasinghbora', '2017-11-20 17:38:20', 1),
('2020-21', '01-04-2020', '31-03-2021', 'hemant', '2017-11-21 07:46:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `static_to_classes`
--

CREATE TABLE `static_to_classes` (
  `ID` int(11) NOT NULL,
  `CLASS_SESSION_ID` int(11) NOT NULL,
  `STATIC_HEAD_ID` int(11) NOT NULL,
  `STATIC_HEAD_AMOUNT` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `static_to_classes`
--

INSERT INTO `static_to_classes` (`ID`, `CLASS_SESSION_ID`, `STATIC_HEAD_ID`, `STATIC_HEAD_AMOUNT`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(2, 1, 2, 2000, 'hemant', '2004-10-17 16:35:00', 1),
(3, 1, 3, 2000, 'hemant', '2004-10-17 16:35:00', 1),
(4, 2, 1, 1500, 'hemant', '2017-10-25 17:16:28', 1),
(17, 5, 1, 3000, 'Karan Sati', '2017-11-16 10:51:49', 1),
(19, 1, 1, 4500, 'Karan Sati', '2017-11-16 11:06:34', 1),
(21, 4, 1, 700, 'Karan Sati', '2017-11-16 14:56:26', 1),
(22, 3, 2, 2000, 'Karan Sati', '2017-11-17 08:38:18', 1),
(23, 2, 2, 2000, 'karan', '2017-11-18 07:54:42', 1),
(24, 1, 4, 200, 'karan', '2017-11-28 09:53:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(11) NOT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `FATHER'S_NAME` varchar(50) NOT NULL,
  `MOTHER'S_NAME` varchar(50) NOT NULL,
  `D_O_B` varchar(10) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `DATE_OF_ADMISSION` varchar(10) NOT NULL,
  `DATE_` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(50) NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`STUDENT_ID`, `STUDENT_NAME`, `FATHER'S_NAME`, `MOTHER'S_NAME`, `D_O_B`, `GENDER`, `ADDRESS`, `CONTACT_NUMBER`, `DATE_OF_ADMISSION`, `DATE_`, `USER_ID`, `STATUS`) VALUES
(1, 'HOSHIYAR SINGH', 'NIL', 'NIL', '21-02-2006', 'M', 'Flat F/35, Durga Colony, Ramnagar', '9637532581', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(2, 'MANISHA NEGI', 'NIL', 'NIL', '14-01-2006', 'F', 'House Number 23, Modern Enclave, Nainital', '9637532582', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(3, 'BABITA NEGI', 'NIL', 'NIL', '14-01-2006', 'F', 'P 30/35 Anand Vihar, Haldwani', '9637532583', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(4, 'BHAWANA JOSHI', 'NIL', 'NIL', '02-04-2006', 'F', 'Flat A/32, C-Wing, Paradise Villas, Bhimtal', '9637532584', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(5, 'MANJU RANA', 'NIL', 'NIL', '01-06-2006', 'F', 'Maa Bhadra Kali Society, Haldwani', '9637532585', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(6, 'ROHIT SINGH MEHRA', 'NIL', 'NIL', '02-10-2016', 'M', 'House Number 32, Amba Nagar, Kathgodam', '9637532586', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(7, 'PRIYANSHU RANA', 'NIL', 'NIL', '23-03-2016', 'M', 'House Number 121, Faiz Colony, Haldwani', '9637532587', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(8, 'TANIYA NEGI', 'NIL', 'NIL', '01-03-2006', 'F', 'Flat Number 12, Indra Cottages, Kathgodam', '9637532588', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(9, 'MANOJ SINGH', 'NIL', 'NIL', '25-11-2005', 'M', 'House Number 74, New Society, Haldwani', '9637532589', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(10, 'NEHA MARTOLIYA', 'NIL', 'NIL', '25-09-2006', 'F', 'Krishna Kunj, Nainital', '9637532590', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(11, 'NISHA', 'NIL', 'NIL', '28-09-2006', 'F', 'Lake View Colony, Bhimtal', '9637532590', '01-04-2017', '2029-04-17 10:43:00', 'hemant', 1),
(12, 'VISHAL KUMAR', 'NIL', 'NIL', '28-08-2006', 'M', 'Flat F/31, Divine Colony, Ramnagar', '9637532581', '01-04-2017', '2017-11-30 09:41:54', 'hemant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `USER_STATUS_ID` int(11) NOT NULL,
  `THUMBNAIL` varchar(150) DEFAULT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`, `USER_STATUS_ID`, `THUMBNAIL`, `DATE_`, `STATUS`) VALUES
('chandan', 'Chandan', ' Singh Khani', '123456', 2, '/img/users/chandan.jpg', '2017-08-25 13:58:05', 1),
('diwakar', 'Diwakar', 'Joshi', '123456', 2, '/img/users/user.png', '2017-11-29 08:20:38', 1),
('hemant', 'Hemant', 'Singh Bathyal', '123456', 1, '../../img/users/hemant5a1e42e4881f39.95300579.jpg', '2017-08-25 13:58:05', 1),
('karan', 'Karan', 'Sati', '123456', 3, '/img/users/karan.jpg', '2017-08-25 13:58:05', 1),
('mahendrasinghbora', 'Mahendra', 'Singh Bora', '123456', 1, '../../img/users/mahendrasinghbora5a1e43d71d7cb4.63682449.jpg', '2017-11-11 08:17:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `USER_STATUS_ID` int(11) NOT NULL,
  `USER_TYPE` varchar(20) NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`USER_STATUS_ID`, `USER_TYPE`, `STATUS`) VALUES
(1, 'ADMIN', 1),
(2, 'MANAGEMENT', 1),
(3, 'ACCOUNTS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`CLASS_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `classes_in_session`
--
ALTER TABLE `classes_in_session`
  ADD PRIMARY KEY (`CLASS_SESSION_ID`),
  ADD KEY `CLASS_ID` (`CLASS_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `class_wise_students`
--
ALTER TABLE `class_wise_students`
  ADD PRIMARY KEY (`CLASS_WISE_SESSION_ID`),
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `fee_flexible_heads`
--
ALTER TABLE `fee_flexible_heads`
  ADD PRIMARY KEY (`FLEXIBLE_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `fee_static_heads`
--
ALTER TABLE `fee_static_heads`
  ADD PRIMARY KEY (`STATIC_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `flexible_to_students`
--
ALTER TABLE `flexible_to_students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`RECEIPT_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SESSION_ID`);

--
-- Indexes for table `static_to_classes`
--
ALTER TABLE `static_to_classes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STATIC_HEAD_ID` (`STATIC_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`USER_STATUS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `classes_in_session`
--
ALTER TABLE `classes_in_session`
  MODIFY `CLASS_SESSION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `class_wise_students`
--
ALTER TABLE `class_wise_students`
  MODIFY `CLASS_WISE_SESSION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fee_flexible_heads`
--
ALTER TABLE `fee_flexible_heads`
  MODIFY `FLEXIBLE_HEAD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fee_static_heads`
--
ALTER TABLE `fee_static_heads`
  MODIFY `STATIC_HEAD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `flexible_to_students`
--
ALTER TABLE `flexible_to_students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `RECEIPT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `static_to_classes`
--
ALTER TABLE `static_to_classes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `USER_STATUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
