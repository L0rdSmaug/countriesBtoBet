-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 08:44 PM
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
-- Database: `countries_btobet`
--
CREATE DATABASE IF NOT EXISTS `countries_btobet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `countries_btobet`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_country_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_content` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_country_id`, `comment_author`, `comment_content`, `comment_date`) VALUES
(1, 1, 'Stef', 'best country', '2022-10-10'),
(2, 1, 'Juan', 'Hi', '2022-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `population` varchar(255) NOT NULL,
  `country_comment_count` int(11) NOT NULL,
  `favorites` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `name`, `region`, `population`, `country_comment_count`, `favorites`) VALUES
(1, 'Afghanistan', 'Asia', '40218234', 0, 1),
(2, 'Åland Islands', 'Europe', '28875', 0, 1),
(3, 'Albania', 'Europe', '2837743', 0, 1),
(4, 'Algeria', 'Africa', '44700000', 2, 0),
(5, 'American Samoa', 'Oceania', '55197', 0, 0),
(6, 'Andorra', 'Europe', '77265', 0, -1),
(7, 'Angola', 'Africa', '32866268', 0, 1),
(8, 'Anguilla', 'Americas', '13452', 0, 0),
(9, 'Antarctica', 'Polar', '1000', 0, 0),
(10, 'Antigua and Barbuda', 'Americas', '97928', 0, 0),
(11, 'Argentina', 'Americas', '45376763', 0, 0),
(12, 'Armenia', 'Asia', '2963234', 0, 0),
(13, 'Aruba', 'Americas', '106766', 0, 0),
(14, 'Australia', 'Oceania', '25687041', 0, 0),
(15, 'Austria', 'Europe', '8917205', 0, 0),
(16, 'Azerbaijan', 'Asia', '10110116', 0, 0),
(17, 'Bahamas', 'Americas', '393248', 0, 0),
(18, 'Bahrain', 'Asia', '1701583', 0, 0),
(19, 'Bangladesh', 'Asia', '164689383', 0, 0),
(20, 'Barbados', 'Americas', '287371', 0, 0),
(21, 'Belarus', 'Europe', '9398861', 0, 0),
(22, 'Belgium', 'Europe', '11555997', 0, 0),
(23, 'Belize', 'Americas', '397621', 0, 0),
(24, 'Benin', 'Africa', '12123198', 0, 0),
(25, 'Bermuda', 'Americas', '63903', 0, 0),
(26, 'Bhutan', 'Asia', '771612', 0, 0),
(27, 'Bolivia (Plurinational State of)', 'Americas', '11673029', 0, 0),
(28, 'Bonaire, Sint Eustatius and Saba', 'Americas', '17408', 0, 0),
(29, 'Bosnia and Herzegovina', 'Europe', '3280815', 0, 0),
(30, 'Botswana', 'Africa', '2351625', 0, 0),
(31, 'Bouvet Island', 'Antarctic Ocean', '0', 0, 0),
(32, 'Brazil', 'Americas', '212559409', 0, 0),
(33, 'British Indian Ocean Territory', 'Africa', '3000', 0, 0),
(34, 'United States Minor Outlying Islands', 'Americas', '300', 0, 0),
(35, 'Virgin Islands (British)', 'Americas', '30237', 0, 0),
(36, 'Virgin Islands (U.S.)', 'Americas', '106290', 0, 0),
(37, 'Brunei Darussalam', 'Asia', '437483', 0, 0),
(38, 'Bulgaria', 'Europe', '6927288', 0, 0),
(39, 'Burkina Faso', 'Africa', '20903278', 0, 0),
(40, 'Burundi', 'Africa', '11890781', 0, 0),
(41, 'Cambodia', 'Asia', '16718971', 0, 0),
(42, 'Cameroon', 'Africa', '26545864', 0, 0),
(43, 'Canada', 'Americas', '38005238', 0, 0),
(44, 'Cabo Verde', 'Africa', '555988', 0, 0),
(45, 'Cayman Islands', 'Americas', '65720', 0, 0),
(46, 'Central African Republic', 'Africa', '4829764', 0, 0),
(47, 'Chad', 'Africa', '16425859', 0, 0),
(48, 'Chile', 'Americas', '19116209', 0, 0),
(49, 'China', 'Asia', '1402112000', 0, 0),
(50, 'Christmas Island', 'Oceania', '2072', 0, 0),
(51, 'Cocos (Keeling) Islands', 'Oceania', '550', 0, 0),
(52, 'Colombia', 'Americas', '50882884', 0, 0),
(53, 'Comoros', 'Africa', '869595', 0, 0),
(54, 'Congo', 'Africa', '5518092', 0, 0),
(55, 'Congo (Democratic Republic of the)', 'Africa', '89561404', 0, 0),
(56, 'Cook Islands', 'Oceania', '18100', 0, 0),
(57, 'Costa Rica', 'Americas', '5094114', 0, 0),
(58, 'Croatia', 'Europe', '4047200', 0, 0),
(59, 'Cuba', 'Americas', '11326616', 0, 0),
(60, 'Curaçao', 'Americas', '155014', 0, 0),
(61, 'Cyprus', 'Europe', '1207361', 0, 0),
(62, 'Czech Republic', 'Europe', '10698896', 0, 0),
(63, 'Denmark', 'Europe', '5831404', 0, 0),
(64, 'Djibouti', 'Africa', '988002', 0, 0),
(65, 'Dominica', 'Americas', '71991', 0, 0),
(66, 'Dominican Republic', 'Americas', '10847904', 0, 0),
(67, 'Ecuador', 'Americas', '17643060', 0, 0),
(68, 'Egypt', 'Africa', '102334403', 0, 0),
(69, 'El Salvador', 'Americas', '6486201', 0, 0),
(70, 'Equatorial Guinea', 'Africa', '1402985', 0, 0),
(71, 'Eritrea', 'Africa', '5352000', 0, 0),
(72, 'Estonia', 'Europe', '1331057', 0, 0),
(73, 'Ethiopia', 'Africa', '114963583', 0, 0),
(74, 'Falkland Islands (Malvinas)', 'Americas', '2563', 0, 0),
(75, 'Faroe Islands', 'Europe', '48865', 0, 0),
(76, 'Fiji', 'Oceania', '896444', 0, 0),
(77, 'Finland', 'Europe', '5530719', 0, 0),
(78, 'France', 'Europe', '67391582', 0, 0),
(79, 'French Guiana', 'Americas', '254541', 0, 0),
(80, 'French Polynesia', 'Oceania', '280904', 0, 0),
(81, 'French Southern Territories', 'Africa', '140', 0, 0),
(82, 'Gabon', 'Africa', '2225728', 0, 0),
(83, 'Gambia', 'Africa', '2416664', 0, 0),
(84, 'Georgia', 'Asia', '3714000', 0, 0),
(85, 'Germany', 'Europe', '83240525', 0, 0),
(86, 'Ghana', 'Africa', '31072945', 0, 0),
(87, 'Gibraltar', 'Europe', '33691', 0, 0),
(88, 'Greece', 'Europe', '10715549', 0, 0),
(89, 'Greenland', 'Americas', '56367', 0, 0),
(90, 'Grenada', 'Americas', '112519', 0, 0),
(91, 'Guadeloupe', 'Americas', '400132', 0, 0),
(92, 'Guam', 'Oceania', '168783', 0, 0),
(93, 'Guatemala', 'Americas', '16858333', 0, 0),
(94, 'Guernsey', 'Europe', '62999', 0, 0),
(95, 'Guinea', 'Africa', '13132792', 0, 0),
(96, 'Guinea-Bissau', 'Africa', '1967998', 0, 0),
(97, 'Guyana', 'Americas', '786559', 0, 0),
(98, 'Haiti', 'Americas', '11402533', 0, 0),
(99, 'Heard Island and McDonald Islands', 'Antarctic', '0', 0, 0),
(100, 'Vatican City', 'Europe', '451', 0, 0),
(101, 'Honduras', 'Americas', '9904608', 0, 0),
(102, 'Hungary', 'Europe', '9749763', 0, 0),
(103, 'Hong Kong', 'Asia', '7481800', 0, 0),
(104, 'Iceland', 'Europe', '366425', 0, 0),
(105, 'India', 'Asia', '1380004385', 0, 0),
(106, 'Indonesia', 'Asia', '273523621', 0, 0),
(107, 'Ivory Coast', 'Africa', '26378275', 0, 0),
(108, 'Iran (Islamic Republic of)', 'Asia', '83992953', 0, 0),
(109, 'Iraq', 'Asia', '40222503', 0, 0),
(110, 'Ireland', 'Europe', '4994724', 0, 0),
(111, 'Isle of Man', 'Europe', '85032', 0, 0),
(112, 'Israel', 'Asia', '9216900', 0, 0),
(113, 'Italy', 'Europe', '59554023', 0, 0),
(114, 'Jamaica', 'Americas', '2961161', 0, 0),
(115, 'Japan', 'Asia', '125836021', 0, 0),
(116, 'Jersey', 'Europe', '100800', 0, 0),
(117, 'Jordan', 'Asia', '10203140', 0, 0),
(118, 'Kazakhstan', 'Asia', '18754440', 0, 0),
(119, 'Kenya', 'Africa', '53771300', 0, 0),
(120, 'Kiribati', 'Oceania', '119446', 0, 0),
(121, 'Kuwait', 'Asia', '4270563', 0, 0),
(122, 'Kyrgyzstan', 'Asia', '6591600', 0, 0),
(123, 'Latvia', 'Europe', '1901548', 0, 0),
(124, 'Lebanon', 'Asia', '6825442', 0, 0),
(125, 'Lesotho', 'Africa', '2142252', 0, 0),
(126, 'Liberia', 'Africa', '5057677', 0, 0),
(127, 'Libya', 'Africa', '6871287', 0, 0),
(128, 'Liechtenstein', 'Europe', '38137', 0, 0),
(129, 'Lithuania', 'Europe', '2794700', 0, 0),
(130, 'Luxembourg', 'Europe', '632275', 0, 0),
(131, 'Macao', 'Asia', '649342', 0, 0),
(132, 'North Macedonia', 'Europe', '2083380', 0, 0),
(133, 'Madagascar', 'Africa', '27691019', 0, 0),
(134, 'Malawi', 'Africa', '19129955', 0, 0),
(135, 'Malaysia', 'Asia', '32365998', 0, 0),
(136, 'Maldives', 'Asia', '540542', 0, 0),
(137, 'Mali', 'Africa', '20250834', 0, 0),
(138, 'Malta', 'Europe', '525285', 0, 0),
(139, 'Marshall Islands', 'Oceania', '59194', 0, 0),
(140, 'Martinique', 'Americas', '378243', 0, 0),
(141, 'Mauritania', 'Africa', '4649660', 0, 0),
(142, 'Mauritius', 'Africa', '1265740', 0, 0),
(143, 'Mayotte', 'Africa', '226915', 0, 0),
(144, 'Mexico', 'Americas', '128932753', 0, 0),
(145, 'Micronesia (Federated States of)', 'Oceania', '115021', 0, 0),
(146, 'Moldova (Republic of)', 'Europe', '2617820', 0, 0),
(147, 'Monaco', 'Europe', '39244', 0, 0),
(148, 'Mongolia', 'Asia', '3278292', 0, 0),
(149, 'Montenegro', 'Europe', '621718', 0, 0),
(150, 'Montserrat', 'Americas', '4922', 0, 0),
(151, 'Morocco', 'Africa', '36910558', 0, 0),
(152, 'Mozambique', 'Africa', '31255435', 0, 0),
(153, 'Myanmar', 'Asia', '54409794', 0, 0),
(154, 'Namibia', 'Africa', '2540916', 0, 0),
(155, 'Nauru', 'Oceania', '10834', 0, 0),
(156, 'Nepal', 'Asia', '29136808', 0, 0),
(157, 'Netherlands', 'Europe', '17441139', 0, 0),
(158, 'New Caledonia', 'Oceania', '271960', 0, 0),
(159, 'New Zealand', 'Oceania', '5084300', 0, 0),
(160, 'Nicaragua', 'Americas', '6624554', 0, 0),
(161, 'Niger', 'Africa', '24206636', 0, 0),
(162, 'Nigeria', 'Africa', '206139587', 0, 0),
(163, 'Niue', 'Oceania', '1470', 0, 0),
(164, 'Norfolk Island', 'Oceania', '2302', 0, 0),
(165, 'Northern Mariana Islands', 'Oceania', '57557', 0, 0),
(166, 'Norway', 'Europe', '5379475', 0, 0),
(167, 'Oman', 'Asia', '5106622', 0, 0),
(168, 'Pakistan', 'Asia', '220892331', 0, 0),
(169, 'Palau', 'Oceania', '18092', 0, 0),
(170, 'Palestine, State of', 'Asia', '4803269', 0, 0),
(171, 'Panama', 'Americas', '4314768', 0, 0),
(172, 'Papua New Guinea', 'Oceania', '8947027', 0, 0),
(173, 'Paraguay', 'Americas', '7132530', 0, 0),
(174, 'Peru', 'Americas', '32971846', 0, 0),
(175, 'Philippines', 'Asia', '109581085', 0, 0),
(176, 'Pitcairn', 'Oceania', '56', 0, 0),
(177, 'Poland', 'Europe', '37950802', 0, 0),
(178, 'Portugal', 'Europe', '10305564', 0, 0),
(179, 'Puerto Rico', 'Americas', '3194034', 0, 0),
(180, 'Qatar', 'Asia', '2881060', 0, 0),
(181, 'Republic of Kosovo', 'Europe', '1775378', 0, 0),
(182, 'Réunion', 'Africa', '840974', 0, 0),
(183, 'Romania', 'Europe', '19286123', 0, 0),
(184, 'Russian Federation', 'Europe', '144104080', 0, 0),
(185, 'Rwanda', 'Africa', '12952209', 0, 0),
(186, 'Saint Barthélemy', 'Americas', '9417', 0, 0),
(187, 'Saint Helena, Ascension and Tristan da Cunha', 'Africa', '4255', 0, 0),
(188, 'Saint Kitts and Nevis', 'Americas', '53192', 0, 0),
(189, 'Saint Lucia', 'Americas', '183629', 0, 0),
(190, 'Saint Martin (French part)', 'Americas', '38659', 0, 0),
(191, 'Saint Pierre and Miquelon', 'Americas', '6069', 0, 0),
(192, 'Saint Vincent and the Grenadines', 'Americas', '110947', 0, 0),
(193, 'Samoa', 'Oceania', '198410', 0, 0),
(194, 'San Marino', 'Europe', '33938', 0, 0),
(195, 'Sao Tome and Principe', 'Africa', '219161', 0, 0),
(196, 'Saudi Arabia', 'Asia', '34813867', 0, 0),
(197, 'Senegal', 'Africa', '16743930', 0, 0),
(198, 'Serbia', 'Europe', '6908224', 0, 0),
(199, 'Seychelles', 'Africa', '98462', 0, 0),
(200, 'Sierra Leone', 'Africa', '7976985', 0, 0),
(201, 'Singapore', 'Asia', '5685807', 0, 0),
(202, 'Sint Maarten (Dutch part)', 'Americas', '40812', 0, 0),
(203, 'Slovakia', 'Europe', '5458827', 0, 0),
(204, 'Slovenia', 'Europe', '2100126', 0, 0),
(205, 'Solomon Islands', 'Oceania', '686878', 0, 0),
(206, 'Somalia', 'Africa', '15893219', 0, 0),
(207, 'South Africa', 'Africa', '59308690', 0, 0),
(208, 'South Georgia and the South Sandwich Islands', 'Americas', '30', 0, 0),
(209, 'Korea (Republic of)', 'Asia', '51780579', 0, 0),
(210, 'Spain', 'Europe', '47351567', 0, 0),
(211, 'Sri Lanka', 'Asia', '21919000', 0, 0),
(212, 'Sudan', 'Africa', '43849269', 0, 0),
(213, 'South Sudan', 'Africa', '11193729', 0, 0),
(214, 'Suriname', 'Americas', '586634', 0, 0),
(215, 'Svalbard and Jan Mayen', 'Europe', '2562', 0, 0),
(216, 'Swaziland', 'Africa', '1160164', 0, 0),
(217, 'Sweden', 'Europe', '10353442', 0, 0),
(218, 'Switzerland', 'Europe', '8636896', 0, 0),
(219, 'Syrian Arab Republic', 'Asia', '17500657', 0, 0),
(220, 'Taiwan', 'Asia', '23503349', 0, 0),
(221, 'Tajikistan', 'Asia', '9537642', 0, 0),
(222, 'Tanzania, United Republic of', 'Africa', '59734213', 0, 0),
(223, 'Thailand', 'Asia', '69799978', 0, 0),
(224, 'Timor-Leste', 'Asia', '1318442', 0, 0),
(225, 'Togo', 'Africa', '8278737', 0, 0),
(226, 'Tokelau', 'Oceania', '1411', 0, 0),
(227, 'Tonga', 'Oceania', '105697', 0, 0),
(228, 'Trinidad and Tobago', 'Americas', '1399491', 0, 0),
(229, 'Tunisia', 'Africa', '11818618', 0, 0),
(230, 'Turkey', 'Asia', '84339067', 0, 0),
(231, 'Turkmenistan', 'Asia', '6031187', 0, 0),
(232, 'Turks and Caicos Islands', 'Americas', '38718', 0, 0),
(233, 'Tuvalu', 'Oceania', '11792', 0, 0),
(234, 'Uganda', 'Africa', '45741000', 0, 0),
(235, 'Ukraine', 'Europe', '44134693', 0, 0),
(236, 'United Arab Emirates', 'Asia', '9890400', 0, 0),
(237, 'United Kingdom of Great Britain and Northern Ireland', 'Europe', '67215293', 0, 0),
(238, 'United States of America', 'Americas', '329484123', 0, 0),
(239, 'Uruguay', 'Americas', '3473727', 0, 0),
(240, 'Uzbekistan', 'Asia', '34232050', 0, 0),
(241, 'Vanuatu', 'Oceania', '307150', 0, 0),
(242, 'Venezuela (Bolivarian Republic of)', 'Americas', '28435943', 0, 0),
(243, 'Vietnam', 'Asia', '97338583', 0, 0),
(244, 'Wallis and Futuna', 'Oceania', '11750', 0, 0),
(245, 'Western Sahara', 'Africa', '510713', 0, 0),
(246, 'Yemen', 'Asia', '29825968', 0, 0),
(247, 'Zambia', 'Africa', '18383956', 0, 0),
(248, 'Zimbabwe', 'Africa', '14862927', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `fav_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`fav_id`, `user_id`, `country_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(25, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5288;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
