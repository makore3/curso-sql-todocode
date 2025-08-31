-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2025 at 03:03 PM
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
-- Database: `joins`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `building` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `building`, `floor`) VALUES
(1, 'Human Resources', 'Building A', 2),
(2, 'Finance', 'Building A', 3),
(3, 'IT Support', 'Building B', 1),
(4, 'Marketing', 'Building B', 4),
(5, 'Sales', 'Building C', 5),
(6, 'Logistics', 'Building C', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `dni`, `department_id`, `salary`) VALUES
(100, 'John', 'Smith', '12345678A', 1, 2500),
(101, 'Emily', 'Johnson', '23456789B', 2, 2700),
(102, 'Michael', 'Williams', '34567890C', 3, 2600),
(103, 'Sarah', 'Brown', '45678901D', 4, 3000),
(104, 'David', 'Jones', '56789012E', 5, 2800),
(105, 'Laura', 'Garcia', '67890123F', 6, 3200),
(106, 'James', 'Miller', '78901234G', 1, 3100),
(107, 'Anna', 'Davis', '89012345H', 2, 2900),
(108, 'Robert', 'Martinez', '90123456I', 3, 3300),
(109, 'Sophia', 'Hernandez', '11223344J', 4, 3400),
(110, 'Daniel', 'Lopez', '22334455K', 5, 3500),
(111, 'Olivia', 'Gonzalez', '33445566L', 6, 3600),
(112, 'Matthew', 'Wilson', '44556677M', 1, 3700),
(113, 'Isabella', 'Anderson', '55667788N', 2, 3800),
(114, 'William', 'Thomas', '66778899O', 3, 3900),
(115, 'Mia', 'Taylor', '77889900P', 4, 4000),
(116, 'Christopher', 'Moore', '88990011Q', 5, 4100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
