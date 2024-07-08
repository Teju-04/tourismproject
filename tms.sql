-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 03:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-01-30 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-01-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-01-30 05:18:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-31 02:03:27', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2024-01-16 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2024-01-20 06:36:03', 'Ok, We will fix the issue asap', '2024-01-30 05:20:03'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', NULL, '2024-01-30 05:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'Privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At this website, we are committed to protecting your privacy and ensuring that your personal information is handled responsibly. We collect personal information such as your name, email address, phone number, and payment details to manage your travel arrangements and provide customer support. We also gather usage data, including your IP address, browser type, and pages visited, to analyze and improve our services. Cookies and tracking technologies help us understand user behavior and enhance your experience. We use your information to process bookings, personalize services, communicate updates and promotions, and comply with legal requirements. We may share your information with trusted third-party service providers who assist us in our operations, ensuring they protect your data and use it only for specified purposes. We may also disclose information to comply with legal obligations or during business transfers, such as mergers or acquisitions. We implement security measures like encryption and access controls to protect your information, although absolute security cannot be guaranteed. You have rights to access, correct, delete, or restrict your personal information, and to withdraw consent where applicable. Our services are not intended for individuals under 16, and we do not knowingly collect data from children. Updates to this policy will be posted on our website, and continued use of our services indicates acceptance of changes. For any questions or concerns, please contact us at 1234567890.






