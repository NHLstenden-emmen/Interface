-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 09:12 PM
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
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`ActionID`, `type_ac`, `user`, `keyInt`, `keyChar`, `clickValue`, `url`, `device`, `screen`, `time`, `ip`) VALUES
(1, 'Left mouse', 'feike', '', '', '<IMG>\n.img aos-init aos-animate\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:11:01', '217.120.131.230'),
(2, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:11:02', '217.120.131.230'),
(3, 'Left mouse', 'feike', '', '', '<IMG>\n.img aos-init aos-animate\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:12:26', '217.120.131.230'),
(4, 'Keyboard', 'feike', '17', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:12:27', '217.120.131.230'),
(5, 'Keyboard', 'feike', '116', 't', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:12:27', '217.120.131.230'),
(6, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:13:23', '217.120.131.230'),
(7, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:13:24', '217.120.131.230'),
(8, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:13:27', '217.120.131.230'),
(9, 'Left mouse', 'feike', '', '', '<DIV>\n.mobileBurger active\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:21:39', '217.120.131.230'),
(10, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:21:42', '217.120.131.230'),
(11, 'Left mouse', 'Guest', '', '', '<DIV>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:21:44', '217.120.131.230'),
(12, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:21:46', '217.120.131.230'),
(13, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:22:02', '217.120.131.230'),
(14, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:26:37', '217.120.131.230'),
(15, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:26:39', '217.120.131.230'),
(16, 'Keyboard', 'feike', '17', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:29:34', '217.120.131.230'),
(17, 'Keyboard', 'feike', '116', 't', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:29:34', '217.120.131.230'),
(18, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:31:52', '217.120.131.230'),
(19, 'Keyboard', 'Guest', '17', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:00', '217.120.131.230'),
(20, 'Keyboard', 'Guest', '116', 't', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:01', '217.120.131.230'),
(21, 'Left mouse', 'Guest', '', '', '<IMG>\n.img aos-init aos-animate\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:03', '217.120.131.230'),
(22, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:04', '217.120.131.230'),
(23, 'Keyboard', 'Guest', '18', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:11', '217.120.131.230'),
(24, 'Keyboard', 'Guest', '18', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:32:56', '217.120.131.230'),
(25, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:33:13', '217.120.131.230'),
(26, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:33:20', '217.120.131.230'),
(27, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:33:21', '217.120.131.230'),
(28, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:33:22', '217.120.131.230'),
(29, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:41:18', '217.120.131.230'),
(30, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:41:19', '217.120.131.230'),
(31, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:41:34', '217.120.131.230'),
(32, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:41:35', '217.120.131.230'),
(33, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:43:23', '217.120.131.230'),
(34, 'Left mouse', 'Guest', '', '', '<I>\n.fas fa-sign-in-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:43:37', '217.120.131.230'),
(35, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:43:58', '217.120.131.230'),
(36, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:43:59', '217.120.131.230'),
(37, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:44:25', '217.120.131.230'),
(38, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:44:26', '217.120.131.230'),
(39, 'Keyboard', 'feike', '91', '[', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:44:31', '217.120.131.230'),
(40, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:44:42', '217.120.131.230'),
(41, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:44:43', '217.120.131.230'),
(42, 'Left mouse', 'feike', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:49:54', '217.120.131.230'),
(43, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:49:55', '217.120.131.230'),
(44, 'Left mouse', 'feike', '', '', '<DIV>\n.countdowncontainer\n#No ID\n{Volgende toernooi over: \n				\n					-1d \n					-4h \n					-54m \n					-5s}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:07', '217.120.131.230'),
(45, 'Left mouse', 'feike', '', '', '<DIV>\n.countdowncontainer\n#No ID\n{Volgende toernooi over: \n				\n					-1d \n					-4h \n					-54m \n					-5s}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:08', '217.120.131.230'),
(46, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:08', '217.120.131.230'),
(47, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:09', '217.120.131.230'),
(48, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:09', '217.120.131.230'),
(49, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:09', '217.120.131.230'),
(50, 'Left mouse', 'feike', '', '', '<H4>\n.No class\n#No ID\n{Volgende toernooi over:}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:50:09', '217.120.131.230'),
(51, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:51:11', '77.162.30.112'),
(52, 'Left mouse', 'Guest', '', '', '<I>\n.fas fa-sign-in-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:51:21', '77.162.30.112'),
(53, 'Left mouse', 'remco', '', '', '<svg>\n.link\n#No ID\n{}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:51:36', '77.162.30.112'),
(54, 'Left mouse', 'remco', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:51:37', '77.162.30.112'),
(55, 'Left mouse', 'remco', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:52:40', '77.162.30.112'),
(56, 'Keyboard', 'remco', '17', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:53:33', '77.162.30.112'),
(57, 'Left mouse', 'remco', '', '', '<SPAN>\n.No class\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:53:36', '77.162.30.112'),
(58, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:28', '217.120.131.230'),
(59, 'Left mouse', 'feike', '', '', '<INPUT>\n.No class\n#plyr-seek-4692\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:33', '217.120.131.230'),
(60, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:37', '217.120.131.230'),
(61, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:37', '217.120.131.230'),
(62, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:37', '217.120.131.230'),
(63, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:37', '217.120.131.230'),
(64, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:37', '217.120.131.230'),
(65, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:38', '217.120.131.230'),
(66, 'Keyboard', 'feike', '175', '¯', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:56:38', '217.120.131.230'),
(67, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:01', '217.120.131.230'),
(68, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:01', '217.120.131.230'),
(69, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:02', '217.120.131.230'),
(70, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:02', '217.120.131.230'),
(71, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:02', '217.120.131.230'),
(72, 'Left mouse', 'feike', '', '', '<P>\n.message\n#No ID\n{Connection has been closed}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:04', '217.120.131.230'),
(73, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:04', '217.120.131.230'),
(74, 'Left mouse', 'feike', '', '', '<I>\n.far fa-trash-alt\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:05', '217.120.131.230'),
(75, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:05', '217.120.131.230'),
(76, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:08', '217.120.131.230'),
(77, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:14', '217.120.131.230'),
(78, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:15', '217.120.131.230'),
(79, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:16', '217.120.131.230'),
(80, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:17', '217.120.131.230'),
(81, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:18', '217.120.131.230'),
(82, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:19', '217.120.131.230'),
(83, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:35', '217.120.131.230'),
(84, 'Left mouse', 'feike', '', '', '<SPAN>\n.dropdownLink\n#No ID\n{Spellen}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:36', '217.120.131.230'),
(85, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Statistieken}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:37', '217.120.131.230'),
(86, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Speelschema}\nNo src', 'http://robotv.serverict.nl/bracket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:39', '217.120.131.230'),
(87, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Speluitleg}\nNo src', 'http://robotv.serverict.nl/scheme', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:41', '217.120.131.230'),
(88, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/rules', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:42', '217.120.131.230'),
(89, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:44', '217.120.131.230'),
(90, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Teams}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:45', '217.120.131.230'),
(91, 'Left mouse', 'feike', '', '', '<H3>\n.No class\n#No ID\n{Maak kennis met}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:48', '217.120.131.230'),
(92, 'Left mouse', 'feike', '', '', '<H3>\n.No class\n#No ID\n{Maak kennis met}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:48', '217.120.131.230'),
(93, 'Left mouse', 'feike', '', '', '<H3>\n.No class\n#No ID\n{Maak kennis met}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:57:48', '217.120.131.230'),
(94, 'Keyboard', 'Guest', '17', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:00', '77.162.30.112'),
(95, 'Keyboard', 'Guest', '17', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:01', '77.162.30.112'),
(96, 'Keyboard', 'Guest', '116', 't', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:01', '77.162.30.112'),
(97, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:02', '77.162.30.112'),
(98, 'Left mouse', 'feike', '', '', '<IMG>\n.neonBorder\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1E/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:58:18', '217.120.131.230'),
(99, 'Left mouse', 'feike', '', '', '<IMG>\n.neonBorder\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1E/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:58:18', '217.120.131.230'),
(100, 'Left mouse', 'feike', '', '', '<IMG>\n.neonBorder\n#No ID\n{NO-TEXT}\n/tpl/assets/images/team/1E/logo.png', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:58:18', '217.120.131.230'),
(101, 'Keyboard', 'Guest', '17', '', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:18', '77.162.30.112'),
(102, 'Keyboard', 'Guest', '116', 't', '', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:19', '77.162.30.112'),
(103, 'Left mouse', 'Guest', '', '', '<INPUT>\n.No class\n#plyr-volume-3030\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:33', '77.162.30.112'),
(104, 'Left mouse', 'Guest', '', '', '<INPUT>\n.No class\n#plyr-volume-3030\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:35', '77.162.30.112'),
(105, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.button\n#No ID\n{Camera 2}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:37', '77.162.30.112'),
(106, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.button\n#No ID\n{Camera 1}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 20:58:41', '77.162.30.112'),
(107, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/teams', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:58:57', '217.120.131.230'),
(108, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:59:47', '217.120.131.230'),
(109, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:59:48', '217.120.131.230'),
(110, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/moderator/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 20:59:49', '217.120.131.230'),
(111, 'Left mouse', 'feike', '', '', '<A>\n.No class\n#No ID\n{Moderator}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:00:02', '217.120.131.230'),
(112, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Livestream}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:38', '77.162.30.112'),
(113, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.button\n#No ID\n{Camera 2}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:41', '77.162.30.112'),
(114, 'Left mouse', 'Guest', '', '', '<DIV>\n.col-md-4 noPadding\n#No ID\n{NO-TEXT}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:41', '77.162.30.112'),
(115, 'Left mouse', 'Guest', '', '', '<BUTTON>\n.button\n#No ID\n{Camera 1}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:42', '77.162.30.112'),
(116, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/livestream', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:43', '77.162.30.112'),
(117, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '1920x1080', '2021-04-02 21:00:45', '77.162.30.112'),
(118, 'Left mouse', 'Guest', '', '', '<A>\n.No class\n#No ID\n{Home}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:04:49', '217.120.131.230'),
(119, 'Keyboard', 'Guest', '18', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:24', '217.120.131.230'),
(120, 'Left mouse', 'Guest', '', '', '<IMG>\n.img aos-init aos-animate\n#ESP\n{NO-TEXT}\n/tpl/assets/images/arduino_0.png', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:41', '217.120.131.230'),
(121, 'Keyboard', 'Guest', '17', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:42', '217.120.131.230'),
(122, 'Keyboard', 'Guest', '116', 't', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:42', '217.120.131.230'),
(123, 'Keyboard', 'Guest', '18', '', '', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:45', '217.120.131.230'),
(124, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:07:48', '217.120.131.230'),
(125, 'Left mouse', 'Guest', '', '', '<A>\n.alternative-button\n#No ID\n{Login}\nNo src', 'http://robotv.serverict.nl/start', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:11:21', '217.120.131.230'),
(126, 'Keyboard', 'feike', '18', '', '', 'http://robotv.serverict.nl/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '3840x2160', '2021-04-02 21:11:26', '217.120.131.230');

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
('RACE', '{\"RACE\":[{\"ready\":true,\"finished\":true,\"team\":\"BumbleBert\",\"time\":\"00:01.273\",\"matchId\":11}]}'),
('scheme', '{\"22\":[\"MAZE\",\"BumbleBert\"],\"23\":[\"MAZE\",\"BrokkoBot\"],\"24\":[\"MAZE\",\"ROBot Jetten\"],\"25\":[\"MAZE\",\"Dimitri\"],\"26\":[\"MAZE\",\"Wall-D\"],\"10\":[\"Steen papier schaar\",\"14:55\",\"Dimitri\",\"Wall-D\"],\"11\":[\"Steen papier schaar Knockout\",\"15:00\",\"ALL\"],\"12\":[\"RACE\",\"BumbleBert\"],\"13\":[\"RACE\",\"BrokkoBot\"],\"14\":[\"RACE\",\"ROBot Jetten\"],\"15\":[\"RACE\",\"Dimitri\"],\"16\":[\"RACE\",\"Wall-D\"],\"17\":[\"DRAW\",\"BumbleBert\"],\"18\":[\"DRAW\",\"BrokkoBot\"],\"19\":[\"DRAW\",\"ROBot Jetten\"],\"1\":[\"Steen papier schaar\",\"14:10\",\"BumbleBert\",\"BrokkoBot\"],\"2\":[\"Steen papier schaar\",\"14:15\",\"BumbleBert\",\"ROBot Jetten\"],\"3\":[\"Steen papier schaar\",\"14:20\",\"BumbleBert\",\"Dimitri\"],\"4\":[\"Steen papier schaar\",\"14:25\",\"BumbleBert\",\"Wall-D\"],\"5\":[\"Steen papier schaar\",\"14:30\",\"BrokkoBot\",\"ROBot Jetten\"],\"6\":[\"Steen papier schaar\",\"14:35\",\"BrokkoBot\",\"Dimitri\"],\"7\":[\"Steen papier schaar\",\"14:40\",\"BrokkoBot\",\"Wall-D\"],\"8\":[\"Steen papier schaar\",\"14:45\",\"ROBot Jetten\",\"Dimitri\"],\"9\":[\"Steen papier schaar\",\"14:50\",\"ROBot Jetten\",\"Wall-D\"],\"20\":[\"DRAW\",\"Dimitri\"],\"21\":[\"DRAW\",\"Wall-D\"]}');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `securityID` int NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Value` varchar(255) NOT NULL,
  `Created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`securityID`, `Type`, `Value`, `Created`) VALUES
(1, 'ban_ip', '217.120.131.230', '2021-04-02 19:41:45');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`TeamID`, `TeamDesc`, `RobotName`) VALUES
('1A', ' test test test', 'Bumble Bert'),
('1B', 'Lennart the 14th used to be Vladimir Putin\'s pet, because Putin was allergic to dog hair, he had his servants program a robot that would look like a dog. The programmers blew a bit, making it more of a human-like beast than a dog. Lennart helped Putin with sports, eating, sleeping and all kinds of other things that Putin could’nt do himself. Lennart also had some time off, in his spare time he played golf at his 12-hectare garden with a glass of wine and a Ralph Lauren polo with a vest sloping over his upper body. While playing golf, Lennart needed a good jam to vibe on, so he listened to the Dutch super talent Famke Louise. When Putin caught him listening to “Vroom”, he went completely crazy. Putin himself was not really into foreign music, especially this style. He preferred to listen to Tri Poloski, or EZ4ENCE himself. Because Putin got so angry, Lennart decided to leave. He picked up 1 of Putin\'s tanks and set course to the airfield, where he left for the Netherlands with an F16 Jet. His goal was to find a way into Famke\'s heart, but wanted to do it in a good way. To get her attention, he participates in Project Battlebots. He\'s here with the aim of beating anything and everything at any cost.\r\n', 'Lennart'),
('1C', 'Test', 'BrokkoBot'),
('1D', 'Waste Allocation Load Lifter D-class, voor vrienden Wall-D, is de relatief onbekende broer van de wereldberoemde Wall-E. Hoewel beide gemaakt zijn om afval samen te persen en op te ruimen, schopte Wall-D het nog niet zover als Wall-E, die inmiddels voor een zakenreis op het ruimteschip Axiom verblijft.&#13;&#10;Wall-D overleeft, net als Wall-E voor zijn skyrocketing carrière, door zichzelf te repareren met onderdelen van andere robots. Daarvoor doet hij regelmatig mee met robot contests, om andere robots te CRUSHEN en zo hun onderdelen mee te nemen, zodat hij weer een tijdje door kan.&#13;&#10;Wall-D heeft een team professionals ingehuurd om hem hierbij te helpen. Van manager tot planner: dit team laat Wall-D reiken tot ongekende hoogte. Hij wordt door hen dagelijks voorzien van updates en rapportages. Er worden ook prognoses en kansen opgesteld, die teruggekoppeld worden naar het hoofdkwartier.&#13;&#10;Maak dan ook plaats voor Wall-D, die ongekend gemotiveerd is om iedereen en alles op zijn pad te slopen om door te gaan met zijn roeping: afval opruimen.', 'Wall-D'),
('1E', 'ROBot Jetten, onze prachtige cyborg en de beste robot die er is. De andere A.I. zijn er absoluut niets bij. Zo snel, dat je hem gewoon niet kan volgen. De tekeningen zo precies, zoals je nog nooit hebt gekend. Steen, papier, schaar? Geen verliezen aan! Zo snel door de doolhof heen, dat je denkt dat er wordt valsgespeeld. Onderschat de kracht van ROBot Jetten niet! Zo is deze robot niet alleen een winnaar, maar ook een leider. Stem voor een nieuwe leider!\r\n<br><br>\r\nDeze beste en prachtige robot ooit is geprogrammeerd door: Erik Jan Zandberg, Feike Falkena, John Horstman, Peter Bos, Daisy Bruggeman, Tamme Tuncil en Simchaja Schonewille.\r\n', 'ROBot Jetten');

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
  `lastIp` varchar(255) NOT NULL DEFAULT 'Unknown',
  `loginKey` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `voornaam`, `achternaam`, `team`, `level`, `lang`, `lastIp`, `loginKey`, `deleted_at`) VALUES
(2, 'remco', '$2y$10$W.WN38E.s7H9Mnd.6/Ycou38cnweFtc04FCmB3GW9PZMlR8IH8Tdq', 'Remco', 'Hassing', '1C', 2, 'nl', '77.162.30.112', 'MTYxNzM4OTQ4Nw==', NULL),
(5, 'feike', '$2y$10$7XxAsFhhxo5eQFnyFmRThO6pOLZCIPy/KJs7Qbrx.jEr2VklCdajm', 'Feike', 'Falkena', '1E', 2, 'nl', '217.120.131.230', 'MTYxNzM5MDY4NQ==', NULL),
(6, 'Kevin', '$2y$10$ymkwV39h8adBsp9vxRaLDesOoEaaNiFj8VE3XOH5vTCbpQ9L/6U4e', 'Kevin', 'Smulders', '1B', 2, 'nl', '', '', NULL),
(7, 'moderator2', '$2y$10$YqXOCGfwZE19V0uplaswsuNBjBC9vyDcrPtNTEh5a2qB.cQRICCGq', 'Moderator', '2', NULL, 2, 'nl', '', '', NULL),
(8, 'moderator3', '$2y$10$xkyxTojp2J.czTS.EEvOuu3GOhe8NMEbv070IILR3pKIMtsD7ww4.', 'Moderator', '3', NULL, 2, 'nl', '', '', NULL),
(9, 'teama@student.nhlstenden.com', '$2y$10$ueBrdjFSGbeUVgLSLVw/auMbGgAJczwEW/ybKQ6sgQYb75yN8hK7q', 'Team', 'A', '1A', 1, 'nl', '', '', NULL),
(10, 'Kevin@student.nhlstenden.com', '$2y$10$ymkwV39h8adBsp9vxRaLDesOoEaaNiFj8VE3XOH5vTCbpQ9L/6U4e', 'Team', 'B', '1B', 1, 'nl', '', '', NULL),
(11, 'teamc@student.nhlstenden.com', '$2y$10$0FxUwpnZrR68/JcWnZNgre5KIm38Z7mJtHlg.UJbeNtlOccDM7FOu', 'Team', 'C', '1C', 1, 'nl', '', '', NULL),
(12, 'teamd@student.nhlstenden.com', '$2y$10$cbBZ87O3v9OiYcWO.ff09upnpNwkmzmTIUXtt1/1M8Arp2e8hMdMK', 'Team', 'D', '1D', 1, 'nl', '', '', NULL),
(13, 'teame@student.nhlstenden.com', '$2y$10$ZFPyM6donmCy/pgJFbUgbOL9kUV8MfWiErdD5uV8glQ/g7Wve6KWG', 'Team', 'E', '1E', 1, 'nl', '', '', NULL),
(14, 'tim.aalders@student.nhlstenden.com', '$2y$10$7Aq4zOawrUvMsX9ILTd8M.iKNSJ6Fkp8iU6PW3QRZXgXGCzXW/O0C', 'Tim', 'A', NULL, 0, 'nl', '', '', NULL),
(15, 'talip.korkut@student.nhlstenden.com', '$2y$10$/IK5BuSShX0zWM901y8lCON2E7CUe6CUnqq6e70QsyRGsKGVEE1Ku', 'Talip', 'Korkut', NULL, 0, 'nl', '', '', NULL),
(16, 'nick.wind@student.nhlstenden.com', '$2y$10$dzmmV0qBa0LWYFRqEHmeZe.atc4vEXe0uvWExZknbh7SW7TpeAAdi', 'Nick', 'W', NULL, 0, 'nl', '', '', NULL),
(17, 'tamaraK@student.nhlstenden.com', '$2y$10$f3v.mcNFseuqwRpSBgc4qeRm4KrOyj8rGdHGuH2bAx/ZCMEHZYSfK', 'Tamara', 'K', NULL, 0, 'nl', '', '', NULL),
(18, 'hylke.sijbesma@student.nhlstenden.com', '$2y$10$O/jTvKPizJQSlWIYFJsUGuNtdFl7mPBy9PPpgOaLGeVGyiAUx3KLC', 'Hylke', 'Sybesma', NULL, 0, 'nl', '', '', NULL),
(19, 'michel.knotters@student.nhlstenden.com', '$2y$10$cWx3faXmleDfLXTNk4u.C.mlRDIbwi9kNX8UPKdzBk1O0kngAKQsm', 'Michel', 'Knotters', NULL, 0, 'nl', '', '', NULL),
(20, 'remco.van.oenen@student.nhlstenden.com', '$2y$10$lxeB.vILN0XQLcxNqLPHa.CcFIRhr25.CMBe/MfaCyk.nSU1n944G', 'Remco', 'van Oenen', NULL, 0, 'nl', '', '', NULL),
(21, 'esmee.kajuiter@student.nhlstenden.com', '$2y$10$T76FC20rAMKikvLmkzu92.xnxFYskRoL8yBl4GrNkrG4XXPpu0VQG', 'Esmee', 'Kajuiter', NULL, 0, 'nl', '', '', NULL),
(22, 'omer.avci1@student.nhlstenden.com', '$2y$10$CZl826J6aRpOYMwYQHkMM.Vh69wxo6cOTqvweDrTz3pcTfi8p/ZWC', 'Ömer', 'Avci', NULL, 0, 'nl', '', '', NULL),
(23, 'peter.bos1@student.nhlstenden.com', '$2y$10$cwR0b5PdhFK6g0BwsnAQLue2A43gC/zJdHusr59euE9OCBmfe31NC', 'Peter', 'Bos', NULL, 0, 'nl', '', '', NULL),
(24, 'roan.meijer@student.nhlstenden.com', '$2y$10$aFdX5n0CC7JeaJNalsZbFOQKeFfTrNWpUo0712lNog.loymx.u5cS', 'Roan', 'Meijer', NULL, 0, 'nl', '', '', NULL),
(25, 'anja.ubbens@nhlstenden.com', '$2y$10$RDoaTuw73gIzBdzJ1LaG7.e5T4tfScLrnLcqvVL7C57snuVyxIfgW', 'A', 'U', NULL, 0, 'nl', '', '', NULL),
(27, 'coen.dokter1@student.nhlstenden.com', '$2y$10$x98zuIO.VPMyzXkeLduD4.Tm1DoDTpInyy9.IokjA8DgbOfUdA4be', 'C', 'D', NULL, 0, 'nl', '', '', NULL),
(28, 'gerjan.van.oenen@nhlstenden.com', '$2y$10$Bd9UBd76ekpbSRYHlo9MreR.Pf5GXczuYMuoHRK.b8JNNK7r83dLm', 'Gerjan', 'van Oenen', NULL, 0, 'nl', '', '', NULL),
(29, 'jan.doornbos@nhlstenden.com', '$2y$10$5aobwE8kz7Rbks7r0L/LDO2lfFyPmtG0YBZOPJrFvJGqenDCFPXbu', 'Jan', 'Doornbos', NULL, 0, 'nl', '', '', NULL),
(30, 'daisy.bruggeman@student.nhlstenden.com', '$2y$10$zfCFwqodyF/WLUUMqmv8BunloFuupAtsKGPNj8tZxvt6dFd3o/P.K', 'Daisy', 'Bruggeman', NULL, 0, 'nl', '', '', NULL),
(32, 'justin.heijne@student.nhlstenden.com', '$2y$10$KT81em74WfDEyumUI44/MuV8v2hl9RsdBiHrY4KzErlKJBXT4VfNu', 'Justin', 'Heijne', NULL, 0, 'nl', '', '', NULL),
(33, 'lucas.haijtink@student.nhlstenden.com', '$2y$10$.qRA9UFCI5JlwU1S0t2fLOdfO.XhDR8J.DD4e2H2dqPF5jwA.hCkO', 'Lucas', 'Haijtink', NULL, 0, 'nl', '', '', NULL),
(34, 'cecile.richetti@student.nhlstenden.com', '$2y$10$szfPnwfv3xqcP.gl9/7Dv.9lgKr7efes/gdIRXarjn4PcxlKaPpiC', 'Cecile', 'Richetti', NULL, 0, 'nl', '', '', NULL);

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
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`securityID`);

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
  MODIFY `ActionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `php`
--
ALTER TABLE `php`
  MODIFY `ErrorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `securityID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
