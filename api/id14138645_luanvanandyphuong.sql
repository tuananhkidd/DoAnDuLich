-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2020 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id14138645_luanvanandyphuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `user_id` int(25) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`user_id`, `user_name`, `password`, `email`, `role`) VALUES
(1, 'admin', '123456', 'admin@gmail.com', 'ADMIN'),
(2, 'phuong124', '123456', 'phuong@gmail.com', 'USER'),
(3, 'ngoc', '12345', 'ngoc@gmail.com', 'USER'),
(4, 'My', '12345', 'my@gmail.com', 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourite_place`
--

CREATE TABLE `favourite_place` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favourite_place`
--

INSERT INTO `favourite_place` (`id`, `user_id`, `place_id`, `created_date`) VALUES
(1, 2, 1, NULL),
(2, 3, 1, NULL),
(3, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `food_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `food_detail` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `food_image` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food`
--

INSERT INTO `food` (`id`, `food_name`, `food_address`, `food_detail`, `food_image`) VALUES
(1, 'Bánh tét lá cẩm – đặc sản Cần Thơ mua về làm quà', 'Địa chỉ mua bánh tét lá cẩm ngon nhất ở Cần Thơ:\r\n\r\n- Bánh té chị Tư Đẹp – 102 Hai Bà Trưng, Ninh Kiều, Cần Thơ.\r\n- 54/6 Thái Thị Nhạn, Bình Thủy, Cần Thơ.', 'Khi mà bánh tét đã trở thành món dọn Tết truyền thống của người miền Tây, thì ở Cần Thơ lại nổi tiếng với công thức gói bánh tét lá cẩm rất đặc biệt. Nếu như những loại bánh tét trước đây có màu ngả xanh của lá chuối, thì giờ đây bánh tét ở vùng Bình Thủy, Cần Thơ lại gây thương nhớ bởi màu tím thẫm của lá cẩm.', 'https://bom.to/471MyVn'),
(2, 'Cá lóc nướng trui \r\n', 'Địa chỉ ăn cá lóc đồng nướng trui ngon ở Cần Thơ:\r\n- Quán Đồng Xanh: 211 Nguyễn Văn Linh, Ninh Kiều, Cần Thơ.\r\n- Cá lóc nướng 77: 38 Mậu Thân, Ninh Kiều, Cần Thơ\r\n', 'Không biết có từ bao giờ, món cá lóc nướng trui cho đến bây giờ vẫn là đặc sản Cần Thơ gắn bó với bao người dân nơi đây. Thực khách từ phương xa khi đến du lịch Cần Thơ vẫn thường gọi món cá lóc nướng trui để thưởng thức', 'https://bom.to/BTxBqPl'),
(4, 'Nem Nướng', 'Địa chỉ ăn nem nướng ngon ở thành phố Cần Thơ:\r\n- Nem nướng Hai Vân – 98 Đề Tháp, Ninh Kiều, Cần Thơ\r\n- Nem nướng Thanh Vân – 17 Hòa Bình, Ninh Kiều, Cần Thơ', 'Tự hào đặc sản xứ Tây Đô, nem luôn nằm trong top các món ăn ngon Cần Thơ được gợi ý cho thực khách. Nem nướng ở đây có một vị rất riêng, không giống với nem nướng Đà Nẵng hay Đà Lạt, nó có hương thơm, vị giòn dai, béo bùi đủ cả.\r\n\r\n', 'https://bom.to/V9Ac01D'),
(5, 'Bánh Xèo Miền Tây', 'Địa chỉ ăn bánh xèo ngon ở Cần Thơ:\r\n\r\n- Quán bánh xèo 7 Tới – 45 Hoàng Quốc Việt, Ninh Kiều, Cần Thơ\r\n- Bánh xèo Ngọc Ngân – 74 Lê Lợi, Cái Khế, Ninh Kiều, Cần Thơ\r\n- Bánh xèo Tân Định – Lê Lợi, Cái Khế, Ninh Kiều, Cần Thơ.', 'Dù không phải là đặc sản của riêng vùng Cần Thơ nhưng bánh xèo miền Tây từ lâu đã ghi dấu ấn đậm nét, không lẫn vào đâu được. Nếu bánh xèo của miền Trung chỉ nhỏ xíu như bàn tay, chủ yếu là nhân thịt tôm thì bánh xèo ở miền Tây lại có kích cỡ khổng lồ, topping không chỉ có ba chỉ mà đôi khi còn có tép sông, thịt vịt băm và cả củ hũ dừa nữa, càng làm cho chiếc bánh xèo thêm phần hấp dẫn.', 'https://bom.to/umFZcV5'),
(9, 'Vịt nấu chao đậm đà hương vị quê hương', 'Địa chỉ thưởng thức món vịt nấu chao đúng chuẩn ở Cần Thơ:\r\n\r\n- Vịt nấu chao Thành Giao: Hẻm 1, Tân An, Ninh Kiều, Cần Thơ.\r\n- Lẩu vịt nấu chao: 1/8 Lý Tự Trọng, An Lạc, Ninh Kiều, Cần Thơ.', 'Từng lọt top 100 món ăn ẩm thực, đặc sản tiêu biểu của Việt Nam nên thật thiếu sót nếu như bỏ qua món vịt nấu chao của Cần Thơ. Chính tên gọi của món ăn đã nói lên phần nào được sự mộc mạc, chân chất của con người miền Tây sông nước.', 'https://bom.to/85gX8lT'),
(10, 'Quán chay Sen Vàng', 'Địa chỉ:\r\n- Cơ sở 1: 214/28 Lý Tự Trọng, Quận Ninh Kiều, Cần Thơ.\r\n- Cơ sở 2: 233 Đường 30 Tháng 4,  Quận Ninh Kiều, Cần Thơ.', 'Quán cơm chay Sen Vàng là một trong những quán ăn chay ngon tại Cần Thơ luôn được rất nhiều khách hàng ghé vào quán để thưởng thức các món ăn chay. Không gian của quán rất thoáng mát và sạch sẽ, bày trí đơn giản nhưng không kém phần bắt mắt, bàn ghế cao và rộng rãi, menu được in to dán lên tường rất tiện cho bạn lựa chọn món. Phục vụ lịch sự và nhã nhặn, ăn nói rất điềm đạm, nhiệt tình.', 'https://bom.to/IMQHPE9'),
(11, 'Quán Chay Bách Thảo – Đề Thám', 'Địa chỉ: Số 86A Đề Thám,  Quận Ninh Kiều, Cần Thơ.', 'Cơm Chay Bách Thảo – Đề Thám là một trong những quán ăn chay nổi tiếng nằm trên đường Đề Thám, Ninh Kiều. Nơi đây có không gian thoáng mát, sáng, trang trí nhẹ nhàng hài hòa, bắt mắt. Trên những bức tường của quán còn dán lời răn dạy của Phật, thư pháp hay chia sẻ về tác dụng của việc ăn chay… Quán luôn được nhiều khách hàng ghé vào ăn và đều nhận xét chất lượng thức ăn nơi đây và sự phục vụ nhiệt tình, chu đáo của nơi đây.', 'https://bom.to/hlZmQdX'),
(12, 'Gỏi cuốn', 'Địa chỉ ăn gỏi cuốn ngon ở Cần Thơ:\r\n\r\n- KDC 91B, Nguyễn Hiền, Ninh Kiều, Cần Thơ\r\n- Dọc theo đường Đề Thám, Ninh Kiều, Cần Thơ.', 'Danh sách những món ăn ngon Cần Thơ không thể thiếu món gỏi cuốn, được xem là món ăn vặt “quốc dân” mà ai cũng mê. Dù chỉ là một chiếc gói bé xíu, với lớp bánh tráng bọc tôm luộc, thịt ba chỉ cùng với xà lách, cọng hành lá mà đủ cho một bữa no. Nhưng đó chưa phải là tất cả, chén nước chấm phải được chế biến tinh tế, đậm đà đủ vị cay măn, có chút vị ngọt của dứa thái nhỏ mọi gọi là chuẩn. Đặc biệt, với món gói cuốn này dù chấm với mắm tỏi ớt, mắm nêm hay tương đều xuất sắc.', 'https://bom.to/K0BtgVth'),
(13, 'Bánh hỏi heo quay', 'Địa chỉ ăn bánh hỏi heo quay tại Cần Thơ:\r\n\r\n- Quán 3CE – 390 P1 Lộ Ngân Hàng, P. An Khánh, Quận Ninh Kiều, Cần Thơ\r\n- Lò bánh hỏi Mặt Võng Út Dzách – 509 ấp Nhơn Bình, Nhơn Ái, Phong Điền, Cần Thơ.', 'Bánh hỏi heo quay chuẩn ngon nhất là phải đến Phong Điền, ghé nhà vườn Minh Cảnh. Vốn đã là vùng đất gây thương mến với những vườn trái cây sai quả hay những hoạt động miệt vườn đầy thú vị như tát mương bắt cá, hái rau vườn, đua ghe, giờ đây khi đã thưởng thức món bánh hỏi heo quay, ta lại có dịp đến Phong Điền thêm nhiều lần nữa.', 'https://bom.to/haZxwO1'),
(14, 'Cơm cháy kho quẹt – dân dã mà ngon\r\n', 'Địa chỉ thưởng thức cơm cháy kho quẹt Cần Thơ:\r\n\r\n- Lô 15 chợ đêm Trần Phú, Ninh Kiều, Cần Thơ.\r\n- Cơm Cháy Dì Ba – 28A Mạc Thiên Tích, Ninh Kiều, Cần Thơ', 'Dù mới chỉ xuất hiện cách đây 5,6 năm nhưng cho đến giờ, món cơm cháy kho quẹt vẫn còn giữ được độ hot, thậm chí ngày càng có nhiều quán mở ra chỉ chuyên món này. Món này tuy nhìn đơn giản, nhưng lại kỳ công vô cùng, người chế biến phải khuếch cơm quanh lòng chảo, hơ trên lửa nhỏ để cơm cháy từ từ. Miếng cơm cháy hoàn chỉnh là lớp vỏ vàng giòn, không quá khô hay nhão, đem chấm với thịt kho quẹt, ăn kèm với các loại rau luộc vô cùng ngon miệng.', 'https://bom.to/uL5wBqt'),
(15, 'Mỳ cay Omega', 'Địa chỉ:\r\n\r\n- 144B Đường 3 Tháng 2, Ninh Kiều, Cần Thơ.\r\n- 161 Lý Tự Trọng, Ninh Kiều, Cần Thơ.\r\n- 20 Trần Hưng Đạo, Ninh Kiều, Cần Thơ.', 'Quán chuyên các loại mỳ cay như mỳ thập cẩm, mỳ bạch tuộc, mỳ bò cay, ngoài ra còn có nhiều món như kimbap, bánh cá, bánh bạch tuộc, bánh gạo cay,…', 'https://bom.to/Snsm9l3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_address` varchar(250) NOT NULL,
  `hotel_numberphone` decimal(12,0) DEFAULT NULL,
  `hotel_categorie` varchar(250) DEFAULT NULL,
  `hotel_rating` int(2) DEFAULT NULL,
  `hotel_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_address`, `hotel_numberphone`, `hotel_categorie`, `hotel_rating`, `hotel_image`) VALUES
(1, 'Mường Thanh Luxury', '34 Trần Phú, Cái Khế, Can Tho City', '2923688888', 'Hotel | Restaurant', 5, 'https://bom.to/Lo7LeP'),
(2, 'Vinpearl Cần Thơ Hotel', ' 209 Đường 30 Tháng 4, Xuân Khánh, Ninh Kiều, Cần Thơ', '2923761888', 'Hotel | Restaurant', 5, 'https://bom.to/H4IavYc'),
(3, 'Nesta Can Tho Hotel', '9C Tran Phu, Cai Khe, Ninh Kieu, Can Tho ', '292382221', 'Hotel | Restaurant', 5, 'https://bom.to/QG3Di4'),
(8, 'Khu Nghỉ Dưỡng Cồn Khương Cần Thơ (Con Khuong Resort Can Tho)', '99A Nguyễn Hữu Cầu, Cồn Khương, Ninh Kiều, Cần Thơ, Việt Nam, Cái Khế, Cần Thơ', '292393996', 'Khách sạn|Nhà hàng|Quán Bar|\r\nBể bơi|Sân vườn ', 4, 'https://bom.to/7HwLqi6'),
(10, 'Khách sạn Ninh Kiều 2 (Ninh Kieu 2 Hotel)', 'Số 3 Hòa Bình, P.Tân An, Q.Ninh Kiều, Bến Ninh Kiều, Cần Thơ, Việt Nam ', '292378999', 'Khách sạn|Nhà hàng|Hội nghị', 4, 'https://bom.to/FBnLKGZd'),
(11, 'Khu Nghỉ Dưỡng Azerai Cần Thơ (Azerai Resort Can Tho)', 'Cồn Ấu, phường Hưng Phú, quận Cái Răng, Cần Thơ, Khu du lịch Phù Sa Cồn Ấu, Cần Thơ, Việt Nam', '2923627888', 'Khách sạn | Nhà Hàng | Bể Bơi', 5, 'https://bom.to/aFsvs21'),
(13, 'Khách sạn Vạn Phát Riverside (Van Phat Riverside Hotel)', 'Số 2 đường Nguyễn Văn Cừ (cồn Khương), phường Cái Khế, quận Ninh Kiều, thành phố Cần Thơ., Cái Khế, Cần Thơ, Việt Nam ', '1900545440', 'Khách sạn | Nhà hàng | Bể Bơi', 5, 'https://bom.to/GAhIboH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `place_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `place_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `place_detail` varchar(900) COLLATE utf8_unicode_ci NOT NULL,
  `place_image` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `place`
--

INSERT INTO `place` (`id`, `place_name`, `place_address`, `place_detail`, `place_image`) VALUES
(1, 'Bến Ninh Kiều', 'Địa chỉ: 116, đường Hai Bà Trưng', 'Với diện tích hơn 7.000 mét vuông, Bến Ninh Kiều có nhiều cụm chức năng khác nhau như cầu đi bộ Ninh Kiều, công viên cây xanh, Tượng đài Bác Hồ, bến tàu du lịch – nơi xuất phát đi Chợ nổi Cái Răng; Chợ cổ Cần Thơ, nhà hàng Sao Hôm – nơi du khách có thể vừa uống cà phê, thưởng thức các món ăn Âu, Á vừa ngắm sông nước và đón làn gió mát từ sông Hậu thổi vào. Ngoài ra, Chùa Ông, Chợ Đêm Ninh Kiều cũng là những địa điểm ở cạnh bên tạo nên một quần thể những điểm đến hấp dẫn của Bến Ninh Kiều.\r\n-Vào khoảng giữa tháng 12 âm lịch hàng năm, Bến Ninh Kiều tổ chức chợ hoa với không khí đầu Xuân hết sức sôi động và lộng lẫy.\r\n', 'https://nucuoimekong.com/wp-content/uploads/ben-ninh-kieu-can-tho.jpg'),
(2, 'Chợ Nổi Cái Răng', 'Địa chỉ: Chợ nổi Cái Răng nằm trên sông Cái Răng, gần cầu Cái Răng (quận Cái Răng), cách trung tâm thành phố Cần Thơ khoảng 6 km.', '- Ngày 10/3/2016, chợ nổi Cái Răng đã chính thức được công nhận là di sản văn hóa phi vật thể quốc gia theo Quyết định số 829/QĐ-BVHTTDL.\r\n- Chợ nổi Cái Răng được hình thành vào những năm đầu của thế kỷ 20, trước khi xuất hiện các chợ nổi Ngã Bảy (Hậu Giang), Ngã Năm (Sóc Trăng). Chợ ra đời là do nhu cầu thiết yếu của con người khi cuộc sống hàng ngày đều gắn liền với địa hình sông nước.\r\n-  chợ nổi Cái Răng Cần Thơ là khu chợ sầm uất, tiêu biểu nhất, đã được tạp chí du lịch Rough Guide của Anh Quốc bình chọn là một trong 10 khu chợ ấn tượng nhất thế giới, trang web du lịch nổi tiếng Youramazingplaces cũng bình chọn là 1 trong 5 chợ nổi đẹp, thú vị nhất khu vực Châu Á\r\n- Thời gian đi chợ :  5 giờ đến 8 giờ sáng đây là lúc chợ tấp nập nhất', 'https://wiki-travel.com.vn/Uploads/picture/teppi-141102101126-9-can-tho.jpg'),
(5, 'Chùa Ông Cần Thơ', 'Địa Chỉ: số 32 đường Hai Bà Trưng, thuộc địa phận phường Tân An, quận Ninh Kiều, thành phố Cần Thơ.', 'Chùa Ông là một trong những ngôi chùa cổ ở Cần Thơ thể hiện nét văn hóa độc đáo của người Hoa. Với đường lối kiến trúc tinh tế, hoa văn mang đậm nét văn hóa Trung Quốc đặc sắc. Vẻ đẹp của ngôi chùa vẫn còn trường tồn theo thời gian, xứng danh là một ngôi chùa đẹp ở miền Tây Nam Bộ trở thành điểm đến nổi tiếng của Cần Thơ. Khi du lịch Cần Thơ đến Chùa Ông bạn có thể cảm nhận không gian thật linh thiêng và thành tâm cầu bình an và hạnh phúc cho những người thân yêu.', 'https://bom.to/Tg5JNoI'),
(6, 'Chùa Phật Học', 'Địa chỉ: số 11 đại lộ Hòa Bình, quận Ninh Kiều, thành phố Cần Thơ', '-  Chùa Phật Học địa danh hành hương quen thuộc của các đoàn phật tử và còn là điểm du lịch tâm linh thu hút du khách trong và ngoài nước.\r\n- Chùa có lịch sử lâu đời, trước đây là trụ sở của Hội Phật học Nam Việt tỉnh Cần Thơ, được Hội Phật học xây dựng vào năm 1951. Xưa chùa chỉ có 3 tầng, kiến trúc tương đối đơn giản. Đến năm 2012-2014, chùa được đại trùng tu thành tòa nhà 5 tầng, nằm uy nghi giữa lòng thành phố, đối diện chùa Khmer Munirensay.', 'https://bom.to/45l9Ksh'),
(8, 'Chùa Khmer Pitu Khôsa Răngsây', 'Địa chỉ: số 27/18 đường Mạc Đĩnh Chi, phường An Cư, quận Ninh Kiều, thành phố Cần Thơ', '- Chùa được xây dựng năm 1948.\r\n- Chùa Pitu Khôsa Răngsây vừa giữ được nét kiến trúc độc đáo đặc thù của bản sắc văn hóa người Khmer vừa thể hiện được nét kiến trúc hiện đại của Angkor và Khmer nam bộ, và chùa cũng là điểm đến yêu thích của du khách khi du lịch Cần Thơ.', 'https://bom.to/HyzGljS'),
(10, 'Cầu Đi Bộ Ninh Kiều Cần Thơ', 'Địa chỉ: Phường Tân An, Quận Ninh Kiều, Thành phố Cần Thơ.', '- xuất hiện từ năm 2016 nhưng cầu đi bộ Ninh Kiều đã trở thành địa điểm yêu thích của du khách đến thưởng ngoạn, đi dạo trên cầu, chụp ảnh lưu niệm cũng như tận hưởng làn gió mát rượi từ sông Hậu thổi vào.\r\n- Cầu đi bộ Cần Thơ được thiết kế hiện đại có hình chữ S uốn cong mềm mại tượng trưng cho đất nước Việt Nam, với chiều dài khoảng 200m, chiều rộng cỡ 7,2m.\r\n- Cầu nối liền bến Ninh Kiều và cồn Cái Khế giữa dòng sông Hậu.', 'https://bom.to/FLJx2jC'),
(11, 'Nhà Cổ Bình Thủy', 'Địa chỉ: số 142/144 Bùi Hữu Nghĩa, Bình Thủy, Cần Thơ', 'Có dịp đi du Lịch Cần Thơ sau khi tham quan chợ nổi Cái Răng, dạo bộ bến Ninh Kiều, thưởng thức trái cây, ẩm thực miệt vườn… du khách nhớ đến thăm những ngôi nhà cổ mang đậm dấu ấn văn hóa miền Tây. Trong đó nhà cổ Bình Thủy là ngôi nhà cổ được đánh giá là đẹp nhất xứ Tây Đô đã có trên 100 năm tuổi, được dùng làm bối cảnh của nhiều phim nổi tiếng.', 'https://bom.to/ksBqZaP'),
(12, 'Khu Du Lịch Sinh Thái Mỹ Khánh', 'Địa chỉ: số 335 Lộ Vòng Cung, ấp Nhơn Mỹ, xã Mỹ Khánh, huyện Phong Điền, TP Cần Thơ. ', '- Làng du lịch Mỹ Khánh có không gian rộng lớn, với diện tích hơn 50.000 m2, hấp dẫn du khách bởi những vườn cây trái trĩu nặng, những ngôi nhà cổ Nam Bộ, bên cạnh là những ao cá, kênh rạch.\r\n- Tham gia vào các trò chơi dân gian thú vị như leo cây, đập nồi, nhảy bao bố…hay các hoạt động giải trí hấp dẫn như nhảy bơi xuồng, câu cá sấu, cho cá bú bình, xích lô đạp, đi ngựa vòng quanh quanh làng.\r\n- Ngoài ra ở đây còn có rất nhiều lễ hội độc đáo như lễ hội trái cây, đua heo, đua chó, thi bắt vịt.\r\n\r\n', 'https://bom.to/QOYXZcY'),
(14, 'Làng Du Lịch Sinh Thái Ông Đề', 'Địa chỉ: Tổ 26 ấp Mỹ Ái, Phong Điền, Cần Thơ, Việt Nam.\r\n\r\n', 'Khu du lịch Ông Đề Cần Thơ là điểm du lịch sinh thái nổi tiếng. Tại đây có nhiều trò chơi dân gian thú vị dành cho nhóm đông người. Ngoài ra điểm cộng thú vị không gian xanh mát. Đặc biệt còn có nhiều món ăn miệt vườn cực ngon. Đây được xem là điểm du lịch không thể bỏ qua ở Cần Thơ.', 'https://bom.to/qGMIvC3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_log`
--

INSERT INTO `user_log` (`id`, `user_id`, `device`, `created_date`) VALUES
(1, 2, 'android', '2020-12-24 14:53:44'),
(2, 3, 'android', '2020-12-07 14:54:16'),
(3, 3, 'android', '2020-12-31 14:59:43'),
(4, 2, 'Doe', '0000-00-00 00:00:00'),
(5, 3, 'Doe', '0000-00-00 00:00:00'),
(6, 3, 'ios', '0000-00-00 00:00:00'),
(7, 3, 'ios', '2020-12-24 09:12:39'),
(8, 3, 'ios', '2020-12-24 09:00:00'),
(9, 3, 'ios', '2020-12-24 09:20:16'),
(10, 3, 'ios', '2020-12-24 03:21:05'),
(11, 3, 'ios', '2020-12-24 03:21:26'),
(12, 3, 'ios', '2020-12-24 15:21:45'),
(13, 3, 'ios', '2020-12-24 15:22:16'),
(14, 3, 'ios', '2020-12-24 15:22:54'),
(15, 3, 'ios', '2020-12-24 15:24:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-11-28 17:39:47', '2020-11-28 17:39:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://travelwithcoder.000webhostapp.com', 'yes'),
(2, 'home', 'https://travelwithcoder.000webhostapp.com', 'yes'),
(3, 'blogname', 'andy', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nguyenphuongeva97@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:76:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1622137187', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '1', 'yes'),
(97, 'WPLANG', 'en_GB', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1607881187;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607881188;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607881200;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607881201;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1607851572;s:15:\"version_checked\";s:5:\"5.4.4\";s:12:\"translations\";a:0:{}}', 'no'),
(123, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'can_compress_scripts', '0', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(153, '_transient_health-check-site-status-result', '{\"good\":7,\"recommended\":10,\"critical\":0}', 'yes'),
(179, '_site_transient_timeout_theme_roots', '1607853371', 'no'),
(180, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(181, '_site_transient_timeout_php_check_0b33beef925141e64ee7657dbe3ef273', '1608456371', 'no'),
(182, '_site_transient_php_check_0b33beef925141e64ee7657dbe3ef273', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(184, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607851573;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(185, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607851573;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-28 17:39:47', '2020-11-28 17:39:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-11-28 17:39:47', '2020-11-28 17:39:47', '', 0, 'https://travelwithcoder.000webhostapp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2020-11-28 17:39:47', '2020-11-28 17:39:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://travelwithcoder.000webhostapp.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-11-28 17:39:47', '2020-11-28 17:39:47', '', 0, 'https://travelwithcoder.000webhostapp.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-28 17:39:47', '2020-11-28 17:39:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://travelwithcoder.000webhostapp.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-28 17:39:47', '2020-11-28 17:39:47', '', 0, 'https://travelwithcoder.000webhostapp.com/?page_id=3', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'andyphuong'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a4831a9c82045926ae6bb8939f0d07982cf3b4f74f5a89687ac6413bc7ef04b2\";a:4:{s:10:\"expiration\";i:1606758000;s:2:\"ip\";s:38:\"2402:800:63a5:fb31:4d83:4257:5069:3f55\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1606585200;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:20:\"2402:800:63a5:fb31::\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'andyphuong', '$P$BjKt6QyqyJdM.FdvU2aMRdzIq68bV11', 'andyphuong', 'nguyenphuongeva97@gmail.com', 'https://travelwithcoder.000webhostapp.com', '2020-11-28 17:39:47', '', 0, 'andyphuong');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `favourite_place`
--
ALTER TABLE `favourite_place`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Chỉ mục cho bảng `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `favourite_place`
--
ALTER TABLE `favourite_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