</span>\r\n										'),
(3, 'Aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled TMS to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>\r\n										'),
(11, 'Contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

-- CREATE TABLE `tbltourpackages` (
--   `PackageId` int(11) NOT NULL,
--   `PackageName` varchar(200) DEFAULT NULL,
--   `PackageType` varchar(150) DEFAULT NULL,
--   `PackageLocation` varchar(100) DEFAULT NULL,
--   `PackagePrice` int(11) DEFAULT NULL,
--   `PackageFeatures` varchar(255) DEFAULT NULL,
--   `PackageDetails` mediumtext DEFAULT NULL,
--   `PackageImage` varchar(100) DEFAULT NULL,
--   `Creationdate` timestamp NULL DEFAULT current_timestamp(),
--   `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFeatures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--
-- Dumping data for table `tbltourpackages`
--

-- INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFeatures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
-- (1, 'Golden Triangle Tour', 'Cultural', 'Delhi-Agra-Jaipur', 25000, 'Accommodation, Sightseeing, Meals', 'Explore the rich cultural heritage of India with the Golden Triangle Tour covering Delhi, Agra, and Jaipur.', 'goldentriangle.jpeg', NULL, NULL),
-- (2, 'Kerala Backwaters', 'Relaxation', 'Alleppey', 15000, 'Houseboat Stay, Meals, Sightseeing', 'Enjoy the serene beauty of Kerala backwaters with a relaxing houseboat stay in Alleppey.', 'kerala.jpeg', NULL, NULL),
-- (3, 'Goa Beach Holiday', 'Beach', 'Goa', 20000, 'Accommodation, Beach Activities, Meals', 'Experience the vibrant beach life of Goa with accommodation and various beach activities included.', 'goa.jpeg', NULL, NULL),
-- (4, 'Himalayan Adventure', 'Adventure', 'Manali', 18000, 'Trekking, Camping, Meals', 'Embark on an adventurous journey in the Himalayas with trekking and camping activities in Manali.', 'himalaya.jpeg', NULL, NULL),
-- (5, 'Rajasthan Desert Safari', 'Cultural', 'Jaisalmer', 22000, 'Camel Safari, Cultural Shows, Meals', 'Discover the golden sands of Jaisalmer with a thrilling camel safari and cultural shows.', 'rajasthan.jpeg', NULL, NULL),
-- (6, 'Andaman Islands', 'Beach', 'Andaman', 30000, 'Accommodation, Water Sports, Meals', 'Explore the pristine beaches and enjoy various water sports activities in the Andaman Islands.', 'andamanislands.jpeg', NULL, NULL),
-- (7, 'Leh-Ladakh Expedition', 'Adventure', 'Leh-Ladakh', 35000, 'Biking, Camping, Meals', 'Experience the rugged beauty of Leh-Ladakh with a biking and camping expedition.', 'ladakh.jpeg', NULL, NULL),
-- (8, 'Spiritual Varanasi', 'Spiritual', 'Varanasi', 12000, 'Accommodation, Temple Visits, Meals', 'Immerse yourself in the spiritual ambiance of Varanasi with temple visits and cultural experiences.', 'varnasi.jpeg', NULL, NULL),
-- (9, 'Wildlife Safari', 'Wildlife', 'Ranthambore', 25000, 'Jeep Safari, Accommodation, Meals', 'Get up close with the wildlife of Ranthambore with an exciting jeep safari and comfortable accommodation.', 'safari.jpeg', NULL, NULL);

-- -----------------------
INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFeatures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`, `Duration`) VALUES
(1, 'Golden Triangle Tour', 'Cultural', 'Delhi-Agra-Jaipur', 25000, 'Accommodation, Sightseeing, Meals', 'Explore the rich cultural heritage of India with the Golden Triangle Tour covering Delhi, Agra, and Jaipur.', 'goldentriangle.jpeg', '2023-06-15 10:20:00', '2023-06-20 15:30:00', 7),
(2, 'Kerala Backwaters', 'Relaxation', 'Alleppey', 15000, 'Houseboat Stay, Meals, Sightseeing', 'Enjoy the serene beauty of Kerala backwaters with a relaxing houseboat stay in Alleppey.', 'kerala.jpeg', '2023-05-12 09:15:00', '2023-05-18 14:25:00', 5),
(3, 'Goa Beach Holiday', 'Beach', 'Goa', 20000, 'Accommodation, Beach Activities, Meals', 'Experience the vibrant beach life of Goa with accommodation and various beach activities included.', 'goa.jpeg', '2023-04-10 08:10:00', '2023-04-15 13:20:00', 6),
(4, 'Himalayan Adventure', 'Adventure', 'Manali', 18000, 'Trekking, Camping, Meals', 'Embark on an adventurous journey in the Himalayas with trekking and camping activities in Manali.', 'himalaya.jpeg', '2023-03-08 07:05:00', '2023-03-13 12:15:00', 8),
(5, 'Rajasthan Desert Safari', 'Cultural', 'Jaisalmer', 22000, 'Camel Safari, Cultural Shows, Meals', 'Discover the golden sands of Jaisalmer with a thrilling camel safari and cultural shows.', 'rajasthan.jpeg', '2023-02-05 06:00:00', '2023-02-10 11:10:00', 6),
(6, 'Andaman Islands', 'Beach', 'Andaman', 30000, 'Accommodation, Water Sports, Meals', 'Explore the pristine beaches and enjoy various water sports activities in the Andaman Islands.', 'andamanislands.jpeg', '2023-01-03 05:55:00', '2023-01-08 10:00:00', 7),
(7, 'Leh-Ladakh Expedition', 'Adventure', 'Leh-Ladakh', 35000, 'Biking, Camping, Meals', 'Experience the rugged beauty of Leh-Ladakh with a biking and camping expedition.', 'ladakh.jpeg', '2022-12-01 04:50:00', '2022-12-06 09:55:00', 9),
(8, 'Spiritual Varanasi', 'Spiritual', 'Varanasi', 12000, 'Accommodation, Temple Visits, Meals', 'Immerse yourself in the spiritual ambiance of Varanasi with temple visits and cultural experiences.', 'varnasi.jpeg', '2022-11-29 03:45:00', '2022-12-04 08:50:00', 4),
(9, 'Wildlife Safari', 'Wildlife', 'Ranthambore', 25000, 'Jeep Safari, Accommodation, Meals', 'Get up close with the wildlife of Ranthambore with an exciting jeep safari and comfortable accommodation.', 'safari.jpeg', '2022-10-25 02:40:00', '2022-10-30 07:45:00', 5);
-- -------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
