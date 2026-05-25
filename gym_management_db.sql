-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2026 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `ApplicationID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Program_id` int(11) DEFAULT NULL,
  `ApplicationDate` int(8) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ApplicationID`, `FirstName`, `LastName`, `Program_id`, `ApplicationDate`, `Status`) VALUES
(1, 'Miko', 'Ocfemia', 2, 20260501, 'Approved'),
(2, 'Althea', 'Pura', 3, 20260505, 'Approved'),
(3, 'Trisha', 'Colina', 4, 20260510, 'Approved'),
(4, 'Wilfred', 'Mayor', 5, 20260512, 'Approved'),
(5, 'Mingyu', 'Kim', 6, 20260513, 'Approved'),
(6, 'Daniel', 'Llana', 7, 20260514, 'Approved'),
(7, 'Hans', 'Barruga', 8, 20260514, 'Approved'),
(8, 'Anne', 'Bea', 9, 20260514, 'Approved'),
(9, 'Elisha', 'Alcazar', 10, 20260514, 'Approved'),
(10, 'Leran', 'Mata', 11, 20260515, 'Approved'),
(11, 'Marcus', 'Santos', 12, 20260515, 'Approved'),
(12, 'Chloe', 'De Castro', 13, 20260515, 'Approved'),
(13, 'Gabriel', 'Reyes', 14, 20260515, 'Approved'),
(14, 'Sophia', 'Cruz', 15, 20260516, 'Approved'),
(15, 'Liam', 'Aquino', 1, 20260516, 'Approved'),
(16, 'Olivia', 'Bautista', 2, 20260516, 'Approved'),
(17, 'Ethan', 'Soriano', 3, 20260516, 'Approved'),
(18, 'Ava', 'Gonzales', 4, 20260517, 'Approved'),
(19, 'Noah', 'Villanueva', 5, 20260517, 'Approved'),
(20, 'Mia', 'Torres', 6, 20260517, 'Approved'),
(21, 'James', 'Dizon', 7, 20260518, 'Approved'),
(22, 'Isabella', 'Ramos', 8, 20260518, 'Approved'),
(23, 'Lucas', 'Mendoza', 9, 20260518, 'Approved'),
(24, 'Sofia', 'Santos', 10, 20260519, 'Approved'),
(25, 'Benjamin', 'Garcia', 11, 20260519, 'Approved'),
(26, 'Elijah', 'Flores', 12, 20260519, 'Approved'),
(27, 'Charlotte', 'Cruz', 13, 20260519, 'Approved'),
(28, 'Oliver', 'Pascual', 14, 20260519, 'Approved'),
(29, 'Amelia', 'Castillo', 15, 20260519, 'Approved'),
(30, 'William', 'Fernandez', 1, 20260519, 'Approved'),
(31, 'Alexander', 'Mercado', 2, 20260514, 'Approved'),
(32, 'Harper', 'Valenzuela', 3, 20260514, 'Approved'),
(33, 'Michael', 'Espiritu', 4, 20260514, 'Approved'),
(34, 'Evelyn', 'Santiago', 5, 20260514, 'Approved'),
(35, 'Daniel', 'Aquino', 6, 20260514, 'Approved'),
(36, 'Abigail', 'Del Rosario', 7, 20260514, 'Approved'),
(37, 'Henry', 'Tolentino', 8, 20260514, 'Approved'),
(38, 'Emily', 'Dela Cruz', 9, 20260514, 'Approved'),
(39, 'Sebastian', 'Manalo', 10, 20260514, 'Approved'),
(40, 'Elizabeth', 'Gomez', 11, 20260514, 'Approved'),
(41, 'Jack', 'Domingo', 12, 20260515, 'Approved'),
(42, 'Mila', 'Castro', 13, 20260515, 'Approved'),
(43, 'Samuel', 'Reyes', 14, 20260515, 'Approved'),
(44, 'Ella', 'Soriano', 15, 20260515, 'Approved'),
(45, 'David', 'Salazar', 1, 20260515, 'Approved'),
(46, 'Avery', 'Pineda', 2, 20260515, 'Approved'),
(47, 'Joseph', 'Villanueva', 3, 20260515, 'Approved'),
(48, 'Sofia', 'Dumandan', 4, 20260515, 'Approved'),
(49, 'Matthew', 'Agoncillo', 5, 20260515, 'Approved'),
(50, 'Camila', 'Buenaventura', 6, 20260515, 'Approved'),
(51, 'Owen', 'Corpuz', 7, 20260515, 'Approved'),
(52, 'Aria', 'Evangelista', 8, 20260515, 'Approved'),
(53, 'Jackson', 'Guerrero', 9, 20260515, 'Approved'),
(54, 'Scarlett', 'Ignacio', 10, 20260515, 'Approved'),
(55, 'Lucas', 'Laxamana', 11, 20260515, 'Approved'),
(56, 'Victoria', 'Magsaysay', 12, 20260515, 'Approved'),
(57, 'Levi', 'Navarro', 13, 20260515, 'Approved'),
(58, 'Madison', 'Ocampo', 14, 20260515, 'Approved'),
(59, 'Gabriel', 'Pascual', 15, 20260515, 'Approved'),
(60, 'Luna', 'Quinto', 1, 20260515, 'Approved'),
(61, 'Julian', 'Recto', 2, 20260516, 'Approved'),
(62, 'Grace', 'Samson', 3, 20260516, 'Approved'),
(63, 'Isaac', 'Tan', 4, 20260516, 'Approved'),
(64, 'Chloe', 'Urbano', 5, 20260516, 'Approved'),
(65, 'Jayden', 'Valdez', 6, 20260516, 'Approved'),
(66, 'Penelope', 'Yabut', 7, 20260516, 'Approved'),
(67, 'Anthony', 'Zorilla', 8, 20260516, 'Approved'),
(68, 'Layla', 'Alcantara', 9, 20260516, 'Approved'),
(69, 'Lincoln', 'Belmonte', 10, 20260516, 'Approved'),
(70, 'Riley', 'Cervantes', 11, 20260516, 'Approved'),
(71, 'Christopher', 'De Leon', 12, 20260516, 'Approved'),
(72, 'Zoey', 'Enriquez', 13, 20260516, 'Approved'),
(73, 'Joshua', 'Ferrer', 14, 20260516, 'Approved'),
(74, 'Nora', 'Guevarra', 15, 20260516, 'Approved'),
(75, 'Andrew', 'Hernandez', 1, 20260516, 'Approved'),
(76, 'Lily', 'Javier', 2, 20260516, 'Approved'),
(77, 'Nathan', 'Lagman', 3, 20260516, 'Approved'),
(78, 'Eleanor', 'Mendoza', 4, 20260516, 'Approved'),
(79, 'Ryan', 'Natividad', 5, 20260516, 'Approved'),
(80, 'Hannah', 'Ortega', 6, 20260516, 'Approved'),
(81, 'Adrian', 'Panganiban', 7, 20260517, 'Approved'),
(82, 'Lillian', 'Quisumbing', 8, 20260517, 'Approved'),
(83, 'Christian', 'Ramos', 9, 20260517, 'Approved'),
(84, 'Addison', 'Santos', 10, 20260517, 'Approved'),
(85, 'Benicio', 'Sison', 11, 20260517, 'Approved'),
(86, 'Aubrey', 'Talavera', 12, 20260517, 'Approved'),
(87, 'Dylan', 'Umali', 13, 20260517, 'Approved'),
(88, 'Ellie', 'Velasco', 14, 20260517, 'Approved'),
(89, 'Jace', 'Ventura', 15, 20260517, 'Approved'),
(90, 'Stella', 'Zamora', 1, 20260517, 'Approved'),
(91, 'Caleb', 'Abad', 2, 20260517, 'Approved'),
(92, 'Natalie', 'Basco', 3, 20260517, 'Approved'),
(93, 'Gavin', 'Cabral', 4, 20260517, 'Approved'),
(94, 'Leah', 'Dizon', 5, 20260517, 'Approved'),
(95, 'Maverick', 'Estacio', 6, 20260517, 'Approved'),
(96, 'Hazel', 'Fajardo', 7, 20260517, 'Approved'),
(97, 'Thomas', 'Galang', 8, 20260517, 'Approved'),
(98, 'Violet', 'Hizon', 9, 20260517, 'Approved'),
(99, 'Ian', 'Ilagan', 10, 20260517, 'Approved'),
(100, 'Aurora', 'Jose', 11, 20260517, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(20) NOT NULL,
  `member_id` int(20) DEFAULT NULL,
  `Date` int(20) DEFAULT NULL,
  `TimeIn` int(20) DEFAULT NULL,
  `TimeOut` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttendanceID`, `member_id`, `Date`, `TimeIn`, `TimeOut`) VALUES
