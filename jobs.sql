-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 06:24 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Anantapur', 2),
(2, 'Adilabad', 2),
(3, 'Cuddapah', 2),
(89, 'Guntakal', 2),
(90, 'Guntur', 2),
(103, 'Kakinada', 2),
(106, 'Kamalapuram', 2),
(176, 'Nellore', 2),
(266, 'Tirupati', 2),
(285, 'Vijayawada', 2),
(287, 'Visakhapatnam', 2),
(305, 'Itanagar', 3),
(371, 'Guwahati', 4),
(435, 'Silchar', 4),
(441, 'Tezpur', 4),
(453, 'Aurangabad', 5),
(499, 'Gaya', 5),
(553, 'Muzaffarpur', 5),
(563, 'Patna', 5),
(594, 'Chandigarh', 6),
(612, 'Bhilai', 7),
(613, 'Bilaspur', 7),
(658, 'Korba', 7),
(683, 'Raigarh', 7),
(684, 'Raipur', 7),
(706, 'Delhi', 10),
(749, 'Panaji', 11),
(777, 'Vasco', 11),
(783, 'Ahmedabad', 12),
(791, 'Anand', 12),
(795, 'Ankleshwar', 12),
(819, 'Bharuch', 12),
(821, 'Bhavnagar', 12),
(824, 'Bhuj', 12),
(888, 'Gandhinagar', 12),
(889, 'Gir', 12),
(905, 'Jamnagar', 12),
(912, 'Junagadh', 12),
(920, 'Kandla', 12),
(944, 'Lakhtar', 12),
(969, 'Mehsana', 12),
(976, 'Mundra', 12),
(1007, 'Porbandar', 12),
(1011, 'Rajkot', 12),
(1041, 'Surat', 12),
(1042, 'Surendranagar', 12),
(1068, 'Vadodara', 12),
(1072, 'Valsad', 12),
(1075, 'Vapi', 12),
(1096, 'Ambala', 13),
(1104, 'Barwala', 13),
(1108, 'Bhiwani', 13),
(1119, 'Faridabad', 13),
(1126, 'Gurgaon', 13),
(1131, 'Hisar', 13),
(1138, 'Jind', 13),
(1148, 'Karnal', 13),
(1152, 'Kurukshetra', 13),
(1166, 'Palwal', 13),
(1167, 'Panchkula', 13),
(1168, 'Panipat', 13),
(1180, 'Rewari', 13),
(1192, 'Sonipat', 13),
(1204, 'Yamunanagar', 13),
(1206, 'Baddi', 14),
(1212, 'Chamba', 14),
(1216, 'Dalhousie', 14),
(1222, 'Dharamshala', 14),
(1230, 'Kala Amb', 14),
(1235, 'Kullu', 14),
(1238, 'Mandi', 14),
(1262, 'Shimla', 14),
(1263, 'Sirmaur', 14),
(1264, 'Solan', 14),
(1265, 'Solon', 14),
(1266, 'Sundarnagar', 14),
(1267, 'Sundernagar', 14),
(1268, 'Talai', 14),
(1269, 'Theog', 14),
(1270, 'Tira Sujanpur', 14),
(1271, 'Una', 14),
(1272, 'Yol', 14),
(1303, 'Jammu', 15),
(1341, 'Srinagar', 15),
(1373, 'Bokaro', 16),
(1396, 'Dhanbad', 16),
(1425, 'Jamshedpur', 16),
(1492, 'Ranchi', 16),
(1551, 'Belgaum', 17),
(1553, 'Bellary', 17),
(1558, 'Bengaluru', 17),
(1564, 'Bidar', 17),
(1594, 'Davangere', 17),
(1598, 'Dharwar', 17),
(1615, 'Gulbarga', 17),
(1646, 'Hospet', 17),
(1647, 'Hubli', 17),
(1678, 'Kolar', 17),
(1726, 'Mangaluru', 17),
(1750, 'Mysore', 17),
(1797, 'Shimoga', 17),
(1827, 'Tumkur', 17),
(1848, 'Alappuzha', 19),
(1892, 'Ernakulam', 19),
(1899, 'Idukki', 19),
(1921, 'Kannur', 19),
(1926, 'Kasargod', 19),
(1937, 'Kollam', 19),
(1943, 'Kottayam', 19),
(1947, 'Kozhikode', 19),
(1960, 'Malappuram', 19),
(1997, 'Palakkad', 19),
(2009, 'Pathanamthitta', 19),
(2050, 'Thrissur', 19),
(2064, 'Wayanad', 19),
(2145, 'Bhopal', 21),
(2214, 'Gwalior', 21),
(2229, 'Indore', 21),
(2232, 'Jabalpur', 21),
(2265, 'Katni', 21),
(2401, 'Ratlam', 21),
(2406, 'Rewa', 21),
(2418, 'Satna', 21),
(2465, 'Ujjain', 21),
(2473, 'Waraseoni', 21),
(2478, 'Ahmednagar', 22),
(2494, 'Amravati', 22),
(2506, 'Baramati', 22),
(2533, 'Chandrapur', 22),
(2543, 'Chiplun', 22),
(2567, 'Dhule', 22),
(2603, 'Jalgaon', 22),
(2648, 'Khopoli', 22),
(2652, 'Kolhapur', 22),
(2707, 'Mumbai', 22),
(2708, 'Murbad', 22),
(2715, 'Nagpur', 22),
(2724, 'Nashik', 22),
(2726, 'Navi Mumbai', 22),
(2763, 'Pune', 22),
(2771, 'Raigad', 22),
(2791, 'Satara', 22),
(2821, 'Solapur', 22),
(2831, 'Tarapur', 22),
(2836, 'Thane', 22),
(2860, 'Vasai', 22),
(2889, 'Imphal', 23),
(2931, 'Shillong', 24),
(2935, 'Aizawl', 25),
(2958, 'Dimapur', 26),
(2959, 'Kohima', 26),
(2967, 'Angul', 29),
(2995, 'Bhubaneswar', 29),
(3014, 'Cuttack', 29),
(3040, 'Jharsuguda', 29),
(3082, 'Paradip', 29),
(3091, 'Puri', 29),
(3102, 'Rourkela', 29),
(3103, 'Sambalpur', 29),
(3134, 'Amritsar', 32),
(3142, 'Banur', 32),
(3145, 'Barnala', 32),
(3148, 'Bathinda', 32),
(3178, 'Faridkot', 32),
(3183, 'Firozpur', 32),
(3193, 'Gurdaspur', 32),
(3198, 'Hoshiarpur', 32),
(3203, 'Jalandhar', 32),
(3208, 'Kapurthala', 32),
(3225, 'Ludhiana', 32),
(3236, 'Moga', 32),
(3237, 'Mohali', 32),
(3239, 'Morinda', 32),
(3253, 'Pathankot', 32),
(3254, 'Patiala', 32),
(3258, 'Phagwara', 32),
(3264, 'Rajpura', 32),
(3269, 'Rupnagar', 32),
(3276, 'Sangrur', 32),
(3295, 'Ajmer', 33),
(3297, 'Alwar', 33),
(3309, 'Banswara', 33),
(3313, 'Barmer', 33),
(3327, 'Bhilwara', 33),
(3330, 'Bhiwadi', 33),
(3332, 'Bikaner', 33),
(3368, 'Ganganagar', 33),
(3378, 'Jaipur', 33),
(3379, 'Jaisalmer', 33),
(3387, 'Jodhpur', 33),
(3411, 'Kota', 33),
(3438, 'Mount Abu', 33),
(3443, 'Nagar', 33),
(3452, 'Neemrana', 33),
(3532, 'Udaipur', 33),
(3540, 'Gangtok', 34),
(3659, 'Chennai', 35),
(3683, 'Coimbatore', 35),
(3686, 'Cuddalore', 35),
(3714, 'Erode', 35),
(3737, 'Hosur', 35),
(3774, 'Kalpakkam', 35),
(3783, 'Kanchipuram', 35),
(3811, 'Karur', 35),
(3912, 'Madurai', 35),
(3913, 'Maduranthakam', 35),
(3996, 'Nagercoil', 35),
(4050, 'Ooty', 35),
(4183, 'Salem', 35),
(4263, 'Thanjavur', 35),
(4341, 'Tuticorin', 35),
(4401, 'Vellore', 35),
(4460, 'Hyderabad', 36),
(4466, 'Karimnagar', 36),
(4487, 'Nizamabad', 36),
(4505, 'Warangal', 36),
(4536, 'Agra', 38),
(4545, 'Aligarh', 38),
(4546, 'Allahabad', 38),
(4593, 'Bahraich', 38),
(4612, 'Bareilly', 38),
(4648, 'Bijnor', 38),
(4729, 'Faizabad', 38),
(4746, 'Gajraula', 38),
(4759, 'Ghaziabad', 38),
(4773, 'Gorakhpur', 38),
(4830, 'Jhansi', 38),
(4886, 'Khanpur', 38),
(4933, 'Lucknow', 38),
(4962, 'Mathura', 38),
(4970, 'Meerut', 38),
(4986, 'Moradabad', 38),
(5022, 'Noida', 38),
(5029, 'Orai', 38),
(5101, 'Saharanpur', 38),
(5211, 'Varanasi', 38),
(5251, 'Haldwani', 39),
(5261, 'Kashipur', 39),
(5297, 'Roorkee', 39),
(5299, 'Rudrapur', 39),
(5333, 'Asansol', 41),
(5404, 'Burdwan', 41),
(5465, 'Durgapur', 41),
(5498, 'Haldia', 41),
(5572, 'Kharagpur', 41),
(5583, 'Kolkata', 41),
(5707, 'Siliguri', 41);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(101, 'IN', 'INDIA', 91);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `resumeId` int(11) DEFAULT NULL,
  `instituteName` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `startingDate` varchar(10) DEFAULT NULL,
  `endingDate` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `jobType` varchar(256) NOT NULL,
  `title` varchar(255) NOT NULL,
  `applyUrl` text NOT NULL,
  `requirements` text NOT NULL,
  `description` text NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `minSalary` varchar(255) DEFAULT NULL,
  `maxSalary` varchar(255) DEFAULT NULL,
  `salaryType` varchar(255) DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `function` text NOT NULL,
  `jobDeadLine` date DEFAULT NULL,
  `industry` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `companySize` int(11) DEFAULT NULL,
  `companySite` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category`, `jobType`, `title`, `applyUrl`, `requirements`, `description`, `state`, `city`, `minSalary`, `maxSalary`, `salaryType`, `experience`, `function`, `jobDeadLine`, `industry`, `companyName`, `companySize`, `companySite`, `email`, `mobileNumber`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'Software Engineer', 'full-time', 'Primary responsibility would be designing, developing, testing & deploying Android applications.', 'http://www.appzoy.com/careers', '<html>\n<head>\n	<title></title>\n</head>\n<body>\n<p>&bull; B.E./B.Tech/M.E./M.Tech/MCA from an accredited university with good academics.<br />\n&bull; 1-3 years of Android app development experience with demonstrable portfolio of published apps<br />\n&bull; Strong SW engineering foundation and analytical &amp; problem solving skills.<br />\n&bull; Expert in programming in JAVA&nbsp;<br />\n&bull; Experience in Android application development incl. dynamic layouts, Android classes, databases, social network/payment integrations, consuming SOAP/JSON/REST web services from mobile apps<br />\n&bull; Experience in Android development environment such as Android Studio, SDK<br />\n&bull; Hand-on experience in configuration management way of working such as GIT, BitBucket.<br />\n&bull; Excellent verbal &amp; written communication skills<br />\n&bull; Excellent Team Player.</p>\n</body>\n</html>\n', 'Software Engineer: Primary responsibility would be designing, developing, testing & deploying Android applications.	', 'Karnataka', 'Bengaluru', '0', '0', '', 'Mid Level', '<html>\n<head>\n	<title></title>\n</head>\n<body>\n<p>&bull; Determines feasibility by evaluating analysis, requirements and proposed solutions.<br />\n&bull; Documents and demonstrates solutions by developing documentation, flowcharts, layouts, diagrams, code comments and clear code.<br />\n&bull; Develops software solutions by studying information needs; conferring with architect; studying systems flow, data usage, and work processes; investigating problem areas; following the software development lifecycle.<br />\n&bull; Updates job knowledge by studying state-of-the-art development tools, programming techniques, and computing equipment; participating in educational opportunities; reading professional publications; maintaining personal networks.<br />\n&bull; Protects operations by keeping information confidential.<br />\n&bull; Provides information by collecting, analyzing &amp; summarizing development issues.<br />\n&bull; Accomplishes engineering &amp; organization mission by completing identified results as needed.</p>\n</body>\n</html>\n', '0000-00-00', 'IT', 'AppZoy', 0, 'http://www.appzoy.com', '', '080 42021822', '1st floor, above Celio, 90, 27th Main Road, Sector 1, HSR Layout, Bengaluru, Karnataka 560102', '2019-05-05 04:18:35', '2019-05-05 04:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `resumeId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `addInfo` varchar(255) DEFAULT NULL,
  `careerObjective` varchar(255) DEFAULT NULL,
  `specialQualification` varchar(255) DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `motherName` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `declaration` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20181015110120-create-states.js'),
