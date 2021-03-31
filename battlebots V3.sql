-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 03:30 AM
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
  `clickValue` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `screen` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
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
(51, 'Left mouse', 'feike', '', '', '<SCRIPT>\n.\n#', 'http://localhost/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2560x1440', '2021-03-31 03:30:12');

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
('1A', ' test test test', 'Test'),
('1B', 'Test', 'Test'),
('1C', 'Test', 'BrokkoBot'),
('1D', 'Test', 'Test'),
('1E', 'Saus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus SausSaus Saus Saus Saus', 'FiekehUTZ');

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
  MODIFY `ActionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