(1, 1, 20260514, 6, 8),
(2, 2, 20260514, 7, 9),
(3, 3, 20260514, 8, 10),
(4, 4, 20260514, 9, 11),
(5, 5, 20260514, 15, 17),
(6, 6, 20260514, 16, 18),
(7, 7, 20260513, 8, 10),
(8, 8, 20260514, 17, 19),
(9, 9, 20260514, 18, 20),
(10, 10, 20260514, 19, 21),
(11, 11, 20260513, 9, 11),
(12, 12, 20260513, 14, 15),
(13, 13, 20260513, 17, 19),
(14, 14, 20260515, 6, 8),
(15, 15, 20260515, 7, 9),
(16, 16, 20260515, 8, 10),
(17, 17, 20260513, 18, 20),
(18, 18, 20260515, 10, 12),
(19, 19, 20260515, 13, 15),
(20, 20, 20260515, 14, 16),
(21, 21, 20260515, 15, 17),
(22, 22, 20260515, 16, 18),
(23, 23, 20260515, 17, 19),
(24, 24, 20260515, 18, 20),
(25, 25, 20260515, 19, 21),
(26, 26, 20260516, 6, 8),
(27, 27, 20260516, 7, 9),
(28, 28, 20260516, 8, 10),
(29, 29, 20260516, 9, 11),
(30, 30, 20260516, 10, 12),
(31, 31, 20260516, 13, 15),
(32, 32, 20260516, 14, 16),
(33, 33, 20260516, 15, 17),
(34, 34, 20260516, 16, 18),
(35, 35, 20260516, 17, 19),
(36, 36, 20260516, 18, 20),
(37, 37, 20260516, 19, 21),
(38, 38, 20260516, 8, 10),
(39, 39, 20260516, 9, 11),
(40, 40, 20260516, 10, 12),
(41, 41, 20260516, 14, 16),
(42, 42, 20260516, 15, 17),
(43, 43, 20260516, 16, 18),
(44, 44, 20260516, 17, 19),
(45, 45, 20260516, 18, 20),
(46, 46, 20260517, 6, 8),
(47, 47, 20260517, 7, 9),
(48, 48, 20260517, 8, 10),
(49, 49, 20260517, 9, 11),
(50, 50, 20260517, 13, 15),
(51, 51, 20260517, 14, 16),
(52, 52, 20260517, 15, 17),
(53, 53, 20260517, 16, 18),
(54, 54, 20260517, 17, 19),
(55, 55, 20260517, 18, 20),
(56, 56, 20260517, 19, 21),
(57, 57, 20260517, 7, 9),
(58, 58, 20260517, 8, 10),
(59, 59, 20260517, 9, 11),
(60, 60, 20260517, 10, 12),
(61, 61, 20260517, 14, 16),
(62, 62, 20260517, 15, 17),
(63, 63, 20260517, 16, 18),
(64, 64, 20260517, 17, 19),
(65, 65, 20260517, 18, 20),
(66, 66, 20260518, 6, 8),
(67, 67, 20260518, 7, 9),
(68, 68, 20260518, 8, 10),
(69, 69, 20260518, 9, 11),
(70, 70, 20260518, 10, 12),
(71, 71, 20260518, 13, 15),
(72, 72, 20260518, 14, 16),
(73, 73, 20260518, 15, 17),
(74, 74, 20260518, 16, 18),
(75, 75, 20260518, 17, 19),
(76, 76, 20260518, 18, 20),
(77, 77, 20260518, 19, 21),
(78, 78, 20260518, 8, 10),
(79, 79, 20260518, 9, 11),
(80, 80, 20260518, 10, 12),
(81, 81, 20260518, 14, 16),
(82, 82, 20260518, 15, 17),
(83, 83, 20260518, 16, 18),
(84, 84, 20260518, 17, 19),
(85, 85, 20260518, 18, 20),
(86, 86, 20260519, 6, 8),
(87, 87, 20260519, 7, 9),
(88, 88, 20260519, 8, 10),
(89, 89, 20260519, 9, 11),
(90, 90, 20260519, 13, 15),
(91, 91, 20260519, 14, 16),
(92, 92, 20260519, 15, 17),
(93, 93, 20260519, 16, 18),
(94, 94, 20260519, 17, 19),
(95, 95, 20260519, 18, 20),
(96, 96, 20260519, 19, 21),
(97, 97, 20260519, 8, 10),
(98, 98, 20260519, 9, 11),
(99, 99, 20260519, 14, 16),
(100, 100, 20260519, 15, 17),
(101, 1, 20260520, 6, 8),
(102, 1, 20260521, 6, 8),
(103, 1, 20260522, 7, 9),
(104, 1, 20260523, 6, 8),
(105, 2, 20260520, 7, 9),
(106, 2, 20260522, 7, 9),
(107, 2, 20260523, 8, 10),
(108, 3, 20260520, 8, 10),
(109, 3, 20260521, 12, 14),
(110, 3, 20260523, 8, 10),
(111, 5, 20260520, 15, 17),
(112, 5, 20260522, 16, 18),
(113, 7, 20260514, 8, 10),
(114, 7, 20260515, 9, 11),
(115, 7, 20260520, 8, 10),
(116, 7, 20260521, 8, 10),
(117, 7, 20260522, 9, 11),
(118, 7, 20260523, 8, 10),
(119, 11, 20260515, 14, 16),
(120, 11, 20260520, 9, 11),
(121, 11, 20260522, 10, 12),
(122, 12, 20260517, 10, 12),
(123, 12, 20260521, 14, 15),
(124, 12, 20260523, 15, 17),
(125, 4, 20260520, 9, 11),
(126, 4, 20260522, 10, 12),
(127, 6, 20260519, 16, 18),
(128, 6, 20260521, 17, 19),
(129, 6, 20260524, 6, 8),
(130, 8, 20260518, 17, 19),
(131, 8, 20260522, 18, 20),
(132, 9, 20260516, 18, 20),
(133, 9, 20260520, 19, 21),
(134, 10, 20260517, 19, 21),
(135, 10, 20260523, 20, 22),
(136, 13, 20260515, 17, 19),
(137, 13, 20260522, 17, 19),
(138, 14, 20260518, 6, 8),
(139, 14, 20260522, 7, 9),
(140, 20, 20260519, 14, 16),
(141, 20, 20260524, 15, 17),
(142, 35, 20260520, 17, 19),
(143, 35, 20260522, 17, 19),
(144, 50, 20260521, 13, 15),
(145, 50, 20260523, 14, 16),
(146, 88, 20260522, 8, 10),
(147, 88, 20260524, 9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contact`
--

CREATE TABLE `emergency_contact` (
  `ContactID` int(11) DEFAULT NULL,
  `Member_id` int(11) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Relationship` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergency_contact`
--

INSERT INTO `emergency_contact` (`ContactID`, `Member_id`, `ContactName`, `Relationship`, `Phone`) VALUES
(1, 7, 'Elena Ocfemia', 'Mother', '09123456789'),
(2, 11, 'Mark Pura', 'Father', '09234567890'),
(3, 12, 'Santi Colina', 'Brother', '09345678901'),
(4, 13, 'Liza Mayor', 'Spouse', '09456789012'),
(5, 17, 'Ji-soo Kim', 'Sister', '09567890123'),
(6, 1, 'Roberto Llana', 'Father', '09171234567'),
(7, 2, 'Clara Barruga', 'Mother', '09182345678'),
(8, 3, 'Teresa Bea', 'Mother', '09193456789'),
(9, 4, 'Grace Alcazar', 'Mother', '09204567890'),
(10, 5, 'Danilo Mata', 'Father', '09215678901'),
(11, 6, 'Arthur Santos', 'Father', '09226789012'),
(12, 8, 'Noel De Castro', 'Father', '09237890123'),
(13, 9, 'Elena Reyes', 'Mother', '09248901234'),
(14, 10, 'Maria Cruz', 'Mother', '09259012345'),
(15, 14, 'Freddie Aquino', 'Father', '09260123456'),
(16, 15, 'Lydia Bautista', 'Mother', '09271234567'),
(17, 16, 'George Soriano', 'Father', '09282345678'),
(18, 18, 'Patricia Gonzales', 'Mother', '09293456789'),
(19, 19, 'Ramon Villanueva', 'Father', '09304567890'),
(20, 20, 'Sylvia Torres', 'Mother', '09315678901'),
(21, 21, 'Jaime Dizon', 'Father', '09326789012'),
(22, 22, 'Alicia Ramos', 'Mother', '09337890123'),
(23, 23, 'Rodolfo Mendoza', 'Father', '09348901234'),
(24, 24, 'Imelda Santos', 'Mother', '09359012345'),
(25, 25, 'Arthur Garcia', 'Father', '09360123456'),
(26, 26, 'Eduardo Flores', 'Father', '09371234567'),
(27, 27, 'Christina Cruz', 'Mother', '09382345678'),
(28, 28, 'Manuel Pascual', 'Father', '09393456789'),
(29, 29, 'Leonora Castillo', 'Mother', '09404567890'),
(30, 30, 'Ricardo Fernandez', 'Father', '09415678901'),
(31, 31, 'Rolando Mercado', 'Father', '09151234567'),
(32, 32, 'Belen Valenzuela', 'Mother', '09162345678'),
(33, 33, 'Nestor Espiritu', 'Father', '09173456789'),
(34, 34, 'Fe Santiago', 'Mother', '09264567890'),
(35, 35, 'Tomas Aquino', 'Father', '09275678901'),
(36, 36, 'Corazon Del Rosario', 'Mother', '09286789012'),
(37, 37, 'Mariano Tolentino', 'Father', '09297890123'),
(38, 38, 'Divina Dela Cruz', 'Mother', '09358901234'),
(39, 39, 'Arnel Manalo', 'Father', '09369012345'),
(40, 40, 'Lourdes Gomez', 'Mother', '09470123456'),
(41, 41, 'Gregorio Domingo', 'Father', '09481234567'),
(42, 42, 'Carmela Castro', 'Mother', '09492345678'),
(43, 43, 'Reynaldo Reyes', 'Father', '09553456789'),
(44, 44, 'Glenda Soriano', 'Mother', '09564567890'),
(45, 45, 'Edgardo Salazar', 'Father', '09655678901'),
(46, 46, 'Jovita Pineda', 'Mother', '09666789012'),
(47, 47, 'Orlando Villanueva', 'Father', '09757890123'),
(48, 48, 'Rosario Dumandan', 'Mother', '09768901234'),
(49, 49, 'Ramoncito Agoncillo', 'Father', '09779012345'),
(50, 50, 'Imelda Buenaventura', 'Mother', '09850123456'),
(51, 51, 'Dante Corpuz', 'Father', '09861234567'),
(52, 52, 'Cecilia Evangelista', 'Mother', '09872345678'),
(53, 53, 'Wilfredo Guerrero', 'Father', '09953456789'),
(54, 54, 'Evelyn Ignacio', 'Mother', '09964567890'),
(55, 55, 'Benito Laxamana', 'Father', '09170012345'),
(56, 56, 'Aurora Magsaysay', 'Mother', '09180023456'),
(57, 57, 'Ernesto Navarro', 'Father', '09190034567'),
(58, 58, 'Zenaida Ocampo', 'Mother', '09200045678'),
(59, 59, 'Ferdinand Pascual', 'Father', '09210056789'),
(60, 60, 'Norma Quinto', 'Mother', '09220067890'),
(61, 61, 'Alfonso Recto', 'Father', '09230078901'),
(62, 62, 'Josefina Samson', 'Mother', '09240089012'),
(63, 63, 'Felipe Tan', 'Father', '09250090123'),
(64, 64, 'Priscilla Urbano', 'Mother', '09260001234'),
(65, 65, 'Rogelio Valdez', 'Father', '09270002345'),
(66, 66, 'Milagros Yabut', 'Mother', '09280003456'),
(67, 67, 'Arturo Zorilla', 'Father', '09290004567'),
(68, 68, 'Lina Alcantara', 'Mother', '09350005678'),
(69, 69, 'Cesar Belmonte', 'Father', '09360006789'),
(70, 70, 'Esperanza Cervantes', 'Mother', '09370007890'),
(71, 71, 'Danilo De Leon', 'Father', '09380008901'),
(72, 72, 'Rosalinda Enriquez', 'Mother', '09390009012'),
(73, 73, 'Jaime Ferrer', 'Father', '09470001234'),
(74, 74, 'Angelita Guevarra', 'Mother', '09480002345'),
(75, 75, 'Rodolfo Hernandez', 'Father', '09490003456'),
(76, 76, 'Teresa Javier', 'Mother', '09550004567'),
(77, 77, 'Gilbert Lagman', 'Father', '09560005678'),
(78, 78, 'Elena Mendoza', 'Mother', '09650006789'),
(79, 79, 'Nicanor Natividad', 'Father', '09660007890'),
(80, 80, 'Lydia Ortega', 'Mother', '09750008901'),
(81, 81, 'Vicente Panganiban', 'Father', '09760009012'),
(82, 82, 'Sonia Quisumbing', 'Mother', '09770001234'),
(83, 83, 'Reynaldo Ramos', 'Father', '09850002345'),
(84, 84, 'Gina Santos', 'Mother', '09860003456'),
(85, 85, 'Mario Sison', 'Father', '09870004567'),
(86, 86, 'Myrna Talavera', 'Mother', '09950005678'),
(87, 87, 'Efren Umali', 'Father', '09960006789'),
(88, 88, 'Perla Velasco', 'Mother', '09171112345'),
(89, 89, 'Hector Ventura', 'Father', '09181112346'),
(90, 90, 'Ruby Zamora', 'Mother', '09191112347'),
(91, 91, 'Alfredo Abad', 'Father', '09201112348'),
(92, 92, 'Clara Basco', 'Mother', '09211112349'),
(93, 93, 'Dominador Cabral', 'Father', '09221112350'),
(94, 94, 'Estrella Dizon', 'Mother', '09231112351'),
(95, 95, 'Guillermo Estacio', 'Father', '09241112352'),
(96, 96, 'Leticia Fajardo', 'Mother', '09251112353'),
(97, 97, 'Honorio Galang', 'Father', '09261112354'),
(98, 98, 'Raquel Hizon', 'Mother', '09271112355'),
(99, 99, 'Isagani Ilagan', 'Father', '09281112356'),
(100, 100, 'Socorro Jose', 'Mother', '09291112357'),
(1, 7, 'Elena Ocfemia', 'Mother', '09123456789'),
(2, 11, 'Mark Pura', 'Father', '09234567890'),
(3, 12, 'Santi Colina', 'Brother', '09345678901'),
(4, 13, 'Liza Mayor', 'Spouse', '09456789012'),
(5, 17, 'Ji-soo Kim', 'Sister', '09567890123'),
(6, 1, 'Roberto Llana', 'Father', '09171234567'),
(7, 2, 'Clara Barruga', 'Mother', '09182345678'),
(8, 3, 'Teresa Bea', 'Mother', '09193456789'),
(9, 4, 'Grace Alcazar', 'Mother', '09204567890'),
(10, 5, 'Danilo Mata', 'Father', '09215678901'),
(11, 6, 'Arthur Santos', 'Father', '09226789012'),
(12, 8, 'Noel De Castro', 'Father', '09237890123'),
(13, 9, 'Elena Reyes', 'Mother', '09248901234'),
(14, 10, 'Maria Cruz', 'Mother', '09259012345'),
(15, 14, 'Freddie Aquino', 'Father', '09260123456'),
(16, 15, 'Lydia Bautista', 'Mother', '09271234567'),
(17, 16, 'George Soriano', 'Father', '09282345678'),
(18, 18, 'Patricia Gonzales', 'Mother', '09293456789'),
(19, 19, 'Ramon Villanueva', 'Father', '09304567890'),
(20, 20, 'Sylvia Torres', 'Mother', '09315678901'),
(21, 21, 'Jaime Dizon', 'Father', '09326789012'),
(22, 22, 'Alicia Ramos', 'Mother', '09337890123'),
(23, 23, 'Rodolfo Mendoza', 'Father', '09348901234'),
(24, 24, 'Imelda Santos', 'Mother', '09359012345'),
(25, 25, 'Arthur Garcia', 'Father', '09360123456'),
(26, 26, 'Eduardo Flores', 'Father', '09371234567'),
(27, 27, 'Christina Cruz', 'Mother', '09382345678'),
(28, 28, 'Manuel Pascual', 'Father', '09393456789'),
(29, 29, 'Leonora Castillo', 'Mother', '09404567890'),
(30, 30, 'Ricardo Fernandez', 'Father', '09415678901'),
(31, 31, 'Rolando Mercado', 'Father', '09151234567'),
(32, 32, 'Belen Valenzuela', 'Mother', '09162345678'),
(33, 33, 'Nestor Espiritu', 'Father', '09173456789'),
(34, 34, 'Fe Santiago', 'Mother', '09264567890'),
(35, 35, 'Tomas Aquino', 'Father', '09275678901'),
(36, 36, 'Corazon Del Rosario', 'Mother', '09286789012'),
(37, 37, 'Mariano Tolentino', 'Father', '09297890123'),
(38, 38, 'Divina Dela Cruz', 'Mother', '09358901234'),
(39, 39, 'Arnel Manalo', 'Father', '09369012345'),
(40, 40, 'Lourdes Gomez', 'Mother', '09470123456'),
(41, 41, 'Gregorio Domingo', 'Father', '09481234567'),
(42, 42, 'Carmela Castro', 'Mother', '09492345678'),
(43, 43, 'Reynaldo Reyes', 'Father', '09553456789'),
(44, 44, 'Glenda Soriano', 'Mother', '09564567890'),
(45, 45, 'Edgardo Salazar', 'Father', '09655678901'),
(46, 46, 'Jovita Pineda', 'Mother', '09666789012'),
(47, 47, 'Orlando Villanueva', 'Father', '09757890123'),
(48, 48, 'Rosario Dumandan', 'Mother', '09768901234'),
(49, 49, 'Ramoncito Agoncillo', 'Father', '09779012345'),
(50, 50, 'Imelda Buenaventura', 'Mother', '09850123456'),
(51, 51, 'Dante Corpuz', 'Father', '09861234567'),
(52, 52, 'Cecilia Evangelista', 'Mother', '09872345678'),
(53, 53, 'Wilfredo Guerrero', 'Father', '09953456789'),
(54, 54, 'Evelyn Ignacio', 'Mother', '09964567890'),
(55, 55, 'Benito Laxamana', 'Father', '09170012345'),
(56, 56, 'Aurora Magsaysay', 'Mother', '09180023456'),
(57, 57, 'Ernesto Navarro', 'Father', '09190034567'),
(58, 58, 'Zenaida Ocampo', 'Mother', '09200045678'),
(59, 59, 'Ferdinand Pascual', 'Father', '09210056789'),
(60, 60, 'Norma Quinto', 'Mother', '09220067890'),
(61, 61, 'Alfonso Recto', 'Father', '09230078901'),
(62, 62, 'Josefina Samson', 'Mother', '09240089012'),
(63, 63, 'Felipe Tan', 'Father', '09250090123'),
(64, 64, 'Priscilla Urbano', 'Mother', '09260001234'),
(65, 65, 'Rogelio Valdez', 'Father', '09270002345'),
(66, 66, 'Milagros Yabut', 'Mother', '09280003456'),
(67, 67, 'Arturo Zorilla', 'Father', '09290004567'),
(68, 68, 'Lina Alcantara', 'Mother', '09350005678'),
(69, 69, 'Cesar Belmonte', 'Father', '09360006789'),
(70, 70, 'Esperanza Cervantes', 'Mother', '09370007890'),
(71, 71, 'Danilo De Leon', 'Father', '09380008901'),
(72, 72, 'Rosalinda Enriquez', 'Mother', '09390009012'),
(73, 73, 'Jaime Ferrer', 'Father', '09470001234'),
(74, 74, 'Angelita Guevarra', 'Mother', '09480002345'),
(75, 75, 'Rodolfo Hernandez', 'Father', '09490003456'),
(76, 76, 'Teresa Javier', 'Mother', '09550004567'),
(77, 77, 'Gilbert Lagman', 'Father', '09560005678'),
(78, 78, 'Elena Mendoza', 'Mother', '09650006789'),
(79, 79, 'Nicanor Natividad', 'Father', '09660007890'),
(80, 80, 'Lydia Ortega', 'Mother', '09750008901'),
(81, 81, 'Vicente Panganiban', 'Father', '09760009012'),
(82, 82, 'Sonia Quisumbing', 'Mother', '09770001234'),
(83, 83, 'Reynaldo Ramos', 'Father', '09850002345'),
(84, 84, 'Gina Santos', 'Mother', '09860003456'),
(85, 85, 'Mario Sison', 'Father', '09870004567'),
(86, 86, 'Myrna Talavera', 'Mother', '09950005678'),
(87, 87, 'Efren Umali', 'Father', '09960006789'),
(88, 88, 'Perla Velasco', 'Mother', '09171112345'),
(89, 89, 'Hector Ventura', 'Father', '09181112346'),
(90, 90, 'Ruby Zamora', 'Mother', '09191112347'),
(91, 91, 'Alfredo Abad', 'Father', '09201112348'),
(92, 92, 'Clara Basco', 'Mother', '09211112349'),
(93, 93, 'Dominador Cabral', 'Father', '09221112350'),
(94, 94, 'Estrella Dizon', 'Mother', '09231112351'),
(95, 95, 'Guillermo Estacio', 'Father', '09241112352'),
(96, 96, 'Leticia Fajardo', 'Mother', '09251112353'),
(97, 97, 'Honorio Galang', 'Father', '09261112354'),
(98, 98, 'Raquel Hizon', 'Mother', '09271112355'),
(99, 99, 'Isagani Ilagan', 'Father', '09281112356'),
(100, 100, 'Socorro Jose', 'Mother', '09291112357'),
(1, 7, 'Elena Ocfemia', 'Mother', '09123456789'),
(2, 11, 'Mark Pura', 'Father', '09234567890'),
(3, 12, 'Santi Colina', 'Brother', '09345678901'),
(4, 13, 'Liza Mayor', 'Spouse', '09456789012'),
(5, 17, 'Ji-soo Kim', 'Sister', '09567890123'),
(6, 1, 'Roberto Llana', 'Father', '09171234567'),
(7, 2, 'Clara Barruga', 'Mother', '09182345678'),
(8, 3, 'Teresa Bea', 'Mother', '09193456789'),
(9, 4, 'Grace Alcazar', 'Mother', '09204567890'),
(10, 5, 'Danilo Mata', 'Father', '09215678901'),
(11, 6, 'Arthur Santos', 'Father', '09226789012'),
(12, 8, 'Noel De Castro', 'Father', '09237890123'),
(13, 9, 'Elena Reyes', 'Mother', '09248901234'),
(14, 10, 'Maria Cruz', 'Mother', '09259012345'),
(15, 14, 'Freddie Aquino', 'Father', '09260123456'),
(16, 15, 'Lydia Bautista', 'Mother', '09271234567'),
(17, 16, 'George Soriano', 'Father', '09282345678'),
(18, 18, 'Patricia Gonzales', 'Mother', '09293456789'),
(19, 19, 'Ramon Villanueva', 'Father', '09304567890'),
(20, 20, 'Sylvia Torres', 'Mother', '09315678901'),
(21, 21, 'Jaime Dizon', 'Father', '09326789012'),
(22, 22, 'Alicia Ramos', 'Mother', '09337890123'),
(23, 23, 'Rodolfo Mendoza', 'Father', '09348901234'),
(24, 24, 'Imelda Santos', 'Mother', '09359012345'),
(25, 25, 'Arthur Garcia', 'Father', '09360123456'),
(26, 26, 'Eduardo Flores', 'Father', '09371234567'),
(27, 27, 'Christina Cruz', 'Mother', '09382345678'),
(28, 28, 'Manuel Pascual', 'Father', '09393456789'),
(29, 29, 'Leonora Castillo', 'Mother', '09404567890'),
(30, 30, 'Ricardo Fernandez', 'Father', '09415678901'),
(31, 31, 'Rolando Mercado', 'Father', '09151234567'),
(32, 32, 'Belen Valenzuela', 'Mother', '09162345678'),
(33, 33, 'Nestor Espiritu', 'Father', '09173456789'),
(34, 34, 'Fe Santiago', 'Mother', '09264567890'),
(35, 35, 'Tomas Aquino', 'Father', '09275678901'),
(36, 36, 'Corazon Del Rosario', 'Mother', '09286789012'),
(37, 37, 'Mariano Tolentino', 'Father', '09297890123'),
(38, 38, 'Divina Dela Cruz', 'Mother', '09358901234'),
(39, 39, 'Arnel Manalo', 'Father', '09369012345'),
(40, 40, 'Lourdes Gomez', 'Mother', '09470123456'),
(41, 41, 'Gregorio Domingo', 'Father', '09481234567'),
(42, 42, 'Carmela Castro', 'Mother', '09492345678'),
(43, 43, 'Reynaldo Reyes', 'Father', '09553456789'),
(44, 44, 'Glenda Soriano', 'Mother', '09564567890'),
(45, 45, 'Edgardo Salazar', 'Father', '09655678901'),
(46, 46, 'Jovita Pineda', 'Mother', '09666789012'),
(47, 47, 'Orlando Villanueva', 'Father', '09757890123'),
(48, 48, 'Rosario Dumandan', 'Mother', '09768901234'),
(49, 49, 'Ramoncito Agoncillo', 'Father', '09779012345'),
(50, 50, 'Imelda Buenaventura', 'Mother', '09850123456'),
(51, 51, 'Dante Corpuz', 'Father', '09861234567'),
(52, 52, 'Cecilia Evangelista', 'Mother', '09872345678'),
(53, 53, 'Wilfredo Guerrero', 'Father', '09953456789'),
(54, 54, 'Evelyn Ignacio', 'Mother', '09964567890'),
(55, 55, 'Benito Laxamana', 'Father', '09170012345'),
(56, 56, 'Aurora Magsaysay', 'Mother', '09180023456'),
(57, 57, 'Ernesto Navarro', 'Father', '09190034567'),
(58, 58, 'Zenaida Ocampo', 'Mother', '09200045678'),
(59, 59, 'Ferdinand Pascual', 'Father', '09210056789'),
(60, 60, 'Norma Quinto', 'Mother', '09220067890'),
(61, 61, 'Alfonso Recto', 'Father', '09230078901'),
(62, 62, 'Josefina Samson', 'Mother', '09240089012'),
(63, 63, 'Felipe Tan', 'Father', '09250090123'),
(64, 64, 'Priscilla Urbano', 'Mother', '09260001234'),
(65, 65, 'Rogelio Valdez', 'Father', '09270002345'),
(66, 66, 'Milagros Yabut', 'Mother', '09280003456'),
(67, 67, 'Arturo Zorilla', 'Father', '09290004567'),
(68, 68, 'Lina Alcantara', 'Mother', '09350005678'),
(69, 69, 'Cesar Belmonte', 'Father', '09360006789'),
(70, 70, 'Esperanza Cervantes', 'Mother', '09370007890'),
(71, 71, 'Danilo De Leon', 'Father', '09380008901'),
(72, 72, 'Rosalinda Enriquez', 'Mother', '09390009012'),
(73, 73, 'Jaime Ferrer', 'Father', '09470001234'),
(74, 74, 'Angelita Guevarra', 'Mother', '09480002345'),
(75, 75, 'Rodolfo Hernandez', 'Father', '09490003456'),
(76, 76, 'Teresa Javier', 'Mother', '09550004567'),
(77, 77, 'Gilbert Lagman', 'Father', '09560005678'),
(78, 78, 'Elena Mendoza', 'Mother', '09650006789'),
(79, 79, 'Nicanor Natividad', 'Father', '09660007890'),
(80, 80, 'Lydia Ortega', 'Mother', '09750008901'),
(81, 81, 'Vicente Panganiban', 'Father', '09760009012'),
(82, 82, 'Sonia Quisumbing', 'Mother', '09770001234'),
(83, 83, 'Reynaldo Ramos', 'Father', '09850002345'),
(84, 84, 'Gina Santos', 'Mother', '09860003456'),
(85, 85, 'Mario Sison', 'Father', '09870004567'),
(86, 86, 'Myrna Talavera', 'Mother', '09950005678'),
(87, 87, 'Efren Umali', 'Father', '09960006789'),
(88, 88, 'Perla Velasco', 'Mother', '09171112345'),
(89, 89, 'Hector Ventura', 'Father', '09181112346'),
(90, 90, 'Ruby Zamora', 'Mother', '09191112347'),
(91, 91, 'Alfredo Abad', 'Father', '09201112348'),
(92, 92, 'Clara Basco', 'Mother', '09211112349'),
(93, 93, 'Dominador Cabral', 'Father', '09221112350'),
(94, 94, 'Estrella Dizon', 'Mother', '09231112351'),
(95, 95, 'Guillermo Estacio', 'Father', '09241112352'),
(96, 96, 'Leticia Fajardo', 'Mother', '09251112353'),
(97, 97, 'Honorio Galang', 'Father', '09261112354'),
(98, 98, 'Raquel Hizon', 'Mother', '09271112355'),
(99, 99, 'Isagani Ilagan', 'Father', '09281112356'),
(100, 100, 'Socorro Jose', 'Mother', '09291112357');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EquipmentID` int(11) NOT NULL,
  `EquipmentName` varchar(255) DEFAULT NULL,
  `EquipmentStatus` varchar(50) DEFAULT NULL,
  `MaintenanceSchedule` int(10) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Vendor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EquipmentID`, `EquipmentName`, `EquipmentStatus`, `MaintenanceSchedule`, `PurchaseDate`, `Vendor`) VALUES
(1, 'Treadmill X1', 'Active', 20261201, '2025-01-15', 'Fitness Pro Co'),
(2, 'Bench Press Station', 'Active', 20261015, '2025-02-20', 'Iron Works Inc'),
(3, 'Dumbbell Set (5-50lbs)', 'Active', 20270110, '2025-03-05', 'Global Sports'),
(4, 'Stationary Bike', 'Under Repair', 20260520, '2024-11-12', 'CycleTech'),
(5, 'Rowing Machine', 'Active', 20260830, '2025-04-01', 'Fitness Pro Co'),
(6, 'Leg Press Machine', 'Active', 20261115, '2025-05-10', 'Iron Works Inc'),
(7, 'Elliptical Trainer', 'Active', 20260920, '2025-01-15', 'Fitness Pro Co'),
(8, 'Cable Crossover Machine', 'Active', 20270205, '2025-06-18', 'Iron Works Inc'),
(9, 'Squat Rack', 'Active', 20261210, '2025-02-20', 'Iron Works Inc'),
(10, 'Kettlebell Set', 'Active', 20270301, '2025-07-22', 'Global Sports'),
(11, 'Lat Pulldown Machine', 'Under Repair', 20260525, '2024-10-05', 'Iron Works Inc'),
(12, 'Stair Climber', 'Active', 20261005, '2025-03-14', 'CycleTech'),
(13, 'Smith Machine', 'Active', 20261130, '2025-04-20', 'Iron Works Inc'),
(14, 'Medicine Balls (Set)', 'Active', 20270115, '2025-08-11', 'Global Sports'),
(15, 'Treadmill X2', 'Active', 20261201, '2025-09-02', 'Fitness Pro Co');

-- --------------------------------------------------------

--
-- Table structure for table `gymstaff`
--

CREATE TABLE `gymstaff` (
  `StaffID` int(10) NOT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `Role` char(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gymstaff`
--

INSERT INTO `gymstaff` (`StaffID`, `FirstName`, `LastName`, `Role`, `age`) VALUES
(101, 'Juan', 'Dela Cruz', 'Trainor', 28),
(102, 'Maria', 'Santos', 'Maintenance', 24),
(103, 'Ricardo', 'Gomez', 'Maintenance', 31),
(104, 'Elena', 'Reyes', 'Trainor', 26),
(105, 'Mark', 'Bautista', 'Trainor', 22),
(106, 'Paolo', 'Aquino', 'Trainor', 29),
(107, 'Glenda', 'Pascual', 'Maintenance', 23),
(108, 'Renato', 'Mendoza', 'Maintenance', 35),
(109, 'Camille', 'Soriano', 'Trainor', 25),
(110, 'Angelo', 'Cruz', 'Trainor', 22),
(111, 'Kristine', 'Dizon', 'Trainor', 27),
(112, 'Arnel', 'Villanueva', 'Maintenance', 40),
(113, 'Bianca', 'Ramos', 'Maintenance', 24),
(114, 'Christian', 'Flores', 'Trainor', 31),
(115, 'Jovelyn', 'Castillo', 'Maintenance', 28);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `StaffID` int(11) NOT NULL,
  `MaintenanceSchedule` int(8) NOT NULL,
  `TaskPerformed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`StaffID`, `MaintenanceSchedule`, `TaskPerformed`) VALUES
(102, 20260520, 'Replaced frayed drive belt and recalibrated speed sensors on Treadmill Row A'),
(102, 20260521, 'Fixed leaky shower head drain pipe and replaced rubber washers in Male Showers'),
(102, 20260524, 'Cleaned dirty air intake filters and checked coolant pressure on HVAC Unit 2'),
(102, 20260528, 'Inspected heating element thermostat and replaced screws on sauna bench'),
(102, 20260604, 'Centered slipping running belt and applied silicone lubricant on Treadmill #5'),
(102, 20260611, 'Inspected push-bar crash mechanics and lubricated emergency door closers'),
(103, 20260522, 'Lubricated drive chains and tightened loose pedal cranks on Stationary Bikes'),
(103, 20260523, 'Repaired broken electronic keypad lock on Female Locker #14'),
(103, 20260529, 'Replaced worn bungee return cord and cleaned sliding rail on Rower #1'),
(103, 20260605, 'Cleaned and lubricated vertical guide rods on the Smith Machine'),
(107, 20260525, 'Fixed squeaking resistance flywheel mechanism on Elliptical #3'),
(107, 20260530, 'Re-wired loose amplifier connection for overhead spin studio speakers'),
(107, 20260606, 'Checked chemical balance feeder valves and cleaned pool skimmer baskets'),
(108, 20260525, 'Patched torn rubber protective matting near free weight rack'),
(108, 20260531, 'Greased linear guide rods and verified weight safety pins on Leg Press'),
(108, 20260607, 'Tightened loose seat adjustment pins on 5 stationary cycling bikes'),
(112, 20260526, 'Replaced water purification filter and sanitized nozzles on North dispenser'),
(112, 20260601, 'Repaired squeaky front desk safety security gate latch hinge'),
(112, 20260608, 'Adjusted viewing angle and wiped glass lenses on 3 gym floor CCTV cameras'),
(113, 20260526, 'Swapped out burnt-out LED overhead tubes above cardio area'),
(113, 20260602, 'Unclogged main floor drainage basin in Female Shower and sealed edges'),
(113, 20260609, 'Deep cleaned exhaust ventilation fans in Male Locker Room to improve airflow'),
(115, 20260527, 'Re-cabled weight stack pulley system and tightened loose bolts'),
(115, 20260603, 'Re-aligned structural framing bolts and organized dumbbell racks'),
(115, 20260610, 'Replaced unresponsive LCD console overlay ribbon cable on StairMaster #2');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Phone` int(12) DEFAULT NULL,
  `PlanID` int(3) DEFAULT NULL,
  `TrainerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`MemberID`, `FirstName`, `LastName`, `Age`, `Phone`, `PlanID`, `TrainerID`) VALUES
(1, 'Daniel', 'Llana', 20, 2147483647, 1, 4),
(2, 'Hans', 'Barruga', 20, 2147483647, 2, 6),
(3, 'Anne', 'Bea', 20, 2147483647, 3, 7),
(4, 'Elisha', 'Alcazar', 19, 2147483647, 1, NULL),
(5, 'Leran', 'Mata', 20, 2147483647, 1, NULL),
(6, 'Marcus', 'Santos', 22, 2147483647, 2, 29),
(7, 'Miko', 'Ocfemia', 20, 2147483647, 13, 30),
(8, 'Chloe', 'De Castro', 21, 2147483647, 1, 1),
(9, 'Gabriel', 'Reyes', 20, 2147483647, 3, NULL),
(10, 'Sophia', 'Cruz', 19, 2147483647, 1, NULL),
(11, 'Althea', 'Pura', 19, 2147483647, 9, 7),
(12, 'Trisha', 'Colina', 25, 2147483647, 7, 16),
(13, 'Wilfred', 'Mayor', 23, 2147483647, 4, 26),
(14, 'Liam', 'Aquino', 23, 2147483647, 2, NULL),
(15, 'Olivia', 'Bautista', 20, 2147483647, 1, NULL),
(16, 'Ethan', 'Soriano', 22, 2147483647, 3, 1),
(17, 'Mingyu', 'Kim', 29, 2147483647, 3, 4),
(18, 'Ava', 'Gonzales', 21, 2147483647, 2, 6),
(19, 'Noah', 'Villanueva', 19, 2147483647, 1, NULL),
(20, 'Mia', 'Torres', 20, 2147483647, 3, NULL),
(21, 'James', 'Dizon', 22, 2147483647, 2, 26),
(22, 'Isabella', 'Ramos', 21, 2147483647, 1, 29),
(23, 'Lucas', 'Mendoza', 20, 2147483647, 3, 30),
(24, 'Sofia', 'Santos', 19, 2147483647, 1, NULL),
(25, 'Benjamin', 'Garcia', 23, 2147483647, 2, NULL),
(26, 'Elijah', 'Flores', 21, 2147483647, 1, 6),
(27, 'Charlotte', 'Cruz', 20, 2147483647, 3, 7),
(28, 'Oliver', 'Pascual', 22, 2147483647, 2, 16),
(29, 'Amelia', 'Castillo', 19, 2147483647, 1, NULL),
(30, 'William', 'Fernandez', 24, 2147483647, 3, NULL),
(31, 'Alexander', 'Mercado', 21, 2147483647, 1, 30),
(32, 'Harper', 'Valenzuela', 20, 2147483647, 2, 1),
(33, 'Michael', 'Espiritu', 23, 2147483647, 3, 4),
(34, 'Evelyn', 'Santiago', 19, 2147483647, 1, NULL),
(35, 'Daniel', 'Aquino', 22, 2147483647, 2, NULL),
(36, 'Abigail', 'Del Rosario', 20, 2147483647, 1, 16),
(37, 'Henry', 'Tolentino', 24, 2147483647, 4, 26),
(38, 'Emily', 'Dela Cruz', 21, 2147483647, 1, 29),
(39, 'Sebastian', 'Manalo', 20, 2147483647, 3, NULL),
(40, 'Elizabeth', 'Gomez', 19, 2147483647, 2, NULL),
(41, 'Jack', 'Domingo', 25, 2147483647, 7, 4),
(42, 'Mila', 'Castro', 22, 2147483647, 1, 6),
(43, 'Samuel', 'Reyes', 23, 2147483647, 2, 7),
(44, 'Ella', 'Soriano', 20, 2147483647, 3, NULL),
(45, 'David', 'Salazar', 21, 2147483647, 1, NULL),
(46, 'Avery', 'Pineda', 19, 2147483647, 9, 29),
(47, 'Joseph', 'Villanueva', 24, 2147483647, 1, 30),
(48, 'Sofia', 'Dumandan', 20, 2147483647, 3, 1),
(49, 'Matthew', 'Agoncillo', 22, 2147483647, 2, NULL),
(50, 'Camila', 'Buenaventura', 21, 2147483647, 1, NULL),
(51, 'Owen', 'Corpuz', 23, 2147483647, 4, 7),
(52, 'Aria', 'Evangelista', 19, 2147483647, 1, 16),
(53, 'Jackson', 'Guerrero', 22, 2147483647, 3, 26),
(54, 'Scarlett', 'Ignacio', 20, 2147483647, 2, NULL),
(55, 'Lucas', 'Laxamana', 25, 2147483647, 13, NULL),
(56, 'Victoria', 'Magsaysay', 21, 2147483647, 1, 1),
(57, 'Levi', 'Navarro', 20, 2147483647, 3, 4),
(58, 'Madison', 'Ocampo', 19, 2147483647, 2, 6),
(59, 'Gabriel', 'Pascual', 24, 2147483647, 1, NULL),
(60, 'Luna', 'Quinto', 22, 2147483647, 7, NULL),
(61, 'Julian', 'Recto', 23, 2147483647, 2, 26),
(62, 'Grace', 'Samson', 20, 2147483647, 1, 29),
(63, 'Isaac', 'Tan', 21, 2147483647, 3, 30),
(64, 'Chloe', 'Urbano', 19, 2147483647, 1, NULL),
(65, 'Jayden', 'Valdez', 22, 2147483647, 2, NULL),
(66, 'Penelope', 'Yabut', 20, 2147483647, 4, 6),
(67, 'Anthony', 'Zorilla', 26, 2147483647, 1, 7),
(68, 'Layla', 'Alcantara', 21, 2147483647, 3, 16),
(69, 'Lincoln', 'Belmonte', 23, 2147483647, 2, NULL),
(70, 'Riley', 'Cervantes', 19, 2147483647, 1, NULL),
(71, 'Christopher', 'De Leon', 22, 2147483647, 9, 30),
(72, 'Zoey', 'Enriquez', 20, 2147483647, 1, 1),
(73, 'Joshua', 'Ferrer', 24, 2147483647, 3, 4),
(74, 'Nora', 'Guevarra', 21, 2147483647, 2, NULL),
(75, 'Andrew', 'Hernandez', 22, 2147483647, 1, NULL),
(76, 'Lily', 'Javier', 19, 2147483647, 13, 16),
(77, 'Nathan', 'Lagman', 23, 2147483647, 4, 26),
(78, 'Eleanor', 'Mendoza', 20, 2147483647, 1, 29),
(79, 'Ryan', 'Natividad', 25, 2147483647, 2, NULL),
(80, 'Hannah', 'Ortega', 21, 2147483647, 3, NULL),
(81, 'Adrian', 'Panganiban', 20, 2147483647, 1, 4),
(82, 'Lillian', 'Quisumbing', 19, 2147483647, 2, 6),
(83, 'Christian', 'Ramos', 24, 2147483647, 7, 7),
(84, 'Addison', 'Santos', 22, 2147483647, 1, NULL),
(85, 'Benicio', 'Sison', 23, 2147483647, 3, NULL),
(86, 'Aubrey', 'Talavera', 20, 2147483647, 1, 29),
(87, 'Dylan', 'Umali', 21, 2147483647, 2, 30),
(88, 'Ellie', 'Velasco', 19, 2147483647, 4, 1),
(89, 'Jace', 'Ventura', 22, 2147483647, 1, NULL),
(90, 'Stella', 'Zamora', 20, 2147483647, 9, NULL),
(91, 'Caleb', 'Abad', 23, 2147483647, 2, 7),
(92, 'Natalie', 'Basco', 21, 2147483647, 1, 16),
(93, 'Gavin', 'Cabral', 22, 2147483647, 3, 26),
(94, 'Leah', 'Dizon', 19, 2147483647, 1, NULL),
(95, 'Maverick', 'Estacio', 24, 2147483647, 13, NULL),
(96, 'Hazel', 'Fajardo', 20, 2147483647, 2, 1),
(97, 'Thomas', 'Galang', 25, 2147483647, 1, 4),
(98, 'Violet', 'Hizon', 21, 2147483647, 3, 6),
(99, 'Ian', 'Ilagan', 22, 2147483647, 4, NULL),
(100, 'Aurora', 'Jose', 20, 2147483647, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership_plan`
--

CREATE TABLE `membership_plan` (
  `PlanID` int(11) NOT NULL,
  `PlanName` varchar(100) DEFAULT NULL,
  `DurationDays` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership_plan`
--

INSERT INTO `membership_plan` (`PlanID`, `PlanName`, `DurationDays`) VALUES
(3, 'Starter Monthly', 30),
(4, 'Basic Quarterly', 90),
(7, 'Premium Semi-Annual', 180),
(9, 'Elite Annual', 365),
(13, 'VIP Lifetime', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `Member_id` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentDate` int(8) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `PaymentStatus` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `Member_id`, `Amount`, `PaymentDate`, `PaymentMethod`, `PaymentStatus`) VALUES
(1, 7, 1500.00, 20260501, 'Cash', 'Successful'),
(2, 11, 2500.00, 20260505, 'GCash', 'Successful'),
(3, 12, 1500.00, 20260510, 'Credit Card', 'Successful'),
(4, 13, 3000.00, 20260512, 'Cash', 'Successful'),
(5, 17, 5000.00, 20260513, 'GCash', 'Successful'),
(6, 1, 1500.00, 20260514, 'Cash', 'Successful'),
(7, 2, 2500.00, 20260514, 'GCash', 'Successful'),
(8, 3, 5000.00, 20260514, 'Credit Card', 'Successful'),
(9, 4, 1500.00, 20260514, 'GCash', 'Successful'),
(10, 5, 1500.00, 20260515, 'Cash', 'Successful'),
(11, 6, 2500.00, 20260515, 'Credit Card', 'Successful'),
(12, 8, 1500.00, 20260515, 'GCash', 'Successful'),
(13, 9, 5000.00, 20260515, 'Cash', 'Successful'),
(14, 10, 1500.00, 20260516, 'GCash', 'Successful'),
(15, 14, 2500.00, 20260516, 'Cash', 'Successful'),
(16, 15, 1500.00, 20260516, 'Credit Card', 'Successful'),
(17, 16, 5000.00, 20260516, 'GCash', 'Successful'),
(18, 18, 2500.00, 20260517, 'Cash', 'Successful'),
(19, 19, 1500.00, 20260517, 'GCash', 'Successful'),
(20, 20, 5000.00, 20260517, 'Credit Card', 'Successful'),
(21, 21, 2500.00, 20260518, 'GCash', 'Successful'),
(22, 22, 1500.00, 20260518, 'Cash', 'Successful'),
(23, 23, 5000.00, 20260518, 'Credit Card', 'Successful'),
(24, 24, 1500.00, 20260519, 'GCash', 'Successful'),
(25, 25, 2500.00, 20260519, 'Cash', 'Successful'),
(26, 26, 1500.00, 20260519, 'GCash', 'Successful'),
(27, 27, 5000.00, 20260519, 'Credit Card', 'Successful'),
(28, 28, 2500.00, 20260519, 'Cash', 'Successful'),
(29, 29, 1500.00, 20260519, 'GCash', 'Successful'),
(30, 30, 5000.00, 20260519, 'Credit Card', 'Successful'),
(31, 31, 1500.00, 20260520, 'GCash', 'Successful'),
(32, 32, 2500.00, 20260520, 'Cash', 'Successful'),
(33, 33, 5000.00, 20260520, 'Credit Card', 'Successful'),
(34, 34, 1500.00, 20260520, 'GCash', 'Successful'),
(35, 35, 2500.00, 20260520, 'Cash', 'Successful'),
(36, 36, 1500.00, 20260520, 'Credit Card', 'Successful'),
(37, 37, 3000.00, 20260521, 'Cash', 'Successful'),
(38, 38, 1500.00, 20260521, 'GCash', 'Successful'),
(39, 39, 5000.00, 20260521, 'Credit Card', 'Successful'),
(40, 40, 2500.00, 20260521, 'Cash', 'Successful'),
(41, 41, 1500.00, 20260521, 'GCash', 'Successful'),
(42, 42, 1500.00, 20260521, 'Credit Card', 'Successful'),
(43, 43, 2500.00, 20260521, 'Cash', 'Successful'),
(44, 44, 5000.00, 20260521, 'GCash', 'Successful'),
(45, 45, 1500.00, 20260521, 'Credit Card', 'Successful'),
(46, 46, 2500.00, 20260521, 'Cash', 'Successful'),
(47, 47, 1500.00, 20260522, 'GCash', 'Successful'),
(48, 48, 5000.00, 20260522, 'Credit Card', 'Successful'),
(49, 49, 2500.00, 20260522, 'Cash', 'Successful'),
(50, 50, 1500.00, 20260522, 'GCash', 'Successful'),
(51, 51, 3000.00, 20260522, 'Credit Card', 'Successful'),
(52, 52, 1500.00, 20260522, 'Cash', 'Successful'),
(53, 53, 5000.00, 20260522, 'GCash', 'Successful'),
(54, 54, 2500.00, 20260522, 'Credit Card', 'Successful'),
(55, 55, 1500.00, 20260522, 'Cash', 'Successful'),
(56, 56, 1500.00, 20260522, 'GCash', 'Successful'),
(57, 57, 5000.00, 20260522, 'Credit Card', 'Successful'),
(58, 58, 2500.00, 20260522, 'Cash', 'Successful'),
(59, 59, 1500.00, 20260523, 'GCash', 'Successful'),
(60, 60, 1500.00, 20260523, 'Credit Card', 'Successful'),
(61, 61, 2500.00, 20260523, 'Cash', 'Successful'),
(62, 62, 1500.00, 20260523, 'GCash', 'Successful'),
(63, 63, 5000.00, 20260523, 'Credit Card', 'Successful'),
(64, 64, 1500.00, 20260523, 'Cash', 'Successful'),
(65, 65, 2500.00, 20260523, 'GCash', 'Successful'),
(66, 66, 3000.00, 20260523, 'Credit Card', 'Successful'),
(67, 67, 1500.00, 20260523, 'Cash', 'Successful'),
(68, 68, 5000.00, 20260523, 'GCash', 'Successful'),
(69, 69, 2500.00, 20260523, 'Credit Card', 'Successful'),
(70, 70, 1500.00, 20260524, 'Cash', 'Successful'),
(71, 71, 2500.00, 20260524, 'GCash', 'Successful'),
(72, 72, 1500.00, 20260524, 'Credit Card', 'Successful'),
(73, 73, 5000.00, 20260524, 'Cash', 'Successful'),
(74, 74, 2500.00, 20260524, 'GCash', 'Successful'),
(75, 75, 1500.00, 20260524, 'Credit Card', 'Successful'),
(76, 76, 1500.00, 20260524, 'Cash', 'In Progress'),
(77, 77, 3000.00, 20260524, 'GCash', 'In Progress'),
(78, 78, 1500.00, 20260524, 'Credit Card', 'In Progress'),
(79, 79, 2500.00, 20260524, 'Cash', 'In Progress'),
(80, 80, 5000.00, 20260524, 'GCash', 'In Progress'),
(81, 81, 1500.00, 20260525, 'Credit Card', 'In Progress'),
(82, 82, 2500.00, 20260525, 'Cash', 'In Progress'),
(83, 83, 1500.00, 20260525, 'GCash', 'In Progress'),
(84, 84, 1500.00, 20260525, 'Credit Card', 'In Progress'),
(85, 85, 5000.00, 20260525, 'Cash', 'In Progress'),
(86, 86, 1500.00, 20260525, 'GCash', 'In Progress'),
(87, 87, 2500.00, 20260525, 'Credit Card', 'In Progress'),
(88, 88, 3000.00, 20260525, 'Cash', 'In Progress'),
(89, 89, 1500.00, 20260525, 'GCash', 'In Progress'),
(90, 90, 2500.00, 20260525, 'Credit Card', 'In Progress'),
(91, 91, 2500.00, 20260526, 'Cash', 'In Progress'),
(92, 92, 1500.00, 20260526, 'GCash', 'In Progress'),
(93, 93, 5000.00, 20260526, 'Credit Card', 'In Progress'),
(94, 94, 1500.00, 20260526, 'Cash', 'In Progress'),
(95, 95, 1500.00, 20260526, 'GCash', 'In Progress'),
(96, 96, 2500.00, 20260526, 'Credit Card', 'Post Payment'),
(97, 97, 1500.00, 20260526, 'Cash', 'Post Payment'),
(98, 98, 5000.00, 20260526, 'GCash', 'Post Payment'),
(99, 99, 3000.00, 20260526, 'Credit Card', 'Post Payment'),
(100, 100, 1500.00, 20260526, 'Cash', 'Post Payment');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` int(11) NOT NULL,
  `Trainer_id` int(11) DEFAULT NULL,
  `ProgramName` varchar(255) DEFAULT NULL,
  `Schedule` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgramID`, `Trainer_id`, `ProgramName`, `Schedule`) VALUES
