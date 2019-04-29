-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 12:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `resumeId`, `instituteName`, `qualification`, `result`, `startingDate`, `endingDate`, `description`, `createdAt`, `updatedAt`) VALUES
(20, 17, 'Prakasam Engineering College', 'B.tech', '88%', '2012', '2016', 'You should aim to format your resume in the same manner. Your education section should briefly detail your academic activities—including relevant clubs, athletics, theater, student government, or other projects—because they are important indicators of you', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(21, 17, 'Sri Saraswathi junior college', 'Intermediate', '97%', '2010', '2012', 'Notice how her first experience listed is a semester studying abroad. She even quantifies her achievements from this experience, giving any hiring manager a firm idea of how competent a candidate she is, given her communication skills, writing abilities, ', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(22, 18, '', '', '', '', '', '', '2019-04-27 11:04:09', '2019-04-27 11:04:09'),
(23, 19, '', '', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(24, 20, '', '', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(25, 21, '', '', '', '', '', '', '2019-04-27 11:04:17', '2019-04-27 11:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `jobType` varchar(256) NOT NULL,
  `title` varchar(255) NOT NULL,
  `applyUrl` text,
  `requirements` text,
  `description` text NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `minSalary` int(11) NOT NULL,
  `maxSalary` int(11) NOT NULL,
  `salaryType` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `function` text NOT NULL,
  `jobDeadLine` date DEFAULT NULL,
  `industry` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `companySize` int(11) DEFAULT NULL,
  `companySite` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category`, `jobType`, `title`, `applyUrl`, `requirements`, `description`, `state`, `city`, `minSalary`, `maxSalary`, `salaryType`, `experience`, `function`, `jobDeadLine`, `industry`, `companyName`, `companySize`, `companySite`, `email`, `mobileNumber`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'Software Engineer', 'Full Time', 'xff', NULL, NULL, 'dffgvcbn', 'Ap', 'Visakhapatnam', 1200, 2000, 'Daily', 'Mid Level', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>Expert in any one of the modern JavaScript MVVM/MVC frameworks (AngularJS, JQuery, NodeJS, GruntJS)</li>\r\n	<li>Familiar with testing frameworks (Ex. Jasmine)</li>\r\n	<li>Test runner framework (Ex. Karma)</li>\r\n	<li>Hand on and implements complex AngularJS applications, directives, controllers, services</li>\r\n	<li>Critical thinker and problem solving skills</li>\r\n	<li>Great interpersonal and communication skills</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '2019-05-15', 'fdf', 'fggf', 200, 'www.anaghasoftech.com', 'sfdfg', 'ff', 'cvxbvb bn', '2019-04-24 11:30:17', '2019-04-24 11:30:17'),
(2, 'Software Engineer', 'Part Time', 'xff', NULL, NULL, 'dffgvcbn', 'Andra Pradesh', 'Hyderabad', 1500, 2500, 'Daily', 'Mid Level', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>Expert in any one of the modern JavaScript MVVM/MVC frameworks (AngularJS, JQuery, NodeJS, GruntJS)</li>\r\n	<li>Familiar with testing frameworks (Ex. Jasmine)</li>\r\n	<li>Test runner framework (Ex. Karma)</li>\r\n	<li>Hand on and implements complex AngularJS applications, directives, controllers, services</li>\r\n	<li>Critical thinker and problem solving skills</li>\r\n	<li>Great interpersonal and communication skills</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '2019-05-30', 'fdf', 'fggf', 500, 'www.technoidentity.com', 'sfdfg', 'ff', 'cvxbvb bn', '2019-04-24 11:30:53', '2019-04-24 11:30:53'),
(3, 'Program Development', 'Contract', 'Looking For Angular Developer', NULL, NULL, 'Looking For Angular Developer', 'karnataka', 'Banglore', 1234, 4561, 'Monthly', 'Mid Level', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>Expert in any one of the modern JavaScript MVVM/MVC frameworks (AngularJS, JQuery, NodeJS, GruntJS)</li>\r\n	<li>Familiar with testing frameworks (Ex. Jasmine)</li>\r\n	<li>Test runner framework (Ex. Karma)</li>\r\n	<li>Hand on and implements complex AngularJS applications, directives, controllers, services</li>\r\n	<li>Critical thinker and problem solving skills</li>\r\n	<li>Great interpersonal and communication skills</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '2019-06-12', 'IT', 'Anagha Softech ', NULL, NULL, 'anusha@gmail.com', '7095863545', 'Banjarahills', '2019-04-24 12:10:42', '2019-04-24 12:10:42'),
(5, 'Project Manager', 'full-time', 'Manager - Enterprise Sales', 'https://www.naukri.com/job-listings-Manager-Enterprise-Sales-Happay-Expense-Management-Solution-for-Businesses-Bengaluru-Chennai-Hyderabad-Kolkata-3-to-8-years-250419900895?src=seo_srp&sid=15561813357393&xp=1&px=1', '- Understand partner objectives : What they need, key business metrics & how to grow their business \n\n- Product : Coordinate with the product team and get specific requirements and integrations built as and when needed \n\n- Brainstorm new and creative revenue growth strategies and partnership opportunities.', '- Own end to end business development/sales funnel and be responsible for achieving revenue targets \n\n- Will be responsible for partnering with enterprise clients like Banks, OEMs, Telecom companies etc. \n\n- Understand consumers : Who are our target consumers, what are their needs \n\n', 'Tamilnadu', 'Chennai', 200, 500, 'Yearly', 'Mid Level', '<html> <head> 	<title></title> </head> <body> <ul> 	<li>Expert in any one of the modern JavaScript MVVM/MVC frameworks (AngularJS, JQuery, NodeJS, GruntJS)</li> 	<li>Familiar with testing frameworks (Ex. Jasmine)</li> 	<li>Test runner framework (Ex. Karma)</li> 	<li>Hand on and implements complex AngularJS applications, directives, controllers, services</li> 	<li>Critical thinker and problem solving skills</li> 	<li>Great interpersonal and communication skills</li> </ul> </body> </html>', '2019-05-16', 'Marketing and Advertisements', 'Happay-Expense', 200, 'www.happay.com', 'anushamanne7@gmail.com', '7095863545', 'Bengaluru, Chennai, Hyderabad, Kolkata', '2019-04-25 08:40:25', '2019-04-25 08:40:25'),
(6, 'Program Development', 'full-time', 'Looking for Angular Senior Developer', 'http://www.anaghasoftech.com/careers/', 'Looking for the candidates having experience on Angular JS, Node JS with MVC framework for Opening with top IT firm in Hyderabad Location.', 'Deep expertise and hands on experience with Web Applications and programming languages and frameworks such as HTML, CSS, Bootstrap, Typescript, JavaScript, JQuery, ReactJS, Angular 6/7\nStrong expertise with HTML, CSS, and writing crossbrowser compatible code.\nGood understanding of AJAX and JavaScript DOM manipulation Techniques\nExperience with RESTful services\nExperience in JavaScript build tools like grunt or gulp', 'Mumbai', 'pune', 500, 600, 'Monthly', 'Mid Level', '<html>\n<head>\n	<title></title>\n</head>\n<body>\n<ul>\n	<li>Expert in any one of the modern JavaScript MVVM/MVC frameworks (AngularJS, JQuery, NodeJS, GruntJS)</li>\n	<li>Familiar with testing frameworks (Ex. Jasmine)</li>\n	<li>Test runner framework (Ex. Karma)</li>\n	<li>Hand on and implements complex AngularJS applications, directives, controllers, services</li>\n	<li>Critical thinker and problem solving skills</li>\n	<li>Great interpersonal and communication skills</li>\n</ul>\n</body>\n</html>\n', '2019-06-20', 'IT', 'Anagha Softech ', 50, 'http://www.anaghasoftech.com', 'info@anaghasoftech.com', '+91 - (40) 2338 6511', 'H.No: 8-2-608/27, Mastan Mansion, Gaffer Khan Colony, Road No. 10, Banjarahills, Hyderabad, TS, India -500034', '2019-04-25 12:51:23', '2019-04-25 12:51:23');

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

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `resumeId`, `name`, `rating`, `createdAt`, `updatedAt`) VALUES
(16, 17, 'English', '2', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(17, 17, 'Telugu', '1', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(18, 17, 'Hindi', '4', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(19, 18, '', '', '2019-04-27 11:04:09', '2019-04-27 11:04:09'),
(20, 19, '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(21, 20, '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(22, 21, '', '', '2019-04-27 11:04:17', '2019-04-27 11:04:17');

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

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `userId`, `fullName`, `addInfo`, `careerObjective`, `specialQualification`, `fatherName`, `motherName`, `dob`, `nationality`, `gender`, `address`, `declaration`, `createdAt`, `updatedAt`) VALUES
(17, 1, 'Anusha Manne', 'Additional information may include civic activities, awards and recognitions, volunteering, or cultural skills like language or travel. It may also include other interests or activities that may show leadership, character, or qualities you feel are benefi', 'An excellent academic record, ability to understand and test software, working knowledge of Azure, and a strong understanding of core internet technologies. I seek to work as a System Engineer to further my knowledge in the IT domain and utilize my skills', '<html>\n<head>\n	<title></title>\n</head>\n<body>\n<ol>\n	<li>Communication</li>\n	<li>Ability to Work Under Pressure</li>\n	<li>Decision Making</li>\n	<li>Time Management</li>\n	<li>Self-motivation</li>\n	<li>Conflict Resolution</li>\n	<li>Leadership</li>\n	<li>Adapt', 'Mohan ', 'jaya', '1995-05-06 18:30:00', 'indian', 'Female', 'H.No: 8-2-608/27,Mastan Mansion, Gaffar Khan Colony,Road No. 10, Banjarahills, Hyderabad, Telangana 500034', 'I hereby declare that the information mentioned above is correct up to my knowledge and bear the responsibility for the correctness of the mentioned particulars.', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(18, 1, '', '', '', '<html>\n<head>\n	<title></title>\n</head>\n<body></body>\n</html>\n', '', '', '0000-00-00 00:00:00', '', '', '', '', '2019-04-27 11:04:09', '2019-04-27 11:04:09'),
(19, 1, '', '', '', '<html>\n<head>\n	<title></title>\n</head>\n<body></body>\n</html>\n', '', '', '0000-00-00 00:00:00', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(20, 1, '', '', '', '<html>\n<head>\n	<title></title>\n</head>\n<body></body>\n</html>\n', '', '', '0000-00-00 00:00:00', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(21, 1, '', '', '', '<html>\n<head>\n	<title></title>\n</head>\n<body></body>\n</html>\n', '', '', '0000-00-00 00:00:00', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16');

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
(1, 'Anusha Manne', 'anushamanne7@gmail.com', '$2a$08$wHJQeq.eGV7MlqC5WcvtGOanvxsrajBLpFNwuERxhG10vM.gcx/oW', 'anuraji972', '709583545', 'HYd', 'Employe', '0000-00-00 00:00:00', '2019-04-27 05:01:07');

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
-- Dumping data for table `workhistories`
--

INSERT INTO `workhistories` (`id`, `resumeId`, `companyName`, `designation`, `joiningDate`, `relievingDate`, `jobDescription`, `createdAt`, `updatedAt`) VALUES
(18, 17, 'Angha Softech', 'Junior software developer', '2018', 'Present', 'Include detailed job descriptions of relevant positions in your field and a brief mention of other positions: internships, temporary gigs, freelancing\n\nList and describe all paid work you’ve ever done, including internships, part-time or temporary work, f', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(19, 17, 'Sun kpo llp', 'Junior sofware developer', '2017', '2018', 'This way, you’ll put your best foot forward—the pinnacle of your career, your most recent job, will get the most attention. \n\nListing your jobs in chronologically descending is the cornerstone of the classic reverse-chronological resume format. It’s ideal', '2019-04-26 09:10:41', '2019-04-26 09:10:41'),
(20, 18, '', '', '', '', '', '2019-04-27 11:04:09', '2019-04-27 11:04:09'),
(21, 19, '', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(22, 20, '', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16'),
(23, 21, '', '', '', '', '', '2019-04-27 11:04:16', '2019-04-27 11:04:16');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`);

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `workhistories`
--
ALTER TABLE `workhistories`
  ADD CONSTRAINT `workhistories_ibfk_1` FOREIGN KEY (`resumeId`) REFERENCES `resumes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
