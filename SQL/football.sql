-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2025 at 03:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football`
--

-- --------------------------------------------------------

--
-- Table structure for table `fans`
--

CREATE TABLE `fans` (
  `fan_id` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `football_team` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `fans`
--

INSERT INTO `fans` (`fan_id`, `first_name`, `last_name`, `football_team`) VALUES
(1, 'Diego', 'Fernández', 'RC Deportivo de La Coruña'),
(2, 'María', 'Gómez', 'RC Celta de Vigo'),
(3, 'Xoán', 'Rodríguez', 'CD Lugo'),
(4, 'Lucía', 'Pérez', 'Pontevedra CF'),
(5, 'Andrés', 'Vázquez', 'Racing de Ferrol'),
(6, 'Noa', 'Castro', 'Ourense CF'),
(7, 'Manuel', 'Domínguez', 'Coruxo FC'),
(8, 'Carmen', 'Sánchez', 'SD Compostela'),
(9, 'Iván', 'López', 'RC Deportivo de La Coruña'),
(10, 'Paula', 'Martínez', 'RC Celta de Vigo');

-- --------------------------------------------------------

--
-- Table structure for table `top_teams`
--

CREATE TABLE `top_teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(65) NOT NULL,
  `members_count` int(11) NOT NULL,
  `locality` varchar(65) NOT NULL,
  `category` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `top_teams`
--

INSERT INTO `top_teams` (`team_id`, `team_name`, `members_count`, `locality`, `category`) VALUES
(1, 'RC Deportivo de La Coruña', 23000, 'A Coruña', 'Primera Federación'),
(2, 'RC Celta de Vigo', 22000, 'Vigo', 'LaLiga EA Sports'),
(3, 'CD Lugo', 5000, 'Lugo', 'Primera Federación'),
(5, 'Racing de Ferrol', 6000, 'Ferrol', 'LaLiga Hypermotion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fans`
--
ALTER TABLE `fans`
  ADD PRIMARY KEY (`fan_id`);

--
-- Indexes for table `top_teams`
--
ALTER TABLE `top_teams`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fans`
--
ALTER TABLE `fans`
  MODIFY `fan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `top_teams`
--
ALTER TABLE `top_teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
