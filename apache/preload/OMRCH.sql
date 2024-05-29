-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 29, 2024 at 02:15 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `OMRCH`
--

-- --------------------------------------------------------

--
-- Table structure for table `Contest`
--

CREATE TABLE `Contest` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `sede_id` int DEFAULT NULL,
  `duration_minutes` int NOT NULL,
  `contest_date` varchar(15) NOT NULL,
  `levels` varchar(255) DEFAULT NULL,
  `m_V_primaria` int NOT NULL DEFAULT '0',
  `VI_primaria` int NOT NULL DEFAULT '0',
  `I_secundaria` int NOT NULL DEFAULT '0',
  `II_secundaria` int NOT NULL DEFAULT '0',
  `III_t_secundaria` int NOT NULL DEFAULT '0',
  `I_to_II_prepa` int NOT NULL DEFAULT '0',
  `III_to_IV_prepa` int NOT NULL DEFAULT '0',
  `V_to_VI_prepa` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `V_primaria` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Contest`
--

INSERT INTO `Contest` (`id`, `name`, `sede_id`, `duration_minutes`, `contest_date`, `levels`, `m_V_primaria`, `VI_primaria`, `I_secundaria`, `II_secundaria`, `III_t_secundaria`, `I_to_II_prepa`, `III_to_IV_prepa`, `V_to_VI_prepa`, `status`, `V_primaria`) VALUES
(2, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(3, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(4, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(5, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(6, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(7, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(8, 'MEXICANDA', 27, 90, '2030-11-03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(9, '', 25, 90, '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10, 'omrch', 25, 90, '2024-05-16', NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(11, 'omrch', 25, 90, '2024-05-16', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(12, 'omrch', 25, 90, '2024-05-14', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(13, 'aaa|', 25, 12, '2024-05-22', NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(14, 'aaa|', 25, 12, '2024-05-22', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(15, 'aa', 25, 111, '2024-05-23', NULL, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1),
(16, 'aa', 26, 111, '2024-05-21', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ContestUsers`
--

