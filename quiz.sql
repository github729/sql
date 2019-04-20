-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 08:47 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `total_qns` int(11) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `courseId`, `name`, `description`, `total_qns`, `duration`, `status`, `createdAt`, `updatedAt`) VALUES
(3, 1, 'Routing', 'routing is used for navigations', 10, '00:00:00', 'active', '2018-08-21 12:04:34', '2018-08-23 07:47:32'),
(4, 1, 'Components comunication', 'parent and child communication', 100, '00:00:50', 'active', '2018-08-21 12:30:48', '2018-08-21 12:30:48'),
(5, 3, 'Express Routing', 'This is used for routing and navigation purpose', 100, '00:00:55', 'active', '2018-08-22 05:14:46', '2018-08-22 05:14:46'),
(6, 3, 'chapter 2', 'this is chapter 2 description', 50, '00:00:58', 'active', '2018-08-22 05:24:57', '2018-08-22 05:24:57'),
(7, 1, 'chapter 3', 'chapter 3 description ', 80, '00:00:00', 'active', '2018-08-22 05:26:31', '2018-08-22 05:26:31'),
(8, 9, 'Angualr 4 Mock Test', 'Angualr 4 Mock Test', 20, '00:00:20', 'active', '2018-09-21 06:32:36', '2018-09-21 06:32:36'),
(9, 9, 'Angualr 4 Animation', 'Angualr 4 Animation', 25, '00:00:25', 'active', '2018-09-21 06:33:02', '2018-09-21 06:33:02'),
(10, 9, 'Angualr 4 Form Management', 'Angualr 4 Form Management', 30, '00:00:30', 'active', '2018-09-21 06:33:48', '2018-09-21 06:33:48'),
(11, 9, 'Angualr 4 Routing', 'Angualr 4 Routing', 35, '00:00:35', 'active', '2018-09-21 06:34:11', '2018-09-21 06:34:11'),
(12, 9, 'Component and Bindings', 'Component and Bindings', 40, '00:00:40', 'active', '2018-09-21 06:34:33', '2018-09-21 06:34:33'),
(13, 9, 'Creating an Application', 'Creating an Application', 15, '00:00:15', 'active', '2018-09-21 06:34:57', '2018-09-21 06:34:57'),
(14, 9, 'Directives', 'Directives', 10, '00:00:10', 'active', '2018-09-21 06:35:20', '2018-09-21 06:35:20'),
(15, 9, 'Model Driven Forms', 'Model Driven Forms', 25, '00:00:25', 'active', '2018-09-21 06:35:42', '2018-09-21 06:35:42'),
(16, 9, 'Native Script', 'Native Script', 15, '00:00:15', 'active', '2018-09-21 06:36:06', '2018-09-21 06:36:06'),
(17, 9, 'Pipes', 'Pipes', 30, '00:00:30', 'active', '2018-09-21 06:36:24', '2018-09-21 06:36:24'),
(18, 9, 'Services Promises and Route Protection', 'Services Promises and Route Protection', 45, '00:00:45', 'active', '2018-09-21 06:37:30', '2018-09-21 06:37:30');

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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `status`, `createdAt`, `updatedAt`) VALUES
(8, 'Angular 2', 'Angular 2', 'active', '2018-09-21 06:26:05', '2018-09-21 06:26:05'),
(9, 'Angualr 4', 'Angualr 4', 'active', '2018-09-21 06:26:21', '2018-09-21 06:26:21'),
(10, 'Angular Js', 'Angular Js', 'active', '2018-09-21 06:26:38', '2018-09-21 06:26:38'),
(11, 'CSS Designer', 'CSS Designer', 'active', '2018-09-21 06:27:01', '2018-09-21 06:27:01'),
(12, 'CSS3', 'CSS3', 'active', '2018-09-21 06:27:14', '2018-09-21 06:27:14'),
(13, 'DHTML and Javascript', 'DHTML and Javascript', 'active', '2018-09-21 06:27:50', '2018-09-21 06:27:50'),
(14, 'Django', 'Django', 'active', '2018-09-21 06:28:07', '2018-09-21 06:28:07'),
(15, 'Dreamweaver CS5', 'Dreamweaver CS5', 'active', '2018-09-21 06:28:35', '2018-09-21 06:28:35'),
(16, 'E Commerce', 'E Commerce', 'active', '2018-09-21 06:28:50', '2018-09-21 06:28:50'),
(17, 'HTML', 'HTML', 'active', '2018-09-21 06:29:05', '2018-09-21 06:29:05'),
(18, 'HTML 5', 'HTML 5', 'active', '2018-09-21 06:29:15', '2018-09-21 06:29:15'),
(19, 'Joomla', 'Joomla', 'active', '2018-09-21 06:29:31', '2018-09-21 06:29:31'),
(20, 'Node Js', 'Node Js', 'active', '2018-09-21 06:29:46', '2018-09-21 06:29:46'),
(21, 'PHP', 'PHP', 'active', '2018-09-21 06:29:55', '2018-09-21 06:29:55'),
(22, 'Python', 'Python', 'active', '2018-09-21 06:30:15', '2018-09-21 06:30:15'),
(23, 'Wordpress Developer', 'Wordpress Developer', 'active', '2018-09-21 06:30:31', '2018-09-21 06:30:31'),
(24, 'XML Developer', 'XML Developer', 'active', '2018-09-21 06:30:49', '2018-09-21 06:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `jtiltle` varchar(255) DEFAULT NULL,
  `jpostdate` datetime DEFAULT NULL,
  `jcname` varchar(255) DEFAULT NULL,
  `jlocation` varchar(255) DEFAULT NULL,
  `jrole` varchar(255) DEFAULT NULL,
  `jeligibility` varchar(255) DEFAULT NULL,
  `jlastdate` varchar(255) DEFAULT NULL,
  `cwebsite` varchar(255) DEFAULT NULL,
  `jexp` varchar(255) DEFAULT NULL,
  `jcprofile` varchar(255) DEFAULT NULL,
  `jdescription` varchar(255) DEFAULT NULL,
  `candidateprofile` varchar(255) DEFAULT NULL,
  `requiredskills` varchar(255) DEFAULT NULL,
  `jurl` varchar(255) DEFAULT NULL,
  `jtype` varchar(50) DEFAULT NULL,
  `salar` bigint(20) DEFAULT NULL,
  `jclogo` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jtiltle`, `jpostdate`, `jcname`, `jlocation`, `jrole`, `jeligibility`, `jlastdate`, `cwebsite`, `jexp`, `jcprofile`, `jdescription`, `candidateprofile`, `requiredskills`, `jurl`, `jtype`, `salar`, `jclogo`, `createdAt`, `updatedAt`) VALUES
(1, '(Fre/Exp) \"Cisco\" Hiring: DevOps Engineer On Oct 2018 @ Bangalore', '2018-10-13 00:00:00', 'DURGASOFT', 'Hyderabad', 'Marketing Executives', 'Any Degree', 'ASAP', 'www.durgasoft.com', 'active', ' DURGA SOFTWARE SOLUTIONS an ISO 9001:2008 Certified Organization,a divsion of Durga  organizations is the one and only place providing in-depth training on all latest Java/J2ee technologies and Java Certifications for the last decade. Every blog and foru', 'We are looking for Marketing Executives', ' Fluency in English is mandatory.', 'Pleasant personality added advantage', 'https://jobs.cisco.com/jobs/ProjectDetail/DevOps-Engineer-Linux-Unix-Administration/1231951', NULL, NULL, 'ji', '2018-10-13 06:04:36', '2018-10-13 06:36:13'),
(2, '(Fre/Exp) \"Cisco\" Hiring: DevOps Engineer On Oct 2018 @ Bangalore', '2018-10-13 00:00:00', 'Anagha Softech', 'Hyderabad', 'Marketing Executives', 'Any Degree', 'ASAP', 'www.durgasoft.com', 'active', ' DURGA SOFTWARE SOLUTIONS an ISO 9001:2008 Certified Organization,a divsion of Durga  organizations is the one and only place providing in-depth training on all latest Java/J2ee technologies and Java Certifications for the last decade. Every blog and foru', 'We are looking for Marketing Executives', ' Fluency in English is mandatory.', 'Pleasant personality added advantage', 'https://jobs.cisco.com/jobs/ProjectDetail/DevOps-Engineer-Linux-Unix-Administration/1231951', NULL, NULL, 'ji', '2018-10-13 06:04:36', '2018-10-13 06:36:13'),
(3, 'Ui/front-end Developer - Javascript/jquery', '2018-10-13 00:00:00', 'Squareroot Consulting', 'Bengaluru', 'Ui/front-end Developer ', 'B.Tech/B.E. - Any Specialization', 'ASAP', 'www.durgasoft.com', '2 - 7 yrs', ' DURGA SOFTWARE SOLUTIONS an ISO 9001:2008 Certified Organization,a divsion of Durga  organizations is the one and only place providing in-depth training on all latest Java/J2ee technologies and Java Certifications for the last decade. Every blog and foru', ' A technocrat who is keen to build product from scratch and work closely with architects, Product Manager, Designers and Development team. ', ' Fluency in English is mandatory.', 'Pleasant personality added advantage', 'https://jobs.cisco.com/jobs/ProjectDetail/DevOps-Engineer-Linux-Unix-Administration/1231951', NULL, NULL, 'logo', '2018-10-13 06:04:36', '2018-10-13 06:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `chapterId`, `question`, `createdAt`, `updatedAt`) VALUES
(125, 8, 'How would you define an animation state if you don\'t care from where something is transitioning?                     ', '2018-09-22 11:14:43', '2018-09-26 08:26:16'),
(126, 8, 'Where would you place a view when using a model-driven from?', '2018-09-22 11:16:14', '2018-09-22 11:16:14'),
(127, 8, 'You want to fire of a method on the component when the user submits a form. Which tag would you specify this code?', '2018-09-22 11:17:51', '2018-09-22 11:17:51'),
(128, 8, 'How would you display currency and the currency symbol of a foreign country?', '2018-09-22 11:19:38', '2018-09-22 11:19:38'),
(129, 8, 'How would you use ActivateRoute to check to see if a route parameter was updated?', '2018-09-22 11:20:32', '2018-09-22 11:20:32'),
(130, 8, 'How can you build a template to display a form?', '2018-09-22 11:21:32', '2018-09-22 11:21:32'),
(131, 8, 'How would you implement ngClass if you want IF/ELSE logic?', '2018-09-22 11:22:37', '2018-09-22 11:22:37'),
(132, 8, 'In a web application how would you pass data into the @Input decorator?', '2018-09-22 11:24:27', '2018-09-22 11:24:27'),
(133, 9, ' How could you be able to tell when an animation started or ended?', '2018-11-16 10:50:06', '2018-11-16 10:50:06'),
(134, 9, 'Which animation strategy would you use to apply multiple styles for a transition?                     ', '2018-11-16 10:51:19', '2018-11-16 10:51:19'),
(135, 9, 'Which tool you must use to install the animations package?', '2018-11-16 10:52:36', '2018-11-16 10:52:36'),
(136, 9, 'How would you create an animation when a user enters and leaves a component?', '2018-11-16 10:53:37', '2018-11-16 10:53:37'),
(137, 9, 'How would you define an animation state if you don\'t care from where something is', '2018-11-16 10:54:36', '2018-11-16 10:54:36'),
(138, 9, 'What do animation states define about a certain component?', '2018-11-16 10:55:28', '2018-11-16 10:55:28'),
(139, 9, 'Which code example defines an animation whose \'to\' state may not exist at the end of a transition?', '2018-11-16 10:56:32', '2018-11-16 10:56:32'),
(140, 9, 'Which step would you take first when adding animations into your Angular app?', '2018-11-16 10:57:21', '2018-11-16 10:57:21'),
(141, 9, ' Where does the end user see the animations?', '2018-11-16 10:58:31', '2018-11-16 10:58:31'),
(142, 9, 'Which animation strategy would you use if there were multiple animations that had to occur at the same time?', '2018-11-16 11:00:31', '2018-11-16 11:00:31'),
(143, 10, 'You want to fire of a method on the component when the user submits a form. Which tag would you specify this code?', '2018-11-16 11:01:39', '2018-11-16 11:01:39'),
(144, 10, 'How do you get the value of the data from a component that has just changed?', '2018-11-16 11:03:32', '2018-11-16 11:03:32'),
(145, 10, 'Where would you place the code to inform a user that an input is invalid?', '2018-11-16 11:04:56', '2018-11-16 11:04:56'),
(146, 10, 'How can you build a template to display a form?', '2018-11-16 11:06:09', '2018-11-16 11:06:09'),
(147, 10, 'How would you validate an input field that has to be at least 5 characters long?', '2018-11-16 11:07:09', '2018-11-16 11:07:09'),
(148, 10, 'How can you access data in your component that is set in your template?', '2018-11-16 11:08:24', '2018-11-16 11:08:24'),
(149, 10, 'How would you reset all objects on a form', '2018-11-16 11:09:35', '2018-11-16 11:09:35'),
(150, 10, 'How would you access the value of an input field in your components code?', '2018-11-16 11:10:35', '2018-11-16 11:10:35'),
(151, 10, 'Where can you place CSS to be used by your form?', '2018-11-16 11:11:19', '2018-11-16 11:11:19'),
(152, 10, 'How would you create a root module for a forms application?', '2018-11-16 11:12:11', '2018-11-16 11:12:11'),
(153, 11, 'f a route parameter needed to be defined for an application where would you put it?', '2018-11-16 11:13:31', '2018-11-16 11:13:31'),
(154, 11, 'How would you add a hyperlink in a view?', '2018-11-16 11:14:07', '2018-11-16 11:14:07'),
(155, 11, 'How would you use a router outlet to display a view?', '2018-11-16 11:14:50', '2018-11-16 11:14:50'),
(156, 11, 'How would you build a webpage that may have a different look and feel depending on the content?', '2018-11-16 11:15:38', '2018-11-16 11:15:38'),
(157, 11, 'Where would you put the value for a route parameter?', '2018-11-16 11:16:22', '2018-11-16 11:16:22'),
(158, 11, 'How would you use ActivateRoute to check to see if a route parameter was updated?', '2018-11-16 11:17:10', '2018-11-16 11:17:10'),
(159, 11, 'How would you display conditional views (one or the other) in a router outlet', '2018-11-16 11:19:42', '2018-11-16 11:19:42'),
(160, 11, 'Where would you define child URL routes?', '2018-11-16 11:20:18', '2018-11-16 11:20:18'),
(161, 11, 'How would you create two specific view to be used by your Angular application?', '2018-11-16 11:21:06', '2018-11-16 11:21:06'),
(162, 11, 'How would you implement routes that are defined in a configuration file?', '2018-11-16 11:21:49', '2018-11-16 11:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `options`, `is_correct`, `createdAt`, `updatedAt`) VALUES
(32, 124, 'Anusha Manne123', 1, '2018-09-22 07:32:48', '2018-09-22 11:05:28'),
(33, 124, 'Anusha Manne', 0, '2018-09-22 07:32:48', '2018-09-22 07:32:48'),
(34, 124, 'Anusha Manne', 0, '2018-09-22 07:32:48', '2018-09-22 11:00:13'),
(35, 124, 'Anusha Manne', 0, '2018-09-22 07:32:48', '2018-09-22 11:05:28'),
(36, 125, ' Use the wildcard for the \'from\' state', 0, '2018-09-22 11:14:43', '2018-09-22 11:14:43'),
(37, 125, ' Use the wildcard as part of the transition', 0, '2018-09-22 11:14:43', '2018-09-26 08:26:16'),
(38, 125, ' Use the wildcard for the \'from\' and \'to\' state', 1, '2018-09-22 11:14:43', '2018-09-26 08:26:16'),
(39, 125, ' Use the wildcard for the \'to\' state', 0, '2018-09-22 11:14:43', '2018-09-22 11:14:43'),
(40, 126, ' In an inline template in the component', 1, '2018-09-22 11:16:14', '2018-09-22 11:16:14'),
(41, 126, ' In the configuration file', 0, '2018-09-22 11:16:14', '2018-09-22 11:16:14'),
(42, 126, ' Both (In an inline template in the component) & (In its own HTML file)', 0, '2018-09-22 11:16:14', '2018-09-22 11:16:14'),
(43, 126, ' In its own HTML file', 0, '2018-09-22 11:16:14', '2018-09-22 11:16:14'),
(44, 127, ' Tag FROM', 0, '2018-09-22 11:17:51', '2018-09-22 11:17:51'),
(45, 127, ' Tag SUBMIT', 1, '2018-09-22 11:17:51', '2018-09-22 11:17:51'),
(46, 127, ' Tag HTML', 0, '2018-09-22 11:17:51', '2018-09-22 11:17:51'),
(47, 127, ' Tag DIV', 0, '2018-09-22 11:17:51', '2018-09-22 11:17:51'),
(48, 128, ' Use the county code for that county and use it in the pipe', 0, '2018-09-22 11:19:38', '2018-09-22 11:19:38'),
(49, 128, ' Call a local function that returns the symbol and the currency value', 1, '2018-09-22 11:19:38', '2018-09-22 11:19:38'),
(50, 128, ' Get it via a web service', 0, '2018-09-22 11:19:38', '2018-09-22 11:19:38'),
(51, 128, ' By using the currency manager', 0, '2018-09-22 11:19:38', '2018-09-22 11:19:38'),
(52, 129, ' By building an instance of it', 0, '2018-09-22 11:20:32', '2018-09-22 11:20:32'),
(53, 129, ' By packaging it with the application', 0, '2018-09-22 11:20:32', '2018-09-22 11:20:32'),
(54, 129, ' By including it as a complie parameter', 0, '2018-09-22 11:20:32', '2018-09-22 11:20:32'),
(55, 129, ' By injecting it into your component', 1, '2018-09-22 11:20:32', '2018-09-22 11:20:32'),
(56, 130, ' In a separate HTML file', 0, '2018-09-22 11:21:32', '2018-09-22 11:21:32'),
(57, 130, ' With an inline template', 0, '2018-09-22 11:21:32', '2018-09-22 11:21:32'),
(58, 130, ' With JavaScript', 0, '2018-09-22 11:21:32', '2018-09-22 11:21:32'),
(59, 130, ' Both (In a separate HTML file) & (With an inline template)', 1, '2018-09-22 11:21:32', '2018-09-22 11:21:32'),
(60, 131, ' As a TextType', 0, '2018-09-22 11:22:37', '2018-09-22 11:22:37'),
(61, 131, ' As an object', 0, '2018-09-22 11:22:37', '2018-09-22 11:22:37'),
(62, 131, ' As an expression', 0, '2018-09-22 11:22:37', '2018-09-22 11:22:37'),
(63, 131, ' As a Style', 1, '2018-09-22 11:22:37', '2018-09-22 11:22:37'),
(64, 132, ' From the root module', 0, '2018-09-22 11:24:27', '2018-09-22 11:24:27'),
(65, 132, ' With the Java API', 0, '2018-09-22 11:24:27', '2018-09-22 11:24:27'),
(66, 132, ' From a database call', 1, '2018-09-22 11:24:27', '2018-09-22 11:24:27'),
(67, 132, ' Through the tag', 0, '2018-09-22 11:24:27', '2018-09-22 11:24:27'),
(68, 133, ' Read the Animation Event properties', 0, '2018-11-16 10:50:06', '2018-11-16 10:50:06'),
(69, 133, ' Import the animation', 0, '2018-11-16 10:50:06', '2018-11-16 10:50:06'),
(70, 133, ' View the log file', 1, '2018-11-16 10:50:06', '2018-11-16 10:50:06'),
(71, 133, ' Call the animation from the component', 0, '2018-11-16 10:50:06', '2018-11-16 10:50:06'),
(72, 134, ' Use the keyframes module', 0, '2018-11-16 10:51:19', '2018-11-16 10:51:19'),
(73, 134, ' Use keyframes as an argument to the animate function', 1, '2018-11-16 10:51:19', '2018-11-16 10:51:19'),
(74, 134, ' Include keyframes in your configuration', 0, '2018-11-16 10:51:19', '2018-11-16 10:51:19'),
(75, 134, ' Import the keyframes', 0, '2018-11-16 10:51:19', '2018-11-16 10:51:19'),
(76, 135, 'Safari', 0, '2018-11-16 10:52:36', '2018-11-16 10:52:36'),
(77, 135, 'Eclipse', 0, '2018-11-16 10:52:36', '2018-11-16 10:52:36'),
(78, 135, 'NPM', 1, '2018-11-16 10:52:36', '2018-11-16 10:52:36'),
(79, 135, 'Yarn', 0, '2018-11-16 10:52:36', '2018-11-16 10:52:36'),
(80, 136, ' Use a route \'enter\' and a route \'leave\' transition', 1, '2018-11-16 10:53:38', '2018-11-16 10:53:38'),
(81, 136, 'Add transitions to a module', 0, '2018-11-16 10:53:38', '2018-11-16 10:53:38'),
(82, 136, 'Create a transaction', 0, '2018-11-16 10:53:38', '2018-11-16 10:53:38'),
(83, 136, 'dd the animation to the component class', 0, '2018-11-16 10:53:38', '2018-11-16 10:53:38'),
(84, 137, 'Use the wildcard for the \'from\' state', 0, '2018-11-16 10:54:36', '2018-11-16 10:54:36'),
(85, 137, 'Use the wildcard for the \'from\' and \'to\' state', 0, '2018-11-16 10:54:36', '2018-11-16 10:54:36'),
(86, 137, ' Use the wildcard as part of the transition', 0, '2018-11-16 10:54:36', '2018-11-16 10:54:36'),
(87, 137, 'Use the wildcard for the \'to\' state', 1, '2018-11-16 10:54:36', '2018-11-16 10:54:36'),
(88, 138, 'The state in which it starts and the state in which it finishes', 0, '2018-11-16 10:55:28', '2018-11-16 10:55:28'),
(89, 138, 'How it goes from one state to another', 1, '2018-11-16 10:55:28', '2018-11-16 10:55:28'),
(90, 138, 'How it can create multiple superclasses', 0, '2018-11-16 10:55:28', '2018-11-16 10:55:28'),
(91, 138, 'How it is instantiated', 0, '2018-11-16 10:55:28', '2018-11-16 10:55:28'),
(92, 139, 'transition(\'void =&gt; void\'', 0, '2018-11-16 10:56:32', '2018-11-16 10:56:32'),
(93, 139, 'transition(\'void =&gt; *\'', 0, '2018-11-16 10:56:32', '2018-11-16 10:56:32'),
(94, 139, 'transition(\'* =&gt; void\'', 1, '2018-11-16 10:56:32', '2018-11-16 10:56:32'),
(95, 139, 'FALSE', 0, '2018-11-16 10:56:32', '2018-11-16 10:56:32'),
(96, 140, 'Create the styles', 0, '2018-11-16 10:57:21', '2018-11-16 10:57:21'),
(97, 140, 'Import BrowserAnimationModule in your root module', 0, '2018-11-16 10:57:21', '2018-11-16 10:57:21'),
(98, 140, 'Create the Template', 0, '2018-11-16 10:57:21', '2018-11-16 10:57:21'),
(99, 140, 'Get the images', 1, '2018-11-16 10:57:21', '2018-11-16 10:57:21'),
(100, 141, 'In the root module', 1, '2018-11-16 10:58:31', '2018-11-16 10:58:31'),
(101, 141, 'In the configuration JSON file', 0, '2018-11-16 10:58:31', '2018-11-16 10:58:31'),
(102, 141, 'In the component decorator', 0, '2018-11-16 10:58:31', '2018-11-16 10:58:31'),
(103, 141, 'In the animation package', 0, '2018-11-16 10:58:31', '2018-11-16 10:58:31'),
(104, 142, 'Use different animation modules', 0, '2018-11-16 11:00:31', '2018-11-16 11:00:31'),
(105, 142, 'Add each animation to a thread', 0, '2018-11-16 11:00:31', '2018-11-16 11:00:31'),
(106, 142, 'Report This Question', 1, '2018-11-16 11:00:31', '2018-11-16 11:00:31'),
(107, 142, 'Add each animation in its own separate template', 0, '2018-11-16 11:00:31', '2018-11-16 11:00:31'),
(108, 143, 'Tag HTML', 0, '2018-11-16 11:01:39', '2018-11-16 11:01:39'),
(109, 143, ' Tag SUBMIT', 1, '2018-11-16 11:01:39', '2018-11-16 11:01:39'),
(110, 143, 'Tag FROM', 0, '2018-11-16 11:01:39', '2018-11-16 11:01:39'),
(111, 143, 'Tag DIV', 0, '2018-11-16 11:01:39', '2018-11-16 11:01:39'),
(112, 144, '$changed.value', 0, '2018-11-16 11:03:32', '2018-11-16 11:03:32'),
(113, 144, 'after.changed', 0, '2018-11-16 11:03:32', '2018-11-16 11:03:32'),
(114, 144, 'changed.before', 0, '2018-11-16 11:03:32', '2018-11-16 11:03:32'),
(115, 144, '$event.target.value', 1, '2018-11-16 11:03:32', '2018-11-16 11:03:32'),
(116, 145, 'In a popup window', 0, '2018-11-16 11:04:56', '2018-11-16 11:04:56'),
(117, 145, 'In a DIV tag in a template', 1, '2018-11-16 11:04:56', '2018-11-16 11:04:56'),
(118, 145, 'Create another Angular component', 0, '2018-11-16 11:04:56', '2018-11-16 11:04:56'),
(119, 145, 'Through a browser refersh', 0, '2018-11-16 11:04:56', '2018-11-16 11:04:56'),
(120, 146, 'In a separate HTML file', 0, '2018-11-16 11:06:09', '2018-11-16 11:06:09'),
(121, 146, 'Both (In a separate HTML file) & (With an inline template)', 1, '2018-11-16 11:06:09', '2018-11-16 11:06:09'),
(122, 146, 'With JavaScript', 0, '2018-11-16 11:06:09', '2018-11-16 11:06:09'),
(123, 146, ' With an inline template', 0, '2018-11-16 11:06:09', '2018-11-16 11:06:09'),
(124, 147, ' Write a function in the component', 0, '2018-11-16 11:07:09', '2018-11-16 11:07:09'),
(125, 147, 'Call a minlength function', 0, '2018-11-16 11:07:09', '2018-11-16 11:07:09'),
(126, 147, 'Write a JavaScript function', 0, '2018-11-16 11:07:09', '2018-11-16 11:07:09'),
(127, 147, 'Use minlength = \"5\" in the template', 1, '2018-11-16 11:07:09', '2018-11-16 11:07:09'),
(128, 148, 'Create a method in your component and call it from your template', 1, '2018-11-16 11:08:24', '2018-11-16 11:08:24'),
(129, 148, 'Create a template/component method that call each other', 0, '2018-11-16 11:08:24', '2018-11-16 11:08:24'),
(130, 148, 'Send the data to the server', 0, '2018-11-16 11:08:24', '2018-11-16 11:08:24'),
(131, 148, 'Create a method in your template and call it from your component', 0, '2018-11-16 11:08:24', '2018-11-16 11:08:24'),
(132, 149, 'Call the reset method in the module', 0, '2018-11-16 11:09:35', '2018-11-16 11:09:35'),
(133, 149, 'Call the reset method externally', 0, '2018-11-16 11:09:35', '2018-11-16 11:09:35'),
(134, 149, 'Call the reset method in the template', 1, '2018-11-16 11:09:35', '2018-11-16 11:09:35'),
(135, 149, 'Call the reset method in the template then the module', 0, '2018-11-16 11:09:35', '2018-11-16 11:09:35'),
(136, 150, 'Blind the input field to the property in the module', 0, '2018-11-16 11:10:35', '2018-11-16 11:10:35'),
(137, 150, 'Bind the input field to the property in the template', 1, '2018-11-16 11:10:35', '2018-11-16 11:10:35'),
(138, 150, 'Assign it an initial value', 0, '2018-11-16 11:10:35', '2018-11-16 11:10:35'),
(139, 150, 'Bind the input field to the property in the component', 0, '2018-11-16 11:10:35', '2018-11-16 11:10:35'),
(140, 151, 'In designated local files', 0, '2018-11-16 11:11:19', '2018-11-16 11:11:19'),
(141, 151, 'In files defined by you', 0, '2018-11-16 11:11:19', '2018-11-16 11:11:19'),
(142, 151, 'Inline within the component', 0, '2018-11-16 11:11:19', '2018-11-16 11:11:19'),
(143, 151, ' All of these', 1, '2018-11-16 11:11:19', '2018-11-16 11:11:19'),
(144, 152, 'Create the module normally as the form does not add complexity', 1, '2018-11-16 11:12:11', '2018-11-16 11:12:11'),
(145, 152, 'Create the form before the module', 0, '2018-11-16 11:12:11', '2018-11-16 11:12:11'),
(146, 152, 'Add the module reference when creating the form', 0, '2018-11-16 11:12:11', '2018-11-16 11:12:11'),
(147, 152, 'Import the module from the form', 0, '2018-11-16 11:12:11', '2018-11-16 11:12:11'),
(148, 153, 'Define and assign it in the routes array', 0, '2018-11-16 11:13:31', '2018-11-16 11:13:31'),
(149, 153, 'Define it and assign it in the JSON configuration file', 0, '2018-11-16 11:13:31', '2018-11-16 11:13:31'),
(150, 153, 'Define and assign it in the template', 0, '2018-11-16 11:13:31', '2018-11-16 11:13:31'),
(151, 153, 'Define it in the routes array and assign it in template', 1, '2018-11-16 11:13:31', '2018-11-16 11:13:31'),
(152, 154, 'Add the link to the bootstrap routine', 0, '2018-11-16 11:14:07', '2018-11-16 11:14:07'),
(153, 154, 'Declare the router link in a template', 1, '2018-11-16 11:14:07', '2018-11-16 11:14:07'),
(154, 154, 'Declare the router link in the configuration file', 0, '2018-11-16 11:14:07', '2018-11-16 11:14:07'),
(155, 154, 'Declare the router link in the routing table array', 0, '2018-11-16 11:14:07', '2018-11-16 11:14:07'),
(156, 155, ' Declare the router outlet in the root module', 0, '2018-11-16 11:14:50', '2018-11-16 11:14:50'),
(157, 155, 'Nothing. The view will display in the tag', 1, '2018-11-16 11:14:50', '2018-11-16 11:14:50'),
(158, 155, 'Declare the router outlet as a service', 0, '2018-11-16 11:14:50', '2018-11-16 11:14:50'),
(159, 155, 'Create an instance of the router outlet', 0, '2018-11-16 11:14:50', '2018-11-16 11:14:50'),
(160, 156, 'Eliminate the use of router outlets', 0, '2018-11-16 11:15:38', '2018-11-16 11:15:38'),
(161, 156, 'Use multiple router outlets', 0, '2018-11-16 11:15:38', '2018-11-16 11:15:38'),
(162, 156, 'Use standard HTML', 0, '2018-11-16 11:15:38', '2018-11-16 11:15:38'),
(163, 156, 'use named routers', 1, '2018-11-16 11:15:38', '2018-11-16 11:15:38'),
(164, 157, 'In the template', 1, '2018-11-16 11:16:22', '2018-11-16 11:16:22'),
(165, 157, 'In the component class', 0, '2018-11-16 11:16:22', '2018-11-16 11:16:22'),
(166, 157, 'n the browser', 0, '2018-11-16 11:16:22', '2018-11-16 11:16:22'),
(167, 157, 'In the root module', 0, '2018-11-16 11:16:22', '2018-11-16 11:16:22'),
(168, 158, 'By packaging it with the application', 0, '2018-11-16 11:17:10', '2018-11-16 11:17:10'),
(169, 158, 'By including it as a complie parameter', 0, '2018-11-16 11:17:10', '2018-11-16 11:17:10'),
(170, 158, 'By building an instance of it', 0, '2018-11-16 11:17:10', '2018-11-16 11:17:10'),
(171, 158, 'By injecting it into your component', 1, '2018-11-16 11:17:10', '2018-11-16 11:17:10'),
(172, 159, 'Have a router link direct to the child view to be displayed in the outlet', 1, '2018-11-16 11:19:42', '2018-11-16 11:19:42'),
(173, 159, 'By using multiple Routers', 0, '2018-11-16 11:19:42', '2018-11-16 11:19:42'),
(174, 159, 'By specifying a which view to display in a configuration file', 0, '2018-11-16 11:19:42', '2018-11-16 11:19:42'),
(175, 159, 'By eleminating the router outlet', 0, '2018-11-16 11:19:42', '2018-11-16 11:19:42'),
(176, 160, ' In the routes array', 1, '2018-11-16 11:20:18', '2018-11-16 11:20:18'),
(177, 160, 'Important them at runtime', 0, '2018-11-16 11:20:18', '2018-11-16 11:20:18'),
(178, 160, 'In the component', 0, '2018-11-16 11:20:18', '2018-11-16 11:20:18'),
(179, 160, 'In the browser object', 0, '2018-11-16 11:20:18', '2018-11-16 11:20:18'),
(180, 161, 'Put both view in the bootstraps routine', 0, '2018-11-16 11:21:06', '2018-11-16 11:21:06'),
(181, 161, 'Create two HTML files', 0, '2018-11-16 11:21:06', '2018-11-16 11:21:06'),
(182, 161, 'Create two modules', 0, '2018-11-16 11:21:06', '2018-11-16 11:21:06'),
(183, 161, 'Create two components each having an inline template', 1, '2018-11-16 11:21:06', '2018-11-16 11:21:06'),
(184, 162, 'Package the file when you deploy the program', 0, '2018-11-16 11:21:49', '2018-11-16 11:21:49'),
(185, 162, 'mport the file into the component decorator', 0, '2018-11-16 11:21:49', '2018-11-16 11:21:49'),
(186, 162, 'Add the file to a JAR', 0, '2018-11-16 11:21:49', '2018-11-16 11:21:49'),
(187, 162, ' Import the file into a Module', 1, '2018-11-16 11:21:49', '2018-11-16 11:21:49');

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
('20180820054335-create-course.js'),
('20180820055833-create-chapter.js'),
('20180820060041-create-questions.js'),
('20180820060238-create-question-options.js'),
('20180820060446-create-question-answer.js'),
('20180922044847-create-question-options.js'),
('20180924111157-create-user-answers.js'),
('20180927095630-create-user.js'),
('20181011053419-create-tests.js'),
('20181012060517-create-jobs.js'),
('20181015110120-create-states.js'),
('20181015110241-create-cities.js');

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
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `user_id`, `createdAt`, `updatedAt`) VALUES
(22, 2, '2018-10-11 08:04:46', '2018-10-11 08:04:46'),
(23, 2, '2018-10-11 08:05:16', '2018-10-11 08:05:16'),
(24, 2, '2018-10-11 08:55:21', '2018-10-11 08:55:21'),
(25, 2, '2018-10-11 10:55:33', '2018-10-11 10:55:33'),
(26, 2, '2018-10-11 10:57:34', '2018-10-11 10:57:34'),
(27, 2, '2018-10-11 11:10:05', '2018-10-11 11:10:05'),
(28, 2, '2018-10-11 11:10:10', '2018-10-11 11:10:10'),
(29, 2, '2018-10-11 11:13:28', '2018-10-11 11:13:28'),
(30, 2, '2018-10-11 11:14:54', '2018-10-11 11:14:54'),
(31, 2, '2018-10-11 11:32:47', '2018-10-11 11:32:47'),
(32, 2, '2018-10-16 04:45:03', '2018-10-16 04:45:03'),
(33, 2, '2018-10-23 11:39:28', '2018-10-23 11:39:28'),
(34, 2, '2018-10-25 12:19:19', '2018-10-25 12:19:19'),
(35, 2, '2018-10-26 05:56:17', '2018-10-26 05:56:17'),
(36, 2, '2018-10-30 10:29:15', '2018-10-30 10:29:15'),
(37, 2, '2018-10-30 11:30:19', '2018-10-30 11:30:19'),
(38, 2, '2018-10-31 07:25:29', '2018-10-31 07:25:29'),
(39, 2, '2018-10-31 08:47:28', '2018-10-31 08:47:28'),
(40, 2, '2018-10-31 08:47:32', '2018-10-31 08:47:32'),
(41, 2, '2018-11-01 05:05:46', '2018-11-01 05:05:46'),
(42, 2, '2018-11-01 11:57:44', '2018-11-01 11:57:44'),
(43, 2, '2018-11-01 12:14:07', '2018-11-01 12:14:07'),
(44, 2, '2018-11-01 12:18:39', '2018-11-01 12:18:39'),
(45, 2, '2018-11-01 12:19:03', '2018-11-01 12:19:03'),
(46, 2, '2018-11-02 10:54:09', '2018-11-02 10:54:09'),
(47, 2, '2018-11-02 10:55:04', '2018-11-02 10:55:04'),
(48, 2, '2018-11-16 06:57:53', '2018-11-16 06:57:53'),
(49, 2, '2018-11-16 10:30:51', '2018-11-16 10:30:51'),
(50, 2, '2018-11-16 10:37:12', '2018-11-16 10:37:12'),
(51, 2, '2018-11-16 11:23:15', '2018-11-16 11:23:15'),
(52, 2, '2018-11-16 11:23:20', '2018-11-16 11:23:20'),
(53, 2, '2018-11-16 11:23:24', '2018-11-16 11:23:24'),
(54, 2, '2018-11-16 11:23:29', '2018-11-16 11:23:29'),
(55, 4, '2019-04-20 04:59:44', '2019-04-20 04:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact_number`, `password_hash`, `createdAt`, `updatedAt`) VALUES
(2, 'Anusha', 'Manne', 'anushamanne7@gmail.com', 2147483647, '$2a$08$oUFm847qReWRKBZBbLUSZOZSO60hEeXO0AkaP6HGjs0rTZ2DWEX8u', '2018-09-27 10:49:25', '2018-09-27 10:49:25'),
(3, 'Anusha', 'Manne', 'anusha@gmail.com', 2147483647, '$2a$08$qXXJLF2w7o2XA4EKMHBXCuv8u5k3YBuvjR3j7a1VKKWsYSk4R4qji', '2018-09-29 06:36:23', '2018-09-29 06:36:23'),
(4, 'Anusha ', 'manne', 'anushamanne9@gmail.com', 2147483647, '$2a$08$dTypqK4ffKFW6nM1QLkAzO5pBd.jAgnXhwxUtSNkaccpmHxMLDA2G', '2019-04-20 04:42:53', '2019-04-20 04:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `question_id`, `answer_id`, `test_id`, `createdAt`, `updatedAt`) VALUES
(744, 127, 0, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(745, 128, 0, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(746, 130, 0, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(747, 131, 0, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(748, 132, 0, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(749, 125, 36, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(750, 126, 43, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(751, 129, 52, 22, '2018-10-11 08:04:52', '2018-10-11 08:04:52'),
(752, 130, 0, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(753, 125, 36, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(754, 126, 43, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(755, 128, 49, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(756, 127, 46, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(757, 129, 54, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(758, 131, 61, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(759, 132, 67, 23, '2018-10-11 08:05:32', '2018-10-11 08:05:32'),
(760, 125, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(761, 126, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(762, 127, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(763, 128, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(764, 129, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(765, 130, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(766, 131, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(767, 132, 0, 24, '2018-10-11 08:55:24', '2018-10-11 08:55:24'),
(768, 126, 0, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(769, 129, 0, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(770, 130, 0, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(771, 131, 0, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(772, 132, 0, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(773, 125, 36, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(774, 128, 48, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(775, 127, 46, 25, '2018-10-11 10:55:42', '2018-10-11 10:55:42'),
(776, 131, 0, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(777, 132, 0, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(778, 125, 36, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(779, 127, 47, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(780, 128, 51, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(781, 129, 54, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(782, 126, 41, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(783, 130, 59, 29, '2018-10-11 11:13:59', '2018-10-11 11:13:59'),
(784, 126, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(785, 127, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(786, 128, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(787, 129, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(788, 130, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(789, 131, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(790, 132, 0, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(791, 125, 36, 31, '2018-10-11 11:32:55', '2018-10-11 11:32:55'),
(792, 125, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(793, 126, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(794, 127, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(795, 128, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(796, 129, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(797, 130, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(798, 131, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(799, 132, 0, 33, '2018-10-23 11:39:32', '2018-10-23 11:39:32'),
(800, 125, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(801, 126, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(802, 127, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(803, 128, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(804, 129, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(805, 130, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(806, 131, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(807, 132, 0, 33, '2018-10-23 12:09:30', '2018-10-23 12:09:30'),
(808, 131, 0, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(809, 125, 36, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(810, 126, 41, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(811, 127, 45, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(812, 128, 50, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(813, 129, 53, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(814, 130, 59, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(815, 132, 64, 34, '2018-10-25 12:19:34', '2018-10-25 12:19:34'),
(816, 126, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(817, 127, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(818, 128, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(819, 129, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(820, 130, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(821, 131, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(822, 132, 0, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(823, 125, 39, 36, '2018-10-30 10:29:20', '2018-10-30 10:29:20'),
(824, 125, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(825, 126, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(826, 127, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(827, 128, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(828, 129, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(829, 130, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(830, 131, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(831, 132, 0, 37, '2018-10-30 11:30:28', '2018-10-30 11:30:28'),
(832, 125, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(833, 126, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(834, 127, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(835, 128, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(836, 129, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(837, 130, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(838, 131, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(839, 132, 0, 38, '2018-10-31 07:25:47', '2018-10-31 07:25:47'),
(840, 125, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(841, 126, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(842, 127, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(843, 128, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(844, 129, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(845, 130, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(846, 131, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(847, 132, 0, 40, '2018-10-31 08:48:42', '2018-10-31 08:48:42'),
(848, 133, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(849, 134, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(850, 135, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(851, 136, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(852, 137, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(853, 138, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(854, 139, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(855, 140, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(856, 141, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(857, 142, 0, 51, '2018-11-16 11:53:16', '2018-11-16 11:53:16'),
(858, 143, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(859, 144, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(860, 145, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(861, 146, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(862, 147, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(863, 148, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(864, 149, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(865, 150, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(866, 151, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(867, 152, 0, 52, '2018-11-16 11:53:21', '2018-11-16 11:53:21'),
(868, 153, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(869, 154, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(870, 155, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(871, 156, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(872, 157, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(873, 158, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(874, 159, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(875, 160, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(876, 161, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(877, 162, 0, 53, '2018-11-16 11:53:25', '2018-11-16 11:53:25'),
(878, 131, 0, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(879, 125, 36, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(880, 126, 42, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(881, 128, 50, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(882, 127, 46, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(883, 129, 54, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(884, 130, 58, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06'),
(885, 132, 65, 55, '2019-04-20 05:00:06', '2019-04-20 05:00:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
