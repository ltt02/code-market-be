-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 08:41 PM
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
  `type` enum('APPLICATION','TEMPLATE','GAME','OTHER','WEB_BROWSERS','WORD_PROCESSING_SOFTWARE') DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `storage_capacity` decimal(10,2) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `downloads` bigint(20) DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `cost`, `created_at`, `image_data`, `material`, `name`, `price`, `sale_percent`, `type`, `updated_at`, `description`, `storage_capacity`, `images`, `downloads`, `ratings`, `developer_id`) VALUES
(1, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Lufz - Law Firm & Attorney Angular 13 Template', 250000.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Lufz là mẫu Angular hiện đại dành cho trang web của Công ty luật & Luật sư. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này dành cho các doanh nghiệp tư vấn luật như Luật sư, Luật sư, Công ty luật, Luật sư biện hộ, Luật sư, Thẩm phán, Cơ quan luật và nhiều trang web cung cấp dịch vụ pháp lý khác.', 150.00, 'https://code.market/imgproxy/2024/06/Lufz-Law-Firm-Attorney-Angular-13-Template.jpeg', 1000, 1.3, 1),
(2, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Pilar - Directory & Listing Angular Template', 37000.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Pilar là một mẫu Angular hiện đại đáp ứng cho các trang web Danh mục & Danh sách rao vặt. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này lý tưởng cho các cá nhân và công ty có sáng kiến ​​kinh doanh khởi nghiệp dựa trên danh mục và danh sách, dịch vụ dựa trên Google Maps hoặc OpenStreetMap, Doanh nghiệp niêm yết, v.v. Ngoài ra, mẫu này phù hợp với Danh mục rao vặt và bất kỳ cơ quan kinh doanh liên quan nào khác.', 75.00, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', 50000, 2.5, 2),
(3, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Dizo - Angular Print on Demand Services Template', 160000.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Dizo là mẫu Angular hiện đại sáng tạo dành cho trang web của Nhà cung cấp dịch vụ in theo yêu cầu. Mẫu này được tạo bằng Angular, TypeScript, Bootstrap, CSS và Sass. Dizo là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 200.00, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', 250, 5, 1),
(5, NULL, NULL, NULL, NULL, 'Kiaz - Angular Cleaning & Disinfecting Services', 120000.00, NULL, 'APPLICATION', '2024-09-17 22:09:21.000000', 'Kiaz là mẫu Angular hiện đại mới dành cho trang web Dịch vụ khử trùng, vệ sinh, giặt giũ, khử trùng, khử trùng, cải tạo hoặc kiểm soát dịch hại. Mẫu này được xây dựng trên Angular, TypeScript, Sass & Bootstrap. Mẫu này hợp lệ với W3 và chứa bố cục thiết kế tập trung vào người dùng Retina Ready. Kiaz là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 350.00, 'https://code.market/imgproxy/2024/05/Kiaz-Angular-Cleaning-Disinfecting-Services.jpeg', 1000, 3.8, 3),
(6, NULL, '2024-09-17 22:10:11.000000', NULL, NULL, 'StarSync - Astro App React Native Template', 120000.00, NULL, 'TEMPLATE', '2024-09-17 22:10:11.000000', 'Giải phóng sức mạnh của các vì sao với StarSync – người bạn đồng hành tuyệt vời của bạn cho chiêm tinh học trong lòng bàn tay. Lặn vào vũ trụ và khám phá những điều bí ẩn của vũ trụ với ứng dụng hỗ trợ AI của chúng tôi. Cho dù bạn là người đam mê chiêm tinh học, một tâm hồn tò mò hay đang tìm kiếm sự hướng dẫn của vũ trụ, StarSync đều cung cấp những hiểu biết được cá nhân hóa và trí tuệ thiên thể ngay trong tầm tay bạn. Từ tử vi hàng ngày đến các bài đọc biểu đồ sinh được cá nhân hóa, ứng dụng của chúng tôi trao quyền cho bạn để điều hướng hành trình cuộc sống với sự rõ ràng và mục đích. Trải nghiệm sự kỳ diệu của chiêm tinh học chưa từng có với StarSync—nơi vũ trụ lên tiếng và mọi chòm sao đều thẳng hàng.', 450.00, 'https://code.market/imgproxy/2024/05/StarSync-Astro-App-React-Native-Template.jpg', 1000, 4, 3),
(7, NULL, '2024-09-17 22:11:03.000000', NULL, NULL, 'Nuva - Diving & Swimming School Angular Template', 300000.00, NULL, 'TEMPLATE', '2024-09-17 22:11:03.000000', 'Nuva là mẫu HTML hiện đại đáp ứng cho trang web Trung tâm hoặc Câu lạc bộ bơi lội, Trường dạy lặn biển, Đào tạo lướt sóng & Lặn biển. Mẫu này hợp lệ với W3 và có bố cục thiết kế tập trung vào khách truy cập Retina Ready. Nuva là mẫu cao cấp và hoàn toàn t', 550.00, 'https://code.market/imgproxy/2024/05/Nuva-Diving-Swimming-School-Angular-Template.jpeg', 1000, 3.6, 3),
(8, NULL, NULL, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', NULL, 'Spike Free Angular Admin Dashboard Template', 200000.00, NULL, 'TEMPLATE', NULL, 'Mẫu Angular Admin Dashboard của chúng tôi cung cấp thiết kế theo mô-đun và các thành phần UI có thể tái sử dụng, được thiết kế riêng cho những ai cần giải pháp thiết kế đáng tin cậy và đáp ứng cho nhiều kích cỡ màn hình khác nhau. Đây là điểm khởi đầu hoà', 400.00, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', 9999999, 4.7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `application_category`
--

CREATE TABLE `application_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_category`
--

INSERT INTO `application_category` (`id`, `name`) VALUES
(1, 'Thương mại điện tử'),
(3, 'Pháp luật'),
(4, 'Kiến trúc'),
(5, 'Giáo dục'),
(6, 'Dịch vụ');

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
-- Table structure for table `application_framework`
--

CREATE TABLE `application_framework` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_framework`
--

INSERT INTO `application_framework` (`id`, `name`) VALUES
(1, 'Laravel'),
(2, 'Flutter'),
(3, 'ReactFlow'),
(4, 'Ionic'),
(5, 'iOS'),
(6, 'React Native'),
(7, 'Unity'),
(8, 'WordPress'),
(9, 'Angular'),
(10, 'React'),
(11, 'Bootstrap'),
(12, 'Vue');

-- --------------------------------------------------------

--
-- Table structure for table `application_framework_detail`
--

CREATE TABLE `application_framework_detail` (
  `application_framework_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_framework_detail`
--

INSERT INTO `application_framework_detail` (`application_framework_id`, `application_id`) VALUES
(6, 6),
(9, 1),
(9, 2),
(9, 3),
(9, 5),
(9, 7),
(9, 8);

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
(6, 5),
(3, 9),
(4, 10),
(5, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15),
(11, 16),
(12, 17),
(13, 18),
(14, 19),
(15, 20),
(16, 21),
(17, 22),
(18, 23),
(19, 24),
(20, 25),
(21, 26);

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
(22, 6, 5),
(23, 6, 7),
(33, 5, 6),
(34, 5, 2),
(35, 5, 7),
(36, 5, 3),
(161, 7, 7);

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
  `user_id` bigint(20) DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `capped_at`, `code`, `created_at`, `description`, `end_date`, `min_spend`, `start_date`, `status`, `type`, `updated_at`, `uses_per_coupon`, `value`, `user_id`, `developer_id`) VALUES
(1, 500000.00, 'SALEOFF01', '2024-11-02 17:22:03.000000', NULL, '2024-11-22', 10000.00, '2024-11-02', 'active', 'percentage', NULL, 10, 10.00, NULL, 1),
(2, 500000.00, 'SALEOFF01', '2024-11-02 17:22:03.000000', NULL, '2024-11-22', 10000.00, '2024-11-02', 'active', 'percentage', NULL, 10, 10.00, NULL, 1);

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
(6),
(10),
(12),
(13),
(14),
(15),
(16),
(17),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` bigint(20) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('CANCELLED','CREATING','DELIVERED','SUCCESSFUL','ON_HOLD','PENDING_PAYMENT','PROCESSING','REFUNDED','SHIPPED') DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `create_date`, `note`, `status`, `total`, `coupon_id`, `customer_id`, `payment_id`, `developer_id`) VALUES
(19, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 19, NULL),
(20, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 20, NULL),
(21, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 21, NULL),
(22, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 22, NULL),
(23, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 23, NULL),
(24, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 24, NULL),
(25, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 25, NULL),
(26, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 26, NULL),
(27, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 27, NULL),
(28, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 28, NULL),
(29, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 29, NULL),
(30, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 30, NULL),
(31, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 31, NULL),
(32, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 32, NULL),
(33, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 33, NULL),
(34, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 34, NULL),
(35, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 35, NULL),
(36, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 36, NULL),
(37, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 37, NULL),
(38, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, NULL, NULL),
(39, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 38, NULL),
(40, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, NULL),
(41, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, NULL),
(42, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 39, NULL),
(43, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 40, NULL),
(44, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 41, NULL),
(45, NULL, NULL, 'PROCESSING', 0.00, NULL, 12, 42, NULL),
(46, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 43, NULL),
(47, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 44, NULL),
(48, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 45, NULL),
(49, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 46, NULL),
(50, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 47, NULL),
(51, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 48, NULL),
(52, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 49, NULL),
(53, NULL, NULL, 'PROCESSING', 120000.00, NULL, 12, 50, NULL),
(54, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 51, NULL),
(55, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 52, NULL),
(56, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 53, NULL),
(57, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 54, NULL),
(58, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 55, NULL),
(59, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 56, NULL),
(60, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 57, NULL),
(61, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 58, NULL),
(62, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 59, NULL),
(63, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 60, NULL),
(64, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 61, NULL),
(65, NULL, NULL, 'PROCESSING', 157000.00, NULL, 12, 62, NULL),
(66, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 63, NULL),
(67, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 64, NULL),
(68, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 65, NULL),
(69, NULL, NULL, 'PROCESSING', 120000.00, NULL, 12, 66, NULL),
(70, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 67, NULL),
(71, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 68, NULL),
(72, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 69, NULL),
(73, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 70, NULL),
(74, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 71, NULL),
(75, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 72, NULL),
(76, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 73, NULL),
(77, NULL, NULL, 'PROCESSING', 200000.00, NULL, 12, 74, NULL),
(78, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 75, NULL),
(79, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 76, NULL),
(80, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 77, NULL),
(81, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 78, NULL),
(82, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 79, NULL),
(83, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 80, NULL),
(84, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 81, NULL),
(85, NULL, NULL, 'PROCESSING', 457000.00, NULL, 12, 82, NULL),
(86, '2024-11-01 22:44:19.000000', NULL, 'PROCESSING', NULL, NULL, 12, NULL, NULL),
(87, '2024-11-01 22:44:20.000000', NULL, 'PROCESSING', NULL, NULL, 12, NULL, NULL),
(88, '2024-11-01 22:44:21.000000', NULL, 'PROCESSING', NULL, NULL, 12, NULL, NULL),
(89, '2024-11-01 22:45:00.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, NULL),
(90, '2024-11-01 22:50:07.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, NULL),
(91, '2024-11-01 23:11:20.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, NULL),
(92, '2024-11-01 23:15:39.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(93, '2024-11-01 23:15:39.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(94, '2024-11-01 23:15:48.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(95, '2024-11-01 23:15:49.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(96, '2024-11-01 23:15:51.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(97, '2024-11-01 23:15:52.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(98, '2024-11-01 23:15:52.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(99, '2024-11-01 23:15:52.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(100, '2024-11-01 23:15:53.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(101, '2024-11-01 23:15:53.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(102, '2024-11-01 23:16:56.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(103, '2024-11-01 23:16:59.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(104, '2024-11-01 23:16:59.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(105, '2024-11-01 23:16:59.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(106, '2024-11-01 23:16:59.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(107, '2024-11-01 23:17:00.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(108, '2024-11-01 23:17:31.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(109, '2024-11-01 23:19:21.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(110, '2024-11-01 23:19:25.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(111, '2024-11-01 23:19:54.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(112, '2024-11-01 23:20:23.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(113, '2024-11-01 23:20:24.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(114, '2024-11-01 23:20:38.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(115, '2024-11-01 23:20:38.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(116, '2024-11-01 23:20:38.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(117, '2024-11-01 23:36:27.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(118, '2024-11-01 23:36:27.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(119, '2024-11-01 23:36:27.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(120, '2024-11-01 23:38:11.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(121, '2024-11-01 23:38:33.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(122, '2024-11-01 23:38:36.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(123, '2024-11-01 23:38:37.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(124, '2024-11-01 23:39:12.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(125, '2024-11-01 23:42:59.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(126, '2024-11-01 23:43:18.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(127, '2024-11-01 23:44:01.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(128, '2024-11-01 23:44:43.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(129, '2024-11-01 23:46:58.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(130, '2024-11-01 23:47:05.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(131, '2024-11-01 23:47:13.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(132, '2024-11-01 23:49:27.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(133, '2024-11-01 23:49:28.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(134, '2024-11-01 23:49:29.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(135, '2024-11-01 23:49:55.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(136, '2024-11-01 23:49:59.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(137, '2024-11-01 23:50:03.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(138, '2024-11-01 23:53:07.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(139, '2024-11-02 00:45:38.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(140, '2024-11-02 00:50:25.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(141, '2024-11-02 00:59:06.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(142, '2024-11-02 01:03:39.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(143, '2024-11-02 01:03:57.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(144, '2024-11-02 01:04:11.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(145, '2024-11-02 01:05:47.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(146, '2024-11-02 01:05:47.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(147, '2024-11-02 01:05:47.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(148, '2024-11-02 01:07:27.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(149, '2024-11-02 01:07:38.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(150, '2024-11-02 01:07:40.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(151, '2024-11-02 01:15:20.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(152, '2024-11-02 01:15:20.000000', NULL, 'PROCESSING', 37000.00, NULL, 12, NULL, 2),
(153, '2024-11-02 01:15:20.000000', NULL, 'PROCESSING', 420000.00, NULL, 12, NULL, 3),
(154, '2024-11-02 01:21:38.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(155, '2024-11-02 01:21:39.000000', NULL, 'PROCESSING', 237000.00, NULL, 12, NULL, 2),
(156, '2024-11-02 01:21:40.000000', NULL, 'PROCESSING', 540000.00, NULL, 12, NULL, 3),
(157, '2024-11-02 01:23:07.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(158, '2024-11-02 01:23:08.000000', NULL, 'PROCESSING', 237000.00, NULL, 12, NULL, 2),
(159, '2024-11-02 01:23:10.000000', NULL, 'PROCESSING', 540000.00, NULL, 12, NULL, 3),
(160, '2024-11-02 01:24:08.000000', NULL, 'PROCESSING', 0.00, NULL, 12, NULL, 1),
(161, '2024-11-02 01:24:08.000000', NULL, 'PROCESSING', 237000.00, NULL, 12, NULL, 2),
(162, '2024-11-02 01:24:08.000000', NULL, 'PROCESSING', 540000.00, NULL, 12, NULL, 3),
(166, '2024-11-02 13:51:04.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(167, '2024-11-02 13:51:04.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(168, '2024-11-02 13:51:04.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(169, '2024-11-02 14:07:28.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(170, '2024-11-02 14:07:28.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(171, '2024-11-02 14:07:28.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(172, '2024-11-02 14:30:22.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(173, '2024-11-02 14:30:22.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(174, '2024-11-02 14:30:22.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(175, '2024-11-02 14:32:13.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(176, '2024-11-02 14:32:13.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(177, '2024-11-02 14:32:13.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(178, '2024-11-02 14:34:27.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(179, '2024-11-02 14:34:27.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(180, '2024-11-02 14:34:27.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(181, '2024-11-02 14:35:28.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(182, '2024-11-02 14:35:28.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(183, '2024-11-02 14:35:28.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(184, '2024-11-02 14:36:56.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(185, '2024-11-02 14:36:56.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(186, '2024-11-02 14:36:56.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(187, '2024-11-02 14:38:00.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(188, '2024-11-02 14:38:00.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(189, '2024-11-02 14:38:00.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(190, '2024-11-02 14:40:27.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(191, '2024-11-02 14:40:27.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(192, '2024-11-02 14:40:27.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(193, '2024-11-02 14:42:18.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(194, '2024-11-02 14:42:18.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(195, '2024-11-02 14:42:18.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(196, '2024-11-02 14:50:41.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(197, '2024-11-02 14:50:41.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(198, '2024-11-02 14:50:41.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(199, '2024-11-02 14:51:08.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(200, '2024-11-02 14:51:08.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(201, '2024-11-02 14:51:08.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(202, '2024-11-02 15:10:32.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(203, '2024-11-02 15:10:32.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(204, '2024-11-02 15:10:32.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(205, '2024-11-02 15:11:17.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(206, '2024-11-02 15:11:17.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(207, '2024-11-02 15:11:17.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(208, '2024-11-02 15:13:51.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(209, '2024-11-02 15:13:51.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(210, '2024-11-02 15:13:51.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(211, '2024-11-02 15:14:24.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(212, '2024-11-02 15:14:24.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(213, '2024-11-02 15:14:24.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(214, '2024-11-02 15:14:31.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(215, '2024-11-02 15:14:31.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(216, '2024-11-02 15:14:31.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(217, '2024-11-02 15:14:43.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(218, '2024-11-02 15:14:43.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(219, '2024-11-02 15:14:43.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(220, '2024-11-02 15:15:45.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(221, '2024-11-02 15:15:45.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(222, '2024-11-02 15:15:45.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(223, '2024-11-02 15:17:15.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(224, '2024-11-02 15:17:15.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(225, '2024-11-02 15:17:15.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(226, '2024-11-02 15:17:55.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(227, '2024-11-02 15:17:55.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(228, '2024-11-02 15:17:55.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(229, '2024-11-02 15:23:43.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(230, '2024-11-02 15:23:43.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(231, '2024-11-02 15:23:43.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(232, '2024-11-02 15:35:43.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(233, '2024-11-02 15:35:43.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(234, '2024-11-02 15:35:43.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(235, '2024-11-02 15:36:12.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(236, '2024-11-02 15:36:12.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(237, '2024-11-02 15:36:12.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(238, '2024-11-02 15:36:24.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(239, '2024-11-02 15:36:24.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(240, '2024-11-02 15:36:24.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(241, '2024-11-02 15:37:39.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(242, '2024-11-02 15:37:39.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(243, '2024-11-02 15:37:39.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(244, '2024-11-02 15:38:50.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(245, '2024-11-02 15:38:50.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(246, '2024-11-02 15:38:50.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(247, '2024-11-02 15:42:17.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(248, '2024-11-02 15:42:17.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(249, '2024-11-02 15:42:17.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(250, '2024-11-02 15:47:17.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(251, '2024-11-02 15:47:17.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(252, '2024-11-02 15:47:17.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(253, '2024-11-02 15:48:41.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(254, '2024-11-02 15:48:41.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(255, '2024-11-02 15:48:41.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(256, '2024-11-02 15:54:08.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(257, '2024-11-02 15:54:08.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(258, '2024-11-02 15:54:08.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(259, '2024-11-02 15:54:45.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(260, '2024-11-02 15:54:45.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(261, '2024-11-02 15:54:45.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(262, '2024-11-02 15:55:01.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(263, '2024-11-02 15:55:01.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(264, '2024-11-02 15:55:01.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(265, '2024-11-02 15:56:18.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(266, '2024-11-02 15:56:18.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(267, '2024-11-02 15:56:18.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(268, '2024-11-02 15:59:28.000000', NULL, NULL, 237000.00, NULL, 12, NULL, 2),
(269, '2024-11-02 15:59:28.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(270, '2024-11-02 16:00:37.000000', NULL, NULL, 540000.00, NULL, 12, NULL, 3),
(271, '2024-11-02 16:04:24.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(272, '2024-11-02 16:04:31.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(273, '2024-11-02 16:08:01.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(274, '2024-11-02 16:08:02.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(275, '2024-11-02 16:15:37.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(276, '2024-11-02 16:15:37.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(277, '2024-11-02 16:16:22.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(278, '2024-11-02 16:16:22.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(279, '2024-11-02 16:17:50.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(280, '2024-11-02 16:21:59.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(281, '2024-11-02 16:21:59.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(282, '2024-11-02 16:22:46.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(283, '2024-11-02 16:22:46.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(284, '2024-11-02 16:26:53.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(285, '2024-11-02 16:26:53.000000', NULL, 'SUCCESSFUL', 37000.00, NULL, 12, NULL, 2),
(286, '2024-11-02 16:26:53.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(287, '2024-11-02 16:32:05.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(288, '2024-11-02 16:32:05.000000', NULL, 'SUCCESSFUL', 37000.00, NULL, 12, NULL, 2),
(289, '2024-11-02 16:32:05.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(290, '2024-11-02 16:34:38.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(291, '2024-11-02 16:34:38.000000', NULL, 'SUCCESSFUL', 37000.00, NULL, 12, NULL, 2),
(292, '2024-11-02 16:34:38.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(293, '2024-11-02 16:54:44.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(294, '2024-11-02 16:54:44.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(295, '2024-11-02 16:58:29.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(296, '2024-11-02 16:58:29.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(297, '2024-11-02 17:02:26.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(298, '2024-11-02 17:02:26.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(299, '2024-11-02 17:04:21.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(300, '2024-11-02 17:04:21.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(301, '2024-11-02 17:04:21.000000', NULL, NULL, 0.00, NULL, 12, NULL, 1),
(302, '2024-11-02 17:04:21.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(303, '2024-11-02 17:04:21.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(304, '2024-11-02 17:04:21.000000', NULL, NULL, 420000.00, NULL, 12, NULL, 3),
(305, '2024-11-02 17:08:06.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(306, '2024-11-02 17:08:06.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(307, '2024-11-02 17:08:52.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(308, '2024-11-02 17:08:52.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3),
(309, '2024-11-02 19:01:38.000000', NULL, 'SUCCESSFUL', 0.00, NULL, 12, NULL, 1),
(310, '2024-11-02 19:01:38.000000', NULL, 'SUCCESSFUL', 420000.00, NULL, 12, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `github_profile` text DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `student_id` varchar(8) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `major_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`github_profile`, `is_available`, `student_id`, `id`, `major_id`) VALUES
('https://github.com/ltt02', 1, 'B2003917', 1, 3),
(NULL, NULL, NULL, 2, NULL),
(NULL, NULL, NULL, 3, NULL),
(NULL, 1, NULL, 5, NULL),
(NULL, NULL, NULL, 11, NULL),
(NULL, NULL, NULL, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `developers_skills`
--

CREATE TABLE `developers_skills` (
  `developer_id` bigint(20) NOT NULL,
  `skill_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developers_skills`
--

INSERT INTO `developers_skills` (`developer_id`, `skill_id`) VALUES
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `header_nav`
--

CREATE TABLE `header_nav` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_nav`
--

INSERT INTO `header_nav` (`id`, `name`) VALUES
(1, 'Framework'),
(2, 'Danh mục'),
(3, 'Phân loại'),
(4, 'Về chúng tôi');

-- --------------------------------------------------------

--
-- Table structure for table `header_sub_nav`
--

CREATE TABLE `header_sub_nav` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `header_nav_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_sub_nav`
--

INSERT INTO `header_sub_nav` (`id`, `name`, `header_nav_id`) VALUES
(1, 'Angular', 1),
(2, 'React Native', 1),
(3, 'Unity', 1),
(4, 'Flutter', 1),
(5, 'Ứng dụng mới', 2),
(6, 'Ứng dụng được tải nhiều', 2),
(7, 'Ứng dụng được giảm giá nhiều', 2),
(8, 'Mẫu thiết kế', 3),
(9, 'Trò chơi', 3),
(10, 'Plugins', 3),
(11, 'Bộ công cụ UI', 3);

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`id`, `name`) VALUES
(1, 'Công nghệ thông tin'),
(3, 'Kỹ thuật phần mềm'),
(4, 'Hệ thống thông tin'),
(5, 'Khoa học máy tính'),
(6, 'Mạng máy tính và Truyền thông'),
(7, 'Truyền thông đa phương tiện');

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
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `total`, `application_id`, `order_id`) VALUES
(1, NULL, 7, NULL),
(2, NULL, 6, NULL),
(3, NULL, 7, NULL),
(4, NULL, 6, NULL),
(5, NULL, 7, NULL),
(6, NULL, 6, NULL),
(7, NULL, 7, 49),
(8, NULL, 6, 49),
(11, NULL, 7, 50),
(12, NULL, 6, 50),
(13, NULL, 7, 51),
(14, NULL, 1, 51),
(15, NULL, 7, 52),
(16, NULL, 1, 52),
(17, NULL, 6, 53),
(18, NULL, 1, 53),
(19, NULL, 7, NULL),
(20, NULL, 6, NULL),
(21, NULL, 7, 55),
(22, NULL, 6, 55),
(23, NULL, 7, 56),
(24, NULL, 6, 56),
(25, NULL, 7, 57),
(26, NULL, 6, 57),
(27, NULL, 7, 58),
(28, NULL, 6, 58),
(29, NULL, 7, 59),
(30, NULL, 6, 59),
(31, NULL, 7, 60),
(32, NULL, 1, 60),
(33, NULL, 7, 61),
(34, NULL, 6, 61),
(35, NULL, 1, 61),
(36, NULL, 7, 62),
(37, NULL, 6, 62),
(38, NULL, 7, 63),
(39, NULL, 6, 63),
(40, NULL, 7, 64),
(41, NULL, 1, 64),
(42, NULL, 6, 65),
(43, NULL, 2, 65),
(44, NULL, 7, 66),
(45, NULL, 1, 66),
(46, NULL, 7, 67),
(47, NULL, 1, 67),
(48, NULL, 7, 68),
(49, NULL, 1, 68),
(50, NULL, 6, 69),
(51, NULL, 1, 69),
(52, NULL, 7, 70),
(53, NULL, 6, 70),
(54, NULL, 7, 71),
(55, NULL, 6, 71),
(56, NULL, 7, 72),
(57, NULL, 6, 72),
(58, NULL, 7, 73),
(59, NULL, 6, 73),
(60, NULL, 7, 74),
(61, NULL, 1, 74),
(62, NULL, 7, 75),
(63, NULL, 6, 75),
(64, NULL, 7, 76),
(65, NULL, 1, 76),
(66, NULL, 1, 77),
(67, NULL, 8, 77),
(68, NULL, 7, NULL),
(69, NULL, 6, NULL),
(70, NULL, 1, NULL),
(71, NULL, 2, NULL),
(72, NULL, 1, NULL),
(73, NULL, 3, NULL),
(74, NULL, 2, 268),
(75, NULL, 8, 268),
(76, NULL, 7, 270),
(77, NULL, 6, 270),
(78, NULL, 5, 270),
(79, NULL, 1, 271),
(80, NULL, 1, 273),
(81, NULL, 1, 275),
(82, NULL, 1, 277),
(83, NULL, 7, 279),
(84, NULL, 6, 279),
(85, NULL, 1, 280),
(86, NULL, 1, 282),
(87, NULL, 1, 284),
(88, NULL, 2, 285),
(89, NULL, 7, 286),
(90, NULL, 6, 286),
(91, NULL, 1, 287),
(92, NULL, 2, 288),
(93, NULL, 7, 289),
(94, NULL, 6, 289),
(95, NULL, 1, 290),
(96, NULL, 2, 291),
(97, NULL, 7, 292),
(98, NULL, 6, 292),
(99, NULL, 1, 293),
(100, NULL, 7, 294),
(101, NULL, 6, 294),
(102, NULL, 1, 295),
(103, NULL, 7, 296),
(104, NULL, 6, 296),
(105, NULL, 1, 297),
(107, NULL, 1, 300),
(108, NULL, 7, 303),
(109, NULL, 6, 303),
(110, NULL, 1, 305),
(111, NULL, 7, 306),
(112, NULL, 6, 306),
(113, NULL, 1, 307),
(114, NULL, 7, 308),
(115, NULL, 6, 308),
(116, NULL, 1, 309),
(117, NULL, 7, 310),
(118, NULL, 6, 310);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `payment_url` text DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `date`, `method`, `payment_url`, `status`) VALUES
(1, 0.00, '2024-10-29 14:45:47', 'vnpay', NULL, 'PENDING'),
(2, 0.00, '2024-10-29 14:46:33', 'vnpay', NULL, 'PENDING'),
(3, 0.00, '2024-10-29 14:49:22', 'vnpay', NULL, 'PENDING'),
(4, 0.00, '2024-10-29 14:51:38', 'vnpay', NULL, 'PENDING'),
(5, 0.00, '2024-10-29 14:53:35', 'vnpay', NULL, 'PENDING'),
(6, 0.00, '2024-10-29 14:54:00', 'vnpay', NULL, 'PENDING'),
(7, 0.00, '2024-10-29 14:54:04', 'vnpay', NULL, 'PENDING'),
(8, 0.00, '2024-10-29 14:54:33', 'vnpay', NULL, 'PENDING'),
(9, 0.00, '2024-10-29 14:55:00', 'vnpay', NULL, 'PENDING'),
(10, 0.00, '2024-10-29 14:55:08', 'vnpay', NULL, 'PENDING'),
(11, 0.00, '2024-10-29 14:55:50', 'vnpay', NULL, 'PENDING'),
(12, 0.00, '2024-10-29 14:56:49', 'vnpay', NULL, 'PENDING'),
(13, 0.00, '2024-10-29 14:57:18', 'vnpay', NULL, 'PENDING'),
(14, 0.00, '2024-10-29 14:57:44', 'vnpay', NULL, 'PENDING'),
(15, 0.00, '2024-10-29 14:57:58', 'vnpay', NULL, 'PENDING'),
(16, 0.00, '2024-10-29 15:01:36', 'vnpay', NULL, 'PENDING'),
(17, 0.00, '2024-10-29 15:02:25', 'vnpay', NULL, 'PENDING'),
(18, 0.00, '2024-10-29 15:02:44', 'vnpay', NULL, 'PENDING'),
(19, 0.00, '2024-10-29 15:02:56', 'vnpay', NULL, 'PENDING'),
(20, 0.00, '2024-10-29 15:03:38', 'vnpay', NULL, 'PENDING'),
(21, 0.00, '2024-10-29 15:05:21', 'vnpay', NULL, 'PENDING'),
(22, 457000.00, '2024-10-29 15:05:45', 'vnpay', NULL, 'PENDING'),
(23, 457000.00, '2024-10-29 15:07:06', 'vnpay', NULL, 'PENDING'),
(24, 457000.00, '2024-10-29 15:09:19', 'vnpay', NULL, 'PENDING'),
(25, 457000.00, '2024-10-29 15:10:13', 'vnpay', NULL, 'PENDING'),
(26, 457000.00, '2024-10-29 15:12:56', 'vnpay', NULL, 'PENDING'),
(27, 457000.00, '2024-10-29 15:17:48', 'vnpay', NULL, 'PENDING'),
(28, 457000.00, '2024-10-29 15:33:43', 'vnpay', NULL, 'PENDING'),
(29, 457000.00, '2024-10-29 15:36:00', 'vnpay', NULL, 'PENDING'),
(30, 457000.00, '2024-10-29 15:36:13', 'vnpay', NULL, 'PENDING'),
(31, 457000.00, '2024-10-29 15:51:54', 'vnpay', NULL, 'PENDING'),
(32, 457000.00, '2024-10-29 17:07:19', 'vnpay', NULL, 'PENDING'),
(33, 457000.00, '2024-10-29 17:08:06', 'vnpay', NULL, 'PENDING'),
(34, 457000.00, '2024-10-29 17:14:49', 'vnpay', NULL, 'PENDING'),
(35, 457000.00, '2024-10-29 17:24:10', 'vnpay', NULL, 'PENDING'),
(36, 457000.00, '2024-10-29 17:40:23', 'vnpay', NULL, 'PENDING'),
(37, 457000.00, '2024-10-29 17:41:02', 'vnpay', NULL, 'PENDING'),
(38, 300000.00, '2024-10-29 18:55:29', 'vnpay', NULL, 'PENDING'),
(39, 420000.00, '2024-10-29 19:17:08', 'vnpay', NULL, 'PENDING'),
(40, 420000.00, '2024-10-29 19:18:38', 'vnpay', NULL, 'PENDING'),
(41, 420000.00, '2024-10-29 19:21:41', 'vnpay', NULL, 'PENDING'),
(42, 0.00, '2024-10-29 19:24:09', 'vnpay', NULL, 'PENDING'),
(43, 420000.00, '2024-10-29 19:25:20', 'vnpay', NULL, 'PENDING'),
(44, 420000.00, '2024-10-29 19:40:48', 'vnpay', NULL, 'PENDING'),
(45, 420000.00, '2024-10-29 19:49:03', 'vnpay', NULL, 'PENDING'),
(46, 420000.00, '2024-10-29 19:50:51', 'vnpay', NULL, 'PENDING'),
(47, 420000.00, '2024-10-29 19:53:34', 'vnpay', NULL, 'PENDING'),
(48, 300000.00, '2024-10-29 19:57:12', 'vnpay', NULL, 'PENDING'),
(49, 300000.00, '2024-10-29 19:58:59', 'vnpay', NULL, 'PENDING'),
(50, 120000.00, '2024-10-29 20:00:14', 'vnpay', NULL, 'PENDING'),
(51, 420000.00, '2024-10-29 20:02:23', 'vnpay', NULL, 'PENDING'),
(52, 420000.00, '2024-10-29 20:04:27', 'vnpay', NULL, 'PENDING'),
(53, 420000.00, '2024-10-29 20:11:55', 'vnpay', NULL, 'PENDING'),
(54, 420000.00, '2024-10-29 20:20:47', 'vnpay', NULL, 'PENDING'),
(55, 420000.00, '2024-10-29 20:31:41', 'vnpay', NULL, 'PENDING'),
(56, 420000.00, '2024-10-31 15:10:34', 'vnpay', NULL, 'PENDING'),
(57, 300000.00, '2024-10-31 15:12:20', 'vnpay', NULL, 'PENDING'),
(58, 420000.00, '2024-10-31 15:15:49', 'vnpay', NULL, 'PENDING'),
(59, 420000.00, '2024-10-31 15:16:43', 'vnpay', NULL, 'PENDING'),
(60, 420000.00, '2024-10-31 15:17:46', 'vnpay', NULL, 'PENDING'),
(61, 300000.00, '2024-10-31 15:20:36', 'vnpay', NULL, 'PENDING'),
(62, 157000.00, '2024-10-31 15:21:37', 'vnpay', NULL, 'PENDING'),
(63, 300000.00, '2024-10-31 15:25:33', 'vnpay', NULL, 'PENDING'),
(64, 300000.00, '2024-10-31 15:27:22', 'vnpay', NULL, 'PENDING'),
(65, 300000.00, '2024-10-31 15:41:37', 'vnpay', NULL, 'PENDING'),
(66, 120000.00, '2024-10-31 15:48:20', 'vnpay', NULL, 'PENDING'),
(67, 420000.00, '2024-10-31 15:57:41', 'vnpay', NULL, 'PENDING'),
(68, 420000.00, '2024-10-31 15:59:07', 'vnpay', NULL, 'PENDING'),
(69, 420000.00, '2024-10-31 16:03:47', 'vnpay', NULL, 'PENDING'),
(70, 420000.00, '2024-10-31 16:07:13', 'vnpay', NULL, 'PENDING'),
(71, 300000.00, '2024-10-31 16:10:23', 'vnpay', NULL, 'PENDING'),
(72, 420000.00, '2024-10-31 16:13:05', 'vnpay', NULL, 'PENDING'),
(73, 300000.00, '2024-10-31 16:14:22', 'vnpay', NULL, 'PENDING'),
(74, 200000.00, '2024-10-31 16:15:03', 'vnpay', NULL, 'PENDING'),
(75, 420000.00, '2024-11-01 14:32:21', 'vnpay', NULL, 'PENDING'),
(76, 420000.00, '2024-11-01 14:32:37', 'vnpay', NULL, 'PENDING'),
(77, 420000.00, '2024-11-01 14:46:12', 'vnpay', NULL, 'PENDING'),
(78, 420000.00, '2024-11-01 14:46:52', 'vnpay', NULL, 'PENDING'),
(79, 420000.00, '2024-11-01 15:01:03', 'vnpay', NULL, 'PENDING'),
(80, 420000.00, '2024-11-01 15:01:54', 'vnpay', NULL, 'PENDING'),
(81, 420000.00, '2024-11-01 15:02:08', 'vnpay', NULL, 'PENDING'),
(82, 457000.00, '2024-11-01 15:36:54', 'vnpay', NULL, 'PENDING'),
(83, 420000.00, '2024-11-01 16:36:27', 'vnpay', NULL, 'PENDING'),
(84, 420000.00, '2024-11-01 16:38:37', 'vnpay', NULL, 'PENDING'),
(85, 420000.00, '2024-11-01 16:44:43', 'vnpay', NULL, 'PENDING'),
(86, 457000.00, '2024-11-01 16:47:13', 'vnpay', NULL, 'PENDING'),
(87, 457000.00, '2024-11-01 16:49:29', 'vnpay', NULL, 'PENDING'),
(88, 457000.00, '2024-11-01 16:52:48', 'vnpay', NULL, 'PENDING'),
(89, 457000.00, '2024-11-01 18:05:47', 'vnpay', NULL, 'PENDING'),
(90, 457000.00, '2024-11-01 18:07:40', 'vnpay', NULL, 'PENDING'),
(91, 457000.00, '2024-11-01 18:15:20', 'vnpay', NULL, 'PENDING'),
(92, 777000.00, '2024-11-01 18:21:40', 'vnpay', NULL, 'PENDING'),
(93, 777000.00, '2024-11-01 18:23:10', 'vnpay', NULL, 'PENDING'),
(94, 777000.00, '2024-11-01 18:24:08', 'vnpay', NULL, 'PENDING'),
(98, 777000.00, '2024-11-02 06:51:04', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102135104&vnp_CurrCode=VND&vnp_ExpireDate=20241102140604&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A79285862&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D79285862&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=79285862&vnp_Version=2.1.0&vnp_SecureHash=7faa81e3e5bf685b9accede26d94f1b6b18f52b84d4e9f343cc2284d5af319103eae758914ae7707dca744665018fe93ceeb63a9397466ed7f11996677e14c8f', 'PENDING'),
(99, 777000.00, '2024-11-02 07:07:28', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102140728&vnp_CurrCode=VND&vnp_ExpireDate=20241102142228&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A31257002&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D31257002&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=31257002&vnp_Version=2.1.0&vnp_SecureHash=281038aebe39fc9a0278c894ccb07fea65f16de8c1bc0dbc9b1b2f0e7a45a23bc703f91c0c7d739aa1decaa711f6c6b873eb165cb7a873f43cb3a1a3ae9409a2', 'PENDING'),
(100, 777000.00, '2024-11-02 07:30:22', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143022&vnp_CurrCode=VND&vnp_ExpireDate=20241102144522&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A11243088&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D11243088&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=11243088&vnp_Version=2.1.0&vnp_SecureHash=1e92a07d18536390f21dd2ac6f3098ce73f66ad472df33f402e05ae61f833fa5b8edfed683b718de612dbf4b7eda2dde6263433061efb11bca1555b05c4063c1', 'PENDING'),
(101, 777000.00, '2024-11-02 07:32:13', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143213&vnp_CurrCode=VND&vnp_ExpireDate=20241102144713&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A14913088&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D14913088&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=14913088&vnp_Version=2.1.0&vnp_SecureHash=78181d47d34942440e47904f605cd005e0ef1a09387c20dfc088d942481b201a2a7a5d7ad8c884ac52097da12f483020d3a86cd0a14c97f9631fc863e5901750', 'PENDING'),
(102, 777000.00, '2024-11-02 07:34:27', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143427&vnp_CurrCode=VND&vnp_ExpireDate=20241102144927&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A34484398&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D34484398&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=34484398&vnp_Version=2.1.0&vnp_SecureHash=fc5f25f2390fa9d9a6185075af21cca909f98d791cbd8f4083eedfac81d2d4bddd2da00c1913436df1f7b2ec241f71c316cdfed11b3330499ad6d4031b343b31', 'PENDING'),
(103, 777000.00, '2024-11-02 07:35:28', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143528&vnp_CurrCode=VND&vnp_ExpireDate=20241102145028&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A76556010&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D76556010&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=76556010&vnp_Version=2.1.0&vnp_SecureHash=bd4fbcb8d41583a90f25304d95581d3bda6fd782290f6281f0964a3795e944a4725dad943779d2b7af799b2f319318c0ded6b920d2662326a8b7ade803c84268', 'PENDING'),
(104, 777000.00, '2024-11-02 07:36:56', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143656&vnp_CurrCode=VND&vnp_ExpireDate=20241102145156&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A25184950&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D25184950&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=25184950&vnp_Version=2.1.0&vnp_SecureHash=65fabf1c91cf5fb6877acd0a395982bdbe6cf938eb5e8c525368f238d0d74701a87862243ffa77d2b643f70288058c1312b53319d0d3109566f1e7cefe42599c', 'PENDING'),
(105, 777000.00, '2024-11-02 07:38:00', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102143800&vnp_CurrCode=VND&vnp_ExpireDate=20241102145300&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A59828270&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D59828270&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=59828270&vnp_Version=2.1.0&vnp_SecureHash=f3b1498bb360e7e6e581496ea76a4e7845d4f01d5ca04e2aa2172006803868e2a33a6c42fbf0f505db6b6d65f2db2705f89d6c57c8f3e81ba6a1eb5b19dbe511', 'PENDING'),
(106, 777000.00, '2024-11-02 07:40:27', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102144027&vnp_CurrCode=VND&vnp_ExpireDate=20241102145527&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A65710197&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D65710197&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=65710197&vnp_Version=2.1.0&vnp_SecureHash=3c5bfc4f015b9069f605661093c45ab96175fb1a9169e2772ec53bc4dd416ab4c692591870dca58b2c8344a361b04e59537544f7152aa802184032044af84690', 'PENDING'),
(107, 777000.00, '2024-11-02 07:42:18', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102144218&vnp_CurrCode=VND&vnp_ExpireDate=20241102145718&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A10971941&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D10971941&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=10971941&vnp_Version=2.1.0&vnp_SecureHash=d673c8ce0ba220f8c353a1ea35faa12b234413f4529ae7ea9f33a1b1f188506ffa3fb1de6934fa527a420ee097cea6012b67d16b1c82c5acd977abc1229d4ab5', 'PENDING'),
(108, 777000.00, '2024-11-02 07:50:41', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102145041&vnp_CurrCode=VND&vnp_ExpireDate=20241102150541&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A89120327&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D89120327&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=89120327&vnp_Version=2.1.0&vnp_SecureHash=52aea74cfb6a1118d0b3a26d457e4e80ac45f9c16ebfff2eb2c3696fb5d84c61bd97956b1eeffad56b43bc3c4c715528ffcd1aa6828913fb6644fc91e0cede73', 'PENDING'),
(109, 777000.00, '2024-11-02 07:51:08', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102145108&vnp_CurrCode=VND&vnp_ExpireDate=20241102150608&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A94331289&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D94331289&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=94331289&vnp_Version=2.1.0&vnp_SecureHash=b504ba7cc92b750271872ef617ab45d96b3feb66728eec75d4b44bbab4b428346c40a1a5cf09bdb66954b9d6801324c2ffddcb34866bbc766a836717f8db7bbe', 'PENDING'),
(110, 777000.00, '2024-11-02 08:10:32', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151032&vnp_CurrCode=VND&vnp_ExpireDate=20241102152532&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A92267844&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D92267844&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=92267844&vnp_Version=2.1.0&vnp_SecureHash=1e22cbb0ad0c9bb07815df5693013d4fa271c6ae82838bef6e3e7f63aa1ae354a33d39ef478accb8121e37293b3d9a99307d59386cbd3eeb661b5965a9d02640', 'PENDING'),
(111, 777000.00, '2024-11-02 08:11:17', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151117&vnp_CurrCode=VND&vnp_ExpireDate=20241102152617&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A31865035&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D31865035&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=31865035&vnp_Version=2.1.0&vnp_SecureHash=a0cf8527aa907c3d6342f9def4f808d1689da5b9a9af388a2ab4f9b9965520413dc4efd82a2bb984387178a6039836fe940a2d3809a6c1b1fe4dd85bc16ce454', 'PENDING'),
(112, 777000.00, '2024-11-02 08:13:51', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151351&vnp_CurrCode=VND&vnp_ExpireDate=20241102152851&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A84912317&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D84912317&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=84912317&vnp_Version=2.1.0&vnp_SecureHash=1f5ff97ec5ce45ed36e9bca6b65fe71bce63f7be9fb0d673cfc88d24148d0e29f3927caf9a4685d0b3ef7994a978f86f3d870341a6113e26daa9d75437cf8f13', 'PENDING'),
(113, 777000.00, '2024-11-02 08:14:24', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151424&vnp_CurrCode=VND&vnp_ExpireDate=20241102152924&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A90886250&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D90886250&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=90886250&vnp_Version=2.1.0&vnp_SecureHash=2c5a38213bd1d77bb431e24994750c8a1d5fa823c11728af634ae31f8e6600754ae2f3ed1c5e724e91b627513d5884c0bc60ef52a6f014cef9b97436cbe93e54', 'PENDING'),
(114, 777000.00, '2024-11-02 08:14:31', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151431&vnp_CurrCode=VND&vnp_ExpireDate=20241102152931&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A73875390&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D73875390&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=73875390&vnp_Version=2.1.0&vnp_SecureHash=3eecedafeaac38ef984fe4240dfc9394877aa680830db875d683f3b22d128d1da7e3ba633a2b5990456b03ddd2e723aa552aa125967b61b6154175186f385200', 'PENDING'),
(115, 777000.00, '2024-11-02 08:14:43', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151443&vnp_CurrCode=VND&vnp_ExpireDate=20241102152943&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A58848238&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D58848238&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=58848238&vnp_Version=2.1.0&vnp_SecureHash=1a031612506fc11c4ebeb134ff042a6fc3559b98820c55497d50cf87943a44b62072ff79cef1fdad94d21c046e6c6ec983df966d8f0e25f2db8bc6e527e431d2', 'PENDING'),
(116, 777000.00, '2024-11-02 08:15:45', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151545&vnp_CurrCode=VND&vnp_ExpireDate=20241102153045&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A38252286&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D38252286&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=38252286&vnp_Version=2.1.0&vnp_SecureHash=735fc5cd692d9b3037abf56edca578c0f87955dc2b020f01f174290dc9699ca59c636779bb9ba852b541aa08bf44c81cc405550689f672168f447c0a1fc088c0', 'PENDING'),
(117, 777000.00, '2024-11-02 08:17:15', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151715&vnp_CurrCode=VND&vnp_ExpireDate=20241102153215&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A97859945&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D97859945&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=97859945&vnp_Version=2.1.0&vnp_SecureHash=17f77ecc12003a176f45c4309a552d18654fe6e3a9c446a650f49bee5ffe6afc0d8e72f8b097a91c60831add02b906ba99559731df7e4337da60263f770ab2e3', 'PENDING'),
(118, 777000.00, '2024-11-02 08:17:55', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102151755&vnp_CurrCode=VND&vnp_ExpireDate=20241102153255&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A95504163&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D95504163&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=95504163&vnp_Version=2.1.0&vnp_SecureHash=07c4b69a21d05778fec4285e173aaec6d2e761331b7fa51cc64d21de0188fc6110848a5e76ed3f684ef1734a081479490c4a30afcabea54716cac201207f1628', 'PENDING'),
(119, 777000.00, '2024-11-02 08:23:43', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102152343&vnp_CurrCode=VND&vnp_ExpireDate=20241102153843&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A12343148&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D12343148&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=12343148&vnp_Version=2.1.0&vnp_SecureHash=b5b9d2bee4e39a84fccefd314a882fce7071f3ecafb983e2112722cd27a45ac61686fe05f0712c75be51ea81404ae525c4a6c9bfae85d08037c29be95ea392a3', 'PENDING'),
(120, 777000.00, '2024-11-02 08:35:43', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102153543&vnp_CurrCode=VND&vnp_ExpireDate=20241102155043&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A98303097&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D98303097&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=98303097&vnp_Version=2.1.0&vnp_SecureHash=d157a603a1cbcc3d04baf586b2dadd300eb78d5f7153891d9aa7f62d24705669f3d48be2139333c4150b574d4f685c69d9dfa16faabf343615055864300b2239', 'PENDING'),
(121, 777000.00, '2024-11-02 08:36:12', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102153612&vnp_CurrCode=VND&vnp_ExpireDate=20241102155112&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A68454354&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D68454354&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=68454354&vnp_Version=2.1.0&vnp_SecureHash=aa847fd0551fca759e3be3e524590948afa91f3b12cce8b40e939002527382c67940551926171c1a9cdf40fb3f3e1169f1dc47278037dd486e891c5a06ad9ee4', 'PENDING'),
(122, 777000.00, '2024-11-02 08:36:24', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102153624&vnp_CurrCode=VND&vnp_ExpireDate=20241102155124&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A04308565&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D04308565&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=04308565&vnp_Version=2.1.0&vnp_SecureHash=0302c1e3dd7005e9aa2a1e32fe7dfe1937d64c6dd3acd938cb4a69970bf6d33ef93b3ddc8cc63d1d077e667741c91a190772faec8ba70e4d5ba8bc3df71fbf93', 'PENDING'),
(123, 777000.00, '2024-11-02 08:37:39', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102153739&vnp_CurrCode=VND&vnp_ExpireDate=20241102155239&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A13279649&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D13279649&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=13279649&vnp_Version=2.1.0&vnp_SecureHash=279c229e631faf0db5fe6eb1dd2661d236d4f031311a7a647ff0a994a33ddf166825ae1df77cbae69c28d8ee209bff4fa8e6984c2213a26c1e91022f63f70a87', 'PENDING'),
(124, 777000.00, '2024-11-02 08:38:50', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102153850&vnp_CurrCode=VND&vnp_ExpireDate=20241102155350&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A37354337&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D37354337&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=37354337&vnp_Version=2.1.0&vnp_SecureHash=fb55073d0bb0572882d57318297c67148a2edb1aee222576cd4dcce2e0f6430857bb9a7140c9b568f42f1808edbc53b3d8a4e7f532acc73756b2d569d9ce6bd0', 'PENDING'),
(125, 777000.00, '2024-11-02 08:42:17', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102154217&vnp_CurrCode=VND&vnp_ExpireDate=20241102155717&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A51058998&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D51058998&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=51058998&vnp_Version=2.1.0&vnp_SecureHash=8b117455ebedb4da38be361e66e2f88171fe4d2cc2286791fd7eb7a9cadacd15cb9f29c9b78ca890f6c2816d4a7afd82ed16e73158d012e62d79961500fff0c7', 'PENDING'),
(126, 777000.00, '2024-11-02 08:47:17', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102154717&vnp_CurrCode=VND&vnp_ExpireDate=20241102160217&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A39659436&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D39659436&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=39659436&vnp_Version=2.1.0&vnp_SecureHash=fb4b5a3cd077092d47e9cf5f477d2dd3ce7e0d0424c85181d762100a0ec392662a6759523fd9d611f23b0982abbd010ed60653a119d2458793aafe08e36a1a77', 'PENDING'),
(127, 777000.00, '2024-11-02 08:48:41', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102154841&vnp_CurrCode=VND&vnp_ExpireDate=20241102160341&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A26852050&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D26852050&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=26852050&vnp_Version=2.1.0&vnp_SecureHash=08bfc46d99fa17bdaed31b41335ba87e9a46bdb5c0e0f66871b7b7d9c5ce409b8aa726c41110402f169c4a58289112b2129c02659d7ced2e6f930d3393aa0698', 'PENDING'),
(128, 777000.00, '2024-11-02 08:54:08', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102155408&vnp_CurrCode=VND&vnp_ExpireDate=20241102160908&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A72510322&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D72510322&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=72510322&vnp_Version=2.1.0&vnp_SecureHash=3c05a4d2f11913f78e8a1ac5242330c8bce99d11322d1be95a47af9930ace3e3859d2528bc5064ccf6cef130bda3c6a5dd28f004c4af601e56c7c4e682db5b53', 'PENDING'),
(129, 777000.00, '2024-11-02 08:54:45', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102155445&vnp_CurrCode=VND&vnp_ExpireDate=20241102160945&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A75762210&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D75762210&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=75762210&vnp_Version=2.1.0&vnp_SecureHash=e5df4cc916f10aa62b83839af2b0ec75c1e3c003ac6d3b322b22e293b134261d80d01ecb2719ebf2298bad141fe6ff461b73953387166d9a2572568797ab5933', 'PENDING'),
(130, 777000.00, '2024-11-02 08:55:01', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102155501&vnp_CurrCode=VND&vnp_ExpireDate=20241102161001&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A08659608&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D08659608&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=08659608&vnp_Version=2.1.0&vnp_SecureHash=8479b2137601008e6d0ad1bc21bea1e960a18ad1276a17707b8cc85732c3aae2d8dc815645f2100c2d22f83db40976d679ca3e009bdddfdbc8ebd53218095b72', 'PENDING'),
(131, 777000.00, '2024-11-02 08:56:18', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102155618&vnp_CurrCode=VND&vnp_ExpireDate=20241102161118&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A49761788&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D49761788&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=49761788&vnp_Version=2.1.0&vnp_SecureHash=fe45e9247c8fd6103395bef5641bc5b985c2d6c2a2f22774096fa4f0c1a2eea068b9f0f3848b201e278b0063f78e8d7be28de73332e1404f2ecdbaef5e25f054', 'PENDING'),
(132, 777000.00, '2024-11-02 08:59:28', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=77700000&vnp_Command=pay&vnp_CreateDate=20241102155928&vnp_CurrCode=VND&vnp_ExpireDate=20241102161428&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A09572352&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D09572352&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=09572352&vnp_Version=2.1.0&vnp_SecureHash=6873353c967881829cb9e8d23eb536e979de56159e62c91c32975709570654f6093550c02f654b552cd50d1f3c8d3b3eeb22d84ccb7501fc5c0460754d18af9e', 'PENDING'),
(133, 540000.00, '2024-11-02 09:00:37', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=54000000&vnp_Command=pay&vnp_CreateDate=20241102160037&vnp_CurrCode=VND&vnp_ExpireDate=20241102161537&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A86386463&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D86386463&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=86386463&vnp_Version=2.1.0&vnp_SecureHash=a21705af85a20c8a2c6ecbf36c14abdb88e69c2556c737d7fbae27a65f762e467b329d09e299e5b41813e5e38138e226f88ebd9c8df83ab08a7f71d0b1a3ac30', 'PENDING'),
(134, 420000.00, '2024-11-02 09:04:31', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102160423&vnp_CurrCode=VND&vnp_ExpireDate=20241102161923&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A02192412&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D02192412&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=02192412&vnp_Version=2.1.0&vnp_SecureHash=a902a01b8446b530b014da81dce2fdba1bd7e06b50f0aa2c8121afc46f9ab284d99ec004f68f0a8f58c51c9fd9024f204daa0080d23dace164b8c56e1e228f18', 'PENDING'),
(135, 420000.00, '2024-11-02 09:08:02', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102160800&vnp_CurrCode=VND&vnp_ExpireDate=20241102162300&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A63169059&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D63169059&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=63169059&vnp_Version=2.1.0&vnp_SecureHash=071db5f650b0c9f5efcb61d6d781ebadbc0d47aad17772b769d1d90ff40268098f1d961bdebdb0aee8ce26336973e2d390782aad954b8d7d3a4503dfee442e86', 'PENDING'),
(136, 420000.00, '2024-11-02 09:15:37', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102161537&vnp_CurrCode=VND&vnp_ExpireDate=20241102163037&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A66372950&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D66372950&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=66372950&vnp_Version=2.1.0&vnp_SecureHash=d5684a0694b892ca6fef7c1e1fc6edac26707324e659eb2e5318797b048cea566ecfd3b6b21a2fa3a912d02a80b9f7c0ffebe1beef4a18e25aa6b905196e8550', 'PENDING'),
(137, 420000.00, '2024-11-02 09:16:22', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102161622&vnp_CurrCode=VND&vnp_ExpireDate=20241102163122&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A08669069&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D08669069&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=08669069&vnp_Version=2.1.0&vnp_SecureHash=df440e50bd5fe337d07a0e2000e26630032804816de22d9aa06fe3105549fb2de16b0c4cf0b34038d5765e814e003685a923a19d1d3ee7d0d5d7b7896c8d31d4', 'PENDING'),
(138, 420000.00, '2024-11-02 09:17:50', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102161750&vnp_CurrCode=VND&vnp_ExpireDate=20241102163250&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A83513646&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D83513646&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=83513646&vnp_Version=2.1.0&vnp_SecureHash=89abe51884a02625c600049b48056549574f3d9a370d2d47ca22515f0704b3ddc4e75f6bf951a9760adafac1f9fc1b9731f13ded1f0a096cb252de3e7a6416c7', 'PENDING'),
(139, 420000.00, '2024-11-02 09:21:59', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102162159&vnp_CurrCode=VND&vnp_ExpireDate=20241102163659&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A97233819&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D97233819&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=97233819&vnp_Version=2.1.0&vnp_SecureHash=1b71c7e35051c9e18f30c5f63a76096f91771427215e40408fdc86a7ca9cda825c8934d801185de20d4c6ec47d5c647501618e97490a6bbc084d86b235ffbd22', 'PENDING'),
(140, 420000.00, '2024-11-02 09:22:46', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102162246&vnp_CurrCode=VND&vnp_ExpireDate=20241102163746&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A23364033&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D23364033&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=23364033&vnp_Version=2.1.0&vnp_SecureHash=9d85315fbf45bc561e6d9c02ad37e8469f13f1f17984e68185057af54ead5bebebbec7b54a3bb0072608fdddd7d09f3d220e4fbb990308099207581c02d1c0cb', 'PENDING'),
(141, 457000.00, '2024-11-02 09:26:53', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=45700000&vnp_Command=pay&vnp_CreateDate=20241102162653&vnp_CurrCode=VND&vnp_ExpireDate=20241102164153&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A86220197&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D86220197&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=86220197&vnp_Version=2.1.0&vnp_SecureHash=c27518b10d501a6a1a4c39b91a66a6b083842d5932b30fb0ce2694ad22af10cb3f8054b33bab64fab85fa0e24bb52ea9320f768d567fadc259d1149590f50bba', 'PENDING'),
(142, 457000.00, '2024-11-02 09:32:05', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=45700000&vnp_Command=pay&vnp_CreateDate=20241102163205&vnp_CurrCode=VND&vnp_ExpireDate=20241102164705&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A93885148&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D93885148&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=93885148&vnp_Version=2.1.0&vnp_SecureHash=b123dd577f8dc650d316badac76567806c6c99dac46cb1183f0ed994e8b517f6caa05d3508b02465ac4cee238385d6e18e1bddf8cd3726e6eb998126dd18471d', 'PENDING'),
(143, 457000.00, '2024-11-02 09:34:38', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=45700000&vnp_Command=pay&vnp_CreateDate=20241102163438&vnp_CurrCode=VND&vnp_ExpireDate=20241102164938&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A32519759&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D32519759&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=32519759&vnp_Version=2.1.0&vnp_SecureHash=093ecd159a50d4365a6db4f6a79f02531fbb8ad7e9e8c0d232dcb4fb644c7d3d3e65221a44c5fba8be45137c495aa4cf29901370bf8ad09c357af242bc4f427b', 'PENDING'),
(144, 420000.00, '2024-11-02 09:54:44', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102165444&vnp_CurrCode=VND&vnp_ExpireDate=20241102170944&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A00554362&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D00554362&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=00554362&vnp_Version=2.1.0&vnp_SecureHash=1e38d279c8ef948310aae2b635cc980f39722a8b1d403c438f07be9660568cfc61e319e33349ec89c1ab3dbe2e1a0d0a5a772a7f742232a7645c90e63869b218', 'PENDING'),
(145, 420000.00, '2024-11-02 09:58:29', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102165829&vnp_CurrCode=VND&vnp_ExpireDate=20241102171329&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A76866631&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D76866631&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=76866631&vnp_Version=2.1.0&vnp_SecureHash=9c7ac7dcb29083764016cfc8df6efd4f92be8f0643cda23deddde5f0669ec1a51034c0a14007355eff65f585cf9917342497e084c828d36e46d1e0dd5b64fd04', 'PENDING'),
(146, 420000.00, '2024-11-02 10:02:26', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170226&vnp_CurrCode=VND&vnp_ExpireDate=20241102171726&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A49296041&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D49296041&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=49296041&vnp_Version=2.1.0&vnp_SecureHash=046a0dc864cfb9cf349668bb2fe516eb49e51090d0774bc008d2119c5afc188b224a5697289b2bcd42373655500674134dc364dad2e52f30d639f812e7f052cf', 'PENDING'),
(147, 420000.00, '2024-11-02 10:04:21', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170421&vnp_CurrCode=VND&vnp_ExpireDate=20241102171921&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A79043716&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D79043716&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=79043716&vnp_Version=2.1.0&vnp_SecureHash=b354e8cf364b4cc4ecd9c990ef8a89c4c0b5aff2d72fffbc3844752f7562d2b883fcaed3341d5b6e498bd5e3fa955445be5611933baa52fe171b220f3ced103f', 'PENDING'),
(148, 420000.00, '2024-11-02 10:04:21', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170421&vnp_CurrCode=VND&vnp_ExpireDate=20241102171921&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A48367352&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D48367352&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=48367352&vnp_Version=2.1.0&vnp_SecureHash=a889a11b7854921a2bec60ba146f8d7a2b4280f4782f05f6167a7238f7eebce20e7f7e25790062d6971a2dc9e9af6b00df64224e5c7af4d9e06f5b3a291c5ff7', 'PENDING'),
(149, 420000.00, '2024-11-02 10:04:21', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170421&vnp_CurrCode=VND&vnp_ExpireDate=20241102171921&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A40327172&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D40327172&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=40327172&vnp_Version=2.1.0&vnp_SecureHash=47b7c56247c64381598cf48978155c8fbd5bf075e6e8327da37ad30fdfc058172621338d41f85807342fbc8cbf2e68b83e7e3cd1f09e47748d03c77f41ae1dee', 'PENDING'),
(150, 420000.00, '2024-11-02 10:08:06', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170806&vnp_CurrCode=VND&vnp_ExpireDate=20241102172306&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A25266698&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D25266698&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=25266698&vnp_Version=2.1.0&vnp_SecureHash=4e3a93066e3aa9a91f044609bd2b183cd77a166d5da7a1ab34c996eeab24e5056b3f9d304434fe986bd5b4a2b6d2659f0476df232c8529705b457c73dcb60736', 'PENDING'),
(151, 420000.00, '2024-11-02 10:08:52', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102170852&vnp_CurrCode=VND&vnp_ExpireDate=20241102172352&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A80177848&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D80177848&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=80177848&vnp_Version=2.1.0&vnp_SecureHash=6eb79d848f0dd7c7b3f968ab13099e5984888455cdcb5598e5f36cea7d1620f12cb5f56c320f0eb18dc7920d1d34de9b4bbf6fdbe43907301bf14ad125dce72a', 'PENDING'),
(152, 420000.00, '2024-11-02 12:01:38', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=42000000&vnp_Command=pay&vnp_CreateDate=20241102190138&vnp_CurrCode=VND&vnp_ExpireDate=20241102191638&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A58782848&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D58782848&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=58782848&vnp_Version=2.1.0&vnp_SecureHash=64d6a6fa0a433f677561e75cc8e466fd55b7515ec747c0c76a06d8cfd9c175f83abfedff81ad8f168c99ed80d49e3af04f3380b1f88d6abaa25eb2f4f2a029f1', 'PENDING');

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
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`) VALUES
(1, 'Python'),
(2, 'Java'),
(3, 'C'),
(4, 'C++'),
(5, 'JavaScript'),
(6, 'SQL'),
(7, 'HTML'),
(8, 'CSS'),
(9, 'R'),
(10, 'MATLAB'),
(11, 'PHP'),
(12, 'Go'),
(13, 'Swift'),
(14, 'Kotlin'),
(15, 'Ruby'),
(16, 'React.js'),
(17, 'Vue.js'),
(18, 'Angular'),
(19, 'Django'),
(20, 'Flask'),
(21, 'Spring'),
(22, 'Express.js'),
(23, 'Flutter'),
(24, 'React Native'),
(25, 'Android SDK'),
(26, 'SwiftUI'),
(27, 'TensorFlow'),
(28, 'PyTorch'),
(29, 'NumPy'),
(30, 'Pandas'),
(31, 'Matplotlib'),
(32, 'Scikit-learn'),
(33, 'Docker'),
(34, 'Kubernetes'),
(35, 'AWS'),
(36, 'Azure'),
(37, 'Google Cloud');

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
(1, 'https://cellphones.com.vn/sforum/wp-content/uploads/2024/02/avatar-anh-meo-cute-5.jpg', '2024-09-02 10:00:00.000000', '1990-01-01', 'taib2003917@student.ctu.edu.vn', 0, '$2a$10$k06tpSi0rAs49qJa0CGtjekfHsX7fsF3r0Irp061ylzy7CGtOHxIi', '0123456789', '2024-09-02 10:00:00.000000', 'Lý Tấn Tài', 'tailt', 'DEVELOPER'),
(2, NULL, NULL, '1990-01-01', 'tai@example.com', 0, '$2a$10$k06tpSi0rAs49qJa0CGtjekfHsX7fsF3r0Irp061ylzy7CGtOHxIi', NULL, NULL, NULL, 'tai2', 'DEVELOPER'),
(3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai3', 'DEVELOPER'),
(5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', 'DEVELOPER'),
(6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai4', 'CUSTOMER'),
(9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai9', 'DEVELOPER'),
(10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai10', 'CUSTOMER'),
(11, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tai11', 'DEVELOPER'),
(12, NULL, NULL, NULL, NULL, 0, '$2a$10$sgvyTkIGL4lIeprSMQcWCOZOLsaT2bF0nXY0mOXzQyN46h0H3mzbq', NULL, NULL, NULL, 'tai12', 'CUSTOMER'),
(13, NULL, NULL, NULL, NULL, 0, '$2a$10$hrjCoY7ONCaF7X1pMEq7w.lEvcx885wt61ZTxJLj/ebCC6pmIlLzS', NULL, NULL, NULL, 'tai13', 'CUSTOMER'),
(14, NULL, NULL, NULL, NULL, 0, '$2a$10$JdSXK4k24HB5V.DThnf8z.nIzY.jWZ2J.VCH94zHVYS6sQbXEF7.W', NULL, NULL, NULL, 'tai14', 'CUSTOMER'),
(15, NULL, NULL, NULL, NULL, 0, '$2a$10$nwuaDGZJ7oDWOtAwTVFD1ucinWxV1ME.y3ZuiTU9R4FqHvzD.4m2a', NULL, NULL, NULL, 'tai15', 'CUSTOMER'),
(16, NULL, NULL, NULL, NULL, 0, '$2a$10$.4Kljg60pWWEfu4GzuPe6e7OfZnMMhrlczyyJ2xoFPimjU3hQGtzu', NULL, NULL, NULL, 'tai16', 'CUSTOMER'),
(17, NULL, NULL, NULL, NULL, 0, '$2a$10$MH83rLqwIH1yq3Px9EBUdeoYmqhogGvf4Y6kbnQWZYGaw.7pEGbJq', NULL, NULL, NULL, 'tai17', 'CUSTOMER'),
(18, NULL, NULL, NULL, NULL, 0, '$2a$10$MH83rLqwIH1yq3Px9EBUdeoYmqhogGvf4Y6kbnQWZYGaw.7pEGbJq', NULL, NULL, NULL, 'tai18', 'DEVELOPER'),
(19, NULL, NULL, NULL, NULL, 0, '$2a$10$IsTtZ3l/UUXwAhIq2n7OyefynuL./8UB/x0ox26XnG/2H14urSG.6', NULL, NULL, NULL, 'tai19', 'CUSTOMER'),
(20, NULL, NULL, NULL, NULL, 0, '$2a$10$4Rt3QhPX4cJ9vVEvnakXOODJs6jWuwdozVRPbehtZ3Cl2o0v133pu', NULL, NULL, NULL, 'tai120', 'CUSTOMER'),
(21, NULL, NULL, NULL, NULL, 0, '$2a$10$eV8YIKESmwp8q10YYeL7e.gXMHbIbtSSQQBTXbXtaSq9kGn8D5K1e', NULL, NULL, NULL, 'tai20', 'CUSTOMER'),
(22, NULL, NULL, NULL, NULL, 0, '$2a$10$DHocabH.pnHLD30Hsp0M4udetOlzGh934vPmavLC9BGnviKiU/S46', NULL, NULL, NULL, 'tai21', 'CUSTOMER'),
(23, NULL, NULL, NULL, NULL, 0, '$2a$10$qD18vGKp2CJZYdDmrGwtSugMFb758jyIsrmUyxwARyk4W4v7kG7Wm', NULL, NULL, NULL, 'tai22', 'CUSTOMER'),
(24, NULL, NULL, NULL, NULL, 0, '$2a$10$6lW1kb3XobGPhrJg3uGxa.s35RXm.QtZxhvo42l/sdGNQhfYSLEdu', NULL, NULL, NULL, 'tai23', 'CUSTOMER'),
(25, NULL, NULL, NULL, NULL, 0, '$2a$10$k06tpSi0rAs49qJa0CGtjekfHsX7fsF3r0Irp061ylzy7CGtOHxIi', NULL, NULL, NULL, 'tai24', 'CUSTOMER'),
(26, NULL, NULL, NULL, NULL, 0, '$2a$10$2uAzp6.4MhX2aUgF6wFG5eqmEVQJWA4H11YRkBRHWVc/iPFAdBKr2', NULL, NULL, NULL, 'tai25', 'CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5m0c1809quegudjmrrbgod40` (`developer_id`);

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
-- Indexes for table `application_framework`
--
ALTER TABLE `application_framework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_framework_detail`
--
ALTER TABLE `application_framework_detail`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `FKsycjenpdgfq7v4mxuhw6olcxh` (`application_framework_id`);

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
  ADD UNIQUE KEY `UKqb2p8x2oww38qboi2glkv4vu5` (`user_id`),
  ADD KEY `FKap7tat28q382rtu0lo7rqm5g9` (`developer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1i928kdo9v2sgxn8xbel27of3` (`coupon_id`),
  ADD KEY `FKf9abd30bhiqvugayxlpq8ryq9` (`customer_id`),
  ADD KEY `FKhktmgho7kcbxo4muas3mj0amn` (`payment_id`),
  ADD KEY `FK4528w1n6dt59er3rwbumdo175` (`developer_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKg53k6v3tvqyo1cqxcpbt86vgd` (`major_id`);

--
-- Indexes for table `developers_skills`
--
ALTER TABLE `developers_skills`
  ADD KEY `FKaol51g6ka6lp0i86fsgyjby6d` (`skill_id`),
  ADD KEY `FK8hnisnwsmcohs0dkdjuuv0a4p` (`developer_id`);

--
-- Indexes for table `header_nav`
--
ALTER TABLE `header_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sub_nav`
--
ALTER TABLE `header_sub_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9nfdup4js4o81atk0vgrrk9fb` (`header_nav_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6yskk3hxw5sklwgi25y6d5u1l` (`conversation_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk99e899ovga4l366djjrqmpy0` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `application_category`
--
ALTER TABLE `application_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application_framework`
--
ALTER TABLE `application_framework`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `header_nav`
--
ALTER TABLE `header_nav`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `header_sub_nav`
--
ALTER TABLE `header_sub_nav`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK5m0c1809quegudjmrrbgod40` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`);

--
-- Constraints for table `application_category_detail`
--
ALTER TABLE `application_category_detail`
  ADD CONSTRAINT `FK2j0ft26hxmno74bpyjogwmoqt` FOREIGN KEY (`application_category_id`) REFERENCES `application_category` (`id`),
  ADD CONSTRAINT `FK47764x56qfm1y48g5tryuion6` FOREIGN KEY (`application_category_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKssq7re999w91yk5nwwq4ypu6j` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

--
-- Constraints for table `application_framework_detail`
--
ALTER TABLE `application_framework_detail`
  ADD CONSTRAINT `FKiklnbl7t7norcb5v8953c0lk0` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `FKsycjenpdgfq7v4mxuhw6olcxh` FOREIGN KEY (`application_framework_id`) REFERENCES `application_framework` (`id`);

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
  ADD CONSTRAINT `FKap7tat28q382rtu0lo7rqm5g9` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  ADD CONSTRAINT `FKmfuic7ht7p0xvyoxhq9oydhal` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FKg2o3t8h0g17smtr9jgypagdtv` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `FK1i928kdo9v2sgxn8xbel27of3` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  ADD CONSTRAINT `FK4528w1n6dt59er3rwbumdo175` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  ADD CONSTRAINT `FKf9abd30bhiqvugayxlpq8ryq9` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKhktmgho7kcbxo4muas3mj0amn` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `FK58h0ehu3xw3tnaeurp3wo4eqd` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKg53k6v3tvqyo1cqxcpbt86vgd` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`);

--
-- Constraints for table `developers_skills`
--
ALTER TABLE `developers_skills`
  ADD CONSTRAINT `FK8hnisnwsmcohs0dkdjuuv0a4p` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  ADD CONSTRAINT `FKaol51g6ka6lp0i86fsgyjby6d` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`);

--
-- Constraints for table `header_sub_nav`
--
ALTER TABLE `header_sub_nav`
  ADD CONSTRAINT `FK9nfdup4js4o81atk0vgrrk9fb` FOREIGN KEY (`header_nav_id`) REFERENCES `header_nav` (`id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK6yskk3hxw5sklwgi25y6d5u1l` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FKk99e899ovga4l366djjrqmpy0` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`id`);

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