('20181015110241-create-cities.js'),
('20190424085308-create-users.js'),
('20190424102358-create-jobs.js'),
('20190426044718-create-resumes.js'),
('20190426045302-create-education.js'),
('20190426045541-create-work-history.js'),
('20190426045903-create-languages-know.js');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101),
(5, 'Bihar', 101),
(6, 'Chandigarh', 101),
(7, 'Chhattisgarh', 101),
(10, 'Delhi', 101),
(11, 'Goa', 101),
(12, 'Gujarat', 101),
(13, 'Haryana', 101),
(14, 'Himachal Pradesh', 101),
(15, 'Jammu and Kashmir', 101),
(16, 'Jharkhand', 101),
(17, 'Karnataka', 101),
(19, 'Kerala', 101),
(21, 'Madhya Pradesh', 101),
(22, 'Maharashtra', 101),
(23, 'Manipur', 101),
(24, 'Meghalaya', 101),
(25, 'Mizoram', 101),
(26, 'Nagaland', 101),
(29, 'Odisha', 101),
(32, 'Punjab', 101),
(33, 'Rajasthan', 101),
(34, 'Sikkim', 101),
(35, 'Tamil Nadu', 101),
(36, 'Telangana', 101),
(38, 'Uttar Pradesh', 101),
(39, 'Uttarakhand', 101),
(41, 'West Bengal', 101);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirmPassword` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `confirmPassword`, `mobileNumber`, `city`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'Anusha Manne', 'anushamanne7@gmail.com', '$2a$08$sH2ZrfbmPNeg2P3G.kuUuuF.P/UdiuOQVSu7qJsaNiJcEn6YlL9Ae', 'anuraji972', '7095863545', '', 'Recruiter', '2019-05-03 03:06:44', '2019-05-03 03:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `workhistories`
--

CREATE TABLE `workhistories` (
  `id` int(11) NOT NULL,
  `resumeId` int(11) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `joiningDate` varchar(20) DEFAULT NULL,
  `relievingDate` varchar(50) DEFAULT NULL,
  `jobDescription` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumeId` (`resumeId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumeId` (`resumeId`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workhistories`
--
ALTER TABLE `workhistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumeId` (`resumeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5708;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workhistories`
--
ALTER TABLE `workhistories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workhistories`
--
ALTER TABLE `workhistories`
  ADD CONSTRAINT `workhistories_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
