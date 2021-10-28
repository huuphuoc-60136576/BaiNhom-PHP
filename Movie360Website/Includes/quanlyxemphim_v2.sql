-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 03:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlyxemphim_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBinhLuan` int(11) NOT NULL,
  `MaPhim` varchar(50) NOT NULL,
  `MaNguoiDung` int(11) NOT NULL,
  `BinhLuan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaBinhLuan`, `MaPhim`, `MaNguoiDung`, `BinhLuan`) VALUES
(1, 'MP0001', 2, 'Bộ này hay quá'),
(2, 'MP0002', 2, 'Bộ này hay quá luôn'),
(4, 'MP0006', 2, 'Đỉnh'),
(5, 'MP0007', 1, 'Tuyệt vời'),
(6, 'MP0007', 1, 'Quá hay'),
(7, 'MP0008', 2, 'Quá đỉnh'),
(21, 'MP0010', 1, 'Hay quá'),
(22, 'MP0010', 1, 'Quá hay'),
(23, 'MP0010', 1, 'Quá hay'),
(24, 'MP0002', 1, 'Hay'),
(25, 'MP0002', 1, 'Đỉnh'),
(32, 'MP0006', 1, '44'),
(33, 'MP0006', 1, '44'),
(34, 'MP0011', 1, 'Hay'),
(35, 'MP0011', 1, 'Quá hay');

-- --------------------------------------------------------

--
-- Table structure for table `lichsu`
--

CREATE TABLE `lichsu` (
  `MaLichSu` int(11) NOT NULL,
  `MaTapPhim` varchar(50) NOT NULL,
  `MaNguoiDung` int(11) NOT NULL,
  `ThoiGianXem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaNguoiDung` int(11) NOT NULL,
  `TaiKhoan` varchar(24) NOT NULL,
  `MatKhau` varchar(24) NOT NULL,
  `Admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaNguoiDung`, `TaiKhoan`, `MatKhau`, `Admin`) VALUES
(1, 'nvliem', '12345678', 0),
(2, 'vbtoan', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `MaPhim` varchar(50) NOT NULL,
  `TenPhim` varchar(100) NOT NULL,
  `MoTa` varchar(1000) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  `Diem` float NOT NULL DEFAULT 0,
  `PhatHanh` int(4) DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  `LuotXem` int(11) DEFAULT 0,
  `LuotDanhGia` int(11) NOT NULL DEFAULT 0,
  `ThoiGianThemPhim` datetime NOT NULL DEFAULT current_timestamp(),
  `Poster` varchar(100) NOT NULL,
  `KieuPhim` bit(1) NOT NULL,
  `MaQG` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`MaPhim`, `TenPhim`, `MoTa`, `TrangThai`, `Diem`, `PhatHanh`, `ThoiLuong`, `LuotXem`, `LuotDanhGia`, `ThoiGianThemPhim`, `Poster`, `KieuPhim`, `MaQG`) VALUES
('MP0001', 'Wotaku ni Koi wa Muzukashii', 'Câu chuyện hài hước giữa một anh chàng Otaku Gaming và một cô nàng Fujoshi thích truyện tranh', 'Đã chiếu', 9, 2018, 30, 0, 125, '2021-10-24 20:06:22', 'Wotaku ni Koi wa Muzukashii.jpg', b'0', 1),
('MP0002', 'Tensei shitara Slime Datta Ken', 'Một anh chàng bị tên cướp đâm chết khi đi gặp đồng nghiệp cùng vợ chưa cưới của cậu ta. Khi đang thoi thóp trước khi chết, người đầy máu, anh ta nghe được một tiếng nói kỳ lạ. Giọng nói ấy chuyển thể sự tiếc nuối của anh chàng vì vẫn còn tân trước khi đi và ban cho anh ta chiêu thức đặc biệt [tiên nhân vĩ đại]. Liệu đây có phải là trò đùa?', 'Đã chiếu', 9.1, 2018, 15, 0, 220, '2021-10-24 20:06:22', 'Tensei shitara Slime Datta Ke.jpg', b'0', 1),
('MP0003', 'Sword Art Online', 'Con đường sống duy nhất là đánh bại mọi kẻ thù. Cái chết trong game đồng nghĩa với cái chết ngoài đời thực---- Bằng Nerve Gear, mười ngàn con người lao đầu vào một trò chơi bí ẩn \\\'Sword Art Online\\\', để rồi bị giam cầm trong đó, buộc phải dấn thân vào một đấu trường sinh tử. Anh main của chúng ta, Kirito, một trong số các game thủ, đã nhận ra được \\\'sự thật\\\' khủng khiếp này. Anh đơn thương độc mã, chiến đấu trong một lâu đài bay khổng lồ --- mang tên \\\'Aincrad\\\' Để có thể hoàn thành trò chơi và trở về với thực tại, anh phải vượt qua đủ 100 thử thách. Liệu anh có thể làm được hay anh sẽ về với cát bụi? Cứ xem thì biết', 'Đã chiếu', 9.5, 2013, 30, 0, 399, '2021-10-24 20:16:21', 'Sword Art Online.jpg', b'0', 1),
('MP0004', 'Shigatsu wa Kimi no Uso', 'Câu chuyện kể về Arima Kousei, một thần đồng piano. Nhưng kể từ sau chấn động tâm lí do cái sự qua đời của mẹ cậu, Kosei đã không thể nghe thấy bất kì âm thanh nào. Cứ tưởng là cậu sẽ không bao giờ động vào những phím piano nữa nhưng đó là trước khi cậu đã gặp Miyazono Kaori...', 'Đã chiếu', 8.5, 2014, 5, 0, 99, '2021-10-24 20:16:21', 'Shigatsu wa Kimi no Uso.jpg', b'0', 1),
('MP0005', 'Saenai Heroine no Sodatekata', 'Saenai Heroine no Sodatekata | Saekano: How to Raise a Boring Girlfriend | Saenai Kanojo no Sodate-kata là anime nói về một thằng otaku (Tomoyo Aki), đi làm thêm để tích tiền mua BD anime. Vào một dịp tình cờ, cậu gặp được một em xinh tươi (Megumi Kato) trên đường về nhà và cuộc sống của cậu bắt đầu đảo lộn… Đảo lộn ra sao thì coi rồi biết…!​', 'Đã chiếu', 8.9, 2015, 10, 0, 90, '2021-10-24 20:18:02', 'Saenai Heroine no Sodatekata.jpg', b'0', 1),
('MP0006', 'The Veil - Mặt trời đen', 'Mặt Trời Đen - The Veil xoay quanh câu chuyện về một đặc vụ hàng đầu của Cơ quan Tình báo Quốc gia (NIS) - Han Ji Hyuk. Anh được các đồng nghiệp kính nể vì thành tích hoàn hảo và khả năng hoàn thành nhiệm vụ. Sau khoảng thời gian biến mất một cách bí hiểm, anh trở lại một năm sau đó để gây chấn động tổ chức một lần nữa. Bên cạnh Han Ji Hyuk, Seo Soo Yeon là đội trưởng đội 4 của Trung tâm thông tin tội phạm - người rất xuất sắc trong việc thực hiện nhiệm vụ và giải quyết các vụ án. Cô là người sống vô cùng tình cảm và luôn quan tâm đến mọi người, đặc biệt là đồng đội của mình.', 'Đang chiếu', 9.6, 2021, 12, 0, 199, '2021-10-24 20:22:08', 'theveil_poster.jpg', b'0', 2),
('MP0007', 'Vincenzo', 'Năm 8 tuổi, Park Joo-Hyeong đến Ý sau khi anh được nhận làm con nuôi. Bây giờ anh ấy đã trưởng thành và có tên là Vincenzo Casano. Anh ta là một luật sư, người làm việc cho Mafia với tư cách là người gửi hàng. Vì một cuộc chiến tranh giữa các nhóm mafia, anh ta trốn đến Hàn Quốc. Ở Hàn Quốc, anh ấy có quan hệ với Luật sư Hong Cha-Young. Cô ấy là kiểu luật sư sẽ làm mọi cách để thắng kiện. Vincenzo Casano phải lòng cô ấy. Anh ta cũng đạt được công bằng xã hội bằng cách của mình. Jang Jun-woo là một thực tập sinh năm nhất thông minh và chăm chỉ tại một công ty luật. Anh ấy xuất thân từ một gia đình trung lưu, lịch sự và chân thành. Mặc dù có vẻ ngoài điển trai và vẻ ngoài điển trai nhưng Jun-woo lại hơi vụng về và ngây thơ và thường mắc lỗi trong công việc khiến anh ấy gặp rắc rối.', 'Đã chiếu', 9.7, 2021, 20, 0, 412, '2021-10-24 20:22:08', 'vincenzo.jpg', b'0', 2),
('MP0008', 'Avengers: Endgame', 'Avengers: Hồi kết (tên gốc tiếng Anh: Avengers: Endgame) là phim điện ảnh siêu anh hùng Mỹ ra mắt năm 2019, do Marvel Studios sản xuất và Walt Disney Studios Motion Pictures phân phối. Tác phẩm là phần thứ tư của loạt phim Avengers, sau Biệt đội siêu anh hùng (2012), Avengers: Đế chế Ultron (2015) và Avengers: Cuộc chiến vô cực (2018), đồng thời cũng là phim điện ảnh thứ 22 của Vũ trụ Điện ảnh Marvel (MCU). Trong phim, các thành viên còn sống sót của nhóm Avengers cùng các đồng minh hợp tác với nhau để đảo ngược những hậu quả mà Thanos đã gây ra trong Avengers: Cuộc chiến vô cực.', 'Đã chiếu', 9.9, 2019, 181, 0, 873, '2021-10-24 20:28:45', 'endgame_poster.jpg', b'1', 3),
('MP0009', 'Avengers: Infinity War', 'Avengers: Cuộc chiến vô cực (tựa gốc tiếng Anh: Avengers: Infinity War) là một bộ phim điện ảnh đề tài siêu anh hùng của Mỹ năm 2018 dựa trên biệt đội siêu anh hùng Avengers của Marvel Comics. Phim do Marvel Studios sản xuất và Walt Disney Studios Motion Pictures chịu trách nhiệm phân phối, là phần phim tiếp theo của Biệt đội siêu anh hùng (2012) và Avengers: Đế chế Ultron (2015), đồng thời cũng là phim điện ảnh thứ 19 trong loạt phim điện ảnh thuộc Vũ trụ Điện ảnh Marvel (MCU). Trong Avengers: Cuộc chiến vô cực, Biệt đội Avengers hợp tác với nhóm Vệ binh dải Ngân Hà để ngăn chặn Thanos khỏi việc thu thập đầy đủ 6 Viên đá Vô cực và hủy diệt một nửa số sinh vật trong vũ trụ.', 'Đã chiếu', 9.8, 2018, 149, 0, 680, '2021-10-24 20:28:45', 'infinitywar_poster.jpg', b'1', 3),
('MP0010', 'Jirisan', '“Nơi giao thoa giữa thế giới này và thế giới ngầm”. “Công việc của chúng tôi là sống sót và trở về từ những nơi nguy hiểm”. Sự tương phản của hai tone màu lạnh và nóng, sắc kì bí trong những câu nói đầy hàm ý, liệu Jirisan sẽ mang đến những gì? Tuy nóng lạnh đối lập nhưng đều gợi lên cảm giác khắc nghiệt - sự khắc nghiệt và nguy hiểm này là của thiên nhiên hay lòng người? ', 'Mới chiếu', 8, 2021, 16, 0, 110, '2021-10-24 20:35:42', 'jirisan_poster.jpg', b'0', 2),
('MP0011', 'Loki', 'Trong Avengers: Endgame, nhóm Avengers du hành thời gian ngược về New York năm 2012 “mượn” viên đá vô cực một chút thì vô tình gặp phải tai nạn nằm ngoài dự kiến. Không may trong sự cố đó, khối Tesseract rơi vào tay của Loki (2012). Hắn nhanh trí nhặt lên, dịch chuyển vào không gian và rơi xuống sa mạc ở Mông Cổ (một cảnh tượng nhắc lại Iron Man phần 1). Tại đây Loki cố truyền đạt bằng tiếng Anh với người bản xứ rằng anh là một vị thần và họ phải tôn sùng anh, nhưng chưa kịp truyền giáo xong thì TVA (Time Variance Authority) đã xuất hiện gông cổ anh lại vì hành động của Loki là một biến thể ảnh hưởng đến Sacred Timeline, anh bị bắt giữ mang về trụ sở...', 'Đã chiếu', 9.3, 2021, 8, 0, 480, '2021-10-24 20:35:42', 'loki_poster.jpg', b'0', 3),
('MP0012', 'My Name', 'My Name là bộ phim hành động xã hội đen của Hàn Quốc vừa được Netflix tung ra, dán nhãn 18+. Phim kể về hành trình báo thù của Ji Woo (Han So Hee đóng) cho cái chết thương tâm của cha mình. Để truy sát kẻ giết cha, Ji Woo gia nhập tổ chức xã hội đen Dongcheon của ông trùm ma túy Choi Mu Jin (Park Hee-soon thủ vai) và trui rèn để trở thành một sát thủ. Khi được Choi Mu Jin cho biết kẻ giết hại cha là cảnh sát, Ji Woo thay đổi danh tính thành Oh Hye Jin và hoạt động “nằm vùng” trong lực lượng cảnh sát chống tội phạm ma túy. Từ đây, tấm màn bí mật trong quá khứ của cha cô dần được vén lên, đưa đẩy Ji Woo vào hành trình báo thù đẫm máu và không thể quay đầu.', 'Đã chiếu', 9.6, 2021, 8, 0, 228, '2021-10-24 20:40:32', 'myname_poster.jpg', b'0', 2),
('MP0013', 'Spiderman: Far From Home', 'Peter Parker và bạn bè của mình tham gia vào chuyến du lịch hè đến châu Âu. Nhưng nhóm bạn khó lòng có thể nghỉ ngơi – Peter sẽ phải đồng ý giúp Nick Fury khám phá ra bí ẩn của những sinh vật gây ra các thảm họa tự nhiên và sự hủy diệt trên khắp thế giới.” Mảnh thông tin quan trọng nhất chính là xác nhận Peter thực sự làm việc với Fury. Trước đây người hâm mộ từng đặt giả thiết rằng bộ trang phục bí mật mới của Spidey là do Fury đưa cho, và có vẻ như điều đó đang trở nên chính xác. Mặc dù vậy, không có bất kì mối liên hệ nào giữa S.H.I.E.L.D. và bộ đồ trong bức ảnh đầu tiên về nó. Các chi tiết bổ sung cùng với những cảnh quay có thể xác nhận điều này, trong khi phần còn lại của bản tóm tắt tập trung vào những gì cả hai đang làm.', 'Đã chiếu', 9.8, 2019, 160, 0, 200, '2021-10-24 20:40:32', 'spiderman_frh_poster.jpg', b'1', 3),
('MP0014', 'Squidgame: Trò chơi con mực', 'Squidgame nói về một nhóm người bị ném vào một đấu trường ”nhân tạo’’, nơi họ phải chiến đấu để giành lấy mạng sống của mình. Trong loạt phim mới của Netflix, đấu trường là một khu phức hợp lớn, bí mật; cuộc thi là một loạt các trò chơi dành cho trẻ con; và 456 con người này đang rất cần số tiền thưởng lên tới 45,6 tỷ won (tương đương 39 triệu đô la) hơn cả sự an toàn của mạng sống – thứ mà có thể cũng mất đi nếu họ trở ra bên ngoài. ', 'Đã chiếu', 9.9, 2021, 9, 0, 890, '2021-10-24 20:46:58', 'squidgame_poster.jpg', b'0', 2),
('MP0015', 'Vagabond: Lãng khách', 'Lãng Khách - Vagabond là bộ phim hành động kể về hai nhân vật vô tình biết được được những “bí mật đen” của quốc gia. Trong phim, Suzy sẽ vào vai nữ chính Go Hae Ri, một nhân viên tình báo thuộc Cơ quan Tình báo quốc gia. Bố của Go Hae Ri là Go Kang Chul, một Trung úy của Thủy quân lục chiến. Sau khi bố qua đời, Go Hae Ri quyết định trở thành nhân viên công vụ cấp bảy để gánh trách nhiệm chăm lo cho mọi người trong gia đình. Trong khi đó, Lee Seung Gi sẽ vào vai Cha Gun, một diễn viên đóng thế, vì một sự cố hàng không mà anh đã vô tình phát hiện ra những sự thật không mấy hay ho và bị cuốn vào vòng xoáy bí ẩn của Cục tình báo quốc gia NIS.', 'Đã chiếu', 9.7, 2019, 16, 0, 359, '2021-10-24 20:46:58', 'vagabond_poster.jpg', b'0', 2),
('MP0016', 'Wanda - Vision', 'Lấy bối cảnh ba tuần sau các sự kiện của Avengers: Hồi Kết (2019), Wanda Maximoff và Vision đang sống một cuộc sống ngoại ô bình dị ở thị trấn Westview, cố gắng che giấu sức mạnh của họ. Khi họ bắt đầu bước vào những thập kỷ mới và gặp phải những trò lố trên truyền hình, cặp đôi nghi ngờ rằng mọi thứ không như họ tưởng tượng.', 'Đã chiếu', 9.3, 2021, 9, 0, 400, '2021-10-24 20:49:25', 'wandavision_poster.jpg', b'0', 3);

-- --------------------------------------------------------

--
-- Table structure for table `phim_theloai`
--

CREATE TABLE `phim_theloai` (
  `MaPhim` varchar(50) NOT NULL,
  `MaTheLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phim_theloai`
--

INSERT INTO `phim_theloai` (`MaPhim`, `MaTheLoai`) VALUES
('MP0001', 'TL002'),
('MP0002', 'TL001'),
('MP0002', 'TL007'),
('MP0003', 'TL005'),
('MP0003', 'TL007'),
('MP0004', 'TL007'),
('MP0005', 'TL003'),
('MP0006', 'TL001'),
('MP0006', 'TL007'),
('MP0007', 'TL001'),
('MP0007', 'TL002'),
('MP0008', 'TL001'),
('MP0008', 'TL009'),
('MP0008', 'TL010'),
('MP0009', 'TL001'),
('MP0009', 'TL009'),
('MP0009', 'TL010'),
('MP0010', 'TL004'),
('MP0010', 'TL007'),
('MP0011', 'TL007'),
('MP0011', 'TL009'),
('MP0011', 'TL010'),
('MP0012', 'TL001'),
('MP0012', 'TL004'),
('MP0013', 'TL001'),
('MP0013', 'TL009'),
('MP0013', 'TL010'),
('MP0014', 'TL004'),
('MP0014', 'TL008'),
('MP0015', 'TL001'),
('MP0015', 'TL007'),
('MP0016', 'TL001'),
('MP0016', 'TL009'),
('MP0016', 'TL010');

-- --------------------------------------------------------

--
-- Table structure for table `quocgia`
--

CREATE TABLE `quocgia` (
  `MaQG` int(5) NOT NULL,
  `TenQG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quocgia`
--

INSERT INTO `quocgia` (`MaQG`, `TenQG`) VALUES
(1, 'Nhật Bản'),
(2, 'Hàn Quốc'),
(3, 'Âu - Mỹ'),
(4, 'Trung Quốc'),
(5, 'Thái Lan'),
(6, 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `tapphim`
--

CREATE TABLE `tapphim` (
  `MaTapPhim` varchar(50) NOT NULL,
  `TapPhim` varchar(100) NOT NULL,
  `MaPhim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapphim`
--

INSERT INTO `tapphim` (`MaTapPhim`, `TapPhim`, `MaPhim`) VALUES
('P01T001', 'Wotaku ni Koi wa Muzukashii Tap 1.mp4', 'MP0001'),
('P01T002', 'Wotaku ni Koi wa Muzukashii Tap 2.mp4', 'MP0001'),
('P01T003', 'Wotaku ni Koi wa Muzukashii Tap 3.mp4', 'MP0001'),
('P02T001', 'Tensei shitara Slime Datta Ke Tap 1.mp4', 'MP0002'),
('P02T002', 'Tensei shitara Slime Datta Ke Tap 2.mp4', 'MP0002'),
('P02T003', 'Tensei shitara Slime Datta Ke Tap 3.mp4', 'MP0002'),
('P03T001', 'Sword Art Online Tap 1.mp4', 'MP0003'),
('P03T002', 'Sword Art Online Tap 2.mp4', 'MP0003'),
('P03T003', 'Sword Art Online Tap 3.mp4', 'MP0003'),
('P04T001', 'Shigatsu wa Kimi no Uso Tap 1.mp4', 'MP0004'),
('P04T002', 'Shigatsu wa Kimi no Uso Tap 2.mp4', 'MP0004'),
('P04T003', 'Shigatsu wa Kimi no Uso Tap 3.mp4', 'MP0004'),
('P05T001', 'Saenai Heroine no Sodatekata Tap 1.mp4', 'MP0005'),
('P05T002', 'Saenai Heroine no Sodatekata Tap 2.mp4', 'MP0005'),
('P05T003', 'Saenai Heroine no Sodatekata Tap 3.mp4', 'MP0005'),
('P06T001', 'theveil_tap1.mp4', 'MP0006'),
('P06T002', 'theveil_tap2.mp4', 'MP0006'),
('P07T001', 'vincenzo_tap1.mp4', 'MP0007'),
('P07T002', 'vincenzo_tap2.mp4', 'MP0007'),
('P08T001', 'endgame.mp4', 'MP0008'),
('P09T001', 'infinitywar.mp4', 'MP0009'),
('P10T001', 'jirisan_tap1.mp4', 'MP0010'),
('P10T002', 'jirisan_tap2.mp4', 'MP0010'),
('P11T001', 'loki_tap1.mp4', 'MP0011'),
('P11T002', 'loki_tap2.mp4', 'MP0011'),
('P12T001', 'myname_tap1.mp4', 'MP0012'),
('P12T002', 'myname_tap2.mp4', 'MP0012'),
('P12T003', 'myname_tap3.mp4', 'MP0012'),
('P13T001', 'spiderman_frh.mp4', 'MP0013'),
('P14T001', 'squidgame_tap1.mp4', 'MP0014'),
('P14T002', 'squidgame_tap2.mp4', 'MP0014'),
('P15T001', 'vagabond_tap1.mp4', 'MP0015'),
('P15T002', 'vagabond_tap2.mp4', 'MP0015'),
('P16T001', 'wandavision_tap1.mp4', 'MP0016'),
('P16T002', 'wandavision_tap2.mp4', 'MP0016');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `MaTheLoai` varchar(50) NOT NULL,
  `TenTheLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTheLoai`, `TenTheLoai`) VALUES
('TL001', 'Hành động'),
('TL002', 'Hài hước'),
('TL003', 'Tình cảm'),
('TL004', 'Bi kịch'),
('TL005', 'Giả tưởng'),
('TL006', 'Học đường'),
('TL007', 'Bí ẩn'),
('TL008', 'Kinh dị'),
('TL009', 'Viễn tưởng'),
('TL010', 'Siêu nhiên');

-- --------------------------------------------------------

--
-- Table structure for table `tuphim`
--

CREATE TABLE `tuphim` (
  `MaTu` int(11) NOT NULL,
  `MaPhim` varchar(50) NOT NULL,
  `MaNguoiDung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBinhLuan`),
  ADD KEY `MaPhim` (`MaPhim`),
  ADD KEY `MaNguoiDung` (`MaNguoiDung`);

--
-- Indexes for table `lichsu`
--
ALTER TABLE `lichsu`
  ADD PRIMARY KEY (`MaLichSu`),
  ADD KEY `MaNguoiDung` (`MaNguoiDung`),
  ADD KEY `MaTapPhim` (`MaTapPhim`) USING BTREE;

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`MaPhim`),
  ADD KEY `MaQG` (`MaQG`);

--
-- Indexes for table `phim_theloai`
--
ALTER TABLE `phim_theloai`
  ADD PRIMARY KEY (`MaPhim`,`MaTheLoai`),
  ADD KEY `MaTheLoai` (`MaTheLoai`);

--
-- Indexes for table `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`MaQG`);

