-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 09:35 PM
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
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `cost`, `created_at`, `image_data`, `material`, `name`, `price`, `sale_percent`, `type`, `updated_at`, `description`, `storage_capacity`, `images`, `downloads`, `ratings`, `user_id`) VALUES
(1, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Lufz - Law Firm & Attorney Angular 13 Template', 0.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Lufz là mẫu Angular hiện đại dành cho trang web của Công ty luật & Luật sư. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này dành cho các doanh nghiệp tư vấn luật như Luật sư, Luật sư, Công ty luật, Luật sư biện hộ, Luật sư, Thẩm phán, Cơ quan luật và nhiều trang web cung cấp dịch vụ pháp lý khác.', 150.00, 'https://code.market/imgproxy/2024/06/Lufz-Law-Firm-Attorney-Angular-13-Template.jpeg', 1000, 1.3, 1),
(2, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Pilar - Directory & Listing Angular Template', 37000.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Pilar là một mẫu Angular hiện đại đáp ứng cho các trang web Danh mục & Danh sách rao vặt. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này lý tưởng cho các cá nhân và công ty có sáng kiến ​​kinh doanh khởi nghiệp dựa trên danh mục và danh sách, dịch vụ dựa trên Google Maps hoặc OpenStreetMap, Doanh nghiệp niêm yết, v.v. Ngoài ra, mẫu này phù hợp với Danh mục rao vặt và bất kỳ cơ quan kinh doanh liên quan nào khác.', 75.00, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', 50000, 2.5, 2),
(3, NULL, '2024-09-02 10:00:00.000000', NULL, NULL, 'Dizo - Angular Print on Demand Services Template', 0.00, NULL, 'TEMPLATE', '2024-09-02 10:00:00.000000', 'Dizo là mẫu Angular hiện đại sáng tạo dành cho trang web của Nhà cung cấp dịch vụ in theo yêu cầu. Mẫu này được tạo bằng Angular, TypeScript, Bootstrap, CSS và Sass. Dizo là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 200.00, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', 250, 5, 1),
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
(36, 5, 3);

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
  `status` enum('CANCELLED','CREATING','DELIVERED','ON_HOLD','PENDING_PAYMENT','PROCESSING','REFUNDED','SHIPPED') DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `create_date`, `note`, `status`, `total`, `coupon_id`, `customer_id`, `payment_id`) VALUES
(19, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 19),
(20, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 20),
(21, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 21),
(22, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 22),
(23, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 23),
(24, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 24),
(25, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 25),
(26, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 26),
(27, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 27),
(28, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 28),
(29, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 29),
(30, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 30),
(31, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 31),
(32, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 32),
(33, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 33),
(34, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 34),
(35, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 35),
(36, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 36),
(37, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, 37),
(38, NULL, NULL, 'PROCESSING', 457000.00, NULL, NULL, NULL),
(39, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 38),
(40, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, NULL),
(41, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, NULL),
(42, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 39),
(43, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 40),
(44, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 41),
(45, NULL, NULL, 'PROCESSING', 0.00, NULL, 12, 42),
(46, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 43),
(47, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 44),
(48, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 45),
(49, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 46),
(50, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 47),
(51, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 48),
(52, NULL, NULL, 'PROCESSING', 300000.00, NULL, 12, 49),
(53, NULL, NULL, 'PROCESSING', 120000.00, NULL, 12, 50),
(54, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 51),
(55, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 52),
(56, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 53),
(57, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 54),
(58, NULL, NULL, 'PROCESSING', 420000.00, NULL, 12, 55);

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
(NULL, NULL, NULL, NULL, NULL, NULL, 11),
(NULL, NULL, NULL, NULL, NULL, NULL, 18);

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
(2, 'Lĩnh vực'),
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
(5, 'Thương mại điện tử', 2),
(6, 'Pháp luật', 2),
(7, 'Kiến trúc', 2),
(8, 'Mẫu thiết kế', 3),
(9, 'Trò chơi', 3),
(10, 'Plugins', 3),
(11, 'Bộ công cụ UI', 3);

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
(28, NULL, 6, 58);

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
(55, 420000.00, '2024-10-29 20:31:41', 'vnpay', NULL, 'PENDING');

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
  ADD UNIQUE KEY `UKqb2p8x2oww38qboi2glkv4vu5` (`user_id`);

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
  ADD KEY `FKhktmgho7kcbxo4muas3mj0amn` (`payment_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  ADD CONSTRAINT `FKf9abd30bhiqvugayxlpq8ryq9` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKhktmgho7kcbxo4muas3mj0amn` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `FK58h0ehu3xw3tnaeurp3wo4eqd` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

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
