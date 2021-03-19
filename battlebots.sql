-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2021 at 04:37 PM
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
-- Table structure for table `eindscore`
--

CREATE TABLE `eindscore` (
  `game_id` int NOT NULL,
  `robot_id` int NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livedata`
--

CREATE TABLE `livedata` (
  `type` varchar(255) NOT NULL,
  `json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `robot`
--

CREATE TABLE `robot` (
  `robot_id` int NOT NULL,
  `robotnaam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speelschema`
--

CREATE TABLE `speelschema` (
  `speelschema_id` int NOT NULL,
  `spel_id` int NOT NULL,
  `tijd` time NOT NULL,
  `robot_1` int NOT NULL,
  `robot_2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spel`
--

CREATE TABLE `spel` (
  `spel_id` int NOT NULL,
  `spel_naam` varchar(255) NOT NULL,
  `uitleg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `team` varchar(10) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eindscore`
--
ALTER TABLE `eindscore`
  ADD PRIMARY KEY (`game_id`,`robot_id`),
  ADD KEY `fk_robot_id_idx` (`robot_id`);

--
-- Indexes for table `livedata`
--
ALTER TABLE `livedata`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `robot`
--
ALTER TABLE `robot`
  ADD PRIMARY KEY (`robot_id`,`robotnaam`);

--
-- Indexes for table `speelschema`
--
ALTER TABLE `speelschema`
  ADD PRIMARY KEY (`speelschema_id`,`spel_id`),
  ADD KEY `fk_speelschema_spel1_idx` (`spel_id`),
  ADD KEY `fk_speelschema_robot1_idx` (`robot_1`),
  ADD KEY `fk_speelschema_robot2_idx` (`robot_2`);

--
-- Indexes for table `spel`
--
ALTER TABLE `spel`
  ADD PRIMARY KEY (`spel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `robot`
--
ALTER TABLE `robot`
  MODIFY `robot_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speelschema`
--
ALTER TABLE `speelschema`
  MODIFY `speelschema_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eindscore`
--
ALTER TABLE `eindscore`
  ADD CONSTRAINT `fk_robot_id` FOREIGN KEY (`robot_id`) REFERENCES `robot` (`robot_id`);

--
-- Constraints for table `speelschema`
--
ALTER TABLE `speelschema`
  ADD CONSTRAINT `fk_speelschema_robot1` FOREIGN KEY (`robot_1`) REFERENCES `robot` (`robot_id`),
  ADD CONSTRAINT `fk_speelschema_robot2` FOREIGN KEY (`robot_2`) REFERENCES `robot` (`robot_id`),
  ADD CONSTRAINT `fk_speelschema_spel1` FOREIGN KEY (`spel_id`) REFERENCES `spel` (`spel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