--
-- Indexes for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD PRIMARY KEY (`MaTapPhim`),
  ADD KEY `MaPhim` (`MaPhim`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTheLoai`);

--
-- Indexes for table `tuphim`
--
ALTER TABLE `tuphim`
  ADD PRIMARY KEY (`MaTu`),
  ADD KEY `MaPhim` (`MaPhim`),
  ADD KEY `MaNguoiDung` (`MaNguoiDung`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lichsu`
--
ALTER TABLE `lichsu`
  MODIFY `MaLichSu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quocgia`
--
ALTER TABLE `quocgia`
  MODIFY `MaQG` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tuphim`
--
ALTER TABLE `tuphim`
  MODIFY `MaTu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`);

--
-- Constraints for table `lichsu`
--
ALTER TABLE `lichsu`
  ADD CONSTRAINT `lichsu_ibfk_1` FOREIGN KEY (`MaTapPhim`) REFERENCES `tapphim` (`MaTapPhim`);

--
-- Constraints for table `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `phim_ibfk_1` FOREIGN KEY (`MaQG`) REFERENCES `quocgia` (`MaQG`);

--
-- Constraints for table `phim_theloai`
--
ALTER TABLE `phim_theloai`
  ADD CONSTRAINT `phim_theloai_ibfk_1` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`),
  ADD CONSTRAINT `phim_theloai_ibfk_2` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`);

--
-- Constraints for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD CONSTRAINT `tapphim_ibfk_1` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`);

--
-- Constraints for table `tuphim`
--
ALTER TABLE `tuphim`
  ADD CONSTRAINT `tuphim_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`),
  ADD CONSTRAINT `tuphim_ibfk_2` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
