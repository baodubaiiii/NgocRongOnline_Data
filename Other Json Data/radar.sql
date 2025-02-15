-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 27, 2025 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chienbinhrong_server`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `radar`
--

CREATE TABLE `radar` (
  `id` int(11) NOT NULL,
  `iconId` int(11) DEFAULT 0,
  `rank` tinyint(4) DEFAULT 0,
  `max` int(11) DEFAULT 60,
  `type` int(11) DEFAULT 0,
  `template` int(11) DEFAULT 1,
  `body` varchar(500) DEFAULT '[]',
  `name` varchar(500) DEFAULT '',
  `info` varchar(2000) DEFAULT '',
  `options` varchar(2000) DEFAULT '[]',
  `require` int(11) DEFAULT -1,
  `require_level` int(11) DEFAULT 0,
  `aura_id` smallint(6) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `radar`
--

INSERT INTO `radar` (`id`, `iconId`, `rank`, `max`, `type`, `template`, `body`, `name`, `info`, `options`, `require`, `require_level`, `aura_id`) VALUES
(828, 7467, 0, 5, 0, 1, '[]', 'Thẻ Khủng long', 'Hai chi trước của Khủng long rất ngắn nên chúng không thể cầm thức ăn được', '[{\"id\": 50, \"param\": 1, \"activeCard\": 0},\n{\"id\": 50, \"param\": 2, \"activeCard\": 1},\n{\"id\": 50, \"param\": 3, \"activeCard\": 2}]', -1, 0, -1),
(829, 7468, 0, 5, 0, 2, '[]', 'Thẻ Lợn lòi', 'Lợn lòi có sở thích mài răng nanh dưới đất, vô tình tạo ra những rãnh đất để người Namec trồng trọt', '[{\"id\":77,\"param\":1,\"activeCard\":0},{\"id\":77,\"param\":2,\"activeCard\":1},{\"id\":77,\"param\":3,\"activeCard\":2}]', 828, 2, -1),
(830, 7469, 0, 5, 0, 3, '[]', 'Thẻ Quỷ đất', 'Bản tính của Qủy đất khá nhút nhát, chúng thường núp vào cây khi gặp người lạ', '[{\"id\":103,\"param\":1,\"activeCard\":0},{\"id\":103,\"param\":2,\"activeCard\":1},{\"id\":103,\"param\":3,\"activeCard\":2}]', 829, 2, -1),
(831, 7470, 1, 5, 0, 4, '[]', 'Thẻ Khủng long mẹ', 'Hai chi trước của Khủng long rất ngắn nên chúng không thể cầm thức ăn được', '[{\"id\": 94, \"param\": 1, \"activeCard\": 0}, {\"id\": 94, \"param\": 2, \"activeCard\": 1}, {\"id\": 94, \"param\": 3, \"activeCard\": 2}]', 830, 2, -1),
(832, 7471, 1, 5, 0, 5, '[]', 'Thẻ Lợn lòi mẹ', 'Lợn lòi có sở thích mài răng nanh dưới đất, vô tình tạo ra những rãnh đất để người Namec trồng trọt', '[{\"id\": 14, \"param\": 1, \"activeCard\": 0}, {\"id\": 14, \"param\": 2, \"activeCard\": 1}, {\"id\": 14, \"param\": 3, \"activeCard\": 2}]', 831, 2, -1),
(833, 7472, 1, 5, 0, 6, '[]', 'Thẻ Quỷ đất mẹ', ' Bản tính của Qủy đất khá nhút nhát, chúng thường núp vào cây khi gặp người lạ', '[{\"id\": 50, \"param\": 3, \"activeCard\": 0},\n{\"id\": 50, \"param\": 4, \"activeCard\": 1},\n{\"id\": 50, \"param\": 5, \"activeCard\": 2}]', 832, 2, -1),
(834, 7473, 2, 5, 0, 7, '[]', 'Thẻ Thằn lằn bay', 'Thằn lằn bay dùng cái mỏ dài và cứng để tấn công kẻ thù, đôi khi chúng vẫn dùng để gõ hạt óc chó ăn', '[{\"id\":77,\"param\":3,\"activeCard\":0},{\"id\":77,\"param\":4,\"activeCard\":1},{\"id\":77,\"param\":5,\"activeCard\":2}]', 833, 2, -1),
(835, 7474, 2, 5, 0, 8, '[]', 'Thẻ Phi long', 'Dùng tốc độ cực nhanh để tiếp cận và hạ gục mục tiêu, Phi long cũng có sở thích hơi lạ là khi bay luôn mở to miệng để đón gió', '[{\"id\":103,\"param\":3,\"activeCard\":0},{\"id\":103,\"param\":4,\"activeCard\":1},{\"id\":103,\"param\":5,\"activeCard\":2}]', 834, 2, -1),
(836, 7475, 2, 5, 0, 9, '[]', 'Thẻ Quỷ bay', 'Sở trường tấn công chớp choáng kẻ thù, nhưng đâu ai ngờ Quỷ bay lại có bệnh sợ độ cao', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 835, 2, 2),
(837, 7476, 3, 5, 0, 34, '[]', 'Thẻ Lính độc nhãn', 'Người ta nuôi quân lính dùng trong 1 giờ, Lính độc nhãn thì không dùng được 5 phút', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 836, 2, -1),
(838, 7477, 3, 5, 0, 35, '[]', 'Thẻ Lính độc nhãn', 'Người ta nuôi quân lính dùng trong 1 giờ, Lính độc nhãn thì không dùng được 5 phút', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 837, 2, -1),
(839, 7478, 3, 5, 0, 36, '[]', 'Thẻ Sói xám', 'Được lính độc nhãn thuần hóa và cho giữ nhà như cún con, sở thích của chúng là được chơi trò nhặt bóng', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 838, 2, -1),
(840, 7480, 4, 5, 1, -1, '[141,142,143,-1]', 'Thẻ Trung úy trắng', 'Thân hình hơi béo so với tiêu chuẩn chung, luôn đeo chiếc khăn quàng đỏ, thường hay mơ mộng làm thơ', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 839, 2, -1),
(841, 7481, 4, 5, 1, -1, '[123,124,125,-1]', 'Thẻ Ninja Áo Tím', 'Ninja với nhiều tài năng để trở thành sát thủ, nhưng kỹ thuật ẩn thân lại không có, nên không thể trở thành sát thủ', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 840, 2, -1),
(842, 7479, 4, 5, 1, -1, '[135,136,137,-1]', 'Thẻ Trung úy xanh lơ', 'Có siêu năng lực thôi miên nhưng cực kỳ sợ chuột', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 841, 2, -1),
(859, 1568, 5, 5, 1, -1, '[144,145,146,-1]', 'Thẻ Độc nhãn', 'Đầu não của Red Ribbon. Bị chột một mắt. Lúc nhỏ bị mọi người chê là \'Thằng lùn\'', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', 842, 2, -1),
(956, 8935, 5, 5, 1, -1, '[994,995,996,-1]', 'Thẻ Đội Trưởng Vàng', 'Đội trưởng Vàng là một con hổ hình người chắc nịch có cơ thể được bao phủ bởi bộ lông màu vàng, Goku đã đấm hắn ra khỏi máy bay của mình khi đang ở giữa không trung.', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', -1, 0, 0),
(1204, 11048, 5, 5, 1, -1, '[1204,1205,1206, -1]', 'Thẻ Rồng Thần Namec', 'Rồng thần của Namếc do trưởng lão hành tinh này tạo ra. Khác với Rồng thiêng của Trái Đất, Rồng thần Namếc có thân hình màu xanh to lớn, đồ sộ và đáng sợ hơn. Có thể thực hiện 3 điều ước.', '[{\"id\": 94, \"param\":3, \"activeCard\": 0}, {\"id\": 94, \"param\": 4, \"activeCard\": 1}, {\"id\": 94, \"param\": 5, \"activeCard\": 2}]', -1, 0, 1),
(1673, 18532, 5, 5, 1, -1, '[1448, 1449, 1450, -1]', 'Thẻ Goku UltraInstic', 'Thẻ Goku UltraInstic', '[{\"id\": 50, \"param\":13, \"activeCard\": 0}, {\"id\": 50, \"param\": 14, \"activeCard\": 1}, {\"id\":50, \"param\": 15, \"activeCard\": 2}]', -1, 0, -1),
(1802, 11379, 5, 12, 1, 1, '[1263, 1264, 1265, -1]', 'Thẻ Cumber', 'Ác thần của hành tinh Xayda. Có sức mạnh nguyền rủa đáng sợ.', '[{\"id\": 50, \"param\":5, \"activeCard\": 0}, {\"id\": 50, \"param\": 6, \"activeCard\": 1}, {\"id\":50, \"param\": 7, \"activeCard\": 2}]', -1, 0, -1),
(1803, 11410, 5, 12, 1, 1, '[1266, 1264, 1265, -1]', 'Thẻ Siêu Cumber', 'Ác thần của hành tinh Xayda. Có sức mạnh nguyền rủa đáng sợ.', '[{\"id\": 50, \"param\":8, \"activeCard\": 0}, {\"id\": 50, \"param\": 9, \"activeCard\": 1}, {\"id\":50, \"param\": 10, \"activeCard\": 2}]', -1, 0, -1),
(1804, 8211, 5, 12, 1, 1, '[903, 904, 905, -1]', 'Thẻ Zamasu', 'Đây là 1 nhân bản của Goku, sao chép sức mạnh của hắn nên có sức mạnh rất đáng gờm.', '[{\"id\": 77, \"param\":13, \"activeCard\": 0}, {\"id\": 77, \"param\": 14, \"activeCard\": 1}, {\"id\":77, \"param\": 15, \"activeCard\": 2}]', -1, 0, -1),
(1805, 21120, 5, 12, 1, 1, '[1546, 1547, 1548, 205]', 'Thẻ Zamasu Độc Nhãn', 'Đây là 1 nhân bản của Goku ở 1 thực tại khác, sao chép sức mạnh của hắn nên có sức mạnh rất đáng gờm.', '[{\"id\": 103, \"param\":13, \"activeCard\": 0}, {\"id\": 103, \"param\": 14, \"activeCard\": 1}, {\"id\":103, \"param\": 15, \"activeCard\": 2}]', -1, 0, -1),
(1806, 22412, 5, 12, 1, 1, '[1552, 1553, 1554, 205]', 'Thẻ Zamasu Bất Tử Nhân\r\n\r\n', 'Đây là trạng thái khi hợp thể của Zamasu, trở thành thực thể bất tử.', '[{\"id\": 95, \"param\":13, \"activeCard\": 0}, {\"id\": 95, \"param\": 14, \"activeCard\": 1}, {\"id\":95, \"param\": 15, \"activeCard\": 2}]', -1, 0, -1),
(1915, 14247, 5, 12, 1, 1, '[1940, 1941, 1942, -1]', 'Thẻ Oozaru', 'Oozaru là một sinh vật khổng lồ, đó chính là hình dáng của người Xayda khi họ nhìn thấy trăng tròn và biến hình', '[{\"id\": 14, \"param\":1, \"activeCard\": 0}, {\"id\": 14, \"param\": 4, \"activeCard\": 1}, {\"id\":50, \"param\": 5, \"activeCard\": 2}, {\"id\":77, \"param\": 10, \"activeCard\": 3},{\"id\":103, \"param\": 5, \"activeCard\": 3}, {\"id\":241, \"param\": 3, \"activeCard\": 3}]', -1, 0, 2),
(1932, 14248, 5, 12, 1, 1, '[1943, 1944, 1945, -1]', 'Thẻ Oozaru SSJ', 'Oozaru là một sinh vật khổng lồ, đó chính là hình dáng của người Xayda khi họ nhìn thấy trăng tròn và biến hình', '[{\"id\": 14, \"param\":1, \"activeCard\": 0}, {\"id\": 14, \"param\": 4, \"activeCard\": 1}, {\"id\":50, \"param\": 5, \"activeCard\": 2}, {\"id\":77, \"param\": 10, \"activeCard\": 3},{\"id\":103, \"param\": 5, \"activeCard\": 3}, {\"id\":241, \"param\": 3, \"activeCard\": 3}]', -1, 0, 3),
(1933, 14249, 5, 12, 1, 1, '[1946, 1947, 1948, -1]', 'Thẻ Oozaru SSJ 2', 'Oozaru là một sinh vật khổng lồ, đó chính là hình dáng của người Xayda khi họ nhìn thấy trăng tròn và biến hình', '[{\"id\": 14, \"param\":1, \"activeCard\": 0}, {\"id\": 14, \"param\": 4, \"activeCard\": 1}, {\"id\":50, \"param\": 5, \"activeCard\": 2}, {\"id\":77, \"param\": 10, \"activeCard\": 3},{\"id\":103, \"param\": 5, \"activeCard\": 3}, {\"id\":241, \"param\": 3, \"activeCard\": 3}]', -1, 0, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `radar`
--
ALTER TABLE `radar`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
