-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 09:43 PM
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
-- Database: `code_market_20241110`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `storage_capacity` decimal(10,2) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `downloads` bigint(20) DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `source_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `created_at`, `name`, `price`, `updated_at`, `description`, `storage_capacity`, `images`, `downloads`, `ratings`, `developer_id`, `type_id`, `status`, `source_code`) VALUES
(1, '2024-09-02 10:00:00.000000', 'Lufz - Law Firm & Attorney Angular 13 Template', 250000.00, '2024-09-02 10:00:00.000000', 'Lufz là mẫu Angular hiện đại dành cho trang web của Công ty luật & Luật sư. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này dành cho các doanh nghiệp tư vấn luật như Luật sư, Luật sư, Công ty luật, Luật sư biện hộ, Luật sư, Thẩm phán, Cơ quan luật và nhiều trang web cung cấp dịch vụ pháp lý khác.', 150.00, 'https://code.market/imgproxy/2024/06/Lufz-Law-Firm-Attorney-Angular-13-Template.jpeg', 1000, 1.3, 1, 1, 1, NULL),
(2, '2024-09-02 10:00:00.000000', 'Pilar - Directory & Listing Angular Template', 37000.00, '2024-09-02 10:00:00.000000', 'Pilar là một mẫu Angular hiện đại đáp ứng cho các trang web Danh mục & Danh sách rao vặt. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này lý tưởng cho các cá nhân và công ty có sáng kiến ​​kinh doanh khởi nghiệp dựa trên danh mục và danh sách, dịch vụ dựa trên Google Maps hoặc OpenStreetMap, Doanh nghiệp niêm yết, v.v. Ngoài ra, mẫu này phù hợp với Danh mục rao vặt và bất kỳ cơ quan kinh doanh liên quan nào khác.', 75.00, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', 50000, 2.5, 1, 5, 2, NULL),
(3, '2024-09-02 10:00:00.000000', 'Dizo - Angular Print on Demand Services Template', 160000.00, '2024-09-02 10:00:00.000000', 'Dizo là mẫu Angular hiện đại sáng tạo dành cho trang web của Nhà cung cấp dịch vụ in theo yêu cầu. Mẫu này được tạo bằng Angular, TypeScript, Bootstrap, CSS và Sass. Dizo là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 200.00, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', 250, 5, 1, 5, 2, NULL),
(5, NULL, 'Kiaz - Angular Cleaning & Disinfecting Services', 120000.00, '2024-09-17 22:09:21.000000', 'Kiaz là mẫu Angular hiện đại mới dành cho trang web Dịch vụ khử trùng, vệ sinh, giặt giũ, khử trùng, khử trùng, cải tạo hoặc kiểm soát dịch hại. Mẫu này được xây dựng trên Angular, TypeScript, Sass & Bootstrap. Mẫu này hợp lệ với W3 và chứa bố cục thiết kế tập trung vào người dùng Retina Ready. Kiaz là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 350.00, 'https://code.market/imgproxy/2024/05/Kiaz-Angular-Cleaning-Disinfecting-Services.jpeg', 1000, 3.8, 1, 1, 3, NULL),
(6, '2024-09-17 22:10:11.000000', 'StarSync - Astro App React Native Template', 120000.00, '2024-09-17 22:10:11.000000', 'Giải phóng sức mạnh của các vì sao với StarSync – người bạn đồng hành tuyệt vời của bạn cho chiêm tinh học trong lòng bàn tay. Lặn vào vũ trụ và khám phá những điều bí ẩn của vũ trụ với ứng dụng hỗ trợ AI của chúng tôi. Cho dù bạn là người đam mê chiêm tinh học, một tâm hồn tò mò hay đang tìm kiếm sự hướng dẫn của vũ trụ, StarSync đều cung cấp những hiểu biết được cá nhân hóa và trí tuệ thiên thể ngay trong tầm tay bạn. Từ tử vi hàng ngày đến các bài đọc biểu đồ sinh được cá nhân hóa, ứng dụng của chúng tôi trao quyền cho bạn để điều hướng hành trình cuộc sống với sự rõ ràng và mục đích. Trải nghiệm sự kỳ diệu của chiêm tinh học chưa từng có với StarSync—nơi vũ trụ lên tiếng và mọi chòm sao đều thẳng hàng.', 450.00, 'https://code.market/imgproxy/2024/05/StarSync-Astro-App-React-Native-Template.jpg', 1000, 4, 1, 5, 3, NULL),
(7, '2024-09-17 22:11:03.000000', 'Nuva - Diving & Swimming School Angular Template', 300000.00, '2024-09-17 22:11:03.000000', 'Nuva là mẫu HTML hiện đại đáp ứng cho trang web Trung tâm hoặc Câu lạc bộ bơi lội, Trường dạy lặn biển, Đào tạo lướt sóng & Lặn biển. Mẫu này hợp lệ với W3 và có bố cục thiết kế tập trung vào khách truy cập Retina Ready. Nuva là mẫu cao cấp và hoàn toàn t', 550.00, 'https://code.market/imgproxy/2024/05/Nuva-Diving-Swimming-School-Angular-Template.jpeg', 1000, 3.6, 1, 5, 2, NULL),
(8, NULL, 'Spike Free Angular Admin Dashboard Template', 200000.00, NULL, 'Mẫu Angular Admin Dashboard của chúng tôi cung cấp thiết kế theo mô-đun và các thành phần UI có thể tái sử dụng, được thiết kế riêng cho những ai cần giải pháp thiết kế đáng tin cậy và đáp ứng cho nhiều kích cỡ màn hình khác nhau. Đây là điểm khởi đầu hoà', 400.00, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', 9999999, 4.7, 1, 5, 1, NULL),
(20, '2024-11-16 17:05:14.000000', 'App E', 22121214.00, '2024-11-16 17:05:15.000000', '<p><u>dasdasdsa</u></p>', 37235502.00, 'http://127.0.0.1:9000/resources/application/%2020/images/Screenshot%20%284%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=36da9234f6d3684799716219f6e411e5a3fb950a8a0c1c4324c5f34f342d9d0b, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%285%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=2e0868f043b6ac410807a889888e6685d150da64adeb5b610d6d12a6a6aa2f48, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%286%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4208af1faa8c22179ff2b53cc801985cfc9b552ad8ef8347e4cd1412efda14e8, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%2810%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=3f9d8288efd37214c4b41aecd4261aa15916eb76d6894ed1f928dd611acdae90', NULL, NULL, 1, 2, 1, 'http://127.0.0.1:9000/resources/application/20/minio.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=a7ae23aa94a8c8b6f3ab4e6df3c2b750fd452c0d80f91136155a7c515fe21e71'),
(32, '2024-11-17 22:07:59.000000', 'Fruit Tile Match - Unity Puzzle Game For Android, iOS, WebGL. puzznic', 300000.00, '2024-11-17 22:08:00.000000', '<h2><span style=\"background-color: rgb(255, 255, 255); color: rgb(2, 8, 23);\">Description</span></h2><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">This is a complete game source code with implemented AdMob ads.&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Game is compatible for android, iOS, WebGL, PC and many other platrorms supported by Unity.</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Test it here (WebGL)</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Or download the test APK file and test it on your Android device</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">The game features 60 levels that are easily modifiable or expandable with new ones.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">AdMob ads are implemented in this project. To setup them follow these steps:</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">- Go to Assets -&gt; Google Mobile Ads -&gt; Settings and insert your app ids there - Open the script UIManager.cs and insert your Ad IDs on line 30 for Android and line 32 for iOS Fruit Tile Match is a tile-matching puzzle video game. The objective is to clear the grid by matching blocks of the same type, which causes them to disappear. However, unlike traditional match-three games, blocks can only be moved horizontally or vertically, and they continue moving until they encounter an obstacle. This adds a strategic element as players must carefully plan their moves to create matches while avoiding getting stuck.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Fruit Tile Match is a captivating tile-matching puzzle video game that challenges players with its unique mechanics and strategic depth. The main objective is to clear the grid by matching blocks of the same type, which causes them to disappear and make way for new blocks. However, the game sets itself apart from traditional match-three games with its distinct movement rules.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">In Fruit Tile Match, blocks can only be moved horizontally or vertically. Once moved, they continue to travel in the chosen direction until they encounter an obstacle, such as the edge of the grid or another block. This continuous movement introduces a strategic element that requires players to think several steps ahead. Instead of simply swapping adjacent blocks to create matches, players must carefully plan their moves, anticipating how blocks will travel and interact with the obstacles on the grid.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">The added layer of strategy in Fruit Tile Match makes it more challenging and engaging. Players must consider the entire grid and the potential chain reactions their moves might trigger. The goal is not only to create matches but also to position blocks in a way that sets up future opportunities for clearing the grid. Missteps can lead to blocks becoming stuck in unfavorable positions, making it harder to achieve matches and potentially leaving the player with no viable moves.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">This innovative gameplay encourages players to develop a keen sense of foresight and spatial awareness. Planning moves in advance and predicting the outcomes of each action become crucial skills. The game also introduces various obstacles and power-ups as players progress through levels, adding more complexity and variety to the puzzles. These elements keep the gameplay fresh and exciting, ensuring that players remain engaged as they strive to master the game.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Fruit Tile Match also boasts vibrant graphics and a cheerful soundtrack, enhancing the overall gaming experience. The colorful visuals and lively music create an inviting atmosphere, making the game appealing to players of all ages. The intuitive controls and user-friendly interface further contribute to its accessibility, allowing both novice and experienced gamers to enjoy the challenge.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Overall, Fruit Tile Match offers a fresh and innovative take on the tile-matching genre, combining straightforward mechanics with deep strategic gameplay. Whether you’re a casual gamer looking for a fun distraction or a puzzle enthusiast seeking a new challenge, Fruit Tile Match provides an engaging and rewarding experience. With its blend of strategic depth, charming aesthetics, and accessible gameplay, it stands out as a must-try game for anyone who enjoys puzzle games.</span></p>', 37235502.00, NULL, NULL, NULL, 2, 2, 1, 'http://127.0.0.1:9000/resources/application/32/minio.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=7a4be2c3c27eeb7b22f96618841f55fec5d7f6d920d3ce880b2dcbaabf4a47a2');

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

--
-- Dumping data for table `application_category_detail`
--

INSERT INTO `application_category_detail` (`application_id`, `application_category_id`) VALUES
(1, 3),
(20, 1),
(32, 6);

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
  `application_id` bigint(20) NOT NULL,
  `application_framework_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_framework_detail`
--

INSERT INTO `application_framework_detail` (`application_id`, `application_framework_id`) VALUES
(1, 9),
(1, 7),
(20, 1),
(32, 7);

-- --------------------------------------------------------

--
-- Table structure for table `application_image`
--

CREATE TABLE `application_image` (
  `id` bigint(20) NOT NULL,
  `link` longtext DEFAULT NULL,
  `size` decimal(38,2) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_image`
