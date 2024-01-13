-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 08:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `album_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales_table`
--

CREATE TABLE `sales_table` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(18) DEFAULT NULL,
  `album_name` varchar(48) DEFAULT NULL,
  `2022_sales` int(11) DEFAULT NULL,
  `released_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales_table`
--

INSERT INTO `sales_table` (`artist_id`, `artist_name`, `album_name`, `2022_sales`, `released_date`, `last_update`) VALUES
(1, 'AB6IX', 'Complete with You: Special Album', 43058, '2022-01-17', '2022-01-31'),
(2, 'aespa', 'Savage', 19629, '2021-10-05', '2022-04-30'),
(3, 'Apink', 'Horn', 58641, '2022-02-14', '2022-02-28'),
(4, 'ATEEZ', 'Zero: Fever Epilogue', 3578, '2021-12-10', '2022-01-31'),
(5, 'BAE173', 'Intersection: Blaze', 16801, '2022-03-30', '2022-04-30'),
(6, 'BamBam', 'B', 87540, '2022-01-18', '2022-01-31'),
(7, 'Bang Yongguk', '2', 6933, '2022-03-02', '2022-03-31'),
(8, 'Billlie', 'The Collective Soul and Unconscious: Chapter One', 66885, '2022-02-23', '2022-04-30'),
(9, 'Blitzers', 'Bobbin', 17719, '2022-01-03', '2022-01-31'),
(10, 'Bolbbalgan4', 'Seoul', 2596, '2022-04-20', '2022-04-30'),
(11, 'Brave Girls', 'Thank You', 33605, '2022-03-15', '2022-03-31'),
(12, 'BTOB', 'Be Together', 121528, '2022-02-21', '2022-03-31'),
(13, 'Choi Yena', 'Smiley', 84346, '2022-01-17', '2022-03-31'),
(14, 'Cravity', 'Liberty: In Our Cosmos Part.2', 123922, '2022-03-22', '2022-04-30'),
(15, 'Cherry Bullet', 'Cherry Wish', 20250, '2022-03-02', '2022-03-31'),
(16, 'Def.', 'Love', 41148, '2022-01-26', '2022-01-31'),
(17, 'DKZ', 'Chase, Ep.2-Maum', 118583, '2022-04-12', '2022-04-30'),
(18, 'Dreamcatcher', 'Apocalypse: Save Us', 94706, '2022-04-12', '2022-04-30'),
(19, 'Drippin', 'Villian', 37535, '2022-01-17', '2022-04-30'),
(20, 'E\'LAST', 'Roar', 48695, '2022-04-27', '2022-04-30'),
(21, 'Enhypen', 'Dimension: Dilemma', 27591, '2021-10-12', '2022-04-30'),
(22, 'Enhypen', 'Dimension: Answer', 621425, '2022-01-10', '2022-04-30'),
(23, 'Epex', 'Book of Anxiety Chapter1. 21st Century Boys', 71584, '2022-04-11', '2022-04-30'),
(24, 'Epik High', 'Epik High is Here', 5382, '2022-02-14', '2022-02-28'),
(25, 'Eric Nam', 'There and Back Again', 2183, '2022-01-07', '2022-04-30'),
(26, 'Everglow', 'Return of the Girl', 2450, '2021-12-01', '2022-01-31'),
(27, 'fromis_9', 'Midnight Guest', 120245, '2022-01-17', '2022-03-31'),
(28, '(G)I-dle', 'I Never Die', 198589, '2022-03-14', '2022-04-30'),
(29, 'Ghost9', 'Arcade: V', 9311, '2022-04-07', '2022-04-30'),
(30, 'Ha Sungwoon', 'You', 18717, '2022-02-09', '2022-02-28'),
(31, 'Highlight', 'Daydream', 86293, '2022-03-21', '2022-04-30'),
(32, 'ILY:1', 'Love in Bloom', 3181, '2022-04-04', '2022-04-30'),
(33, 'IVE', 'Eleven', 37284, '2021-12-01', '2022-04-30'),
(34, 'IVE', 'Love Dive', 440067, '2022-04-05', '2022-04-30'),
(35, 'Jinjin & Rocky', 'Restore', 57401, '2022-01-17', '2022-02-28'),
(36, 'Just B', 'Just Begun', 51504, '2022-04-14', '2022-04-30'),
(37, 'Kai', 'Peaches', 5373, '2021-11-30', '2022-01-31'),
(38, 'Kang Hyewon', 'Winter Special Album: W', 18305, '2022-01-04', '2022-01-31'),
(39, 'Kep1er', 'First Impact', 271048, '2022-01-03', '2022-04-30'),
(40, 'Kihyun', 'Voyager', 141407, '2022-03-15', '2022-04-30'),
(41, 'Kim Jaehwan', 'The Letter', 9639, '2021-12-28', '2022-01-31'),
(42, 'Kim Junsu', 'Dimension', 55470, '2022-03-17', '2022-04-30'),
(43, 'Kim Sungkyu', 'Savior', 28082, '2022-04-22', '2022-04-30'),
(44, 'Kim Wooseok', 'Reve: 3rd Desire', 67957, '2022-03-07', '2022-03-31'),
(45, 'Kim Yohan', 'Illusoin', 51754, '2022-01-10', '2022-01-31'),
(46, 'Kingdom', 'History of Kingdom: Pt. 4: Dann', 19450, '2022-03-31', '2022-04-30'),
(47, 'Kwon Eunbi', 'Color', 55923, '2022-04-04', '2022-04-30'),
(48, 'Kyuhyun', 'Love Story (4 Season Project 季)', 37215, '2022-01-25', '2022-02-28'),
(49, 'Lee Seokhoon', 'Same Spot', 7673, '2022-03-24', '2022-03-31'),
(50, 'Lee Seungyoon', 'Even if it becomes ruins', 7640, '2021-11-24', '2022-02-28'),
(51, 'Lisa', 'Lalisa', 73336, '2021-09-10', '2022-04-30'),
(52, 'LUNA', 'Moonlight', 3705, '2022-01-17', '2022-01-31'),
(53, 'Max Changmin', 'Devil', 21831, '2022-01-13', '2022-02-28'),
(54, 'Mirae', 'Marvelous', 48067, '2022-01-12', '2022-01-31'),
(55, 'Miyeon', 'My', 90064, '2022-04-27', '2022-04-30'),
(56, 'Monsta X', 'No Limit', 23015, '2021-11-19', '2022-02-28'),
(57, 'Monsta X', 'Shape of Love', 284668, '2022-04-26', '2022-04-30'),
(58, 'Moonbin & Sanha', 'Refuge', 144205, '2022-03-15', '2022-04-30'),
(59, 'Moonbyul', '6equence', 78120, '2022-01-19', '2022-02-28'),
(60, 'Moonbyul', 'CITT: Cheese in the Trap', 86508, '2022-04-28', '2022-04-30'),
(61, 'NCT 127', 'Sticker', 31194, '2021-09-17', '2022-04-30'),
(62, 'NCT 127', 'Favorite', 30331, '2021-10-25', '2022-03-31'),
(63, 'NCT 2021', 'Universe', 118633, '2021-12-14', '2022-04-30'),
(64, 'NCT Dream', 'Glitch Mode', 1649993, '2022-03-28', '2022-04-30'),
(65, 'NINE.i', 'New World', 3618, '2022-03-30', '2022-04-30'),
(66, 'NMIXX', 'Ad Mare', 406936, '2022-02-22', '2022-04-30'),
(67, 'NU\'EST', 'Need & Bubble: Nu\'est the Best Album', 63446, '2022-03-15', '2022-03-31'),
(68, 'Oh My Girl', 'Real Love', 66912, '2022-03-28', '2022-04-30'),
(69, 'Omega X', 'Love Me Like', 86941, '2022-01-05', '2022-01-31'),
(70, 'Onew', 'Dice', 119006, '2022-04-11', '2022-04-30'),
(71, 'ONEWE', 'Planet Nine: Voyager', 18075, '2022-01-04', '2022-02-28'),
(72, 'ONF', 'Goosebumps', 4396, '2021-12-03', '2022-01-31'),
(73, 'OnlyOneOf', 'Instint, Pt.2', 49362, '2022-01-14', '2022-01-31'),
(74, 'P1Harmony', 'Disharmony: Find Out', 91969, '2022-01-03', '2022-01-31'),
(75, 'Pentagon', 'In:Vite U', 90114, '2022-01-24', '2022-02-28'),
(76, 'Purple Kiss', 'Memem', 32266, '2022-03-29', '2022-03-31'),
(77, 'Ravi', 'Love & Fight', 10359, '2022-02-08', '2022-02-28'),
(78, 'Red Velvet', 'The Reve Festival 2022: Feel My Rhythm', 560838, '2022-03-21', '2022-04-30'),
(79, 'Rocket Punch', 'Yellow Punch', 20055, '2022-02-28', '2022-04-30'),
(80, 'Seventeen', 'Attacca', 30049, '2021-10-22', '2022-04-30'),
(81, 'Solar', 'Face', 43599, '2022-03-16', '2022-04-30'),
(82, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 56940, '2021-12-27', '2022-01-31'),
(83, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 12971, '2021-12-27', '2022-03-31'),
(84, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 5974, '2021-12-27', '2022-03-31'),
(85, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 74162, '2021-12-27', '2022-03-31'),
(86, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 74087, '2021-12-27', '2022-03-31'),
(87, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 41833, '2021-12-27', '2022-03-31'),
(88, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 5265, '2021-12-27', '2022-01-31'),
(89, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 62545, '2021-12-27', '2022-03-31'),
(90, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 14336, '2021-12-27', '2022-01-31'),
(91, 'SMTOWN', '2021 Winter SMTOWN: SMCU Express', 2218, '2021-12-27', '2022-01-31'),
(92, 'Suho', 'Gray Suit', 186465, '2022-04-04', '2022-04-30'),
(93, 'StayC', 'Young-Luv.com', 182131, '2022-02-21', '2022-04-30'),
(94, 'Stray Kids', 'Christmas EveL', 14418, '2021-11-29', '2022-04-30'),
(95, 'Stray Kids', 'Oddinary', 1000088, '2022-03-18', '2022-04-30'),
(96, 'Super Junior', 'The Road: Winter for Spring', 142663, '2022-02-28', '2022-04-30'),
(97, 'Super Junior - D&E', 'Countdown Zero (Epilogue)', 8458, '2021-12-09', '2022-01-31'),
(98, 'Taeyeon', 'INVU', 179611, '2022-02-14', '2022-04-30'),
(99, 'Tempest', 'It\'s Me, It\'s We', 82307, '2022-03-02', '2022-04-30'),
(100, 'Tan', 'Limited Edition \'1TAN\'', 8870, '2022-03-10', '2022-04-30'),
(101, 'The Boyz', 'Maverick', 5566, '2021-11-01', '2022-02-28'),
(102, 'The Boyz', 'Webtoon Level Up Alone (OST)', 10573, '2022-03-18', '2022-03-31'),
(103, 'Treasure', 'The Second Step: Chapter One', 668539, '2022-02-15', '2022-04-30'),
(104, 'Trendz', 'Blue Set Chapter 1. Tracks', 6170, '2022-01-05', '2022-01-31'),
(105, 'Twice', 'Formula of Love: OT=<3', 8293, '2021-12-17', '2022-03-31'),
(106, 'UP10TION', 'Novella', 31415, '2022-01-03', '2022-04-30'),
(107, 'Verivery', 'Serioues O-Round 3: Whole', 97187, '2022-04-25', '2022-04-30'),
(108, 'Victon', 'Chronograph', 60959, '2022-01-18', '2022-02-28'),
(109, 'Viviz', 'Beam of Prism', 43638, '2022-02-10', '2022-02-28'),
(110, 'Weeekly', 'Play Game: Awake', 81537, '2022-03-07', '2022-03-31'),
(111, 'WEi', 'Love Pt. 1: First Love', 119853, '2022-03-16', '2022-03-31'),
(112, 'Wheein', 'Whee', 69470, '2022-01-17', '2022-01-31'),
(113, 'Wonho', 'Obsession', 56627, '2022-02-16', '2022-03-31'),
(114, 'Wonpil', 'Pilmography', 33668, '2022-02-10', '2022-02-28'),
(115, 'WJSN Chocome', 'Super Yuppers!', 15135, '2022-01-05', '2022-01-31'),
(116, 'Younha', 'End Theory Final Ed.', 7001, '2022-03-30', '2022-03-31'),
(117, 'Yoon Jisung', 'Miro', 6595, '2022-04-27', '2022-04-30'),
(118, 'Younite', 'Youni-Birth', 21927, '2022-04-22', '2022-04-30'),
(119, 'Yuju', 'Rec.', 22970, '2022-01-21', '2022-01-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales_table`
--
ALTER TABLE `sales_table`
  ADD PRIMARY KEY (`artist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales_table`
--
ALTER TABLE `sales_table`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
