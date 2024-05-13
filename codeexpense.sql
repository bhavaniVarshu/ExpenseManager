-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeexpense`
--

-- --------------------------------------------------------

--
-- Table structure for table `definition`
--

CREATE TABLE `definition` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `definition`
--

INSERT INTO `definition` (`id`, `title`, `type`, `status`) VALUES
(1, '2', 'IC', '1'),
(2, '2', 'SP', '1'),
(3, '1', 'CEP', '1'),
(4, '1', 'CONF', '1'),
(5, '1', 'UOP', '1'),
(6, '1', 'GIAN', '1'),
(7, '1', 'WMT', '1'),
(8, '1', 'CEP EXEC', '1'),
(9, '3', 'Open', '1'),
(10, '3', 'Ongoing', '1'),
(11, '3', 'Closed', '1'),
(12, '1', 'Others', '1'),
(13, '1', 'NPTEL', '1'),
(14, '4', 'Organization', '1'),
(15, '4', 'Individual', '1'),
(16, '6', 'Direct payment', '1'),
(17, '6', 'Honorarium payment', '1'),
(18, '6', 'Reimbursement', '1'),
(19, '6', 'Travel Allowance', '1'),
(20, '6', 'Imprest Payment', '1'),
(21, '6', 'Recoupment', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `exp_head` varchar(100) NOT NULL,
  `exp_ptype` varchar(100) NOT NULL,
  `exp_pno` varchar(200) NOT NULL,
  `exp_pcategory` varchar(100) NOT NULL,
  `vendorname` text NOT NULL,
  `billno` varchar(200) NOT NULL,
  `billdate` varchar(100) NOT NULL,
  `exp_amount` varchar(100) NOT NULL,
  `exp_tapallink` text NOT NULL,
  `exp_commitno` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `exp_head`, `exp_ptype`, `exp_pno`, `exp_pcategory`, `vendorname`, `billno`, `billdate`, `exp_amount`, `exp_tapallink`, `exp_commitno`, `created_at`, `updated_at`) VALUES
(1, 'Direct payment', 'IC', 'IC23241614CPCONFCODHOC', 'CONF', 'Softteam Management Services', '414', '2024-05-02', '6699', 'https://drive.google.com/file/d/1PoeUJDQRXOcyJGbVQ0qTGqJ3YMIvj_N9/view?usp=drive_link', 'COM/2324/27898', '2024-05-10 10:51:52', '2024-05-10 10:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `income_type` varchar(50) NOT NULL,
  `income_projecttype` varchar(50) NOT NULL,
  `income_projectno` varchar(100) NOT NULL,
  `income_projectcategory` varchar(50) NOT NULL,
  `invoiceno` varchar(200) NOT NULL,
  `particulars` text NOT NULL,
  `invoiceamount` varchar(100) NOT NULL,
  `tdsamount` varchar(100) DEFAULT NULL,
  `bank_received` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `code_oh` varchar(100) NOT NULL,
  `icsr_oh` varchar(100) NOT NULL,
  `corpus` varchar(100) DEFAULT NULL,
  `ddf` varchar(100) DEFAULT NULL,
  `admin_oh` varchar(100) DEFAULT NULL,
  `netamount` varchar(100) NOT NULL,
  `receiptno` varchar(100) NOT NULL,
  `receipt_date` varchar(100) NOT NULL,
  `invoicelink` text NOT NULL,
  `banklink` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `income_type`, `income_projecttype`, `income_projectno`, `income_projectcategory`, `invoiceno`, `particulars`, `invoiceamount`, `tdsamount`, `bank_received`, `gst`, `code_oh`, `icsr_oh`, `corpus`, `ddf`, `admin_oh`, `netamount`, `receiptno`, `receipt_date`, `invoicelink`, `banklink`, `created_at`, `updated_at`) VALUES
(1, 'Organization', 'IC', 'IC23241614CPCONFCODHOC', 'CONF', 'C23242399C4996', 'MEL SYSTEMS AND SERVICES LTD ', '59000', '1000', '58000.00', '9000.00', '490.00', '490.00', '', '', '', '49000.00', 'RCV/2324/007282', '2024-01-12', 'https://drive.google.com/file/d/1zV1C4VR13qFTzLRCi5CMVLYYdWq9Iedk/view?usp=drive_link', 'https://drive.google.com/file/d/1i79FF2hN6RsY9640uNk6zFNMMSx-uQxE/view?usp=sharing', '2024-05-10 05:59:47', '2024-05-10 05:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `project_category` varchar(100) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `project_no` varchar(255) NOT NULL,
  `project_title` text NOT NULL,
  `department` varchar(200) NOT NULL,
  `coordinator` varchar(200) NOT NULL,
  `startdate` varchar(100) NOT NULL,
  `enddate` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_category`, `project_type`, `project_no`, `project_title`, `department`, `coordinator`, `startdate`, `enddate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IC', 'CONF', 'IC23241614CPCONFCODHOC', 'Women in Optics and Photonics in India 2023', 'Applied Mechanics ', 'Prof. Sujitha N', '2024-01-02', '2024-01-03', 'Open', '2024-05-10 04:56:50', '2024-05-10 04:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `title`, `created_at`) VALUES
(1, 'Project Type', '2024-04-18 10:25:03'),
(2, 'Project Category', '2024-04-18 10:25:03'),
(3, 'Project Status', '2024-04-18 10:25:03'),
(4, 'Income Type', '2024-05-08 12:23:46'),
(5, 'Percentage', '2024-05-08 12:24:18'),
(6, 'Expense Head', '2024-05-10 09:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, '2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `definition`
--
ALTER TABLE `definition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `definition`
--
ALTER TABLE `definition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
