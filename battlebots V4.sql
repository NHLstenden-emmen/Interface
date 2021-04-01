-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2021 at 10:16 AM
-- Server version: 8.0.23
-- PHP Version: 7.4.16

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
  `ActionID` int NOT NULL,
  `type_ac` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `keyInt` varchar(5) NOT NULL,
  `keyChar` varchar(5) NOT NULL,
  `clickValue` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `screen` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`) VALUES
(1, 'Left mouse', 'feike', '', '', '<SPAN>\n.\n#', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:27:44'),
(2, 'Keyboard', 'Guest', '18', '', '', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:27:44'),
(3, 'Left mouse', 'Guest', '', '', '<>\n.\n#\nTeams', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:51'),
(4, 'Left mouse', 'Guest', '', '', '<>\n.\n#\nLivestream', 'http://localhost/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:52'),
(5, 'Left mouse', 'Guest', '', '', '<>\n.\n#\nStatistics', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:53'),
(6, 'Left mouse', 'Guest', '', '', '<A>\n.\n#\nScheme', 'http://localhost/stats', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:55'),
(7, 'Left mouse', 'Guest', '', '', '<A>\n.\n#\nRules', 'http://localhost/scheme', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:56'),
(8, 'Left mouse', 'Guest', '', '', '<>\n.\n#\nLivestream', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:57'),
(9, 'Left mouse', 'Guest', '', '', '<DIV>\n.input-field\n#liveChatInput', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:58'),
(10, 'Left mouse', 'Guest', '', '', '<DIV>\n.input-field\n#liveChatInput', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:58'),
(11, 'Left mouse', 'Guest', '', '', '<DIV>\n.input-field\n#liveChatInput', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:58'),
(12, 'Left mouse', 'Guest', '', '', '<>\n.alternative-button\n#\nLogin', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:28:59'),
(13, 'Left mouse', 'feike', '', '', '<>\n.img zoom\n#ESP', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:05'),
(14, 'Left mouse', 'feike', '', '', '<>\n.\n#\nLivestream', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:07'),
(15, 'Left mouse', 'feike', '', '', '<DIV>\n.input-field\n#liveChatInput', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:08'),
(16, 'Keyboard', 'feike', '16', '', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:08'),
(17, 'Keyboard', 'feike', '84', 'T', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:09'),
(18, 'Keyboard', 'feike', '69', 'E', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:09'),
(19, 'Keyboard', 'feike', '83', 'S', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:09'),
(20, 'Keyboard', 'feike', '84', 'T', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:09'),
(21, 'Keyboard', 'feike', '13', '\r', '', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:09'),
(22, 'Left mouse', 'feike', '', '', '<>\n.\n#\nHome', 'http://localhost/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:12'),
(23, 'Left mouse', 'feike', '', '', '<>\n.\n#\nModerator', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:13'),
(24, 'Left mouse', 'feike', '', '', '<>\n.\n#\nModerator', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:14'),
(25, 'Left mouse', 'feike', '', '', '<>\n.fas fa-users\n#', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:15'),
(26, 'Left mouse', 'feike', '', '', '<>\n.\n#\nHome', 'http://localhost/moderator/users', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:16'),
(27, 'Left mouse', 'feike', '', '', '<>\n.\n#\nModerator', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:17'),
(28, 'Left mouse', 'feike', '', '', '<>\n.neonBlock zoom\n#', 'http://localhost/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:19'),
(29, 'Left mouse', 'feike', '', '', '<>\n.\n#\nGa naar het dashboard', 'http://localhost/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:21'),
(30, 'Left mouse', 'feike', '', '', '<SCRIPT>\n.botReady\n#\nReady', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:23'),
(31, 'Left mouse', 'feike', '', '', '<path>\n.\n#logo-body', 'http://localhost/dashboard/1E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:32'),
(32, 'Left mouse', 'feike', '', '', '<A>\n.\n#\nRules', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:35'),
(33, 'Left mouse', 'feike', '', '', '<UL>\n.mobileBurger active\n#', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 03:29:41'),
(34, 'Left mouse', 'feike', '', '', '<DIV>\n.\n#', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1078.875x1918.8', '2021-03-31 03:29:45'),
(35, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:29:49'),
(36, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(37, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(38, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(39, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(40, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(41, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(42, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(43, 'Keyboard', 'feike', '17', '', '', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:50'),
(44, 'Left mouse', 'feike', '', '', '<UL>\n.mobileBurger active\n#', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:51'),
(45, 'Left mouse', 'feike', '', '', '<UL>\n.mobileBurger\n#', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '12800x7200', '2021-03-31 03:29:58'),
(46, 'Left mouse', 'feike', '', '', '<>\n.\n#\nSpelregels', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:08'),
(47, 'Left mouse', 'feike', '', '', '<>\n.\n#\nSpelregels', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:08'),
(48, 'Left mouse', 'feike', '', '', '<>\n.\n#\nSpelregels', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:08'),
(49, 'Left mouse', 'feike', '', '', '<>\n.\n#\nHome', 'http://localhost/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:09'),
(50, 'Left mouse', 'feike', '', '', '<SCRIPT>\n.\n#', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:11'),
(51, 'Left mouse', 'feike', '', '', '<SCRIPT>\n.\n#', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:12'),
(52, 'Left mouse', 'Guest', '', '', '<svg>\n.link\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1280x1025', '2021-04-01 08:32:44'),
(53, 'Left mouse', 'Guest', '', '', '<A>\n.button\n#No ID\n{Ontmoet de Teams!}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1280x1025', '2021-04-01 08:32:46'),
(54, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:02'),
(55, 'Left mouse', 'feike', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:03'),
(56, 'Left mouse', 'feike', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/moderator/users', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:04'),
(57, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/moderator/users', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:06'),
(58, 'Left mouse', 'feike', '', '', '<TD>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://robotv.serverict.nl/moderator/dashboards', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:50'),
(59, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Ga naar het dashboard}\nNo src', 'http://robotv.serverict.nl/moderator/dashboards', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:33:51'),
(60, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:34:58'),
(61, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<DIV>\n.plyr__controls\n#No ID\n{PausePlay% buffered00:0000:00UnmuteMuteDisable captionsEnable captionsPIPExit fullscreenEnter fullscreen}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:35:01'),
(62, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<DIV>\n.plyr__controls\n#No ID\n{PausePlay% buffered00:0000:00UnmuteMuteDisable captionsEnable captionsPIPExit fullscreenEnter fullscreen}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:35:02'),
(63, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:35:07'),
(64, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:35:08'),
(65, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:35:42'),
(66, 'Left mouse', 'Guest', '', '', '<IMG>\n.No class\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1D/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:35:47'),
(67, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:35:48'),
(68, 'Left mouse', 'Guest', '', '', '<IMG>\n.No class\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1D/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:35:48'),
(69, 'Left mouse', 'Guest', '', '', '<IMG>\n.No class\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1E/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:35:49'),
(70, 'Left mouse', 'Guest', '', '', '<IMG>\n.No class\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1E/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:35:49'),
(71, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:36:10'),
(72, 'Left mouse', 'Guest', '', '', '<A>\n.button\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:36:14'),
(73, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:36:16'),
(74, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:36:47'),
(75, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:36:48'),
(76, 'Left mouse', 'Guest', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2 Chrome/83.0.4103.106 Mobile Safari/537.36', '1080x2220', '2021-04-01 08:37:24'),
(77, 'Left mouse', 'Guest', '', '', '<DIV>\n.mobileBurger\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2 Chrome/83.0.4103.106 Mobile Safari/537.36', '1080x2220', '2021-04-01 08:37:26'),
(78, 'Left mouse', 'Guest', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2 Chrome/83.0.4103.106 Mobile Safari/537.36', '1080x2220', '2021-04-01 08:37:27'),
(79, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2 Chrome/83.0.4103.106 Mobile Safari/537.36', '1080x2220', '2021-04-01 08:37:29'),
(80, 'Left mouse', 'Guest', '', '', '<A>\n.button\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1280x1025', '2021-04-01 08:37:30'),
(81, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2 Chrome/83.0.4103.106 Mobile Safari/537.36', '1080x2220', '2021-04-01 08:37:31'),
(82, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1280x1025', '2021-04-01 08:37:32'),
(83, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:36'),
(84, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:39'),
(85, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:39'),
(86, 'Left mouse', 'Guest', '', '', '<INPUT>\n.No class\n#plyr-volume-1613\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:48'),
(87, 'Left mouse', 'Guest', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:51'),
(88, 'Left mouse', 'Guest', '', '', '<DIV>\n.col-md-12 col-lg-9 main\n#No ID\n{Volgende toernooi over: \n				\n					-1d \n					-1h \n					-8m \n					-38s}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:58'),
(89, 'Left mouse', 'Guest', '', '', '<IMG>\n.img\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:37:59'),
(90, 'Left mouse', 'Guest', '', '', '<IMG>\n.img\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:38:00'),
(91, 'Left mouse', 'Guest', '', '', '<IMG>\n.img\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:38:00'),
(92, 'Left mouse', 'Guest', '', '', '<LI>\n.countdownli\n#countdownseconds\n{-38s}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:38:01'),
(93, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:38:05'),
(94, 'Left mouse', 'Guest', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:38:08'),
(95, 'Left mouse', 'Guest', '', '', '<I>\n.fas fa-sign-in-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:38:11'),
(96, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:38:49'),
(97, 'Keyboard', 'Guest', '18', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-01 08:39:29'),
(98, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-01 08:39:33'),
(99, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-01 08:39:42'),
(100, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:39:57'),
(101, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:39:59'),
(102, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:40:13'),
(103, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:11'),
(104, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:17'),
(105, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:20'),
(106, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '66', 'B', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:21'),
(107, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '82', 'R', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:21'),
(108, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '79', 'O', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:22'),
(109, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '75', 'K', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:22'),
(110, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '75', 'K', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:22'),
(111, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '79', 'O', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:23'),
(112, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '16', '', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:23'),
(113, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '66', 'B', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:24'),
(114, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '79', 'O', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:24'),
(115, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '84', 'T', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:24'),
(116, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '32', ' ', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:25'),
(117, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '87', 'W', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:26'),
(118, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '73', 'I', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:26'),
(119, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '78', 'N', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:26'),
(120, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '84', 'T', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:27'),
(121, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '32', ' ', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:27'),
(122, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '77', 'M', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:27'),
(123, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '65', 'A', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:27'),
(124, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '75', 'K', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:28'),
(125, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '75', 'K', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:28'),
(126, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '69', 'E', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:29'),
(127, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '76', 'L', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:29'),
(128, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '73', 'I', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:30'),
(129, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '74', 'J', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:30'),
(130, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '75', 'K', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:30'),
(131, 'Keyboard', 'tim.aalders@student.nhlstenden.com', '0', '\0', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:34'),
(132, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:34'),
(133, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:38'),
(134, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:41:40'),
(135, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:42'),
(136, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:43'),
(137, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:41:44'),
(138, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:41:44'),
(139, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:41:55'),
(140, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:42:28'),
(141, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:29'),
(142, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<DIV>\n.plyr__controls\n#No ID\n{PausePlay% buffered00:0000:00UnmuteMuteDisable captionsEnable captionsPIPExit fullscreenEnter fullscreen}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:31'),
(143, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__controls__item plyr__control\n#No ID\n{PausePlay}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:35'),
(144, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:42:36'),
(145, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:42:36'),
(146, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<INPUT>\n.No class\n#plyr-volume-607\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:41'),
(147, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:41'),
(148, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__controls__item plyr__control\n#No ID\n{PIP}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:42:42'),
(149, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:42:42'),
(150, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:42:44'),
(151, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:43:00'),
(152, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<I>\n.avatar fas fa-user-circle\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:43:26'),
(153, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:32'),
(154, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:43:33'),
(155, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:33'),
(156, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:34'),
(157, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:34'),
(158, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:34'),
(159, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:43:34'),
(160, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:34'),
(161, 'Left mouse', 'tim.aalders@student.nhlstenden.com', '', '', '<I>\n.send fas fa-chevron-right\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1', '750x1334', '2021-04-01 08:43:38'),
(162, 'Left mouse', 'nick.wind@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:39'),
(163, 'Left mouse', 'Guest', '', '', '<I>\n.fas fa-sign-in-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:43:39'),
(164, 'Left mouse', 'Guest', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Linux; Android 11; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', '1081.5x2281.125', '2021-04-01 08:43:56'),
(165, 'Left mouse', 'moderator1', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://localhost/moderator/users', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36 OPR/74.0.3911.187', '1440x900', '2021-04-01 08:44:00'),
(166, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36 OPR/74.0.3911.187', '1440x900', '2021-04-01 08:44:02'),
(167, 'Left mouse', 'kevin', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:21'),
(168, 'Left mouse', 'kevin', '', '', '<DIV>\n.neonBlock zoom\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:24'),
(169, 'Left mouse', 'kevin', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/moderator/dashboards', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:37'),
(170, 'Left mouse', 'kevin', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:46'),
(171, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:47'),
(172, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:44:51'),
(173, 'Left mouse', 'talip.korkut@student.nhlstenden.com', '', '', '<BUTTON>\n.plyr__control plyr__control--overlaid\n#No ID\n{Play}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.116 Safari/537.36', '1920x1080', '2021-04-01 08:44:54'),
(174, 'Left mouse', 'nick.wind@student.nhlstenden.com', '', '', '<INPUT>\n.input-field\n#liveChatInput\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:07'),
(175, 'Keyboard', 'nick.wind@student.nhlstenden.com', '77', 'M', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:08');
INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`) VALUES
(176, 'Keyboard', 'nick.wind@student.nhlstenden.com', '79', 'O', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:08'),
(177, 'Keyboard', 'nick.wind@student.nhlstenden.com', '73', 'I', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:08'),
(178, 'Keyboard', 'nick.wind@student.nhlstenden.com', '13', '\r', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:09'),
(179, 'Left mouse', 'Guest', '', '', '<I>\n.fas fa-sign-in-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', '2560x1440', '2021-04-01 08:45:12'),
(180, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/livestrjheam', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:50'),
(181, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:53'),
(182, 'Left mouse', 'cecile.richetti@student.nhlstenden.com', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '1920x1080', '2021-04-01 08:45:54');

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
  `ErrorID` int NOT NULL,
  `Error` longtext NOT NULL,
  `Time` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punten`
--

CREATE TABLE `punten` (
  `game` varchar(255) NOT NULL,
  `robot` varchar(255) NOT NULL,
  `score` int NOT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`TeamID`, `TeamDesc`, `RobotName`) VALUES
('1A', ' test test test', 'Bumble Bert'),
('1B', 'Lennart the 14th used to be Vladimir Putin\'s pet, because Putin was allergic to dog hair, he had his servants program a robot that would look like a dog. The programmers blew a bit, making it more of a human-like beast than a dog. Lennart helped Putin with sports, eating, sleeping and all kinds of other things that Putin could’nt do himself. Lennart also had some time off, in his spare time he played golf at his 12-hectare garden with a glass of wine and a Ralph Lauren polo with a vest sloping over his upper body. While playing golf, Lennart needed a good jam to vibe on, so he listened to the Dutch super talent Famke Louise. When Putin caught him listening to “Vroom”, he went completely crazy. Putin himself was not really into foreign music, especially this style. He preferred to listen to Tri Poloski, or EZ4ENCE himself. Because Putin got so angry, Lennart decided to leave. He picked up 1 of Putin\'s tanks and set course to the airfield, where he left for the Netherlands with an F16 Jet. His goal was to find a way into Famke\'s heart, but wanted to do it in a good way. To get her attention, he participates in Project Battlebots. He\'s here with the aim of beating anything and everything at any cost.\r\n', 'Lennart'),
('1C', 'Test', 'BrokkoBot'),
('1D', 'Test', 'Wall-D'),
('1E', 'Saus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus Saus', 'ROBot Jetten');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `voornaam` varchar(100) NOT NULL,
  `achternaam` varchar(100) NOT NULL,
  `team` char(2) DEFAULT NULL,
  `level` int NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'nl',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `voornaam`, `achternaam`, `team`, `level`, `lang`, `deleted_at`) VALUES
(2, 'remco.hassing1@student.nhlstenden.com', '$2y$10$W.WN38E.s7H9Mnd.6/Ycou38cnweFtc04FCmB3GW9PZMlR8IH8Tdq', 'Remco', 'Hassing', '1C', 2, 'nl', NULL),
(5, 'feike', '$2y$10$7XxAsFhhxo5eQFnyFmRThO6pOLZCIPy/KJs7Qbrx.jEr2VklCdajm', 'Feike', 'Falkena', '1E', 2, 'nl', NULL),
(6, 'Kevin', '$2y$10$ymkwV39h8adBsp9vxRaLDesOoEaaNiFj8VE3XOH5vTCbpQ9L/6U4e', 'Kevin', 'Smulders', '1B', 2, 'nl', NULL),
(7, 'moderator2', '$2y$10$YqXOCGfwZE19V0uplaswsuNBjBC9vyDcrPtNTEh5a2qB.cQRICCGq', 'Moderator', '2', NULL, 2, 'nl', NULL),
(8, 'moderator3', '$2y$10$xkyxTojp2J.czTS.EEvOuu3GOhe8NMEbv070IILR3pKIMtsD7ww4.', 'Moderator', '3', NULL, 2, 'nl', NULL),
(9, 'teama@student.nhlstenden.com', '$2y$10$ueBrdjFSGbeUVgLSLVw/auMbGgAJczwEW/ybKQ6sgQYb75yN8hK7q', 'Team', 'A', '1A', 1, 'nl', NULL),
(10, 'Kevin@student.nhlstenden.com', '$2y$10$ymkwV39h8adBsp9vxRaLDesOoEaaNiFj8VE3XOH5vTCbpQ9L/6U4e', 'Team', 'B', '1B', 1, 'nl', NULL),
(11, 'teamc@student.nhlstenden.com', '$2y$10$0FxUwpnZrR68/JcWnZNgre5KIm38Z7mJtHlg.UJbeNtlOccDM7FOu', 'Team', 'C', '1C', 1, 'nl', NULL),
(12, 'teamd@student.nhlstenden.com', '$2y$10$cbBZ87O3v9OiYcWO.ff09upnpNwkmzmTIUXtt1/1M8Arp2e8hMdMK', 'Team', 'D', '1D', 1, 'nl', NULL),
(13, 'teame@student.nhlstenden.com', '$2y$10$ZFPyM6donmCy/pgJFbUgbOL9kUV8MfWiErdD5uV8glQ/g7Wve6KWG', 'Team', 'E', '1E', 1, 'nl', NULL),
(14, 'tim.aalders@student.nhlstenden.com', '$2y$10$7Aq4zOawrUvMsX9ILTd8M.iKNSJ6Fkp8iU6PW3QRZXgXGCzXW/O0C', 'Tim', 'A', NULL, 0, 'nl', NULL),
(15, 'talip.korkut@student.nhlstenden.com', '$2y$10$/IK5BuSShX0zWM901y8lCON2E7CUe6CUnqq6e70QsyRGsKGVEE1Ku', 'Talip', 'Korkut', NULL, 0, 'nl', NULL),
(16, 'nick.wind@student.nhlstenden.com', '$2y$10$dzmmV0qBa0LWYFRqEHmeZe.atc4vEXe0uvWExZknbh7SW7TpeAAdi', 'Nick', 'W', NULL, 0, 'nl', NULL),
(17, 'tamaraK@student.nhlstenden.com', '$2y$10$f3v.mcNFseuqwRpSBgc4qeRm4KrOyj8rGdHGuH2bAx/ZCMEHZYSfK', 'Tamara', 'K', NULL, 0, 'nl', NULL),
(18, 'hylke.sijbesma@student.nhlstenden.com', '$2y$10$O/jTvKPizJQSlWIYFJsUGuNtdFl7mPBy9PPpgOaLGeVGyiAUx3KLC', 'Hylke', 'Sybesma', NULL, 0, 'nl', NULL),
(19, 'michel.knotters@student.nhlstenden.com', '$2y$10$cWx3faXmleDfLXTNk4u.C.mlRDIbwi9kNX8UPKdzBk1O0kngAKQsm', 'Michel', 'Knotters', NULL, 0, 'nl', NULL),
(20, 'remco.van.oenen@student.nhlstenden.com', '$2y$10$lxeB.vILN0XQLcxNqLPHa.CcFIRhr25.CMBe/MfaCyk.nSU1n944G', 'Remco', 'van Oenen', NULL, 0, 'nl', NULL),
(21, 'esmee.kajuiter@student.nhlstenden.com', '$2y$10$T76FC20rAMKikvLmkzu92.xnxFYskRoL8yBl4GrNkrG4XXPpu0VQG', 'Esmee', 'Kajuiter', NULL, 0, 'nl', NULL),
(22, 'omer.avci1@student.nhlstenden.com', '$2y$10$CZl826J6aRpOYMwYQHkMM.Vh69wxo6cOTqvweDrTz3pcTfi8p/ZWC', 'Ömer', 'Avci', NULL, 0, 'nl', NULL),
(23, 'peter.bos1@student.nhlstenden.com', '$2y$10$cwR0b5PdhFK6g0BwsnAQLue2A43gC/zJdHusr59euE9OCBmfe31NC', 'Peter', 'Bos', NULL, 0, 'nl', NULL),
(24, 'roan.meijer@student.nhlstenden.com', '$2y$10$aFdX5n0CC7JeaJNalsZbFOQKeFfTrNWpUo0712lNog.loymx.u5cS', 'Roan', 'Meijer', NULL, 0, 'nl', NULL),
(25, 'anja.ubbens@nhlstenden.com', '$2y$10$RDoaTuw73gIzBdzJ1LaG7.e5T4tfScLrnLcqvVL7C57snuVyxIfgW', 'A', 'U', NULL, 0, 'nl', NULL);

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
  MODIFY `ActionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `php`
--
ALTER TABLE `php`
  MODIFY `ErrorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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