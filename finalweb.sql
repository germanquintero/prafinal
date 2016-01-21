-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 09:20 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `estadojuego`
--

CREATE TABLE `estadojuego` (
  `id` int(8) NOT NULL,
  `e_user1` int(11) NOT NULL,
  `e_user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estadojuego`
--

INSERT INTO `estadojuego` (`id`, `e_user1`, `e_user2`) VALUES
(1, 2, 0),
(2, 1, 0),
(3, 0, 2),
(4, 0, 0),
(5, 0, 1),
(6, 0, 0),
(7, 0, 0),
(8, 0, 2),
(9, 1, 0),
(10, 0, 0),
(11, 0, 1),
(12, 1, 0),
(13, 0, 0),
(14, 0, 1),
(15, 2, 0),
(16, 1, 0),
(17, 0, 2),
(18, 1, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 1),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 1),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'invitado', 'invitado'),
(4, 'profesor', 'profesor'),
(5, 'monitor', 'monitor');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `piso1`
--

CREATE TABLE `piso1` (
  `id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `h6_8` int(8) NOT NULL,
  `det6_8` varchar(20) NOT NULL,
  `enc6_8` varchar(20) NOT NULL,
  `h8_10` int(8) NOT NULL,
  `det8_10` varchar(20) NOT NULL,
  `enc8_10` int(11) NOT NULL,
  `h10_12` int(8) NOT NULL,
  `det10_12` varchar(20) NOT NULL,
  `enc10_12` varchar(20) NOT NULL,
  `h12_14` int(8) NOT NULL,
  `det12_14` varchar(20) NOT NULL,
  `enc12_14` varchar(20) NOT NULL,
  `h14_16` int(8) NOT NULL,
  `det14_16` varchar(20) NOT NULL,
  `enc14_16` varchar(20) NOT NULL,
  `h16_18` int(8) NOT NULL,
  `det16_18` varchar(20) NOT NULL,
  `enc16_18` varchar(20) NOT NULL,
  `inventario` varchar(300) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piso1`
--

INSERT INTO `piso1` (`id`, `estado`, `h6_8`, `det6_8`, `enc6_8`, `h8_10`, `det8_10`, `enc8_10`, `h10_12`, `det10_12`, `enc10_12`, `h12_14`, `det12_14`, `enc12_14`, `h14_16`, `det14_16`, `enc14_16`, `h16_18`, `det16_18`, `enc16_18`, `inventario`, `fecha`) VALUES
(1, 1, 5, '''Clase de 6''', '200', 3, '', 0, 3, '3', 'juan erez', 2, '', '', 1, '3', 'casi', 3, '', '', 'TRES computadores y dos mauses', ''),
(2, 1, 0, '', '', 3, '', 0, 3, '3', '0', 2, '', '', 1, '3', '', 4, '2', '', 'Televisor', ''),
(3, 3, 0, '', '', 3, '', 0, 3, '', '', 2, '', '', 1, '3', '', 4, '2', '', 'computador', ''),
(4, 3, 0, '', '', 1, '', 0, 3, '3', '0', 2, '', '', 3, '', '', 4, '2', '', 'maunse', ''),
(5, 1, 3, '', '', 3, '', 0, 3, '3', '0', 2, '', '', 1, '1', '', 4, '4', '', '3o sillas', ''),
(6, 5, 0, '', '', 3, '', 0, 3, '3', '0', 2, '', '', 1, '4', '', 4, '5', '', '10 cosas', ''),
(7, 3, 0, '', '', 3, '', 0, 3, '2', '0', 2, '', '', 1, '3', '', 4, '2', '', '1 video been', ''),
(8, 4, 0, '', '', 4, '', 0, 3, '3', '0', 3, '', '', 3, '', '', 2, '''reunion''', '', '', ''),
(9, 5, 0, '', '', 3, '', 0, 3, '1', '0', 3, '', '', 3, '2', '', 5, '''tescuatro''', '100', '', ''),
(10, 1, 3, '', '', 5, '', 0, 3, '3', '0', 3, '', '', 3, '', '', 4, '2', '', '', '10_12_2015'),
(11, 3, 0, '', '', 3, '', 0, 3, '3', '0', 2, '', '', 1, '''clase''', '200', 4, '2', '', '', ''),
(12, 1, 0, '', '', 2, '', 0, 3, '3', '0', 2, '', '', 4, '3', '', 4, '2', '', 'Dvd', ''),
(13, 3, 0, '', '', 3, '', 0, 4, '''Mantenimiento Aire''', '0', 3, '', '', 1, '3', '', 4, '2', '', 'Televisor', ''),
(14, 3, 0, '', '', 3, '', 0, 3, '3', '0', 2, '', '', 1, '3', '', 4, '2', '', '', ''),
(15, 2, 1, '', '', 3, '', 0, 5, '''No viene''', '301', 3, '', '', 1, '3', '', 4, '2', '', '', ''),
(16, 4, 0, '', '', 3, '', 0, 3, '1', '0', 2, '', '', 1, '3', '', 4, '2', '', '', ''),
(17, 3, 0, '', '', 3, '', 0, 3, '3', '0', 1, '', '', 1, '3', '', 4, '2', '', '', ''),
(18, 2, 0, '', '', 3, '', 0, 3, '''No viene''', '301', 2, '', '', 1, '3', '', 4, '2', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `piso2`
--

CREATE TABLE `piso2` (
  `id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `h6_8` int(8) NOT NULL,
  `det6_8` varchar(20) NOT NULL,
  `enc6_8` varchar(20) NOT NULL,
  `h8_10` int(8) NOT NULL,
  `det8_10` varchar(20) NOT NULL,
  `enc8_10` int(11) NOT NULL,
  `h10_12` int(8) NOT NULL,
  `det10_12` varchar(20) NOT NULL,
  `enc10_12` varchar(20) NOT NULL,
  `h12_14` int(8) NOT NULL,
  `det12_14` varchar(20) NOT NULL,
  `enc12_14` varchar(20) NOT NULL,
  `h14_16` int(8) NOT NULL,
  `det14_16` varchar(20) NOT NULL,
  `enc14_16` varchar(20) NOT NULL,
  `h16_18` int(8) NOT NULL,
  `det16_18` varchar(20) NOT NULL,
  `enc16_18` varchar(20) NOT NULL,
  `inventario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piso2`
--

INSERT INTO `piso2` (`id`, `estado`, `h6_8`, `det6_8`, `enc6_8`, `h8_10`, `det8_10`, `enc8_10`, `h10_12`, `det10_12`, `enc10_12`, `h12_14`, `det12_14`, `enc12_14`, `h14_16`, `det14_16`, `enc14_16`, `h16_18`, `det16_18`, `enc16_18`, `inventario`) VALUES
(1, 1, 1, 'Libre Piso2', 'Monitor Piso2', 2, 'Pisoss2', 0, 4, '3', 'juan Perez Piso2', 5, '2', 'hola Piso2', 1, '3', 'Pissso3', 2, '3', '', ''),
(2, 1, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 2, '2', '', 1, '3', '', 4, '2', '', 'tres computadores y dos mauses'),
(3, 3, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 3, '', '', 1, '3', '', 4, '2', '', 'cuatro computadores y dos mauses'),
(4, 3, 3, '', '', 1, '''putt''', 0, 3, '3', '0', 2, '2', '', 1, '3', '', 4, '2', '', 'cinco computadores y dos mauses'),
(5, 1, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 2, '2', '', 1, '1', '', 4, '4', '', 'seis computadores y dos mauses'),
(6, 5, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 2, '2', '', 1, '4', '', 4, '5', '', 'siete computadores y dos mauses'),
(7, 3, 0, '0', '', 3, '''putt''', 0, 3, '2', '0', 2, '2', '', 1, '3', '', 4, '2', '', ''),
(8, 4, 0, '0', '', 4, '''Pelicula''', 201, 3, '3', '0', 1, '2', '', 1, '3', '', 2, '''reunion''', '', ''),
(9, 5, 0, '0', '', 3, '''putt''', 0, 3, '1', '0', 3, '2', '', 3, '2', '', 1, '''Abierta''', '201', ''),
(10, 1, 5, '''cas''', '', 3, '', 0, 3, '3', '0', 3, '''holaaa''', '', 2, '3', '', 4, '2', '', ''),
(11, 3, 0, '0', '', 3, '''putt''', 0, 5, '''holakos''', '101', 2, '2', '', 2, '3', '', 3, '''Pruebaene''', '300', ''),
(12, 1, 4, '''was''', '201', 4, '''Reunion''', 300, 2, '''trescuatro''', '200', 3, '', '', 4, '3', '', 4, '2', '', ''),
(13, 3, 0, '0', '', 3, '''putt''', 0, 4, '''Mantenimiento Aire''', '0', 2, '''''nadass', '300', 1, '3', '', 4, '2', '', ''),
(14, 3, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 2, '2', '', 1, '3', '', 4, '2', '', ''),
(15, 2, 0, '0', '', 3, '', 0, 3, '2', '0', 3, '3', '', 1, '3', '', 4, '2', '', ''),
(16, 4, 0, '0', '', 3, '''putt''', 0, 3, '1', '0', 2, '2', '', 1, '3', '', 4, '2', '', ''),
(17, 3, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 1, '1', '', 1, '3', '', 4, '2', '', ''),
(18, 2, 0, '0', '', 3, '''putt''', 0, 3, '3', '0', 2, '3', '', 1, '3', '', 4, '2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `state_u1`
--

CREATE TABLE `state_u1` (
  `state_U1` int(11) NOT NULL,
  `state_U2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `ganados` int(8) NOT NULL,
  `perdidos` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `ganados`, `perdidos`, `total`) VALUES
(1, '127.0.0.1', 'geraqf', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'geraqf@yahoo.com', '', NULL, NULL, NULL, 1268889823, 1453320542, 1, 'Admin', 'istrator', 'ADMIN', '0', 0, 0, 0),
(2, '::1', 'german1', '$2y$08$6LM9KKvy3odT3cyreaMN0utk76q6VwHxdZVExEC8AUglFlhLJbANC', NULL, 'invitado1@invitado1.com', NULL, NULL, NULL, 'GIy9y9TZVXE75RUYkb8/0O', 1450404317, 1453288366, 1, 'german1', 'german1', 'german1', '123', 13, 4, 17),
(3, '::1', 'german2', '$2y$08$ND3//Mh8N3hSep39ieWv9.cjhnCD.RrAqKHgCcx9gUjmWbAtkPZxm', NULL, 'invitado2@invitado2.com', NULL, NULL, NULL, NULL, 1450444738, 1453146278, 1, 'german2', 'german2', 'german2', '456', 8, 11, 19),
(5, '::1', NULL, '$2y$08$hOvQRZVI23unlSlAm2AA5etArk56NymRl46HOOy1ZqNQuPwZbqhAS', NULL, 'profesor1@profesor1.com', NULL, NULL, NULL, NULL, 1450727406, 1453300813, 1, 'german3', 'german3', 'german3', '234312321', 1, 4, 5),
(6, '::1', NULL, '$2y$08$plumE63ZpAQ2jyVGvsVm2O75FS2pgqOZaFUpQaT1jhIxgG.nrcIo.', NULL, 'profesor2@profesor2.com', NULL, NULL, NULL, NULL, 1453127324, NULL, 1, 'a1@a1.com', 'a1@a1.com', 'a1@a1.com', '123', 0, 0, 0),
(7, '::1', NULL, '$2y$08$6a024uMcr1JUJJoMVo91T.nwgMQZu8EQrI78Uwrkkq5./ZnZ3Ax1G', NULL, 'monitor1@monitor1.com', NULL, NULL, NULL, NULL, 1453148165, 1453258552, 1, 'monitor1', 'monitor1', 'monitor1', '123', 0, 0, 0),
(8, '::1', NULL, '$2y$08$HjEkwk9yrO8PG3SvvdGIweixKsXMDhh8kL91UzNGGAyHKsNrbhohG', NULL, 'monitor2@monitor2.com', NULL, NULL, NULL, NULL, 1453148209, NULL, 1, 'monitor2', 'monitor2', 'monitor2', '123', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(8, 1, 1),
(17, 2, 3),
(20, 3, 3),
(13, 5, 4),
(21, 6, 4),
(22, 7, 5),
(23, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `ced` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `ced`, `nombres`, `rol`) VALUES
(1, 100, 'invitado1', 'invitado'),
(2, 101, 'invitado2', 'invitado'),
(3, 200, 'profesor1', 'profesor'),
(4, 201, 'profesor2', 'profesor'),
(5, 300, 'monitor1', 'monitor'),
(6, 301, 'monitor2', 'monitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estadojuego`
--
ALTER TABLE `estadojuego`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piso1`
--
ALTER TABLE `piso1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piso2`
--
ALTER TABLE `piso2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estadojuego`
--
ALTER TABLE `estadojuego`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piso1`
--
ALTER TABLE `piso1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `piso2`
--
ALTER TABLE `piso2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
