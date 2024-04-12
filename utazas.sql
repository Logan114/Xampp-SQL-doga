-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2024 at 08:41 AM
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
-- Database: `utazas`
--

-- --------------------------------------------------------

--
-- Table structure for table `jarmu`
--

CREATE TABLE `jarmu` (
  `jarmuAzon` int(32) NOT NULL,
  `tipus` varchar(20) NOT NULL,
  `varosAzon` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `jarmu`
--

INSERT INTO `jarmu` (`jarmuAzon`, `tipus`, `varosAzon`) VALUES
(199, 'Citaro', 3),
(200, 'Ikarus C80', 1),
(201, 'Ikarus C80', 4),
(202, 'Ikarus C80', 15),
(203, 'Citaro', 16);

-- --------------------------------------------------------

--
-- Table structure for table `sofor`
--

CREATE TABLE `sofor` (
  `soforAzon` int(32) NOT NULL,
  `vezetekNev` varchar(32) NOT NULL,
  `keresztNev` varchar(32) NOT NULL,
  `jarmuAzon` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `sofor`
--

INSERT INTO `sofor` (`soforAzon`, `vezetekNev`, `keresztNev`, `jarmuAzon`) VALUES
(1, 'Fekete', 'Béla', 199),
(2, 'Fekete', 'Béla', 203),
(3, 'Viktor', 'Tsoi', 202);

-- --------------------------------------------------------

--
-- Table structure for table `varos`
--

CREATE TABLE `varos` (
  `varosAzon` int(32) NOT NULL,
  `nev` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `varos`
--

INSERT INTO `varos` (`varosAzon`, `nev`) VALUES
(1, 'Nagykanizsa'),
(2, 'Nagykanizsa'),
(3, 'Kőszeg'),
(4, 'Tata'),
(5, 'Gárdony'),
(6, 'Kőszeg'),
(7, 'Tata'),
(8, 'Gárdony'),
(13, 'Szentpétervár'),
(14, 'Csepel'),
(15, 'Szentpétervár'),
(16, 'Csepel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jarmu`
--
ALTER TABLE `jarmu`
  ADD PRIMARY KEY (`jarmuAzon`),
  ADD KEY `jarmuAzon` (`jarmuAzon`),
  ADD KEY `varosAzon` (`varosAzon`);

--
-- Indexes for table `sofor`
--
ALTER TABLE `sofor`
  ADD PRIMARY KEY (`soforAzon`),
  ADD KEY `jarmuAzon` (`jarmuAzon`);

--
-- Indexes for table `varos`
--
ALTER TABLE `varos`
  ADD PRIMARY KEY (`varosAzon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jarmu`
--
ALTER TABLE `jarmu`
  MODIFY `jarmuAzon` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `sofor`
--
ALTER TABLE `sofor`
  MODIFY `soforAzon` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `varos`
--
ALTER TABLE `varos`
  MODIFY `varosAzon` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jarmu`
--
ALTER TABLE `jarmu`
  ADD CONSTRAINT `jarmu_ibfk_1` FOREIGN KEY (`varosAzon`) REFERENCES `varos` (`varosAzon`);

--
-- Constraints for table `sofor`
--
ALTER TABLE `sofor`
  ADD CONSTRAINT `sofor_ibfk_1` FOREIGN KEY (`jarmuAzon`) REFERENCES `jarmu` (`jarmuAzon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
