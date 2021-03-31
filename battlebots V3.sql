-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 09:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `battlebots`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `ActionID` int(11) NOT NULL,
  `type_ac` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `keyInt` varchar(5) NOT NULL,
  `keyChar` varchar(5) NOT NULL,
  `clickValue` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `screen` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`) VALUES
(1, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:51'),
(2, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:52'),
(3, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/camera', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:53'),
(4, 'Left mouse', 'feike', '', '', '<circle>\n.No class\n#joystick_thumb\n{NO-TEXT}\nNo src', 'http://localhost/moderator/camera/control', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:56'),
(5, 'Left mouse', 'feike', '', '', '<circle>\n.No class\n#joystick_thumb\n{NO-TEXT}\nNo src', 'http://localhost/moderator/camera/control', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:56'),
(6, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/camera/control', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:26:58'),
(7, 'Left mouse', 'feike', '', '', '<A>\n.button\n#No ID\n{Meet the Teams!}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:00'),
(8, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:00'),
(9, 'Left mouse', 'Guest', '', '', '<DIV>\n.col-md-12 col-lg-3 main\n#No ID\n{Home\n		Lorem ipsum dolar sit amet, consectetur adipescing elit. Mauris mattis hendrerit lorem a orenare.\n		Meet the Teams!}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:31'),
(10, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(11, 'Keyboard', 'Guest', '87', 'W', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(12, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(13, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(14, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(15, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(16, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(17, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(18, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:32'),
(19, 'Keyboard', 'Guest', '87', 'W', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(20, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(21, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(22, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(23, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(24, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(25, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(26, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(27, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(28, 'Keyboard', 'Guest', '87', 'W', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(29, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(30, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(31, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(32, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:33'),
(33, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(34, 'Keyboard', 'Guest', '83', 'S', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(35, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(36, 'Keyboard', 'Guest', '65', 'A', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(37, 'Keyboard', 'Guest', '87', 'W', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(38, 'Keyboard', 'Guest', '68', 'D', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:27:34'),
(39, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:26'),
(40, 'Left mouse', 'Guest', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:29'),
(41, 'Left mouse', 'Guest', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:29'),
(42, 'Left mouse', 'Guest', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:30'),
(43, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:31'),
(44, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:37'),
(45, 'Left mouse', 'feike', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:39'),
(46, 'Keyboard', 'feike', '16', '', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:39'),
(47, 'Keyboard', 'feike', '83', 'S', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:39'),
(48, 'Keyboard', 'feike', '65', 'A', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:39'),
(49, 'Keyboard', 'feike', '85', 'U', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:40'),
(50, 'Keyboard', 'feike', '83', 'S', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:40'),
(51, 'Keyboard', 'feike', '83', 'S', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:40'),
(52, 'Keyboard', 'feike', '13', '\r', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:30:40'),
(53, 'Keyboard', 'feike', '18', '', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:31:39'),
(54, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:04'),
(55, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:05'),
(56, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:08'),
(57, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:11'),
(58, 'Left mouse', 'feike', '', '', '<TD>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:12'),
(59, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:12'),
(60, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:33:15'),
(61, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:30'),
(62, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:30'),
(63, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:31'),
(64, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:35'),
(65, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:35'),
(66, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:36'),
(67, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:36'),
(68, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:36'),
(69, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:37'),
(70, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:38'),
(71, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:40'),
(72, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:41'),
(73, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:46'),
(74, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:47'),
(75, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:48'),
(76, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:35:50'),
(77, 'Left mouse', 'feike', '', '', '<DIV>\n.pageBar\n#No ID\n{Dashboard\n            Groep INF1E}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:05'),
(78, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:05'),
(79, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:06'),
(80, 'Left mouse', 'feike', '', '', '<DIV>\n.pageBar\n#No ID\n{Dashboard\n            Groep INF1E}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:15'),
(81, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:15'),
(82, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:16'),
(83, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:37:17'),
(84, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:36'),
(85, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:47'),
(86, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:49'),
(87, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:50'),
(88, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:51'),
(89, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:55'),
(90, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:55'),
(91, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:55'),
(92, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:55'),
(93, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:55'),
(94, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:37:59'),
(95, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:38:00'),
(96, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:38:00'),
(97, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 20:38:00'),
(98, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:42:44'),
(99, 'Left mouse', 'feike', '', '', '<DIV>\n.pageBar\n#No ID\n{Dashboard\n            Groep INF1E}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:42:44'),
(100, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:42:44'),
(101, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:08'),
(102, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:08'),
(103, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:09'),
(104, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:10'),
(105, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Scheme}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:12'),
(106, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Statistics}\nNo src', 'http://localhost/scheme', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:13'),
(107, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/stats', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:43:24'),
(108, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:01'),
(109, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:01'),
(110, 'Left mouse', 'feike', '', '', '<I>\n.fas fa-tachometer-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:02'),
(111, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:06'),
(112, 'Left mouse', 'feike', '', '', '<SPAN>\n.vjs-icon-placeholder\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:07'),
(113, 'Left mouse', 'feike', '', '', '<SPAN>\n.vjs-icon-placeholder\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:09'),
(114, 'Left mouse', 'feike', '', '', '<BUTTON>\n.button\n#No ID\n{Wijzig}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:10'),
(115, 'Left mouse', 'feike', '', '', '<DIV>\n.header\n#No ID\n{DashboardTeam D}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:21'),
(116, 'Left mouse', 'feike', '', '', '<path>\n.No class\n#logo-body\n{NO-TEXT}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:26'),
(117, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Next tournament in:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:43'),
(118, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Next tournament in:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:43'),
(119, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Next tournament in:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:43'),
(120, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:44'),
(121, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownminutes\n{42m}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:49'),
(122, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownminutes\n{42m}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:49'),
(123, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownminutes\n{42m}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:49'),
(124, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownminutes\n{42m}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:49'),
(125, 'Left mouse', 'feike', '', '', '<UL>\n.countdown\n#No ID\n{0d \n					11h \n					42m \n					9s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:50'),
(126, 'Left mouse', 'feike', '', '', '<UL>\n.countdown\n#No ID\n{0d \n					11h \n					42m \n					9s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:51'),
(127, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:58'),
(128, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:47:59'),
(129, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:48:00'),
(130, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:48:01'),
(131, 'Keyboard', 'feike', '18', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:48:50'),
(132, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:00'),
(133, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{FiekehUTZ [E]\n                        \n                        \n                            Saus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus Saus}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:00'),
(134, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:01'),
(135, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:01'),
(136, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:01'),
(137, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:50:01'),
(138, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#landing\n{All Teams\n        Lookup all information avout the competitors in the challenges. Or take a look at the livestream!\n        \n        Livestream\n        \n            \n                \n                Team A\n            \n            \n                \n                Team B\n            \n            \n                \n                Team C\n            \n            \n                \n                Team D\n            \n            \n                \n                Team E}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 20:50:09'),
(139, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 20:50:10'),
(140, 'Left mouse', 'feike', '', '', '<DIV>\n.container\n#No ID\n{All Teams\n        Lookup all information avout the competitors in the challenges. Or take a look at the livestream!\n        \n        Livestream\n        \n            \n                \n                Team A\n            \n            \n                \n                Team B\n            \n            \n                \n                Team C\n            \n            \n                \n                Team D\n            \n            \n                \n                Team E\n            \n        \n\n        \n    \n\n    \n        Introducing to you:\n\n        \n\n            \n                        \n                \n                    \n                        \n                            Test [A]\n                        \n                        \n                             test test test                        \n                    \n                    \n                         \n                    \n                \n            \n\n            \n                        \n                \n                        \n                            Test [B]\n                        \n                        \n                            Test                        \n                    \n                    \n                         \n                    \n                    \n                \n            \n\n            \n                        \n                \n                    \n                        \n                            BrokkoBot [C]\n                        \n                        \n                            Test                        \n                    \n                    \n                         \n                    \n                \n            \n\n            \n                        \n                \n                        \n                            Test [D]\n                        \n                        \n                            Test                        \n                    \n                    \n                         \n                    \n                                        \n                \n            \n\n            \n                        \n                \n                    \n                        \n                            FiekehUTZ [E]\n                        \n                        \n                            Saus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus Saus}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:19'),
(141, 'Left mouse', 'feike', '', '', '<IMG>\n.neonBorder\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1A/logo.png', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:19'),
(142, 'Left mouse', 'feike', '', '', '<IMG>\n.neonBorder\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1A/logo.png', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:21'),
(143, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{Test [A]\n                        \n                        \n                             test test test}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:22'),
(144, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{Test [A]\n                        \n                        \n                             test test test}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:25'),
(145, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/teams', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '3840x2160', '2021-03-31 20:50:57'),
(146, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{Test [A]\n                        \n                        \n                             test test test}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:51:00'),
(147, 'Left mouse', 'feike', '', '', '<H4>\n.teamTitle\n#No ID\n{FiekehUTZ [E]}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:51:34'),
(148, 'Left mouse', 'feike', '', '', '<H4>\n.teamTitle\n#No ID\n{FiekehUTZ [E]}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:51:34'),
(149, 'Left mouse', 'feike', '', '', '<H4>\n.teamTitle\n#No ID\n{FiekehUTZ [E]}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:51:34'),
(150, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-03-31 20:51:40'),
(151, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:40'),
(152, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:40'),
(153, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:40'),
(154, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:41'),
(155, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:41'),
(156, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:41'),
(157, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:41'),
(158, 'Keyboard', 'feike', '17', '', '', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:41'),
(159, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:51'),
(160, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:54'),
(161, 'Left mouse', 'feike', '', '', '<DIV>\n.container nav\n#No ID\n{Home\n        Moderator\n        Teams\n        Livestream\n        \n            \n              Games \n              \n                \n                Statistics\n                Scheme\n                Rules\n              \n            \n        \n          \n               EN\n          \n        \n            Feike	 Falkena}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 20:51:57'),
(162, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '6400x3600', '2021-03-31 20:52:00'),
(163, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '6400x3600', '2021-03-31 20:52:04'),
(164, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 20:52:06'),
(165, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger\n#No ID\n{}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 20:52:09'),
(166, 'Left mouse', 'feike', '', '', '<SPAN>\n.dropdownLink\n#No ID\n{Games}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:52:16'),
(167, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:52:16'),
(168, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:54:33'),
(169, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:54:35'),
(170, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 20:54:36'),
(171, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:07'),
(172, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:09'),
(173, 'Left mouse', 'feike', '', '', '<DIV>\n.col-md-12 col-lg-3 main\n#No ID\n{Home\n		Lorem ipsum dolar sit amet, consectetur adipescing elit. Mauris mattis hendrerit lorem a orenare.\n		Meet the Teams!}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:11'),
(174, 'Left mouse', 'feike', '', '', '<A>\n.button\n#No ID\n{Meet the Teams!}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:12'),
(175, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{ROBot Jetten [E]\n                        \n                        \n                            ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:17');
INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`) VALUES
(176, 'Left mouse', 'feike', '', '', '<DIV>\n.col-sm-6\n#No ID\n{ROBot Jetten [E]\n                        \n                        \n                            ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:17'),
(177, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:18'),
(178, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:18'),
(179, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:18'),
(180, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:26'),
(181, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:26'),
(182, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:26'),
(183, 'Left mouse', 'feike', '', '', '<P>\n.teamDescription\n#No ID\n{ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:05:27'),
(184, 'Left mouse', 'feike', '', '', '<A>\n.button\n#No ID\n{Livestream}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:34'),
(185, 'Left mouse', 'feike', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:36'),
(186, 'Left mouse', 'feike', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:36'),
(187, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#liveChat\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 21:08:39'),
(188, 'Left mouse', 'feike', '', '', '<LI>\n.No class\n#No ID\n{EN}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:43'),
(189, 'Left mouse', 'feike', '', '', '<I>\n.language fas fa-language\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:43'),
(190, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:45'),
(191, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:46'),
(192, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:47'),
(193, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:49'),
(194, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:51'),
(195, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:51'),
(196, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:51'),
(197, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownhours\n{11h}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:52'),
(198, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownhours\n{11h}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:52'),
(199, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownhours\n{11h}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:53'),
(200, 'Left mouse', 'feike', '', '', '<UL>\n.countdown\n#No ID\n{0d \n					11h \n					21m \n					6s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:53'),
(201, 'Left mouse', 'feike', '', '', '<DIV>\n.col-md-12 col-lg-9 main\n#No ID\n{Volgende toernooi over: \n				\n					0d \n					11h \n					21m \n					3s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:56'),
(202, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdowndays\n{0d}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:08:57'),
(203, 'Left mouse', 'feike', '', '', '<UL>\n.countdown\n#No ID\n{0d \n					11h \n					20m \n					59s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:00'),
(204, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{59s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:01'),
(205, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{58s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:01'),
(206, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{58s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:01'),
(207, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{58s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:02'),
(208, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{58s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:02'),
(209, 'Left mouse', 'feike', '', '', '<LI>\n.countdownli\n#countdownseconds\n{57s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:02'),
(210, 'Left mouse', 'feike', '', '', '<DIV>\n.col-md-12 col-lg-9 main\n#No ID\n{Volgende toernooi over: \n				\n					0d \n					11h \n					20m \n					56s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:04'),
(211, 'Left mouse', 'feike', '', '', '<DIV>\n.col-md-12 col-lg-9 main\n#No ID\n{Volgende toernooi over: \n				\n					0d \n					11h \n					20m \n					56s}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:04'),
(212, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:50'),
(213, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:50'),
(214, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:51'),
(215, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NL}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:51'),
(216, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{EN}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:09:54'),
(217, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:12:56'),
(218, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:12:57'),
(219, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:12:58'),
(220, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:12:59'),
(221, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:13:01'),
(222, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:13:01'),
(223, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:13:10'),
(224, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:13:12'),
(225, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:24:35'),
(226, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:34'),
(227, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:36'),
(228, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:45'),
(229, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:45'),
(230, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:45'),
(231, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:46'),
(232, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:47'),
(233, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:48'),
(234, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:55'),
(235, 'Left mouse', 'feike', '', '', '<I>\n.fas fa-users\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:56'),
(236, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:58'),
(237, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-03-31 21:28:59'),
(238, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:29:28'),
(239, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:29:29'),
(240, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:29:40'),
(241, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:29:41'),
(242, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:29:50'),
(243, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:46'),
(244, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Commands\n                Stop}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(245, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(246, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(247, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(248, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(249, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(250, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:52'),
(251, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:53'),
(252, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:53'),
(253, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:53'),
(254, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:30:53'),
(255, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:31:13'),
(256, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:31:13'),
(257, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:31:27'),
(258, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:31:27'),
(259, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:31:32'),
(260, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(261, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(262, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(263, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(264, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(265, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(266, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(267, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7680x4320', '2021-03-31 21:31:33'),
(268, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:33:59'),
(269, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:33:59'),
(270, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:00'),
(271, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:01'),
(272, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:01'),
(273, 'Left mouse', 'feike', '', '', '<DIV>\n.containerD\n#No ID\n{DashboardTeam D\n        \n    \n    \n        \n            \n            \n                Om deze video te kijken, moet JavaScript aan staan. Wellicht biedt de huidige browser ook geen \n                ondersteuning voor HTML5 video\n            \n        Video Player is loading.Play VideoPlayMuteCurrent Time 0:00/Duration -:-Loaded: 0%0:00Stream Type LIVESeek to live, currently behind liveLIVERemaining Time --:- 1xPlayback RateChaptersChaptersDescriptionsdescriptions off, selectedSubtitlessubtitles settings, opens subtitles settings dialogsubtitles off, selectedAudio TrackPicture-in-PictureFullscreenThis is a modal window.HLS playlist request error at URL: /streams/dome.m3u8.Beginning of dialog window. Escape will cancel and close the window.TextColorWhiteBlackRedGreenBlueYellowMagentaCyanTransparencyOpaqueSemi-TransparentBackgroundColorBlackWhiteRedGreenBlueYellowMagentaCyanTransparencyOpaqueSemi-TransparentTransparentWindowColorBlackWhiteRedGreenBlueYellowMagentaCyanTransparencyTransparentSemi-TransparentOpaqueFont Size50%75%100%125%150%175%200%300%400%Text Edge StyleNoneRaisedDepressedUniformDropshadowFont FamilyProportional Sans-SerifMonospace Sans-SerifProportional SerifMonospace SerifCasualScriptSmall CapsReset restore all settings to the default valuesDoneClose Modal DialogEnd of dialog window. \n    \n    \n                Beschrijving\n        \n            Test\n            Wijzig\n        \n    \n    \n        \n             \n            \n                \n                    20:23:02	No game running\n                \n            \n        \n        \n            \n            \n                Start\n            \n        \n    \n    \n        Nu bezigSteen, papier, schaar    \n    \n        \n            Huidige stand\n            \n                Team A0Team B0Team C0Team D0Team E0Team 025            \n        \n        \n            Nog te spelen\n            \n                \n                    \n                        \n                            Spel\n                            Wedstrijdlengte\n                        \n                    \n                    \n                        Steen, papier, schaar45 secondenDoolhof5 minutenRace5 minutenTekening5 minuten                    \n                \n            \n        \n        \n            Je kansen\n            Positie 1Positie 2Positie 3Positie 4Positie 533.33%26.67%20%13.33%6.67%        \n        \n            Resultaten\n            \n                \n                    \n                        \n                            Spel\n                            Score\n                            Team\n                        \n                    \n                    \n                        Doolhof00:00.700Doolhof00:00.557}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:01'),
(274, 'Left mouse', 'feike', '', '', '<P>\n.goodChance\n#No ID\n{26.67%}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:02'),
(275, 'Left mouse', 'feike', '', '', '<DIV>\n.data pastResults neonBlock aos-init aos-animate\n#No ID\n{Resultaten\n            \n                \n                    \n                        \n                            Spel\n                            Score\n                            Team\n                        \n                    \n                    \n                        Doolhof00:00.700Doolhof00:00.557}\nNo src', 'http://localhost/dashboard/1D', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:04'),
(276, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:39'),
(277, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:40'),
(278, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:34:41'),
(279, 'Left mouse', 'feike', '', '', '<DIV>\n.pageBar\n#No ID\n{Dashboard\n            Groep INF1E}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:39:37'),
(280, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Teaminformatie\n                \n                        ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:11'),
(281, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:12'),
(282, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:13'),
(283, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:15'),
(284, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:15'),
(285, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:15'),
(286, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:15'),
(287, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:15'),
(288, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(289, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(290, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(291, 'Keyboard', 'feike', '175', '¯', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(292, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(293, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:16'),
(294, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:17'),
(295, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:17'),
(296, 'Keyboard', 'feike', '174', '®', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:18'),
(297, 'Left mouse', 'feike', '', '', '<DIV>\n.row\n#No ID\n{Teaminformatie\n                \n                        ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\n\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:21'),
(298, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:40:22'),
(299, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:26'),
(300, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:44'),
(301, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:44'),
(302, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:44'),
(303, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:45'),
(304, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:41:47'),
(305, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:23'),
(306, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:23'),
(307, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:24'),
(308, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:26'),
(309, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:29'),
(310, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:29'),
(311, 'Keyboard', 'feike', '116', 't', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:29'),
(312, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:42:30'),
(313, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 21:42:51'),
(314, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 21:43:04'),
(315, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-03-31 21:43:08'),
(316, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 21:44:22'),
(317, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Speelschema\n                \n                \n                    \n                        Spel\n                        Spelers\n                        Tijd\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05\n                    \n                    \n                        SPS\n                        Robot A vs Robot E\n                        13:05}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:30');
INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`) VALUES
(318, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#keyboardListen\n{Controle\n                \n                    \n                        \n                    \n                    \n                        \n                        \n                            \n                                W\n                            \n                            \n                                A\n                                S\n                                D}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:35'),
(319, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:57'),
(320, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:57'),
(321, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:57'),
(322, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:58'),
(323, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:58'),
(324, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:59'),
(325, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:59'),
(326, 'Left mouse', 'feike', '', '', '<H5>\n.blockTitle\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:44:59'),
(327, 'Left mouse', 'feike', '', '', '<BUTTON>\n.button\n#No ID\n{S}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:45:12'),
(328, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock content\n#No ID\n{Huidige game}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:45:14'),
(329, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:25'),
(330, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:25'),
(331, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:25'),
(332, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:25'),
(333, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:25'),
(334, 'Left mouse', 'feike', '', '', '<H2>\n.No class\n#titel\n{Dashboard}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:26'),
(335, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2560x1440', '2021-03-31 21:46:42'),
(336, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:46:52'),
(337, 'Keyboard', 'feike', '17', '', '', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:46:53'),
(338, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:47:03'),
(339, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:47:13'),
(340, 'Left mouse', 'feike', '', '', '<I>\n.fas fa-tachometer-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:47:14'),
(341, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:47:17'),
(342, 'Left mouse', 'feike', '', '', '<BUTTON>\n.botReady\n#No ID\n{Ready}\nNo src', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:47:18'),
(343, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:50:21'),
(344, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:50:45'),
(345, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 21:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `livedata`
--

CREATE TABLE `livedata` (
  `type` varchar(255) NOT NULL,
  `json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livedata`
--

INSERT INTO `livedata` (`type`, `json`) VALUES
('scheme', '{\"11\":[\"Steen papier schaar Knockout\",\"10:13\",\"ALL\"],\"22\":[\"Doolhof\",\"BOT1\"],\"12\":[\"Race\",\"10:18\",\"BOT3\"],\"23\":[\"Doolhof\",\"BOT2\"],\"13\":[\"Race\",\"10:23\",\"BOT5\"],\"14\":[\"Race\",\"10:28\",\"BOT1\"],\"15\":[\"Race\",\"10:33\",\"BOT4\"],\"16\":[\"Race\",\"10:38\",\"BOT2\"],\"17\":[\"Tekening\",\"10:43\",\"ALL\"],\"18\":[\"Tekening\",\"10:48\",\"ALL\"],\"19\":[\"Tekening\",\"10:53\",\"ALL\"],\"1\":[\"Steen papier schaar\",\"09:23\",\"BOT1\",\"BOT2\"],\"2\":[\"Steen papier schaar\",\"09:28\",\"BOT1\",\"BOT3\"],\"3\":[\"Steen papier schaar\",\"09:33\",\"BOT1\",\"BOT4\"],\"4\":[\"Steen papier schaar\",\"09:38\",\"BOT1\",\"BOT5\"],\"5\":[\"Steen papier schaar\",\"09:43\",\"BOT2\",\"BOT3\"],\"6\":[\"Steen papier schaar\",\"09:48\",\"BOT2\",\"BOT4\"],\"7\":[\"Steen papier schaar\",\"09:53\",\"BOT2\",\"BOT5\"],\"8\":[\"Steen papier schaar\",\"09:58\",\"BOT3\",\"BOT4\"],\"9\":[\"Steen papier schaar\",\"10:03\",\"BOT3\",\"BOT5\"],\"20\":[\"Tekening\",\"10:58\",\"ALL\"],\"10\":[\"Steen papier schaar\",\"10:08\",\"BOT4\",\"BOT5\"],\"21\":[\"Tekening\",\"11:03\",\"ALL\"]}'),
('score', '{\"doolhof\":[{\"ready\":true,\"finished\":true,\"team\":\"BOT1\",\"time\":\"00:00.700\",\"matchId\":21},{\"ready\":true,\"finished\":true,\"team\":\"BOT2\",\"time\":\"00:00.557\",\"matchId\":22}]}');

-- --------------------------------------------------------

--
-- Table structure for table `php`
--

CREATE TABLE `php` (
  `ErrorID` int(11) NOT NULL,
  `Error` longtext NOT NULL,
  `Time` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `punten`
--

CREATE TABLE `punten` (
  `game` varchar(255) NOT NULL,
  `robot` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `punten`
--

INSERT INTO `punten` (`game`, `robot`, `score`) VALUES
('doolhof', 'BOT1', 20),
('doolhof', 'BOT2', 25);

-- --------------------------------------------------------

--
-- Table structure for table `resultaat`
--

CREATE TABLE `resultaat` (
  `game` varchar(255) NOT NULL,
  `robot` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultaat`
--

INSERT INTO `resultaat` (`game`, `robot`, `score`) VALUES
('doolhof', 'BOT1', '00:00.700'),
('doolhof', 'BOT2', '00:00.557');

-- --------------------------------------------------------

--
-- Table structure for table `speelschema`
--

CREATE TABLE `speelschema` (
  `spel_naam` varchar(100) NOT NULL,
  `robot_1` varchar(255) NOT NULL,
  `robot_2` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `TeamID` varchar(2) NOT NULL,
  `TeamDesc` longtext NOT NULL,
  `RobotName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`TeamID`, `TeamDesc`, `RobotName`) VALUES
('1A', 'Test', 'BumbleBert'),
('1B', 'Test', 'Lennart'),
('1C', 'Test', 'BrokkoBot'),
('1D', 'Test', 'Wall-D'),
('1E', 'ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot geen winnaar, maar een leider. Stem voor een nieuwe leider!\r\n\r\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.\r\n', 'ROBot Jetten');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `voornaam` varchar(100) NOT NULL,
  `achternaam` varchar(100) NOT NULL,
  `team` char(2) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `lang` varchar(2) NOT NULL DEFAULT 'nl',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `voornaam`, `achternaam`, `team`, `level`, `lang`, `deleted_at`) VALUES
(5, 'feike', '$2y$10$7XxAsFhhxo5eQFnyFmRThO6pOLZCIPy/KJs7Qbrx.jEr2VklCdajm', 'Feike', 'Falkena', '1E', 2, 'nl', NULL),
(6, 'moderator1', '$2y$10$Q7eh1Wfs4oYdeZvnYNxKvOu1Ghbw/bi2I4NzeG5HvvQE3yxrXOuy6', 'Moderator', '1', NULL, 2, 'nl', NULL),
(7, 'moderator2', '$2y$10$YqXOCGfwZE19V0uplaswsuNBjBC9vyDcrPtNTEh5a2qB.cQRICCGq', 'Moderator', '1', NULL, 2, 'nl', NULL),
(8, 'moderator3', '$2y$10$xkyxTojp2J.czTS.EEvOuu3GOhe8NMEbv070IILR3pKIMtsD7ww4.', 'Moderator', '3', NULL, 2, 'nl', NULL),
(9, 'teama@student.nhlstenden.com', '$2y$10$ueBrdjFSGbeUVgLSLVw/auMbGgAJczwEW/ybKQ6sgQYb75yN8hK7q', 'Team', 'A', '1A', 1, 'nl', NULL),
(10, 'teamb@student.nhlstenden.com', '$2y$10$uhhRvDrROg4q0EAH5RfTPO9cASo27SDZz4M5uuasqjAfbU0XWSpt.', 'Team', 'B', '1B', 1, 'nl', NULL),
(11, 'teamc@student.nhlstenden.com', '$2y$10$0FxUwpnZrR68/JcWnZNgre5KIm38Z7mJtHlg.UJbeNtlOccDM7FOu', 'Team', 'C', '1C', 1, 'nl', NULL),
(12, 'teamd@student.nhlstenden.com', '$2y$10$cbBZ87O3v9OiYcWO.ff09upnpNwkmzmTIUXtt1/1M8Arp2e8hMdMK', 'Team', 'D', '1D', 1, 'nl', NULL),
(13, 'teame@student.nhlstenden.com', '$2y$10$ZFPyM6donmCy/pgJFbUgbOL9kUV8MfWiErdD5uV8glQ/g7Wve6KWG', 'Team', 'E', '1E', 1, 'nl', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`ActionID`);

--
-- Indexes for table `livedata`
--
ALTER TABLE `livedata`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`ErrorID`);

--
-- Indexes for table `punten`
--
ALTER TABLE `punten`
  ADD PRIMARY KEY (`game`,`robot`);

--
-- Indexes for table `resultaat`
--
ALTER TABLE `resultaat`
  ADD PRIMARY KEY (`game`,`robot`);

--
-- Indexes for table `speelschema`
--
ALTER TABLE `speelschema`
  ADD PRIMARY KEY (`spel_naam`),
  ADD KEY `fk_speelschema_spel1_idx` (`spel_naam`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `UserTeam` (`team`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `ActionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `php`
--
ALTER TABLE `php`
  MODIFY `ErrorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `UserTeam` FOREIGN KEY (`team`) REFERENCES `teams` (`TeamID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
