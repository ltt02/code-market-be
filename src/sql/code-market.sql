-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 06:14 PM
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
-- Database: `code-market`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `image_data` text DEFAULT NULL,
  `material` enum('CANVAS','CHIFFON','COPPER','COTTON','DENIM','FABRIC','GOLD','LACE','LEATHER','LINEN','NYLON','OTHER','POLYESTER','SILK','SILVER','SPANDEX','SYNTHETIC','VELVET','WOOL') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sale_percent` int(11) DEFAULT NULL,
  `type` enum('GAME','OTHER','WEB_BROWSERS','WORD_PROCESSING_SOFTWARE') DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `storage_capacity` decimal(10,2) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `downloads` bigint(20) DEFAULT NULL,
  `ratings` smallint(6) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `cost`, `created_at`, `image_data`, `material`, `name`, `price`, `sale_percent`, `type`, `updated_at`, `description`, `storage_capacity`, `images`, `downloads`, `ratings`, `user_id`) VALUES
(1, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'App A', 9.99, NULL, NULL, '2024-09-02 10:00:00.000000', 'This is a description for App A.', 150.50, 'https://example.com/images/app_a.png', 1000, 4, 1),
(2, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'App B', 0.00, NULL, NULL, '2024-09-02 10:00:00.000000', 'This is a description for App B.', 75.00, 'https://example.com/images/app_b.png', 50000, 5, 2),
(3, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'App C', 4.99, NULL, NULL, '2024-09-02 10:00:00.000000', 'This is a description for App C.', 200.00, 'https://example.com/images/app_c.png', 250, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application_category`
--

CREATE TABLE `application_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_category_detail`
--

CREATE TABLE `application_category_detail` (
  `application_id` bigint(20) NOT NULL,
  `application_category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`) VALUES
(3, 9),
(4, 10),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `application_id`) VALUES
(14, 5, 1),
(17, 5, 2),
(20, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `id` bigint(20) NOT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `receiver_account` varchar(20) DEFAULT NULL,
  `sender_account` varchar(20) DEFAULT NULL,
  `receiver` varchar(20) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) NOT NULL,
  `capped_at` decimal(10,2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_spend` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `uses_per_coupon` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`) VALUES
(3),
(6),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `github_profile` text DEFAULT NULL,
  `graduation_year` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `major` varchar(50) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `student_id` varchar(8) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`github_profile`, `graduation_year`, `is_available`, `major`, `skills`, `student_id`, `id`) VALUES
(NULL, NULL, 1, NULL, NULL, NULL, 5),
(NULL, NULL, NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `time_stamp` datetime(6) DEFAULT NULL,
  `conversation_id` bigint(20) DEFAULT NULL,
  `sender_account` varchar(20) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'USER'),
(2, 'DEVELOPER'),
(3, 'CUSTOMER'),
(4, 'SYSAD');

-- --------------------------------------------------------

--
-- Table structure for table `roles_privileges`
--

CREATE TABLE `roles_privileges` (
  `role_id` bigint(20) NOT NULL,
  `privilege_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT 0,
  `password` text DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_type` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `avatar`, `created_at`, `dob`, `email`, `locked`, `password`, `phone_number`, `updated_at`, `full_name`, `user_name`, `user_type`) VALUES
(1, 'sampleAvatarUrl', '2024-09-02 10:00:00.000000', '1990-01-01', 'tai@example.com', 0, '123', '0123456789', '2024-09-02 10:00:00.000000', 'TaiLT', 'tai', 'CUSTOMER'),
(2, NULL, NULL, '1990-01-01', 'tai@example.com', 0, '123', NULL, NULL, NULL, 'tai2', 'CUSTOMER'),
(3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai3', 'CUSTOMER'),
(5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', 'DEVELOPER'),
(6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai4', 'CUSTOMER'),
(9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai9', 'DEVELOPER'),
(10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai10', 'CUSTOMER'),
(11, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai11', 'DEVELOPER');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKldca8xj6lqb3rsqawrowmkqbg` (`user_id`);

--
-- Indexes for table `application_category`
--
ALTER TABLE `application_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_category_detail`
--
ALTER TABLE `application_category_detail`
  ADD KEY `FKssq7re999w91yk5nwwq4ypu6j` (`application_id`),
  ADD KEY `FK2j0ft26hxmno74bpyjogwmoqt` (`application_category_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK9emlp6m95v5er2bcqkjsw48he` (`user_id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrg4yopd2252nwj8bfcgq5f4jp` (`cart_id`),
  ADD KEY `FK4949x3myth2yqfahy8e5parmi` (`application_id`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKqb2p8x2oww38qboi2glkv4vu5` (`user_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6yskk3hxw5sklwgi25y6d5u1l` (`conversation_id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_privileges`
--
ALTER TABLE `roles_privileges`
  ADD KEY `FK5yjwxw2gvfyu76j3rgqwo685u` (`privilege_id`),
  ADD KEY `FK9h2vewsqh8luhfq71xokh4who` (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKlqjrcobrh9jc8wpcar64q1bfh` (`user_name`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `application_category`
--
ALTER TABLE `application_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FKldca8xj6lqb3rsqawrowmkqbg` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `application_category_detail`
--
ALTER TABLE `application_category_detail`
  ADD CONSTRAINT `FK2j0ft26hxmno74bpyjogwmoqt` FOREIGN KEY (`application_category_id`) REFERENCES `application_category` (`id`),
  ADD CONSTRAINT `FK47764x56qfm1y48g5tryuion6` FOREIGN KEY (`application_category_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKssq7re999w91yk5nwwq4ypu6j` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `FK4949x3myth2yqfahy8e5parmi` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `FKrg4yopd2252nwj8bfcgq5f4jp` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `FKmfuic7ht7p0xvyoxhq9oydhal` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FKg2o3t8h0g17smtr9jgypagdtv` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `FK58h0ehu3xw3tnaeurp3wo4eqd` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK6yskk3hxw5sklwgi25y6d5u1l` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`);

--
-- Constraints for table `roles_privileges`
--
ALTER TABLE `roles_privileges`
  ADD CONSTRAINT `FK5yjwxw2gvfyu76j3rgqwo685u` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`),
  ADD CONSTRAINT `FK9h2vewsqh8luhfq71xokh4who` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