--

INSERT INTO `application_image` (`id`, `link`, `size`, `application_id`) VALUES
(18, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%284%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=f3cae3701b7e8aa2608a76285a522519559fd7c4db26e8e744cace281a5bd880', NULL, 20),
(19, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%285%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=582004d4d74edcb3df216f1011a69a62de6adb400025c9c1e7f2857eb2ea7a89', NULL, 20),
(20, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%286%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4b50ab91c0485bf9590fcc99ed285012c8bfe26a796c2d54f8ee372cc6730484', NULL, 20),
(21, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%2810%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=e0b9cf246a8858c15fd43830880f1c03754e665260f6e902e81ac6f3227dee9d', NULL, 20),
(22, 'https://code.market/imgproxy/2024/06/Lufz-Law-Firm-Attorney-Angular-13-Template.jpeg', NULL, 1),
(23, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', NULL, 2),
(24, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', NULL, 3),
(26, 'https://code.market/imgproxy/2024/05/Kiaz-Angular-Cleaning-Disinfecting-Services.jpeg', NULL, 5),
(27, 'https://code.market/imgproxy/2024/05/StarSync-Astro-App-React-Native-Template.jpg', NULL, 6),
(28, 'https://code.market/imgproxy/2024/05/Nuva-Diving-Swimming-School-Angular-Template.jpeg', NULL, 7),
(29, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', NULL, 8),
(107, 'http://127.0.0.1:9000/resources/application/32/images/Fruit-Tile-Match-Unity-Puzzle-Game-For-Android-iOS.avif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=ee1cfb7eb8f51fe064dd012f28d207e68c56887f2163562d92a3796c67d842d1', NULL, 32),
(108, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-27.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=7819139a0f997bf9f3cc6c7865ee7d76083193454829633ccc46b0d533f908b6', NULL, 32),
(109, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-35.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=1229fb7a91e4fadecd4f0ab65c1fe889e70b874b125109025a458a313d044291', NULL, 32),
(110, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-43.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b5a7a192c5d934c7ca890e410bb50ba24b5f96f32033b7709f3685eaa0e85e5b', NULL, 32),
(111, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-47.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=8d408517c650931b5c2af72f774c279dbbeaee33de61122e77ffcd43fdc42683', NULL, 32),
(112, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-35-07.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b0313416a6da94ab3f997448da1c33da681e606f933d4e647cb2203af0ee6339', NULL, 32),
(113, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-35-11.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=d0a4de403f4a6714c6181f4af15ae8cde5a1d412c3a179d2cfc13fe206dc4151', NULL, 32);

-- --------------------------------------------------------

--
-- Table structure for table `application_platform`
--

CREATE TABLE `application_platform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_platform`
--

INSERT INTO `application_platform` (`id`, `name`) VALUES
(1, 'Windows'),
(2, 'MacOS'),
(3, 'Linux'),
(4, 'iOS'),
(5, 'Android'),
(6, 'Gaming Consoles');

-- --------------------------------------------------------

--
-- Table structure for table `application_platform_detail`
--

CREATE TABLE `application_platform_detail` (
  `application_id` bigint(20) NOT NULL,
  `platform_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_platform_detail`
--

INSERT INTO `application_platform_detail` (`application_id`, `platform_id`) VALUES
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(20, 1),
(32, 4),
(32, 5),
(32, 1),
(32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `application_type`
--

CREATE TABLE `application_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_type`
--

INSERT INTO `application_type` (`id`, `name`) VALUES
(1, 'Ứng dụng web'),
(2, 'Ứng dụng di động'),
(3, 'Ứng dụng desktop'),
(4, 'Ứng dụng đa nền tảng'),
(5, 'Mẫu thiết kế'),
(6, 'Trò chơi'),
(7, 'Plugins');

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
(177, 15, 32),
(178, 15, 20);

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
(313, '2024-11-17 23:33:17.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 1),
(314, '2024-11-17 23:33:17.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(315, '2024-11-17 23:34:26.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 1),
(316, '2024-11-17 23:34:34.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(317, '2024-11-17 23:37:52.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 1),
(318, '2024-11-17 23:37:52.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(319, '2024-11-17 23:40:28.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 1),
(320, '2024-11-17 23:40:28.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(321, '2024-11-17 23:42:43.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(322, '2024-11-17 23:46:51.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(323, '2024-11-17 23:48:28.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(324, '2024-11-17 23:49:59.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(325, '2024-11-17 23:50:02.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(326, '2024-11-17 23:50:33.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(327, '2024-11-17 23:55:37.000000', NULL, NULL, 300000.00, NULL, 12, NULL, 2),
(328, '2024-11-17 23:58:25.000000', NULL, 'SUCCESSFUL', 300000.00, NULL, 12, NULL, 2),
(329, '2024-11-18 21:40:42.000000', NULL, 'SUCCESSFUL', 300000.00, NULL, 21, NULL, 1),
(330, '2024-11-18 21:40:42.000000', NULL, 'SUCCESSFUL', 300000.00, NULL, 21, NULL, 2),
(331, '2024-11-20 21:46:37.000000', NULL, 'SUCCESSFUL', 22421214.00, NULL, 20, NULL, 1),
(332, '2024-11-20 21:46:37.000000', NULL, 'SUCCESSFUL', 300000.00, NULL, 20, NULL, 2);

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
('https://github.com/ltt03', NULL, 'B2003918', 2, 5),
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
(121, NULL, 32, 328),
(122, NULL, 7, 329),
(123, NULL, 32, 330),
(124, NULL, 20, 331),
(125, NULL, 7, 331),
(126, NULL, 32, 332);

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
(159, 600000.00, '2024-11-17 16:33:17', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=60000000&vnp_Command=pay&vnp_CreateDate=20241117233317&vnp_CurrCode=VND&vnp_ExpireDate=20241117234817&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A01669237&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D01669237&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=01669237&vnp_Version=2.1.0&vnp_SecureHash=2ec7b84b816134f190a126b520ae185657e6ac8ba2eeafe5c31dae232c91ac4bd32731d94eb0517d7560d65d02ab2e65c2bf220ea67da5eebf649540bd36d7d9', 'PENDING'),
(160, 600000.00, '2024-11-17 16:34:34', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=60000000&vnp_Command=pay&vnp_CreateDate=20241117233421&vnp_CurrCode=VND&vnp_ExpireDate=20241117234921&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A35142239&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D35142239&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=35142239&vnp_Version=2.1.0&vnp_SecureHash=04ae02cb486e8b283429a8d06d84a5733f091c5b66ad3865d4c005fc2fc7d2a8b1d67b46a39c4ea6869b37fc06797e9f16c3d88960f97a266e469add59637b4d', 'PENDING'),
(161, 600000.00, '2024-11-17 16:37:52', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=60000000&vnp_Command=pay&vnp_CreateDate=20241117233750&vnp_CurrCode=VND&vnp_ExpireDate=20241117235250&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A76417357&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D76417357&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=76417357&vnp_Version=2.1.0&vnp_SecureHash=84ae7be27f92f5f9338cc63f9e1442f01c790c26067e0ca289fbb07fdf01bd6c5d63252a7764af3acb12269a7aa712a0ec3ce5f966d338586ca5a0084a88ce3c', 'PENDING'),
(162, 600000.00, '2024-11-17 16:40:28', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=60000000&vnp_Command=pay&vnp_CreateDate=20241117234028&vnp_CurrCode=VND&vnp_ExpireDate=20241117235528&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A75574652&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D75574652&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=75574652&vnp_Version=2.1.0&vnp_SecureHash=61df1567fc3f67574e45a5fa6506f5da422f61dd22a23adbd9d509417e70a6d5d6aa905e4ed03575ae62a99725727d3047c1a0db38250a5aeccec1de05a6d1ab', 'PENDING'),
(163, 300000.00, '2024-11-17 16:42:43', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117234243&vnp_CurrCode=VND&vnp_ExpireDate=20241117235743&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A23698387&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D23698387&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=23698387&vnp_Version=2.1.0&vnp_SecureHash=60438aea5b14aa722f609ddec5e0f769910ac23e5c2dd0862f225a149aa963629bf2fc1965f8dc9a1fc361fbc3f295066027dcdd841e0f0c765e39ec6f23ca93', 'PENDING'),
(164, 300000.00, '2024-11-17 16:46:51', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117234651&vnp_CurrCode=VND&vnp_ExpireDate=20241118000151&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A92132953&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D92132953&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=92132953&vnp_Version=2.1.0&vnp_SecureHash=f14eca6be78341ac5066e0a4d1f6d1062bc91fe7c76c8ceb3453a88b7e5c1c6ae112983928d1100730ffa3287dd058242eb0a846e9cb8a65fde7b95c838d7fe6', 'PENDING'),
(165, 300000.00, '2024-11-17 16:48:28', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117234828&vnp_CurrCode=VND&vnp_ExpireDate=20241118000328&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A22951731&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D22951731&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=22951731&vnp_Version=2.1.0&vnp_SecureHash=4d02419821203b81b53a7580d94187d296f208577c2e570a823dbd9905a51f34172a208a20c37e40d29ade4082a86f3c490c35f5eb821552c608b82e2ea8ba08', 'PENDING'),
(166, 300000.00, '2024-11-17 16:49:59', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117234959&vnp_CurrCode=VND&vnp_ExpireDate=20241118000459&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A71088678&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D71088678&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=71088678&vnp_Version=2.1.0&vnp_SecureHash=6e94449abea55cc8f9d6ce7c9a599354ebef08b18d0b82ae934b56c6889281a65fc27b91d0cd543480b371799351c68487983661b564c2c81dd442dfcd498e94', 'PENDING'),
(167, 300000.00, '2024-11-17 16:50:02', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117235002&vnp_CurrCode=VND&vnp_ExpireDate=20241118000502&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A99934993&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D99934993&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=99934993&vnp_Version=2.1.0&vnp_SecureHash=fdc113aa2d185362a162a3ace0fcbad947a8d8e9c2292cbb5eb9d8d3d1fb828e1e7dde8d4ac85d0bf88f5d45a3334d0da67e5ceaafbe21084f1bdc2552305faf', 'PENDING'),
(168, 300000.00, '2024-11-17 16:50:33', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117235033&vnp_CurrCode=VND&vnp_ExpireDate=20241118000533&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A95795206&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D95795206&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=95795206&vnp_Version=2.1.0&vnp_SecureHash=a05db8f6b771b7de81b1e63d46ba620d5fd21e5a94b838d106cb86500e7aece4af1c81cc03c3476bc5887488f36320e7f477207b7b3b1943018ab04b0b6edb09', 'PENDING'),
(169, 300000.00, '2024-11-17 16:55:37', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117235537&vnp_CurrCode=VND&vnp_ExpireDate=20241118001037&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A62376529&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D62376529&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=62376529&vnp_Version=2.1.0&vnp_SecureHash=f24088c1efe03c31e41f21e85b202ac8995a0ee36bdb306d84d96321615c4a4834e6d1f70383326c4f50f2c871eb0f33db4aeadd3165d87c53821a9e44e549d2', 'PENDING'),
(170, 300000.00, '2024-11-17 16:58:25', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=30000000&vnp_Command=pay&vnp_CreateDate=20241117235825&vnp_CurrCode=VND&vnp_ExpireDate=20241118001325&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A96099266&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D96099266&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=96099266&vnp_Version=2.1.0&vnp_SecureHash=60bffbb591fcb6917882830473aa8d32a9efeab6c2bba940f34c8876214786f70c634fcd3ed3572cf21ec35b82a4e410aa995d19838564cdaa25143a75baed51', 'PENDING'),
(171, 600000.00, '2024-11-18 14:40:42', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=60000000&vnp_Command=pay&vnp_CreateDate=20241118214042&vnp_CurrCode=VND&vnp_ExpireDate=20241118215542&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A57003148&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D57003148&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=57003148&vnp_Version=2.1.0&vnp_SecureHash=e28ead786eb9e6ca754cf87cbfc14782866d4e557d1c654f71814946967609fbbb3a5de5316cbca84c07057c032b95881fe9fb7c7f17b1295b292a3a5cd3bf63', 'PENDING'),
(172, 22721214.00, '2024-11-20 14:46:37', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=2272121400&vnp_Command=pay&vnp_CreateDate=20241120214637&vnp_CurrCode=VND&vnp_ExpireDate=20241120220137&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A69960374&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3ForderId%3D69960374&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=69960374&vnp_Version=2.1.0&vnp_SecureHash=599e08f511a698577ab8d69fc7a04a48d8782dc09d57809addbcbfe1616c06a71db449fc4c010a7b8dd42196b373912125419f9db8ed2ba11ed0e77413486e13', 'PENDING');

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
(2, NULL, NULL, '1990-01-01', 'tai@example.com', 0, '$2a$10$k06tpSi0rAs49qJa0CGtjekfHsX7fsF3r0Irp061ylzy7CGtOHxIi', NULL, NULL, 'Ly Tan Tai', 'tai2', 'DEVELOPER'),
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
(20, NULL, '2024-11-19 23:39:45.000000', '1995-07-31', 'tai120@gmail.com', 0, '$2a$10$4Rt3QhPX4cJ9vVEvnakXOODJs6jWuwdozVRPbehtZ3Cl2o0v133pu', '09121906632', NULL, 'Võ Ðức Thành', 'tai120', 'CUSTOMER'),
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
  ADD KEY `FK5m0c1809quegudjmrrbgod40` (`developer_id`),
  ADD KEY `FKb1wnee4rqq3pidy6oxmp3pica` (`type_id`);

--
-- Indexes for table `application_category`
--
ALTER TABLE `application_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_category_detail`
--
ALTER TABLE `application_category_detail`
  ADD KEY `FKssq7re999w91yk5nwwq4ypu6j` (`application_id`);

--
-- Indexes for table `application_framework`
--
ALTER TABLE `application_framework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_framework_detail`
--
ALTER TABLE `application_framework_detail`
  ADD KEY `FKsycjenpdgfq7v4mxuhw6olcxh` (`application_framework_id`),
  ADD KEY `FKiklnbl7t7norcb5v8953c0lk0` (`application_id`);

--
-- Indexes for table `application_image`
--
ALTER TABLE `application_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6w48ip70fr3emh57p8kkpjd04` (`application_id`);

--
-- Indexes for table `application_platform`
--
ALTER TABLE `application_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_platform_detail`
--
ALTER TABLE `application_platform_detail`
  ADD KEY `FKkt3gpv7cs7hbyc70lipkaht6f` (`platform_id`),
  ADD KEY `FK8eshvm7rn8rejugi7kcyp8wwl` (`application_id`);

--
-- Indexes for table `application_type`
--
ALTER TABLE `application_type`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FKk99e899ovga4l366djjrqmpy0` (`order_id`),
  ADD KEY `FKrbeg2dror1rdap9tgj6f4lej4` (`application_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT for table `application_image`
--
ALTER TABLE `application_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `application_platform`
--
ALTER TABLE `application_platform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application_type`
--
ALTER TABLE `application_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

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
  ADD CONSTRAINT `FK5m0c1809quegudjmrrbgod40` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  ADD CONSTRAINT `FKb1wnee4rqq3pidy6oxmp3pica` FOREIGN KEY (`type_id`) REFERENCES `application_type` (`id`);

--
-- Constraints for table `application_category_detail`
--
ALTER TABLE `application_category_detail`
  ADD CONSTRAINT `FK2j0ft26hxmno74bpyjogwmoqt` FOREIGN KEY (`application_category_id`) REFERENCES `application_category` (`id`),
  ADD CONSTRAINT `FKssq7re999w91yk5nwwq4ypu6j` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

--
-- Constraints for table `application_framework_detail`
--
ALTER TABLE `application_framework_detail`
  ADD CONSTRAINT `FKiklnbl7t7norcb5v8953c0lk0` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `FKsycjenpdgfq7v4mxuhw6olcxh` FOREIGN KEY (`application_framework_id`) REFERENCES `application_framework` (`id`);

--
-- Constraints for table `application_image`
--
ALTER TABLE `application_image`
  ADD CONSTRAINT `FK6w48ip70fr3emh57p8kkpjd04` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

--
-- Constraints for table `application_platform_detail`
--
ALTER TABLE `application_platform_detail`
  ADD CONSTRAINT `FK8eshvm7rn8rejugi7kcyp8wwl` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `FKkt3gpv7cs7hbyc70lipkaht6f` FOREIGN KEY (`platform_id`) REFERENCES `application_platform` (`id`);

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
  ADD CONSTRAINT `FKk99e899ovga4l366djjrqmpy0` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`id`),
  ADD CONSTRAINT `FKrbeg2dror1rdap9tgj6f4lej4` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

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