CREATE TABLE `ContestUsers` (
  `id` int NOT NULL,
  `contest_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CRONOS`
--

CREATE TABLE `CRONOS` (
  `id` int NOT NULL,
  `salon_id` int DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE `Messages` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `contest_id` int DEFAULT NULL,
  `sede_id` int DEFAULT NULL,
  `message_text` text NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `sender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`id`, `user_id`, `contest_id`, `sede_id`, `message_text`, `sent_at`, `sender`) VALUES
(3, NULL, NULL, NULL, 'hi im the first test', NULL, 'sismo'),
(4, NULL, NULL, NULL, 'hi im the first test', NULL, 'sismo'),
(5, NULL, NULL, NULL, 'hi im the second test', NULL, 'sismo'),
(6, NULL, NULL, NULL, 'this is the 3er menssage.', NULL, 'sismo'),
(7, 1, NULL, 1, 'Holaaa', '2024-05-28 18:43:42', 'clu'),
(8, 1, NULL, 1, 'Alexis este es un test', '2024-05-28 19:26:38', 'clu'),
(9, 1, NULL, 1, 'Hola 123', '2024-05-28 19:29:05', 'clu');

-- --------------------------------------------------------

--
-- Table structure for table `Participants`
--

CREATE TABLE `Participants` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `identifier_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `participating_sede_id` int DEFAULT NULL,
  `assigned_salon_id` int DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `coach_email` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `competition_level` varchar(255) NOT NULL,
  `coach_name` varchar(255) NOT NULL,
  `REGISTRATION_TIMESTAMP` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Participants`
--

INSERT INTO `Participants` (`id`, `name`, `identifier_code`, `participating_sede_id`, `assigned_salon_id`, `email`, `coach_email`, `school`, `competition_level`, `coach_name`, `REGISTRATION_TIMESTAMP`) VALUES
(1, 'Alexis Ramon Ortiz Cecena', NULL, NULL, NULL, 'alexis@test.com', 'manu@test.com', 'cucei', 'I', 'manu', '2024-02-10T00:17:23.085Z'),
(2, 'IKER', NULL, NULL, NULL, 'a@s.com', 'a@s.com', 'a@s.com', 'I', 'a@s.com', '2024-02-12T19:42:25.202Z'),
(3, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:06:42.808Z'),
(4, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:01.766Z'),
(5, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:11.434Z'),
(6, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:17.406Z'),
(7, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:21.052Z'),
(8, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:23.850Z'),
(9, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:27:26.384Z'),
(10, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:28:21.157Z'),
(11, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:28:28.610Z'),
(12, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:28:32.151Z'),
(13, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:32:38.733Z'),
(14, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:35:59.057Z'),
(15, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:37:40.536Z'),
(16, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:39:09.443Z'),
(17, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:56:08.082Z'),
(18, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T04:57:23.546Z'),
(19, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:03:22.291Z'),
(20, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:04:27.179Z'),
(21, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:05:50.680Z'),
(22, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:08:40.598Z'),
(23, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:10:43.216Z'),
(24, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:16:00.936Z'),
(25, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:17:22.992Z'),
(26, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-14T05:19:21.688Z'),
(27, 'Iker Yared Covarrubias Famoso', NULL, NULL, NULL, 'eslatutuberoso@gmail.com', 'Patricio@gmail.com', 'UDG CUCEI', 'I', 'Patricio Estrella ', '2024-02-15T22:17:44.081Z'),
(28, 'alexis', NULL, NULL, NULL, 'vemos@gmail.com', 'manuplas@test.com', 'udeg', 'V', 'manuplas', '2024-03-29T23:11:08.202Z'),
(29, 'alexis', NULL, NULL, NULL, 'alexis@vemos.com', 'manuplas@test.com', 'isabel la catolica', 'IV', 'manuplas', '2024-03-29T23:14:57.532Z');

-- --------------------------------------------------------

--
-- Table structure for table `ROLES`
--

CREATE TABLE `ROLES` (
  `id` int NOT NULL,
  `rol` varchar(255) NOT NULL,
  `user_type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Salon`
--

CREATE TABLE `Salon` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sede_id` int DEFAULT NULL,
  `responsible_teacher_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Salon`
--

INSERT INTO `Salon` (`id`, `name`, `building`, `sede_id`, `responsible_teacher_id`) VALUES
(8, 'salon-1', NULL, 25, NULL),
(9, 'salon-2', NULL, 25, NULL),
(10, 'salon-3', NULL, 25, NULL),
(11, 'salon-1', NULL, 26, NULL),
(12, 'salon-2', NULL, 26, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_name` varchar(255) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sedes`
--

CREATE TABLE `Sedes` (
  `id` int NOT NULL,
  `sede_name` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `classroom_capacity` int NOT NULL,
  `classrooms` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sedes`
--

INSERT INTO `Sedes` (`id`, `sede_name`, `status`, `classroom_capacity`, `classrooms`) VALUES
(1, 'ADMIN', 0, 0, 0),
(25, 'CUCEI', 1, 30, 3),
(26, 'CUCEA', 1, 24, 2),
(27, 'Prepa 15', 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type_id` int NOT NULL,
  `sede_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted` int NOT NULL DEFAULT '0',
  `classroom_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`id`, `username`, `password`, `user_type_id`, `sede_id`, `status`, `deleted`, `classroom_id`) VALUES
(1, 'clu', 'a464af16d66ad243a8ca5989a8f07779', 1, 1, 1, 0, NULL),
(2, 'sismo', 'ea6b2efbdd4255a9f1b3bbc6399b58f4', 1, 1, 1, 0, NULL),
(3, 'rinzler', '4297f44b13955235245b2497399d7a93', 1, 1, 1, 0, NULL),
(19, 'STAFFCUCEI-1', 'd48c418b563ab778a7f1d46f9a2eedf5', 3, 25, 1, 0, NULL),
(20, 'STAFFCUCEI-2', '927b1d7ce4e99cc7a7e4b8764a9ec9b7', 3, 25, 1, 0, NULL),
(21, 'CUCEI-1', '0e75c349709f926bed60865db91f3288', 4, 25, 1, 0, NULL),
(22, 'CUCEI-2', '8e0eb9142676cd80a2779a433e538ea4', 4, 25, 1, 0, NULL),
(23, 'CUCEI-3', '030280573e812125d14b712623c542f2', 4, 25, 1, 0, NULL),
(24, 'STAFFCUCEA-1', '6c7466637f02a52e9988e2307a591dc0', 3, 26, 1, 0, NULL),
(25, 'STAFFCUCEA-2', 'c5492b00dba1aabfe45c7e79256647e2', 3, 26, 1, 0, NULL),
(26, 'CUCEA-1', 'b6a2d11718684fa9a94320a344b4626b', 4, 26, 1, 0, NULL),
(27, 'CUCEA-2', '102394ad0d7b54d3431316c3bfd05996', 4, 26, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `USER_TYPE`
--

CREATE TABLE `USER_TYPE` (
  `id` int NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contest`
--
ALTER TABLE `Contest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sede_id` (`sede_id`);

--
-- Indexes for table `ContestUsers`
--
ALTER TABLE `ContestUsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contest_id` (`contest_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `CRONOS`
--
ALTER TABLE `CRONOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `contest_id` (`contest_id`),
  ADD KEY `sede_id` (`sede_id`);

--
-- Indexes for table `Participants`
--
ALTER TABLE `Participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_code` (`identifier_code`),
  ADD KEY `participating_sede_id` (`participating_sede_id`),
  ADD KEY `assigned_salon_id` (`assigned_salon_id`);

--
-- Indexes for table `ROLES`
--
ALTER TABLE `ROLES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `Salon`
--
ALTER TABLE `Salon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sede_id` (`sede_id`),
  ADD KEY `responsible_teacher_id` (`responsible_teacher_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sedes`
--
ALTER TABLE `Sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Contest`
--
ALTER TABLE `Contest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ContestUsers`
--
ALTER TABLE `ContestUsers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CRONOS`
--
ALTER TABLE `CRONOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Participants`
--
ALTER TABLE `Participants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ROLES`
--
ALTER TABLE `ROLES`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Salon`
--
ALTER TABLE `Salon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Sedes`
--
ALTER TABLE `Sedes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Contest`
--
ALTER TABLE `Contest`
  ADD CONSTRAINT `Contest_ibfk_1` FOREIGN KEY (`sede_id`) REFERENCES `Sedes` (`id`);

--
-- Constraints for table `ContestUsers`
--
ALTER TABLE `ContestUsers`
  ADD CONSTRAINT `ContestUsers_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `Contest` (`id`),
  ADD CONSTRAINT `ContestUsers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`id`);

--
-- Constraints for table `CRONOS`
--
ALTER TABLE `CRONOS`
  ADD CONSTRAINT `CRONOS_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `Salon` (`id`);

--
-- Constraints for table `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `Messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`id`),
  ADD CONSTRAINT `Messages_ibfk_2` FOREIGN KEY (`contest_id`) REFERENCES `Contest` (`id`),
  ADD CONSTRAINT `Messages_ibfk_3` FOREIGN KEY (`sede_id`) REFERENCES `Sedes` (`id`);

--
-- Constraints for table `Participants`
--
ALTER TABLE `Participants`
  ADD CONSTRAINT `Participants_ibfk_1` FOREIGN KEY (`participating_sede_id`) REFERENCES `Sedes` (`id`),
  ADD CONSTRAINT `Participants_ibfk_2` FOREIGN KEY (`assigned_salon_id`) REFERENCES `Salon` (`id`);

--
-- Constraints for table `ROLES`
--
ALTER TABLE `ROLES`
  ADD CONSTRAINT `ROLES_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `USER_TYPE` (`id`);

--
-- Constraints for table `Salon`
--
ALTER TABLE `Salon`
  ADD CONSTRAINT `Salon_ibfk_1` FOREIGN KEY (`sede_id`) REFERENCES `Sedes` (`id`),
  ADD CONSTRAINT `Salon_ibfk_2` FOREIGN KEY (`responsible_teacher_id`) REFERENCES `USERS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
