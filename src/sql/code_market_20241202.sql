-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 08:57 PM
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
(2, '2024-09-02 10:00:00.000000', 'Pilar - Directory & Listing Angular Template', 37000.00, '2024-09-02 10:00:00.000000', 'Pilar là một mẫu Angular hiện đại đáp ứng cho các trang web Danh mục & Danh sách rao vặt. Nó được tạo bằng Angular, Bootstrap và Sass. Mẫu này lý tưởng cho các cá nhân và công ty có sáng kiến ​​kinh doanh khởi nghiệp dựa trên danh mục và danh sách, dịch vụ dựa trên Google Maps hoặc OpenStreetMap, Doanh nghiệp niêm yết, v.v. Ngoài ra, mẫu này phù hợp với Danh mục rao vặt và bất kỳ cơ quan kinh doanh liên quan nào khác.', 75.00, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', 500, 2.5, 1, 5, 2, NULL),
(3, '2024-09-02 10:00:00.000000', 'Dizo - Angular Print on Demand Services Template', 160000.00, '2024-09-02 10:00:00.000000', 'Dizo là mẫu Angular hiện đại sáng tạo dành cho trang web của Nhà cung cấp dịch vụ in theo yêu cầu. Mẫu này được tạo bằng Angular, TypeScript, Bootstrap, CSS và Sass. Dizo là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 200.00, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', 250, 5, 1, 5, 2, NULL),
(5, NULL, 'Kiaz - Angular Cleaning & Disinfecting Services', 120000.00, '2024-09-17 22:09:21.000000', 'Kiaz là mẫu Angular hiện đại mới dành cho trang web Dịch vụ khử trùng, vệ sinh, giặt giũ, khử trùng, khử trùng, cải tạo hoặc kiểm soát dịch hại. Mẫu này được xây dựng trên Angular, TypeScript, Sass & Bootstrap. Mẫu này hợp lệ với W3 và chứa bố cục thiết kế tập trung vào người dùng Retina Ready. Kiaz là mẫu cao cấp và hoàn toàn tương thích với mọi loại thiết bị di động, máy tính bảng, máy tính xách tay và máy tính để bàn.', 350.00, 'https://code.market/imgproxy/2024/05/Kiaz-Angular-Cleaning-Disinfecting-Services.jpeg', 1100, 3.8, 1, 1, 3, NULL),
(6, '2024-09-17 22:10:11.000000', 'StarSync - Astro App React Native Template', 120000.00, '2024-09-17 22:10:11.000000', 'Giải phóng sức mạnh của các vì sao với StarSync – người bạn đồng hành tuyệt vời của bạn cho chiêm tinh học trong lòng bàn tay. Lặn vào vũ trụ và khám phá những điều bí ẩn của vũ trụ với ứng dụng hỗ trợ AI của chúng tôi. Cho dù bạn là người đam mê chiêm tinh học, một tâm hồn tò mò hay đang tìm kiếm sự hướng dẫn của vũ trụ, StarSync đều cung cấp những hiểu biết được cá nhân hóa và trí tuệ thiên thể ngay trong tầm tay bạn. Từ tử vi hàng ngày đến các bài đọc biểu đồ sinh được cá nhân hóa, ứng dụng của chúng tôi trao quyền cho bạn để điều hướng hành trình cuộc sống với sự rõ ràng và mục đích. Trải nghiệm sự kỳ diệu của chiêm tinh học chưa từng có với StarSync—nơi vũ trụ lên tiếng và mọi chòm sao đều thẳng hàng.', 450.00, 'https://code.market/imgproxy/2024/05/StarSync-Astro-App-React-Native-Template.jpg', 1200, 4, 1, 5, 3, NULL),
(7, '2024-09-17 22:11:03.000000', 'Nuva - Diving & Swimming School Angular Template', 300000.00, '2024-09-17 22:11:03.000000', 'Nuva là mẫu HTML hiện đại đáp ứng cho trang web Trung tâm hoặc Câu lạc bộ bơi lội, Trường dạy lặn biển, Đào tạo lướt sóng & Lặn biển. Mẫu này hợp lệ với W3 và có bố cục thiết kế tập trung vào khách truy cập Retina Ready. Nuva là mẫu cao cấp và hoàn toàn t', 550.00, 'https://code.market/imgproxy/2024/05/Nuva-Diving-Swimming-School-Angular-Template.jpeg', 1000, 3.6, 1, 5, 2, NULL),
(8, NULL, 'Spike Free Angular Admin Dashboard Template', 200000.00, NULL, 'Mẫu Angular Admin Dashboard của chúng tôi cung cấp thiết kế theo mô-đun và các thành phần UI có thể tái sử dụng, được thiết kế riêng cho những ai cần giải pháp thiết kế đáng tin cậy và đáp ứng cho nhiều kích cỡ màn hình khác nhau. Đây là điểm khởi đầu hoà', 400.00, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', 900, 4.7, 1, 5, 1, NULL),
(20, '2024-11-16 17:05:14.000000', 'App E', 500000.00, '2024-11-16 17:05:15.000000', '<p><u>dasdasdsa</u></p>', 37235502.00, 'http://127.0.0.1:9000/resources/application/%2020/images/Screenshot%20%284%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=36da9234f6d3684799716219f6e411e5a3fb950a8a0c1c4324c5f34f342d9d0b, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%285%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=2e0868f043b6ac410807a889888e6685d150da64adeb5b610d6d12a6a6aa2f48, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%286%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4208af1faa8c22179ff2b53cc801985cfc9b552ad8ef8347e4cd1412efda14e8, http://127.0.0.1:9000/resources/application/20/images/Screenshot%20%2810%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=3f9d8288efd37214c4b41aecd4261aa15916eb76d6894ed1f928dd611acdae90', 300, NULL, 1, 2, 1, 'http://127.0.0.1:9000/resources/application/20/minio.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241116%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241116T100515Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=a7ae23aa94a8c8b6f3ab4e6df3c2b750fd452c0d80f91136155a7c515fe21e71'),
(32, '2024-11-17 22:07:59.000000', 'Fruit Tile Match - Unity Puzzle Game For Android, iOS, WebGL. puzznic', 300000.00, '2024-11-17 22:08:00.000000', '<h2><span style=\"background-color: rgb(255, 255, 255); color: rgb(2, 8, 23);\">Description</span></h2><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">This is a complete game source code with implemented AdMob ads.&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Game is compatible for android, iOS, WebGL, PC and many other platrorms supported by Unity.</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Test it here (WebGL)</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Or download the test APK file and test it on your Android device</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">The game features 60 levels that are easily modifiable or expandable with new ones.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">AdMob ads are implemented in this project. To setup them follow these steps:</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">- Go to Assets -&gt; Google Mobile Ads -&gt; Settings and insert your app ids there - Open the script UIManager.cs and insert your Ad IDs on line 30 for Android and line 32 for iOS Fruit Tile Match is a tile-matching puzzle video game. The objective is to clear the grid by matching blocks of the same type, which causes them to disappear. However, unlike traditional match-three games, blocks can only be moved horizontally or vertically, and they continue moving until they encounter an obstacle. This adds a strategic element as players must carefully plan their moves to create matches while avoiding getting stuck.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Fruit Tile Match is a captivating tile-matching puzzle video game that challenges players with its unique mechanics and strategic depth. The main objective is to clear the grid by matching blocks of the same type, which causes them to disappear and make way for new blocks. However, the game sets itself apart from traditional match-three games with its distinct movement rules.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">In Fruit Tile Match, blocks can only be moved horizontally or vertically. Once moved, they continue to travel in the chosen direction until they encounter an obstacle, such as the edge of the grid or another block. This continuous movement introduces a strategic element that requires players to think several steps ahead. Instead of simply swapping adjacent blocks to create matches, players must carefully plan their moves, anticipating how blocks will travel and interact with the obstacles on the grid.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">The added layer of strategy in Fruit Tile Match makes it more challenging and engaging. Players must consider the entire grid and the potential chain reactions their moves might trigger. The goal is not only to create matches but also to position blocks in a way that sets up future opportunities for clearing the grid. Missteps can lead to blocks becoming stuck in unfavorable positions, making it harder to achieve matches and potentially leaving the player with no viable moves.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">This innovative gameplay encourages players to develop a keen sense of foresight and spatial awareness. Planning moves in advance and predicting the outcomes of each action become crucial skills. The game also introduces various obstacles and power-ups as players progress through levels, adding more complexity and variety to the puzzles. These elements keep the gameplay fresh and exciting, ensuring that players remain engaged as they strive to master the game.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Fruit Tile Match also boasts vibrant graphics and a cheerful soundtrack, enhancing the overall gaming experience. The colorful visuals and lively music create an inviting atmosphere, making the game appealing to players of all ages. The intuitive controls and user-friendly interface further contribute to its accessibility, allowing both novice and experienced gamers to enjoy the challenge.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">Overall, Fruit Tile Match offers a fresh and innovative take on the tile-matching genre, combining straightforward mechanics with deep strategic gameplay. Whether you’re a casual gamer looking for a fun distraction or a puzzle enthusiast seeking a new challenge, Fruit Tile Match provides an engaging and rewarding experience. With its blend of strategic depth, charming aesthetics, and accessible gameplay, it stands out as a must-try game for anyone who enjoys puzzle games.</span></p>', 37235502.00, NULL, 600, NULL, 2, 2, 1, 'http://127.0.0.1:9000/resources/application/32/minio.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20241117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241117T150800Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=7a4be2c3c27eeb7b22f96618841f55fec5d7f6d920d3ce880b2dcbaabf4a47a2'),
(33, '2024-12-02 02:00:18.000000', 'StudyStudio - AI Educational App, Course Helper, Custom AI Tutor Creator SAAS System', 2000000.00, '2024-12-02 02:00:19.000000', '<h2><strong style=\"color: rgb(84, 84, 84);\">What’s new?</strong></h2><p><span style=\"color: rgb(84, 84, 84);\">With StudyStudio, say goodbye to high tutoring costs and hello to flexible, on-demand learning. This intuitive platform makes it easy to tailor AI tutors to specific coursework needs, allowing users to chat and learn at their own pace. Built with Next.js, React, and Gemini StudyStudio is your ultimate tool to transform tutoring, making education accessible, customizable, and affordable.</span></p><h2><strong style=\"color: rgb(84, 84, 84);\">Features</strong></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">AI-Powered Tutor Creation</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Course-Specific Assistance</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">User Profile Management</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Secure Authentication</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Data Storage &amp; Retrieval</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Premium Plan Features</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Activity &amp; Usage Tracking</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Responsive Interface Design</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Modern, Intuitive User Experience</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Customizable Tutor Setup</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Interactive Coursework Support</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Tutor Interaction History</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Real-Time Response Status</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Notification System for Updates</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">AI Response Preview</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">24/7 Support &amp; Contact Options</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Learning Analytics &amp; Insights</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Knowledge Base &amp; Help Center</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Database Configuration &amp; Maintenance</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Sleek, User-Friendly Design</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Fine-Tuned AI Processing</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Multiple Subscription Options</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Efficient Codebase</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Ongoing Updates &amp; Support</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">API Integration</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">&amp; Much More</span></li></ol><h2><strong style=\"color: rgb(84, 84, 84);\">Requirements</strong></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Gemini API</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Paid Domain (No hosting/Hosting)</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Access to any one or all of the integrated payment gateways</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Ability to follow documentation</span></li></ol><p><br></p><h2><strong style=\"color: rgb(84, 84, 84);\">Tools &amp; Technologies</strong></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Next.js 13 or higher</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">React 18 or higher</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Neon</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Gemini</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Clerk</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Cloudinary</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Drizzle</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(84, 84, 84);\">Vercel</span></li></ol><p><br></p><h2><strong style=\"color: rgb(84, 84, 84);\">Start a SaaS Business</strong></h2><p><span style=\"color: rgb(84, 84, 84);\">Start Your SaaS Business Journey with StudyStudio:</span></p><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgb(84, 84, 84);\">Acquire Script:</strong><span style=\"color: rgb(84, 84, 84);\">&nbsp;Secure the StudyStudio – AI Education App and AI Tutor Creator SaaS Application extended license from Envato.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgb(84, 84, 84);\">Installation:</strong><span style=\"color: rgb(84, 84, 84);\">&nbsp;Easily install the script on your server by following the provided documentation.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgb(84, 84, 84);\">Configuration:</strong><span style=\"color: rgb(84, 84, 84);\">&nbsp;Set up pricing plans and select payment methods tailored to your customer’s needs. Customize your landing page to align with your business vision.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgb(84, 84, 84);\">Marketing Campaign:</strong><span style=\"color: rgb(84, 84, 84);\">&nbsp;Launch your marketing campaign to attract customers to your application.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgb(84, 84, 84);\">Seamless Earnings:</strong><span style=\"color: rgb(84, 84, 84);\">&nbsp;As customers opt for subscription plans, watch your revenues grow effortlessly. Relax and savor the rewards of your SaaS venture.</span></li></ol><p><span style=\"color: rgb(84, 84, 84);\">That’s it! Starting a SaaS business has never been more accessible. StudyStudio has turned your dream into a reality.</span></p><p><br></p>', 37235502.00, NULL, NULL, NULL, 1, 1, 1, 'http://localhost:9001/resources/application/33/minio.zip'),
(34, '2024-12-02 02:12:47.000000', 'App 1', 30000.00, '2024-12-02 02:12:48.000000', '<p>sadasdasda</p>', 37235502.00, NULL, NULL, NULL, 1, 2, 1, 'http://127.0.0.1:9000/resources/application/34/minio.zip');

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
(32, 6),
(1, 3),
(20, 1),
(32, 6),
(1, 3),
(20, 1),
(32, 6),
(1, 3),
(20, 1),
(32, 6),
(33, 1),
(33, 3),
(34, 1);

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
(32, 7),
(1, 9),
(1, 7),
(20, 1),
(32, 7),
(1, 9),
(1, 7),
(20, 1),
(32, 7),
(1, 9),
(1, 7),
(20, 1),
(32, 7),
(33, 1),
(33, 2),
(33, 3),
(34, 1);

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
(18, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%284%29.png', NULL, 20),
(19, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%285%29.png', NULL, 20),
(20, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%286%29.png', NULL, 20),
(21, 'http://127.0.0.1:9000/resources/application/20/images/real/Screenshot%20%2810%29.png', NULL, 20),
(22, 'https://code.market/imgproxy/2024/06/Lufz-Law-Firm-Attorney-Angular-13-Template.jpeg', NULL, 1),
(23, 'https://code.market/imgproxy/2024/05/Pilar-Directory-Listing-Angular-Template.jpeg', NULL, 2),
(24, 'https://code.market/imgproxy/2024/05/Dizo-Angular-Print-on-Demand-Services-Template.jpeg', NULL, 3),
(26, 'https://code.market/imgproxy/2024/05/Kiaz-Angular-Cleaning-Disinfecting-Services.jpeg', NULL, 5),
(27, 'https://code.market/imgproxy/2024/05/StarSync-Astro-App-React-Native-Template.jpg', NULL, 6),
(28, 'https://code.market/imgproxy/2024/05/Nuva-Diving-Swimming-School-Angular-Template.jpeg', NULL, 7),
(29, 'https://code.market/imgproxy/2024/08/Spike_Free_Angular_715X364-Code.market.png', NULL, 8),
(107, 'http://127.0.0.1:9000/resources/application/32/images/Fruit-Tile-Match-Unity-Puzzle-Game-For-Android-iOS.avif', NULL, 32),
(108, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-27.png', NULL, 32),
(109, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-35.png', NULL, 32),
(110, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-43.png', NULL, 32),
(111, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-34-47.png', NULL, 32),
(112, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-35-07.png', NULL, 32),
(113, 'http://127.0.0.1:9000/resources/application/32/images/2024-11-17_21-35-11.png', NULL, 32),
(114, 'http://127.0.0.1:9000/resources/application/33/images/1.png', NULL, 33),
(115, 'http://127.0.0.1:9000/resources/application/33/images/2.png', NULL, 33),
(116, 'http://127.0.0.1:9000/resources/application/33/images/3.png', NULL, 33),
(117, 'http://127.0.0.1:9000/resources/application/33/images/5.png', NULL, 33),
(118, 'http://127.0.0.1:9000/resources/application/33/images/6.png', NULL, 33),
(119, 'http://127.0.0.1:9000/resources/application/33/images/7.png', NULL, 33),
(120, 'http://127.0.0.1:9000/resources/application/33/images/8.png', NULL, 33),
(121, 'http://127.0.0.1:9000/resources/application/33/images/9.png', NULL, 33),
(122, 'http://127.0.0.1:9000/resources/application/33/images/10.png', NULL, 33),
(123, 'http://127.0.0.1:9000/resources/application/33/images/4.png', NULL, 33),
(124, 'http://127.0.0.1:9000/resources/application/34/images/Cachvietabstract_SV1.jpg', NULL, 34);

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
(32, 2),
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
(32, 2),
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
(32, 2),
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
(32, 2),
(33, 2),
(33, 1),
(34, 1);

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
(349, '2024-12-02 01:45:44.000000', NULL, 'SUCCESSFUL', 500000.00, NULL, 20, 181, 1),
(350, '2024-12-02 01:45:44.000000', NULL, 'SUCCESSFUL', 300000.00, NULL, 20, 181, 2);

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
(1, 3),
(1, 4),
(1, 2);

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
(132, NULL, 20, 349),
(133, NULL, 32, 350);

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
(181, 800000.00, '2024-12-01 18:45:44', 'vnpay', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=80000000&vnp_Command=pay&vnp_CreateDate=20241202014544&vnp_CurrCode=VND&vnp_ExpireDate=20241202020044&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang%3A80009507&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A5173%2F%3FpaymentId%3D181&vnp_TmnCode=1LHJEOJP&vnp_TxnRef=80009507&vnp_Version=2.1.0&vnp_SecureHash=88878648be6c83982dda1e13c49bdfed33b06affb89941d4ad42a41b0a1b7bdce28a237e7d76626dd9766c0a2fc6ce36139f0a7c3fb998861096556d611f7f98', 'PENDING');

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
-- Table structure for table `sys_ad`
--

CREATE TABLE `sys_ad` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_ad`
--

INSERT INTO `sys_ad` (`id`) VALUES
(27);

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
(20, 'http://127.0.0.1:9000/resources/avt/avataaars (4).png', '2024-11-19 23:39:45.000000', '1995-07-31', 'tai120@gmail.com', 0, '$2a$10$4Rt3QhPX4cJ9vVEvnakXOODJs6jWuwdozVRPbehtZ3Cl2o0v133pu', '09121906632', NULL, 'Võ Ðức Thành', 'tai120', 'CUSTOMER'),
(21, NULL, NULL, NULL, NULL, 0, '$2a$10$eV8YIKESmwp8q10YYeL7e.gXMHbIbtSSQQBTXbXtaSq9kGn8D5K1e', NULL, NULL, NULL, 'tai20', 'CUSTOMER'),
(22, NULL, NULL, NULL, NULL, 0, '$2a$10$DHocabH.pnHLD30Hsp0M4udetOlzGh934vPmavLC9BGnviKiU/S46', NULL, NULL, NULL, 'tai21', 'CUSTOMER'),
(23, NULL, NULL, NULL, NULL, 0, '$2a$10$qD18vGKp2CJZYdDmrGwtSugMFb758jyIsrmUyxwARyk4W4v7kG7Wm', NULL, NULL, NULL, 'tai22', 'CUSTOMER'),
(24, NULL, NULL, NULL, NULL, 0, '$2a$10$6lW1kb3XobGPhrJg3uGxa.s35RXm.QtZxhvo42l/sdGNQhfYSLEdu', NULL, NULL, NULL, 'tai23', 'CUSTOMER'),
(25, NULL, NULL, NULL, NULL, 0, '$2a$10$k06tpSi0rAs49qJa0CGtjekfHsX7fsF3r0Irp061ylzy7CGtOHxIi', NULL, NULL, NULL, 'tai24', 'CUSTOMER'),
(26, NULL, NULL, NULL, NULL, 0, '$2a$10$2uAzp6.4MhX2aUgF6wFG5eqmEVQJWA4H11YRkBRHWVc/iPFAdBKr2', NULL, NULL, NULL, 'tai25', 'CUSTOMER'),
(27, 'http://127.0.0.1:9000/resources/avt/avataaars (4).png', '2024-11-21 21:40:11.000000', '1997-03-06', 'tai27@gmail.com', 0, '$2a$10$2uAzp6.4MhX2aUgF6wFG5eqmEVQJWA4H11YRkBRHWVc/iPFAdBKr2', '09125138755', NULL, 'Hồ Khắc Ninh\n', 'tai27', 'SYSAD');

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
-- Indexes for table `sys_ad`
--
ALTER TABLE `sys_ad`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- Constraints for table `sys_ad`
--
ALTER TABLE `sys_ad`
  ADD CONSTRAINT `FK2k5xan02r7esb7rewtlpdbfv4` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

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
