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
-- Database: `football5_tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `min_age` int(11) NOT NULL,
  `max_age` int(11) NOT NULL,
  `gender` enum('F','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `min_age`, `max_age`, `gender`) VALUES
(13, 'Women\'s A', 18, 30, 'F'),
(14, 'Women\'s B', 31, 45, 'F'),
(15, 'Women\'s Senior', 46, 60, 'F'),
(16, 'Men\'s A', 18, 30, 'M'),
(17, 'Men\'s B', 31, 45, 'M'),
(18, 'Men\'s Senior', 46, 60, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `enrollment_fee` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `date`, `enrollment_fee`, `category_id`, `participant_id`) VALUES
(1, '2025-06-01', 1, 13, 1),
(2, '2025-06-01', 0, 14, 2),
(3, '2025-06-02', 1, 15, 3),
(4, '2025-06-02', 1, 16, 4),
(5, '2025-06-03', 0, 17, 5),
(6, '2025-06-03', 1, 18, 6),
(7, '2025-06-04', 1, 13, 7),
(8, '2025-06-04', 0, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(75) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `first_name`, `last_name`, `dni`, `age`, `address`, `gender`, `phone`) VALUES
(1, 'Xoán', 'Fernández', '76543210A', 23, 'Rúa do Franco 12, Santiago de Compostela', 'M', '612111111'),
(2, 'María', 'López', '87654321B', 27, 'Rúa Real 45, A Coruña', 'F', '612222222'),
(3, 'Diego', 'Pérez', '98765432C', 21, 'Av. de Vigo 89, Pontevedra', 'M', '612333333'),
(4, 'Uxía', 'Rodríguez', '19283746D', 25, 'Rúa Urzáiz 101, Vigo', 'F', '612444444'),
(5, 'Manuel', 'Castro', '28374659E', 30, 'Rúa San Pedro 67, Lugo', 'M', '612555555'),
(6, 'Carmen', 'García', '37485926F', 22, 'Praza Maior 3, Ourense', 'F', '612666666'),
(7, 'Breogán', 'Vázquez', '48596273G', 28, 'Rúa da Raíña 14, Ferrol', 'M', '612777777'),
(8, 'Iría', 'Sánchez', '59627384H', 24, 'Rúa Nova 56, Santiago de Compostela', 'F', '612888888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