(1, 1, 'Powerlifting 101', 20260601),
(2, 4, 'Zumba Fitness', 20260601),
(3, 5, 'Yoga Basics', 20260602),
(4, 8, 'CrossFit Advanced', 20260603),
(5, 9, 'Bodyweight Training', 20260603),
(6, 12, 'HIIT Cardio Blast', 20260604),
(7, 13, 'Pilates Sculpt', 20260604),
(8, 16, 'Strength & Conditioning', 20260605),
(9, 17, 'Spin Class Intensive', 20260605),
(10, 20, 'Core Stability Lab', 20260606),
(11, 21, 'Senior Fitness Circle', 20260606),
(12, 24, 'Olympic Weightlifting', 20260607),
(13, 25, 'Athletic Agility Drills', 20260607),
(14, 28, 'Dance Cardio Party', 20260608),
(15, 29, 'Flexibility & Mobility', 20260608);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `RecordID` int(11) NOT NULL,
  `Member_id` int(5) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `BeforeHeight` int(11) DEFAULT NULL,
  `CurrentHeight` int(11) DEFAULT NULL,
  `BeforeWeight` int(11) DEFAULT NULL,
  `CurrentWeight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`RecordID`, `Member_id`, `Date`, `BeforeHeight`, `CurrentHeight`, `BeforeWeight`, `CurrentWeight`) VALUES
(1, 17, '2026-02-01', 161, 162, 199, 190),
(2, 7, '2026-02-02', 153, 155, 64, 60),
(3, 12, '2026-02-03', 150, 150, 51, 49),
(4, 11, '2026-02-04', 153, 154, 58, 55),
(5, 13, '2026-02-05', 155, 157, 59, 55),
(6, 1, '2026-02-06', 165, 165, 193, 185),
(7, 2, '2026-02-06', 141, 142, 68, 65),
(8, 3, '2026-02-07', 128, 130, 54, 50),
(9, 4, '2026-02-07', 158, 158, 60, 58),
(10, 5, '2026-02-08', 169, 170, 187, 175),
(11, 6, '2026-02-08', 178, 180, 208, 195),
(12, 8, '2026-02-09', 135, 135, 54, 52),
(13, 9, '2026-02-09', 159, 160, 169, 160),
(14, 10, '2026-02-10', 123, 125, 52, 48),
(15, 14, '2026-02-10', 190, 190, 221, 210),
(16, 15, '2026-02-11', 139, 140, 58, 55),
(17, 16, '2026-02-11', 173, 175, 193, 180),
(18, 18, '2026-02-12', 138, 138, 55, 53),
(19, 19, '2026-02-12', 167, 168, 179, 170),
(20, 20, '2026-02-13', 143, 145, 61, 57),
(21, 21, '2026-02-13', 185, 185, 211, 200),
(22, 22, '2026-02-14', 131, 132, 53, 50),
(23, 23, '2026-02-14', 160, 162, 178, 165),
(24, 24, '2026-02-15', 128, 128, 51, 49),
(25, 25, '2026-02-15', 194, 195, 224, 215),
(26, 26, '2026-02-16', 170, 172, 190, 180),
(27, 27, '2026-02-16', 148, 148, 58, 56),
(28, 28, '2026-02-17', 181, 182, 202, 190),
(29, 29, '2026-02-17', 133, 135, 55, 51),
(30, 30, '2026-02-18', 167, 167, 176, 168),
(31, 31, '2026-02-18', 177, 178, 194, 185),
(32, 32, '2026-02-19', 138, 140, 58, 54),
(33, 33, '2026-02-19', 165, 165, 183, 172),
(34, 34, '2026-02-20', 151, 152, 61, 58),
(35, 35, '2026-02-20', 186, 188, 218, 205),
(36, 36, '2026-02-21', 138, 138, 52, 50),
(37, 37, '2026-02-21', 173, 174, 187, 178),
(38, 38, '2026-02-22', 143, 145, 59, 55),
(39, 39, '2026-02-22', 180, 180, 206, 195),
(40, 40, '2026-02-23', 154, 155, 65, 62),
(41, 41, '2026-02-23', 190, 192, 228, 215),
(42, 42, '2026-02-24', 132, 132, 50, 48),
(43, 43, '2026-02-24', 169, 170, 179, 170),
(44, 44, '2026-02-25', 148, 150, 60, 56),
(45, 45, '2026-02-25', 185, 185, 211, 200),
(46, 46, '2026-02-26', 141, 142, 55, 52),
(47, 47, '2026-02-26', 174, 176, 195, 182),
(48, 48, '2026-02-27', 158, 158, 62, 60),
(49, 49, '2026-02-27', 167, 168, 174, 165),
(50, 50, '2026-02-28', 133, 135, 53, 49),
(51, 51, '2026-02-28', 182, 182, 203, 192),
(52, 52, '2026-03-01', 147, 148, 56, 53),
(53, 53, '2026-03-01', 170, 172, 189, 176),
(54, 54, '2026-03-02', 154, 154, 59, 57),
(55, 55, '2026-03-02', 189, 190, 217, 208),
(56, 56, '2026-03-03', 128, 130, 51, 47),
(57, 57, '2026-03-03', 166, 166, 171, 160),
(58, 58, '2026-03-04', 150, 151, 58, 55),
(59, 59, '2026-03-04', 182, 184, 211, 198),
(60, 60, '2026-03-05', 143, 143, 54, 52),
(61, 61, '2026-03-05', 174, 175, 189, 180),
(62, 62, '2026-03-06', 154, 156, 65, 61),
(63, 63, '2026-03-06', 169, 169, 177, 166),
(64, 64, '2026-03-07', 135, 136, 53, 50),
(65, 65, '2026-03-07', 179, 181, 204, 191),
(66, 66, '2026-03-08', 147, 147, 56, 54),
(67, 67, '2026-03-08', 172, 173, 184, 175),
(68, 68, '2026-03-09', 151, 153, 60, 56),
(69, 69, '2026-03-09', 189, 189, 221, 210),
(70, 70, '2026-03-10', 130, 131, 49, 46),
(71, 71, '2026-03-10', 162, 164, 171, 158),
(72, 72, '2026-03-11', 152, 152, 57, 55),
(73, 73, '2026-03-11', 182, 183, 205, 196),
(74, 74, '2026-03-12', 142, 144, 57, 53),
(75, 75, '2026-03-12', 177, 177, 193, 182),
(76, 76, '2026-03-13', 156, 157, 66, 63),
(77, 77, '2026-03-13', 168, 170, 181, 168),
(78, 78, '2026-03-14', 137, 137, 53, 51),
(79, 79, '2026-03-14', 179, 180, 197, 188),
(80, 80, '2026-03-15', 144, 146, 58, 54),
(81, 81, '2026-03-15', 171, 171, 185, 174),
(82, 82, '2026-03-16', 154, 155, 61, 58),
(83, 83, '2026-03-16', 189, 191, 225, 212),
(84, 84, '2026-03-17', 133, 133, 49, 47),
(85, 85, '2026-03-17', 164, 165, 171, 162),
(86, 86, '2026-03-18', 148, 150, 58, 54),
(87, 87, '2026-03-18', 182, 182, 205, 194),
(88, 88, '2026-03-19', 141, 142, 54, 51),
(89, 89, '2026-03-19', 176, 178, 197, 184),
(90, 90, '2026-03-20', 159, 159, 64, 62),
(91, 91, '2026-03-20', 168, 169, 176, 167),
(92, 92, '2026-03-21', 136, 138, 54, 50),
(93, 93, '2026-03-21', 182, 182, 201, 190),
(94, 94, '2026-03-22', 144, 145, 56, 53),
(95, 95, '2026-03-22', 172, 174, 189, 176),
(96, 96, '2026-03-23', 154, 154, 59, 57),
(97, 97, '2026-03-23', 192, 193, 223, 214),
(98, 98, '2026-03-24', 132, 134, 52, 48),
(99, 99, '2026-03-24', 163, 163, 171, 160),
(100, 100, '2026-03-25', 150, 151, 58, 55);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `SubscriptionID` int(11) DEFAULT NULL,
  `Member_id` int(11) DEFAULT NULL,
  `Plan_id` int(11) DEFAULT NULL,
  `StartDate` int(8) DEFAULT NULL,
  `EndDate` int(8) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`SubscriptionID`, `Member_id`, `Plan_id`, `StartDate`, `EndDate`, `Status`) VALUES
(1, 7, 13, 20260101, 20281231, 'Active'),
(2, 11, 9, 20260215, 20270215, 'Active'),
(3, 12, 7, 20260310, 20260910, 'Active'),
(4, 13, 4, 20260401, 20260701, 'Expired'),
(5, 17, 3, 20260501, 20260601, 'Active'),
(6, 1, 1, 20260110, 20260710, 'Active'),
(7, 2, 2, 20260115, 20260415, 'Expired'),
(8, 3, 3, 20260201, 20270201, 'Active'),
(9, 4, 1, 20260210, 20260510, 'Expired'),
(10, 5, 1, 20260220, 20260820, 'Active'),
(11, 6, 2, 20260301, 20260601, 'Active'),
(12, 8, 1, 20260305, 20260905, 'Active'),
(13, 9, 3, 20260312, 20270312, 'Active'),
(14, 10, 1, 20260318, 20260418, 'Expired'),
(15, 14, 2, 20260325, 20260925, 'Active'),
(16, 15, 1, 20260405, 20260705, 'Active'),
(17, 16, 3, 20260412, 20261012, 'Active'),
(18, 18, 2, 20260418, 20260518, 'Expired'),
(19, 19, 1, 20260422, 20260722, 'Active'),
(20, 20, 3, 20260428, 20270428, 'Active'),
(21, 21, 2, 20260502, 20260802, 'Active'),
(22, 22, 1, 20260505, 20260605, 'Active'),
(23, 23, 3, 20260510, 20261110, 'Active'),
(24, 24, 1, 20260512, 20260812, 'Active'),
(25, 25, 2, 20260514, 20260614, 'Active'),
(26, 26, 1, 20260515, 20261115, 'Active'),
(27, 27, 3, 20260516, 20270516, 'Active'),
(28, 28, 2, 20260517, 20260817, 'Active'),
(29, 29, 1, 20260518, 20260618, 'Pending'),
(30, 30, 3, 20260519, 20260619, 'Pending'),
(26, 26, 1, 20260514, 20260614, 'Active'),
(27, 27, 3, 20260514, 20260614, 'Active'),
(28, 28, 2, 20260515, 20260615, 'Active'),
(29, 29, 1, 20260515, 20260520, 'Expired'),
(30, 30, 3, 20260515, 20260815, 'Active'),
(31, 31, 1, 20260514, 20260814, 'Active'),
(32, 32, 2, 20260514, 20260614, 'Active'),
(33, 33, 3, 20260514, 20261114, 'Active'),
(34, 34, 1, 20260514, 20260614, 'Active'),
(35, 35, 2, 20260514, 20260519, 'Expired'),
(36, 36, 1, 20260514, 20260714, 'Active'),
(37, 37, 4, 20260514, 20260814, 'Active'),
(38, 38, 1, 20260515, 20260615, 'Active'),
(39, 39, 3, 20260515, 20260815, 'Active'),
(40, 40, 2, 20260515, 20260615, 'Active'),
(41, 41, 7, 20260515, 20261115, 'Active'),
(42, 42, 1, 20260515, 20260615, 'Active'),
(43, 43, 2, 20260515, 20260520, 'Expired'),
(44, 44, 3, 20260515, 20260815, 'Active'),
(45, 45, 1, 20260515, 20260615, 'Active'),
(46, 46, 9, 20260515, 20270515, 'Active'),
(47, 47, 1, 20260515, 20260615, 'Active'),
(48, 48, 3, 20260515, 20260715, 'Active'),
(49, 49, 2, 20260515, 20260615, 'Active'),
(50, 50, 1, 20260515, 20260615, 'Active'),
(51, 51, 4, 20260515, 20260815, 'Active'),
(52, 52, 1, 20260515, 20260615, 'Active'),
(53, 53, 3, 20260515, 20260615, 'Active'),
(54, 54, 2, 20260515, 20260615, 'Active'),
(55, 55, 13, 20260515, 20281231, 'Active'),
(56, 56, 1, 20260515, 20260615, 'Active'),
(57, 57, 3, 20260515, 20260615, 'Active'),
(58, 58, 2, 20260515, 20260615, 'Active'),
(59, 59, 1, 20260515, 20260615, 'Active'),
(60, 60, 7, 20260515, 20261115, 'Active'),
(61, 61, 2, 20260516, 20260616, 'Active'),
(62, 62, 1, 20260516, 20260616, 'Active'),
(63, 63, 3, 20260516, 20260816, 'Active'),
(64, 64, 1, 20260516, 20260616, 'Active'),
(65, 65, 2, 20260516, 20260616, 'Active'),
(66, 66, 4, 20260516, 20260816, 'Active'),
(67, 67, 1, 20260516, 20260616, 'Active'),
(68, 68, 3, 20260516, 20260616, 'Active'),
(69, 69, 2, 20260516, 20260616, 'Active'),
(70, 70, 1, 20260516, 20260616, 'Active'),
(71, 71, 9, 20260516, 20270516, 'Active'),
(72, 72, 1, 20260516, 20260616, 'Active'),
(73, 73, 3, 20260516, 20260816, 'Active'),
(74, 74, 2, 20260516, 20260616, 'Active'),
(75, 75, 1, 20260516, 20260616, 'Active'),
(76, 76, 13, 20260516, 20281231, 'Active'),
(77, 77, 4, 20260516, 20260716, 'Active'),
(78, 78, 1, 20260516, 20260616, 'Active'),
(79, 79, 2, 20260516, 20260616, 'Active'),
(80, 80, 3, 20260516, 20260616, 'Active'),
(81, 81, 1, 20260517, 20260617, 'Active'),
(82, 82, 2, 20260517, 20260617, 'Active'),
(83, 83, 7, 20260517, 20261117, 'Active'),
(84, 84, 1, 20260517, 20260617, 'Active'),
(85, 85, 3, 20260517, 20260817, 'Active'),
(86, 86, 1, 20260517, 20260617, 'Active'),
(87, 87, 2, 20260517, 20260617, 'Active'),
(88, 88, 4, 20260517, 20260817, 'Active'),
(89, 89, 1, 20260517, 20260617, 'Active'),
(90, 90, 9, 20260517, 20270517, 'Active'),
(91, 91, 2, 20260517, 20260617, 'Active'),
(92, 92, 1, 20260517, 20260617, 'Active'),
(93, 93, 3, 20260517, 20260617, 'Active'),
(94, 94, 1, 20260517, 20260617, 'Active'),
(95, 95, 13, 20260517, 20281231, 'Active'),
(96, 96, 2, 20260517, 20260617, 'Active'),
(97, 97, 1, 20260517, 20260617, 'Active'),
(98, 98, 3, 20260517, 20260817, 'Active'),
(99, 99, 4, 20260517, 20260717, 'Active'),
(100, 100, 1, 20260517, 20260617, 'Active'),
(1, 7, 13, 20260101, 20281231, 'Active'),
(2, 11, 9, 20260215, 20270215, 'Active'),
(3, 12, 7, 20260310, 20260910, 'Active'),
(4, 13, 4, 20260401, 20260701, 'Expired'),
(5, 17, 3, 20260501, 20260601, 'Active'),
(6, 1, 1, 20260110, 20260710, 'Active'),
(7, 2, 2, 20260115, 20260415, 'Expired'),
(8, 3, 3, 20260201, 20270201, 'Active'),
(9, 4, 1, 20260210, 20260510, 'Expired'),
(10, 5, 1, 20260220, 20260820, 'Active'),
(11, 6, 2, 20260301, 20260601, 'Active'),
(12, 8, 1, 20260305, 20260905, 'Active'),
(13, 9, 3, 20260312, 20270312, 'Active'),
(14, 10, 1, 20260318, 20260418, 'Expired'),
(15, 14, 2, 20260325, 20260925, 'Active'),
(16, 15, 1, 20260405, 20260705, 'Active'),
(17, 16, 3, 20260412, 20261012, 'Active'),
(18, 18, 2, 20260418, 20260518, 'Expired'),
(19, 19, 1, 20260422, 20260722, 'Active'),
(20, 20, 3, 20260428, 20270428, 'Active'),
(21, 21, 2, 20260502, 20260802, 'Active'),
(22, 22, 1, 20260505, 20260605, 'Active'),
(23, 23, 3, 20260510, 20261110, 'Active'),
(24, 24, 1, 20260512, 20260812, 'Active'),
(25, 25, 2, 20260514, 20260614, 'Active'),
(26, 26, 1, 20260515, 20261115, 'Active'),
(27, 27, 3, 20260516, 20270516, 'Active'),
(28, 28, 2, 20260517, 20260817, 'Active'),
(29, 29, 1, 20260518, 20260618, 'Pending'),
(30, 30, 3, 20260519, 20260619, 'Pending'),
(26, 26, 1, 20260514, 20260614, 'Active'),
(27, 27, 3, 20260514, 20260614, 'Active'),
(28, 28, 2, 20260515, 20260615, 'Active'),
(29, 29, 1, 20260515, 20260520, 'Expired'),
(30, 30, 3, 20260515, 20260815, 'Active'),
(31, 31, 1, 20260514, 20260814, 'Active'),
(32, 32, 2, 20260514, 20260614, 'Active'),
(33, 33, 3, 20260514, 20261114, 'Active'),
(34, 34, 1, 20260514, 20260614, 'Active'),
(35, 35, 2, 20260514, 20260519, 'Expired'),
(36, 36, 1, 20260514, 20260714, 'Active'),
(37, 37, 4, 20260514, 20260814, 'Active'),
(38, 38, 1, 20260515, 20260615, 'Active'),
(39, 39, 3, 20260515, 20260815, 'Active'),
(40, 40, 2, 20260515, 20260615, 'Active'),
(41, 41, 7, 20260515, 20261115, 'Active'),
(42, 42, 1, 20260515, 20260615, 'Active'),
(43, 43, 2, 20260515, 20260520, 'Expired'),
(44, 44, 3, 20260515, 20260815, 'Active'),
(45, 45, 1, 20260515, 20260615, 'Active'),
(46, 46, 9, 20260515, 20270515, 'Active'),
(47, 47, 1, 20260515, 20260615, 'Active'),
(48, 48, 3, 20260515, 20260715, 'Active'),
(49, 49, 2, 20260515, 20260615, 'Active'),
(50, 50, 1, 20260515, 20260615, 'Active'),
(51, 51, 4, 20260515, 20260815, 'Active'),
(52, 52, 1, 20260515, 20260615, 'Active'),
(53, 53, 3, 20260515, 20260615, 'Active'),
(54, 54, 2, 20260515, 20260615, 'Active'),
(55, 55, 13, 20260515, 20281231, 'Active'),
(56, 56, 1, 20260515, 20260615, 'Active'),
(57, 57, 3, 20260515, 20260615, 'Active'),
(58, 58, 2, 20260515, 20260615, 'Active'),
(59, 59, 1, 20260515, 20260615, 'Active'),
(60, 60, 7, 20260515, 20261115, 'Active'),
(61, 61, 2, 20260516, 20260616, 'Active'),
(62, 62, 1, 20260516, 20260616, 'Active'),
(63, 63, 3, 20260516, 20260816, 'Active'),
(64, 64, 1, 20260516, 20260616, 'Active'),
(65, 65, 2, 20260516, 20260616, 'Active'),
(66, 66, 4, 20260516, 20260816, 'Active'),
(67, 67, 1, 20260516, 20260616, 'Active'),
(68, 68, 3, 20260516, 20260616, 'Active'),
(69, 69, 2, 20260516, 20260616, 'Active'),
(70, 70, 1, 20260516, 20260616, 'Active'),
(71, 71, 9, 20260516, 20270516, 'Active'),
(72, 72, 1, 20260516, 20260616, 'Active'),
(73, 73, 3, 20260516, 20260816, 'Active'),
(74, 74, 2, 20260516, 20260616, 'Active'),
(75, 75, 1, 20260516, 20260616, 'Active'),
(76, 76, 13, 20260516, 20281231, 'Active'),
(77, 77, 4, 20260516, 20260716, 'Active'),
(78, 78, 1, 20260516, 20260616, 'Active'),
(79, 79, 2, 20260516, 20260616, 'Active'),
(80, 80, 3, 20260516, 20260616, 'Active'),
(81, 81, 1, 20260517, 20260617, 'Active'),
(82, 82, 2, 20260517, 20260617, 'Active'),
(83, 83, 7, 20260517, 20261117, 'Active'),
(84, 84, 1, 20260517, 20260617, 'Active'),
(85, 85, 3, 20260517, 20260817, 'Active'),
(86, 86, 1, 20260517, 20260617, 'Active'),
(87, 87, 2, 20260517, 20260617, 'Active'),
(88, 88, 4, 20260517, 20260817, 'Active'),
(89, 89, 1, 20260517, 20260617, 'Active'),
(90, 90, 9, 20260517, 20270517, 'Active'),
(91, 91, 2, 20260517, 20260617, 'Active'),
(92, 92, 1, 20260517, 20260617, 'Active'),
(93, 93, 3, 20260517, 20260617, 'Active'),
(94, 94, 1, 20260517, 20260617, 'Active'),
(95, 95, 13, 20260517, 20281231, 'Active'),
(96, 96, 2, 20260517, 20260617, 'Active'),
(97, 97, 1, 20260517, 20260617, 'Active'),
(98, 98, 3, 20260517, 20260817, 'Active'),
(99, 99, 4, 20260517, 20260717, 'Active'),
(100, 100, 1, 20260517, 20260617, 'Active'),
(1, 7, 13, 20260101, 20281231, 'Active'),
(2, 11, 9, 20260215, 20270215, 'Active'),
(3, 12, 7, 20260310, 20260910, 'Active'),
(4, 13, 4, 20260401, 20260701, 'Expired'),
(5, 17, 3, 20260501, 20260601, 'Active'),
(6, 1, 1, 20260110, 20260710, 'Active'),
(7, 2, 2, 20260115, 20260415, 'Expired'),
(8, 3, 3, 20260201, 20270201, 'Active'),
(9, 4, 1, 20260210, 20260510, 'Expired'),
(10, 5, 1, 20260220, 20260820, 'Active'),
(11, 6, 2, 20260301, 20260601, 'Active'),
(12, 8, 1, 20260305, 20260905, 'Active'),
(13, 9, 3, 20260312, 20270312, 'Active'),
(14, 10, 1, 20260318, 20260418, 'Expired'),
(15, 14, 2, 20260325, 20260925, 'Active'),
(16, 15, 1, 20260405, 20260705, 'Active'),
(17, 16, 3, 20260412, 20261012, 'Active'),
(18, 18, 2, 20260418, 20260518, 'Expired'),
(19, 19, 1, 20260422, 20260722, 'Active'),
(20, 20, 3, 20260428, 20270428, 'Active'),
(21, 21, 2, 20260502, 20260802, 'Active'),
(22, 22, 1, 20260505, 20260605, 'Active'),
(23, 23, 3, 20260510, 20261110, 'Active'),
(24, 24, 1, 20260512, 20260812, 'Active'),
(25, 25, 2, 20260514, 20260614, 'Active'),
(26, 26, 1, 20260515, 20261115, 'Active'),
(27, 27, 3, 20260516, 20270516, 'Active'),
(28, 28, 2, 20260517, 20260817, 'Active'),
(29, 29, 1, 20260518, 20260618, 'Pending'),
(30, 30, 3, 20260519, 20260619, 'Pending'),
(26, 26, 1, 20260514, 20260614, 'Active'),
(27, 27, 3, 20260514, 20260614, 'Active'),
(28, 28, 2, 20260515, 20260615, 'Active'),
(29, 29, 1, 20260515, 20260520, 'Expired'),
(30, 30, 3, 20260515, 20260815, 'Active'),
(31, 31, 1, 20260514, 20260814, 'Active'),
(32, 32, 2, 20260514, 20260614, 'Active'),
(33, 33, 3, 20260514, 20261114, 'Active'),
(34, 34, 1, 20260514, 20260614, 'Active'),
(35, 35, 2, 20260514, 20260519, 'Expired'),
(36, 36, 1, 20260514, 20260714, 'Active'),
(37, 37, 4, 20260514, 20260814, 'Active'),
(38, 38, 1, 20260515, 20260615, 'Active'),
(39, 39, 3, 20260515, 20260815, 'Active'),
(40, 40, 2, 20260515, 20260615, 'Active'),
(41, 41, 7, 20260515, 20261115, 'Active'),
(42, 42, 1, 20260515, 20260615, 'Active'),
(43, 43, 2, 20260515, 20260520, 'Expired'),
(44, 44, 3, 20260515, 20260815, 'Active'),
(45, 45, 1, 20260515, 20260615, 'Active'),
(46, 46, 9, 20260515, 20270515, 'Active'),
(47, 47, 1, 20260515, 20260615, 'Active'),
(48, 48, 3, 20260515, 20260715, 'Active'),
(49, 49, 2, 20260515, 20260615, 'Active'),
(50, 50, 1, 20260515, 20260615, 'Active'),
(51, 51, 4, 20260515, 20260815, 'Active'),
(52, 52, 1, 20260515, 20260615, 'Active'),
(53, 53, 3, 20260515, 20260615, 'Active'),
(54, 54, 2, 20260515, 20260615, 'Active'),
(55, 55, 13, 20260515, 20281231, 'Active'),
(56, 56, 1, 20260515, 20260615, 'Active'),
(57, 57, 3, 20260515, 20260615, 'Active'),
(58, 58, 2, 20260515, 20260615, 'Active'),
(59, 59, 1, 20260515, 20260615, 'Active'),
(60, 60, 7, 20260515, 20261115, 'Active'),
(61, 61, 2, 20260516, 20260616, 'Active'),
(62, 62, 1, 20260516, 20260616, 'Active'),
(63, 63, 3, 20260516, 20260816, 'Active'),
(64, 64, 1, 20260516, 20260616, 'Active'),
(65, 65, 2, 20260516, 20260616, 'Active'),
(66, 66, 4, 20260516, 20260816, 'Active'),
(67, 67, 1, 20260516, 20260616, 'Active'),
(68, 68, 3, 20260516, 20260616, 'Active'),
(69, 69, 2, 20260516, 20260616, 'Active'),
(70, 70, 1, 20260516, 20260616, 'Active'),
(71, 71, 9, 20260516, 20270516, 'Active'),
(72, 72, 1, 20260516, 20260616, 'Active'),
(73, 73, 3, 20260516, 20260816, 'Active'),
(74, 74, 2, 20260516, 20260616, 'Active'),
(75, 75, 1, 20260516, 20260616, 'Active'),
(76, 76, 13, 20260516, 20281231, 'Active'),
(77, 77, 4, 20260516, 20260716, 'Active'),
(78, 78, 1, 20260516, 20260616, 'Active'),
(79, 79, 2, 20260516, 20260616, 'Active'),
(80, 80, 3, 20260516, 20260616, 'Active'),
(81, 81, 1, 20260517, 20260617, 'Active'),
(82, 82, 2, 20260517, 20260617, 'Active'),
(83, 83, 7, 20260517, 20261117, 'Active'),
(84, 84, 1, 20260517, 20260617, 'Active'),
(85, 85, 3, 20260517, 20260817, 'Active'),
(86, 86, 1, 20260517, 20260617, 'Active'),
(87, 87, 2, 20260517, 20260617, 'Active'),
(88, 88, 4, 20260517, 20260817, 'Active'),
(89, 89, 1, 20260517, 20260617, 'Active'),
(90, 90, 9, 20260517, 20270517, 'Active'),
(91, 91, 2, 20260517, 20260617, 'Active'),
(92, 92, 1, 20260517, 20260617, 'Active'),
(93, 93, 3, 20260517, 20260617, 'Active'),
(94, 94, 1, 20260517, 20260617, 'Active'),
(95, 95, 13, 20260517, 20281231, 'Active'),
(96, 96, 2, 20260517, 20260617, 'Active'),
(97, 97, 1, 20260517, 20260617, 'Active'),
(98, 98, 3, 20260517, 20260817, 'Active'),
(99, 99, 4, 20260517, 20260717, 'Active'),
(100, 100, 1, 20260517, 20260617, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `TrainerID` int(11) DEFAULT NULL,
  `Staff_id` int(11) DEFAULT NULL,
  `Certification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`TrainerID`, `Staff_id`, `Certification`) VALUES
(1, 101, 'NASM Certified Personal Trainer'),
(4, 104, 'CrossFit Level 1 Trainer'),
(6, 106, 'CSCS Strength & Conditioning Specialist'),
(7, 109, 'Zumba & Pilates Licensed Instructor'),
(26, 111, 'NASM Corrective Exercise Specialist'),
(29, 114, 'USA Weightlifting (USAW) Level 1'),
(16, 101, 'Precision Nutrition Level 1'),
(30, 115, 'ACE Certified Personal Trainer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`ApplicationID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttendanceID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EquipmentID`);

--
-- Indexes for table `gymstaff`
--
ALTER TABLE `gymstaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`StaffID`,`MaintenanceSchedule`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `membership_plan`
--
ALTER TABLE `membership_plan`
  ADD PRIMARY KEY (`PlanID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgramID`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`RecordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `AttendanceID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `EquipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gymstaff`
--
ALTER TABLE `gymstaff`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `ProgramID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
