-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2023 lúc 10:02 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newstyle`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id_color` int(11) NOT NULL,
  `name_color` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id_color`, `name_color`) VALUES
(2, 'Đen'),
(3, 'Trắng'),
(4, 'Tím'),
(5, 'Xanh'),
(6, 'Vàng'),
(7, 'Hồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_pro`
--

CREATE TABLE `img_pro` (
  `id_img_pro` int(11) NOT NULL,
  `name_img` longtext NOT NULL,
  `id_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `img_pro`
--

INSERT INTO `img_pro` (`id_img_pro`, `name_img`, `id_pro`) VALUES
(14, 'Screenshot 2023-05-04 171802.png', 5),
(15, 'Screenshot 2023-05-04 171817.png', 5),
(16, 'Screenshot 2023-05-04 171823.png', 5),
(17, 'Screenshot 2023-05-04 171831.png', 5),
(18, 'Screenshot 2023-05-04 172306.png', 6),
(19, 'Screenshot 2023-05-04 172311.png', 6),
(20, 'Screenshot 2023-05-04 172321.png', 6),
(21, 'Screenshot 2023-05-04 172332.png', 6),
(22, 'Screenshot 2023-05-04 172735.png', 7),
(23, 'Screenshot 2023-05-04 172742.png', 7),
(24, 'Screenshot 2023-05-04 172750.png', 7),
(25, 'Screenshot 2023-05-04 172801.png', 7),
(26, 'Screenshot 2023-05-04 173226.png', 8),
(27, 'Screenshot 2023-05-04 173232.png', 8),
(28, 'Screenshot 2023-05-04 173245.png', 8),
(29, 'Screenshot 2023-05-04 173716.png', 9),
(30, 'Screenshot 2023-05-04 173722.png', 9),
(31, 'Screenshot 2023-05-04 173734.png', 9),
(32, 'Screenshot 2023-05-04 174348.png', 10),
(33, 'Screenshot 2023-05-04 174354.png', 10),
(34, 'Screenshot 2023-05-04 174410.png', 10),
(35, 'Screenshot 2023-05-04 175032.png', 11),
(36, 'Screenshot 2023-05-04 175037.png', 11),
(37, 'Screenshot 2023-05-04 175045.png', 11),
(38, 'Screenshot 2023-05-04 175134.png', 11),
(39, 'Screenshot 2023-05-04 175541.png', 12),
(40, 'Screenshot 2023-05-04 175552.png', 12),
(41, 'Screenshot 2023-05-04 175600.png', 12),
(42, 'Screenshot 2023-05-04 175605.png', 12),
(43, 'Screenshot 2023-05-04 180037.png', 13),
(44, 'Screenshot 2023-05-04 180043.png', 13),
(45, 'Screenshot 2023-05-04 180052.png', 13),
(46, 'Screenshot 2023-05-04 180101.png', 13),
(47, 'Screenshot 2023-05-04 180742.png', 14),
(48, 'Screenshot 2023-05-04 180752.png', 14),
(49, 'Screenshot 2023-05-04 180759.png', 14),
(50, 'Screenshot 2023-05-04 181402.png', 15),
(51, 'Screenshot 2023-05-04 181413.png', 15),
(52, 'Screenshot 2023-05-04 181433.png', 15),
(53, 'Screenshot 2023-05-04 181444.png', 15),
(54, 'Screenshot 2023-05-04 181959.png', 16),
(55, 'Screenshot 2023-05-04 182006.png', 16),
(56, 'Screenshot 2023-05-04 182014.png', 16),
(57, 'Screenshot 2023-05-04 182020.png', 16),
(58, 'Screenshot 2023-05-04 182504.png', 17),
(59, 'Screenshot 2023-05-04 182517.png', 17),
(60, 'Screenshot 2023-05-04 182528.png', 17),
(61, 'Screenshot 2023-05-04 182536.png', 17),
(62, 'Screenshot 2023-05-04 182914.png', 18),
(63, 'Screenshot 2023-05-04 182920.png', 18),
(64, 'Screenshot 2023-05-04 182926.png', 18),
(65, 'Screenshot 2023-05-04 183409.png', 19),
(66, 'Screenshot 2023-05-04 183416.png', 19),
(67, 'Screenshot 2023-05-04 183425.png', 19),
(68, 'Screenshot 2023-05-04 183431.png', 19),
(69, 'Screenshot 2023-05-04 183709.png', 20),
(70, 'Screenshot 2023-05-04 183714.png', 20),
(71, 'Screenshot 2023-05-04 183729.png', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `memory`
--

CREATE TABLE `memory` (
  `id_memory` int(11) NOT NULL,
  `name_memory` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `memory`
--

INSERT INTO `memory` (`id_memory`, `name_memory`) VALUES
(1, '64GB'),
(2, '128GB'),
(3, '256GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id_momo` int(11) NOT NULL,
  `partnerCode` varchar(500) NOT NULL,
  `orderId` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `orderInfo` varchar(500) NOT NULL,
  `orderType` varchar(500) NOT NULL,
  `transId` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `code_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id_momo`, `partnerCode`, `orderId`, `amount`, `orderInfo`, `orderType`, `transId`, `message`, `code_order`) VALUES
(4, 'MOMOBKUN20180529', '1683202556', '26391200', 'Thanh toán qua MoMo', 'momo_wallet', '2969377507', 'Successful.', 1971),
(5, 'MOMOBKUN20180529', '1683599812', '5605000', 'Thanh toán qua MoMo', 'momo_wallet', '2973677084', 'Successful.', 5069),
(6, 'MOMOBKUN20180529', '1684036135', '4050000', 'Thanh toán qua MoMo', 'momo_wallet', '2978765671', 'Successful.', 4538),
(7, 'MOMOBKUN20180529', '1684036839', '5605000', 'Thanh toán qua MoMo', 'momo_wallet', '2978781582', 'Successful.', 7892);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `name_slider` int(11) NOT NULL,
  `name_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id_slider`, `name_slider`, `name_img`) VALUES
(5, 2, 'Screenshot 2023-05-04 172306.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_cat` int(11) NOT NULL,
  `category_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id_cat`, `category_name`) VALUES
(2, 'Điện thoại'),
(4, 'Smartwatch'),
(7, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_cm` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `time_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_cm`, `user_id`, `id_pro`, `desc`, `time_at`) VALUES
(3, 2, 5, 'good !', '2023-05-08 18:06:05'),
(4, 2, 11, 'tệ', '2023-05-08 18:54:23'),
(5, 2, 5, 'đxz', '2023-05-08 19:05:29'),
(6, 2, 5, 'czx', '2023-05-08 19:05:32'),
(7, 2, 5, 'czxc', '2023-05-08 19:05:35'),
(8, 2, 5, 'czx', '2023-05-08 19:05:39'),
(9, 2, 5, 'czxc', '2023-05-08 19:05:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id_com` int(11) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `company_address` varchar(500) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_company`
--

INSERT INTO `tbl_company` (`id_com`, `company_name`, `company_address`, `id_cat`) VALUES
(2, 'Iphone', 'Hà Nội', 2),
(3, 'Samsung', 'Hà Nội', 2),
(4, 'Oppo', 'Hà Nội', 2),
(5, 'Watch', 'Hà Nội', 4),
(6, 'Befit', 'Hà Nội', 4),
(7, 'Xiaomi', 'Hà Nội', 4),
(8, 'Lenovo', 'Hà Nội', 3),
(9, 'Acer', 'Hà Nội', 3),
(10, 'Dell', 'Hà Nội', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id_contact` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `time_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id_contact`, `email`, `desc`, `time_at`) VALUES
(3, 'nguyenloc160501@gmail.com', 'yes', '2023-05-08 17:05:33'),
(4, 'nguyenloc160501@gmail.com', 'good', '2023-05-09 09:31:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `address_order` varchar(500) NOT NULL,
  `phone_order` int(11) NOT NULL,
  `code_order` int(9) NOT NULL,
  `note` varchar(500) NOT NULL,
  `sum_price` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `time_at` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `fullname`, `address_order`, `phone_order`, `code_order`, `note`, `sum_price`, `time`, `time_at`, `status`, `payment`, `user_id`) VALUES
(5, 'Nguyễn Xuân Lộc', 'Yên Việt - Đông Cứu -Gia Bình- Bắc Ninh', 12345555, 1971, 'no', '26391200', '2023-05-04', '2023-05-04 19:16:52', 2, 3, 2),
(7, 'Hoàng Kim lợi', 'a', 123456789, 2027, 'a', '26391200', '2023-05-04', '2023-05-04 21:08:20', 2, 0, 2),
(8, 'Nguyễn Xuân Lộc', 'Bắc Ninh', 123456789, 8849, 'nhanh nhe', '25536000', '2023-05-04', '2023-05-04 21:13:57', 2, 0, 2),
(9, 'Nguyễn Xuân Lộc', 'a', 123456789, 7860, 'a', '17990000', '2023-05-08', '2023-05-08 17:50:51', 2, 0, 2),
(10, 'Hoàng Kim lợi', 'a', 123456789, 7695, 'a', '17090500', '2023-05-08', '2023-05-08 17:53:21', 2, 0, 2),
(11, 'Hoàng Kim lợi', 'a', 123456789, 9866, 'a', '17990000', '2023-05-08', '2023-05-08 17:56:08', 2, 0, 2),
(12, 'Nguyễn Xuân Lộc', 'Bắc Ninh', 123456789, 5069, 'kh', '5605000', '2023-05-09', '2023-05-09 09:37:46', 2, 3, 2),
(13, 'Hoàng Kim lợi', 'a', 123456789, 4538, 'a', '4050000', '2023-05-14', '2023-05-14 10:49:43', 2, 3, 2),
(14, 'a', 'a', 1233333, 7892, 'a', '5605000', '2023-05-14', '2023-05-14 11:01:38', 0, 3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `quantity_buy` int(11) NOT NULL,
  `price_buy` varchar(500) NOT NULL,
  `color` varchar(500) NOT NULL,
  `memory` varchar(500) NOT NULL,
  `code_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id_order_detail`, `id_pro`, `quantity_buy`, `price_buy`, `color`, `memory`, `code_order`) VALUES
(5, 5, 1, '26391200', 'Đen', '64GB', 1971),
(6, 5, 1, '26391200', 'Đen', '64GB', 2027),
(7, 6, 1, '17090500', 'Đen', '128GB', 8849),
(8, 9, 1, '8445500', 'Đen', '128GB', 8849),
(9, 7, 1, '17990000', 'Đen', '64GB', 7860),
(10, 6, 1, '17090500', 'Đen', '128GB', 7695),
(11, 7, 1, '17990000', 'Đen', '64GB', 9866),
(12, 18, 1, '5605000', 'Đen', '', 5069),
(13, 20, 1, '4050000', 'Đen', '', 4538),
(14, 18, 1, '5605000', 'Đen', '', 7892);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_pro` int(11) NOT NULL,
  `pro_code` varchar(500) NOT NULL,
  `pro_name` varchar(500) NOT NULL,
  `pro_desc` varchar(500) NOT NULL,
  `pro_img` varchar(500) NOT NULL,
  `pro_sale` int(11) NOT NULL,
  `pro_price` varchar(20) NOT NULL,
  `pro_warehouse` int(11) NOT NULL,
  `info_detail` longtext NOT NULL,
  `pro_technical` longtext NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id_pro`, `pro_code`, `pro_name`, `pro_desc`, `pro_img`, `pro_sale`, `pro_price`, `pro_warehouse`, `info_detail`, `pro_technical`, `id_cat`, `id_com`) VALUES
(5, '1', 'Điện thoại iPhone 14 Pro Max', 'Mới đây thì chiếc điện thoại iPhone 14 Pro Max 256GB cũng đã được chính thức lộ diện trên toàn cầu và đập tan bao lời đồn đoán bấy lâu nay, bên trong máy sẽ được trang bị con chip hiệu năng khủng cùng sự nâng cấp về camera đến từ nhà Apple.', 'Screenshot 2023-05-04 171817.png', 12, '', 600, '<h3>Diện mạo đẳng cấp dẫn đầu xu thế</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\">iPhone 14 Pro Max</a>&nbsp;sẽ vẫn giữ lại kiểu thiết kế đặc trưng đến từ c&aacute;c thế hệ trước như&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-13-series\" target=\"_blank\">iPhone 13 series</a>&nbsp;với c&aacute;c cạnh vu&ocirc;ng vức v&agrave; hai mặt gia c&ocirc;ng phẳng, đ&acirc;y vẫn được xem l&agrave; kiểu thiết kế rất thịnh h&agrave;nh v&agrave; th&agrave;nh c&ocirc;ng tr&ecirc;n thị trường di động t&iacute;nh đến thời điểm hiện tại.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102929.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế thời thượng - iPhone 14 Pro Max 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102929.jpg\" /></a></p>\r\n\r\n<p>Ph&iacute;a sau m&aacute;y sẽ l&agrave; một mặt lưng l&agrave;m từ k&iacute;nh cao cấp gi&uacute;p cho thiết bị c&oacute; thể to&aacute;t l&ecirc;n một vẻ ngo&agrave;i sang trọng v&agrave; h&agrave;o nho&aacute;ng, đi k&egrave;m với đ&oacute; sẽ l&agrave; bộ khung th&eacute;p kh&ocirc;ng gỉ chắc chắn c&oacute; khả năng chống chịu va đập tốt để thiết bị c&oacute; thể đồng h&agrave;nh c&ugrave;ng bạn trong khoảng thời gian l&acirc;u d&agrave;i hơn.</p>\r\n\r\n<h3>Trang bị cụm 3 camera chất lượng</h3>\r\n\r\n<p>Nổi bật ở phần mặt lưng ch&iacute;nh l&agrave; cụm 3 camera độc đ&aacute;o trong đ&oacute; camera ch&iacute;nh c&oacute; độ ph&acirc;n giải l&ecirc;n tới 48 MP c&ugrave;ng hai cảm biến phụ c&oacute; chung độ ph&acirc;n giải l&agrave; 12 MP.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102938.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera chất lượng - iPhone 14 Pro Max 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102938.jpg\" /></a></p>\r\n\r\n<p>Nhằm mang đến cho người d&ugrave;ng sự mới mẻ về chụp ảnh hay nhiều t&iacute;nh năng đ&aacute;p ứng t&aacute;c vụ nhiếp ảnh n&acirc;ng cao th&igrave; Apple cũng đ&atilde; t&iacute;ch hợp th&ecirc;m nhiều t&iacute;nh năng. B&ecirc;n cạnh đ&oacute; sẽ l&agrave; sự n&acirc;ng cấp về thuật to&aacute;n xử l&yacute; nhằm gi&uacute;p cho thiết bị c&oacute; thể hạn chế được t&igrave;nh trạng nhiễu ảnh, n&acirc;ng cao khả năng xử l&yacute; m&agrave;u tr&ecirc;n camera.<a href=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102940.jpg\" onclick=\"return false;\"><img alt=\"Xử lý hình ảnh chuyên nghiệp - iPhone 14 Pro Max 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-256gb-080922-102940.jpg\" /></a></p>\r\n\r\n<h3>Trải nghiệm nội dung sinh động tr&ecirc;n một m&agrave;n h&igrave;nh chất lượng</h3>\r\n\r\n<p>Ph&iacute;a trước&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">điện thoại iPhone</a>&nbsp;sẽ được t&iacute;ch hợp một m&agrave;n h&igrave;nh OLED c&oacute; k&iacute;ch thước l&ecirc;n tới 6.7 inch, nhờ c&oacute; một tấm nền xịn s&ograve; n&ecirc;n m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể đem lại cho bạn những nội dung hiển thị c&oacute; độ ch&iacute;nh x&aacute;c cao về m&agrave;u sắc. Hỗ trợ tốt trong những c&ocirc;ng việc thiết kế đồ họa.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>2796 x 1290 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.7&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2\" target=\"_blank\">120 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p>2000 nits</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\">K&iacute;nh cường lực Ceramic Shield</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@24fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 2),
(6, '2', 'Điện thoại iPhone 13', 'Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', 'Screenshot 2023-05-04 172306.png', 5, '', 600, '<h3>Hiệu năng vượt trội nhờ chip Apple A15 Bionic</h3>\r\n\r\n<p>Con chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a15-bionic-suc-manh-cuc-khung-duoc-he-1339072\" target=\"_blank\">Apple A15 Bionic</a>&nbsp;si&ecirc;u mạnh được sản xuất tr&ecirc;n quy tr&igrave;nh 5 nm gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-13\" target=\"_blank\">iPhone 13</a>&nbsp;đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%,&nbsp;GPU nhanh hơn 30% so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" onclick=\"return false;\"><img alt=\"Chip Apple A15 Bionic mạnh mẽ - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" /></a></p>\r\n\r\n<p>Nhờ hiệu năng được cải tiến, người d&ugrave;ng c&oacute; được những trải nghiệm tốt hơn tr&ecirc;n điện thoại khi d&ugrave;ng c&aacute;c ứng dụng chỉnh sửa ảnh hay chiến c&aacute;c tựa game đồ họa cao mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" onclick=\"return false;\"><img alt=\"Đồ họa mượt mà - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" /></a></p>\r\n\r\n<p>iPhone 13 trang bị&nbsp;bộ nhớ trong 128 GB&nbsp;dung lượng l&yacute; tưởng&nbsp;cho ph&eacute;p bạn thỏa th&iacute;ch lưu trữ mọi nội dung theo &yacute; muốn m&agrave; kh&ocirc;ng lo nhanh đầy bộ nhớ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng bộ nhớ - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" /></a></p>\r\n\r\n<h3>Tốc độ 5G tốt hơn&nbsp;</h3>\r\n\r\n<p>Mạng 5G được cải thiện chất lượng với nhiều băng tần hơn, với 5G gi&uacute;p điện thoại xem trực tuyến hay tải xuống c&aacute;c ứng dụng v&agrave; t&agrave;i liệu đều đạt tốc độ nhanh ch&oacute;ng. Kh&ocirc;ng chỉ vậy, si&ecirc;u phẩm mới n&agrave;y c&ograve;n c&oacute; chế độ dữ liệu th&ocirc;ng minh, tự động ph&aacute;t hiện v&agrave; giảm tải tốc độ mạng để tiết kiệm năng lượng khi kh&ocirc;ng cần d&ugrave;ng tốc độ cao.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Super Retina XDR (1170 x 2532 Pixels)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.1&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid1\" target=\"_blank\">60 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid4\" target=\"_blank\">1200 nits</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\">K&iacute;nh cường lực Ceramic Shield</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@240fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@24fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@120fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 2),
(7, '3', 'Điện thoại iPhone 12', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', 'Screenshot 2023-05-04 172735.png', 0, '', 600, '<h3>Trong những th&aacute;ng cuối năm 2020,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bứt ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-12\" target=\"_blank\">iPhone 12 64GB</a>.</h3>\r\n\r\n<h3>Hiệu năng vượt xa mọi giới hạn</h3>\r\n\r\n<p>Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\">A14 Bionic</a>, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\">iPhone 11</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" onclick=\"return false;\"><img alt=\"Chip A14 Bionic mạnh mẽ | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\">T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</a></p>\r\n\r\n<p>Với CPU Apple A14 Bionic, bạn c&oacute; thể dễ d&agrave;ng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt m&agrave; hay h&agrave;ng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao m&agrave; kh&ocirc;ng lo t&igrave;nh trạng giật lag.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" onclick=\"return false;\"><img alt=\"Chiến game siêu mượt, đồ họa tuyệt đẹp | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" /></a></p>\r\n\r\n<p>Chưa hết, Apple c&ograve;n g&acirc;y bất ngờ đến người d&ugrave;ng với hệ thống 5G lần đầu ti&ecirc;n được trang bị tr&ecirc;n những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">iPhone</a>, cho tốc độ truyền tải dữ liệu nhanh hơn, ổn định hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" onclick=\"return false;\"><img alt=\"Kết nối 5G truyền tải dữ liệu nhanh chóng | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" /></a></p>\r\n\r\n<p>iPhone 12 sẽ chạy tr&ecirc;n hệ điều h&agrave;nh iOS 15 (12/2021)&nbsp;với nhiều t&iacute;nh năng hấp dẫn như hỗ trợ Widget cũng như những n&acirc;ng cấp tối ưu phần mềm đ&aacute;ng kể mang lại những trải nghiệm th&uacute; vị mới lạ đến người d&ugrave;ng.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Super Retina XDR (1170 x 2532 Pixels)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.1&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid1\" target=\"_blank\">60 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid4\" target=\"_blank\">1200 nits</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\">K&iacute;nh cường lực Ceramic Shield</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@240fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@24fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@120fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 2),
(8, '4', 'Điện thoại OPPO Find N2 Flip', 'OPPO Find N2 Flip, chiếc điện thoại gập đầu tiên của OPPO được giới thiệu chính thức vào tháng 03/2023. Với cấu hình mạnh mẽ bao gồm con chip Dimensity 9000+ và bộ camera nổi trội, đây được xem là một trong những mẫu điện thoại đáng chú ý ở thời điểm hiện tại khi sở hữu bộ cấu hình tốt trong tầm giá.', 'Screenshot 2023-05-04 173226.png', 12, '', 200, '<h3>Sử dụng ng&ocirc;n ngữ thiết kế gập hiện đại</h3>\r\n\r\n<p>Về thiết kế của m&aacute;y, Find N2 Flip sẽ được l&agrave;m theo cơ chế gập ấn tượng với tỷ lệ khung h&igrave;nh rộng v&agrave; viền mỏng. Ngo&agrave;i ra,&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;c&ograve;n được trang bị một m&agrave;n h&igrave;nh phụ nhỏ ở mặt sau gi&uacute;p người d&ugrave;ng tiện lợi trong việc chụp ảnh selfie hoặc kiểm tra th&ocirc;ng b&aacute;o.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051048.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế đẹp mắt - OPPO Find N2 Flip\" src=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051048.jpg\" /></a></p>\r\n\r\n<p>Với cơ chế gấp gọn tiện lợi n&ecirc;n người d&ugrave;ng c&oacute; thể biến chiếc m&aacute;y của m&igrave;nh trở n&ecirc;n nhỏ nhắn hơn, ph&ugrave; hợp để bạn c&oacute; thể dễ d&agrave;ng mang theo hay bỏ t&uacute;i một c&aacute;ch gọn g&agrave;ng.</p>\r\n\r\n<h3>N&acirc;ng cấp với m&agrave;n h&igrave;nh chất lượng</h3>\r\n\r\n<p>Ở mặt trước,&nbsp;OPPO Find N2 Flip được trang bị tấm nền m&agrave;n h&igrave;nh AMOLED với ưu điểm t&aacute;i hiện h&igrave;nh ảnh c&oacute; chiều s&acirc;u, m&agrave;u sắc sinh động đầy rực rỡ. Độ ph&acirc;n giải Full HD+ tr&ecirc;n khung h&igrave;nh c&oacute; k&iacute;ch thước 6.8 inch cũng sẽ mang đến kh&ocirc;ng gian hiển thị rộng lớn, độ chi tiết tăng cường để mọi nội dung đều trở n&ecirc;n sắc n&eacute;t.</p>\r\n\r\n<p>OPPO đ&atilde; tạo ấn tượng với Find N2 Flip khi trang bị m&agrave;n h&igrave;nh phụ lớn ph&iacute;a sau, cho ph&eacute;p người d&ugrave;ng xem th&ocirc;ng b&aacute;o v&agrave; thao t&aacute;c trả lời dễ d&agrave;ng. Ngo&agrave;i ra, m&agrave;n h&igrave;nh phụ c&ograve;n gi&uacute;p bạn xem trước h&igrave;nh ảnh khi chụp ảnh selfie bằng camera sau một c&aacute;ch tiện lợi, tạo trải nghiệm sử dụng th&uacute; vị cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051057.jpg\" onclick=\"return false;\"><img alt=\"Nâng cấp với màn hình phụ - OPPO Find N2 Flip\" src=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051057.jpg\" /></a></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ c&acirc;n tốt mọi t&aacute;c vụ</h3>\r\n\r\n<p>Về hiệu năng của Find N2 Flip, m&aacute;y được trang bị con chip Mediatek Dimensity 9000+ với mức xung nhịp tối đa đạt được l&agrave; 3.20 GHz, nhờ đ&oacute; m&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; thể trở n&ecirc;n ph&ugrave; hợp hơn để người d&ugrave;ng chơi được c&aacute;c tựa game đồ họa cao mượt m&agrave; hơn, thực hiện c&aacute;c t&aacute;c vụ xử l&yacute; chỉnh sửa video/h&igrave;nh ảnh với thời gian xuất cực kỳ nhanh ch&oacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051103.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mạnh mẽ - OPPO Find N2 Flip\" src=\"https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-150223-051103.jpg\" /></a></p>\r\n\r\n<h3>Thỏa sức đam m&ecirc; nhiếp ảnh chất lượng cao</h3>\r\n\r\n<p>Nổi bật ở phần mặt sau của chiếc&nbsp;điện thoại&nbsp;n&agrave;y sẽ l&agrave; 2 ống k&iacute;nh với độ ph&acirc;n giải tối đa tr&ecirc;n camera ch&iacute;nh l&ecirc;n đến 50 MP, k&egrave;m theo đ&oacute; l&agrave; camera g&oacute;c si&ecirc;u rộng 8 MP để bạn c&oacute; thể chụp được những bức ảnh c&oacute; độ bao qu&aacute;t lớn, ph&ugrave; hợp cho những t&aacute;c vụ chụp ảnh nh&oacute;m hay muốn ghi h&igrave;nh ở những khung cảnh bao la h&ugrave;ng vĩ.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766\" target=\"_blank\">AMOLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh: FHD+ (2520 x 1080 Pixels) &amp; Phụ: (720 x 382 Pixels)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>Ch&iacute;nh 6.8&quot; &amp; Phụ 3.26&quot; - Tần số qu&eacute;t 120 Hz &amp; 60 Hz</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p>Ch&iacute;nh 1200 nits &amp; Phụ 800 nits</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/ultra-thin-glass-1236998#hmenuid1\" target=\"_blank\">K&iacute;nh si&ecirc;u mỏng Ultra Thin Glass (UTG)</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@60fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 4),
(9, '5', 'Điện thoại OPPO Reno8 T 5G ', 'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.', 'Screenshot 2023-05-04 173716.png', 5, '', 400, '<h3>Thiết kế với kiểu d&aacute;ng bắt mắt</h3>\r\n\r\n<p>Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg\" onclick=\"return false;\"><img alt=\"Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg\" /></a></p>\r\n\r\n<p>Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng nhám - OPPO Reno8 T 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg\" /></a></p>\r\n\r\n<p>Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera độc đáo - OPPO Reno8 T 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</p>\r\n\r\n<p>Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766\" target=\"_blank\">AMOLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Full HD+ (1080 x 2412 Pixels)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.7&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2\" target=\"_blank\">120 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p>800 nits</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p>K&iacute;nh cường lực AGC DT-Star2</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 108 MP &amp; Phụ 2 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&egrave;n Flash:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-den-flash-tren-camera-dien-thoai-1143808\" target=\"_blank\">C&oacute;</a></p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/ai-camera-la-gi-co-tac-dung-gi-trong-may-anh-1169103\" target=\"_blank\">AI Camera</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-anh-manual-mode-pro-tren-smartphone-906405\" target=\"_blank\">Chuy&ecirc;n nghiệp (Pro)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-anh-hdr-tren-smartphone-la-gi-906400\" target=\"_blank\">HDR</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tat-tan-tat-ve-che-do-quay-video-hien-thi-kep-1472983#Quayvideohienthikep\" target=\"_blank\">Quay video hiển thị k&eacute;p</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/cac-che-do-chup-anh-tren-smartphone-tiep-theo--739084#sieudophangiai\" target=\"_blank\">Si&ecirc;u độ ph&acirc;n giải</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/ar-stickers-la-gi-vi-sao-hang-nao-cung-ap-dung-ar-1096228\" target=\"_blank\">Nh&atilde;n d&aacute;n (AR Stickers)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-lam-dep-beautify-tren-smartphone-tablet-1172231\" target=\"_blank\">L&agrave;m đẹp</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/google-lens-la-gi-1174811\" target=\"_blank\">Google Lens</a></p>\r\n\r\n	<p>Bộ lọc m&agrave;u</p>\r\n\r\n	<p>Hiển vi</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-quay-phim-time-lapse-la-gi-1172228#hmenuid1\" target=\"_blank\">Tr&ocirc;i nhanh thời gian (Time Lapse)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chup-anh-panorama-toan-canh-tren-camera-cua-smar-906425\" target=\"_blank\">To&agrave;n cảnh (Panorama)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" target=\"_blank\">Ban đ&ecirc;m (Night Mode)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-quay-video-slow-motion-la-gi-luu-y-khi-quay-video-1013728\" target=\"_blank\">Quay chậm (Slow Motion)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chup-anh-xoa-phong-la-gi-no-co-tac-dung-nhu-the-na-1138006\" target=\"_blank\">X&oacute;a ph&ocirc;ng</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/zoom-quang-hoc-va-zoom-ky-thuat-so-la-gi-co-gi-khac-nhau-1296828#zoom-ky-thuat-so\" target=\"_blank\">Zoom kỹ thuật số</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 4),
(10, '6', 'Điện thoại OPPO A55 ', 'OPPO cho ra mắt OPPO A55 4G chiếc smartphone giá rẻ tầm trung có thiết kế đẹp mắt, cấu hình khá ổn, cụm camera chất lượng và dung lượng pin ấn tượng, mang đến một lựa chọn trải nghiệm thú vị vừa túi tiền cho người tiêu dùng.', 'Screenshot 2023-05-04 174354.png', 6, '', 200, '<p>OPPO A55 4G c&oacute; 3 phi&ecirc;n bản m&agrave;u độc đ&aacute;o l&agrave; xanh l&aacute;, xanh dương v&agrave; m&agrave;u đen. Thiết kế cong 3D c&ugrave;ng k&iacute;ch thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao t&aacute;c trải nghiệm thoải m&aacute;i v&agrave; chắc chắn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-2-1.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế 3D sang chảnh - OPPO A55 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-2-1.jpg\" /></a></p>\r\n\r\n<p>Ở bản m&agrave;u đen, mặt lưng sử dụng chất liệu nhựa nh&aacute;m với bề mặt cực mịn, cho cảm gi&aacute;c cầm nắm chắc tay v&agrave; hạn chế b&aacute;m v&acirc;n tay ho&agrave;n hảo. Bản m&agrave;u xanh dương l&agrave; một sự s&aacute;ng tạo của OPPO với mặt lưng s&aacute;ng b&oacute;ng c&oacute; khả năng phản quang tốt tạo hiệu ứng m&agrave;u sắc cầu vồng lung linh, đẹp mắt tr&ecirc;n nền xanh trẻ trung.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-1-1.jpg\" onclick=\"return false;\"><img alt=\"2 màu thời trang - OPPO A55 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-1-1.jpg\" /></a></p>\r\n\r\n<p>OPPO A55 4G c&oacute; m&agrave;n h&igrave;nh đục lỗ với cạnh viền si&ecirc;u mỏng, tỷ lệ m&agrave;n h&igrave;nh so với khung m&aacute;y 89.2%, tạo kh&ocirc;ng gian trải nghiệm đ&atilde; mắt cho từng nội dung xem.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-3-1.jpg\" onclick=\"return false;\"><img alt=\"Màn hình đục lỗ - OPPO A55 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-3-1.jpg\" /></a></p>\r\n\r\n<p>Phi&ecirc;n bản n&agrave;y được trang bị 2 t&iacute;nh năng mở kh&oacute;a bảo mật bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;ở cạnh viền v&agrave; mở kh&oacute;a khu&ocirc;n mặt, mang đến cho bạn nhiều sự lựa chọn để mở kho&aacute; c&ugrave;ng khả năng bảo vệ tốt th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">IPS LCD</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#hd\" target=\"_blank\">HD+ (700 x 1600 Pixels)</a></p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.5&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid1\" target=\"_blank\">60 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p>480 nits</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kinh-cuong-luc-dinorex-glass-la-gi-1143754\" target=\"_blank\">K&iacute;nh cường lực Dinorex&trade; Glass</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 2 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&egrave;n Flash:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-den-flash-tren-camera-dien-thoai-1143808\" target=\"_blank\">C&oacute;</a></p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/ai-camera-la-gi-co-tac-dung-gi-trong-may-anh-1169103\" target=\"_blank\">AI Camera</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-anh-manual-mode-pro-tren-smartphone-906405\" target=\"_blank\">Chuy&ecirc;n nghiệp (Pro)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-touch-focus-khi-chup-anh-tren-smartphone-906412\" target=\"_blank\">Chạm lấy n&eacute;t</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-anh-hdr-tren-smartphone-la-gi-906400\" target=\"_blank\">HDR</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-lam-dep-beautify-tren-smartphone-tablet-1172231\" target=\"_blank\">L&agrave;m đẹp</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chup-anh-panorama-toan-canh-tren-camera-cua-smar-906425\" target=\"_blank\">To&agrave;n cảnh (Panorama)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-autofocus-trong-chup-anh-tren-smartphone-906408\" target=\"_blank\">Tự động lấy n&eacute;t (AF)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chuc-nang-nhan-dien-khuon-mat-la-gi-907903\" target=\"_blank\">Nhận diện khu&ocirc;n mặt</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" target=\"_blank\">Ban đ&ecirc;m (Night Mode)</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chup-anh-xoa-phong-la-gi-no-co-tac-dung-nhu-the-na-1138006\" target=\"_blank\">X&oacute;a ph&ocirc;ng</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/zoom-quang-hoc-va-zoom-ky-thuat-so-la-gi-co-gi-khac-nhau-1296828#zoom-ky-thuat-so\" target=\"_blank\">Zoom kỹ thuật số</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 4),
(11, '7', 'Điện thoại Samsung Galaxy S23 Ultra 5G', 'Samsung Galaxy S23 Ultra 5G 256GB là chiếc smartphone cao cấp nhất của nhà Samsung, sở hữu cấu hình không tưởng với con chip khủng được Qualcomm tối ưu riêng cho dòng Galaxy và camera lên đến 200 MP, xứng danh là chiếc flagship Android được mong đợi nhất trong năm 2023.\r\n', 'Screenshot 2023-05-04 175032.png', 20, '', 300, '<h3>Tạo h&igrave;nh sang trọng đầy tinh tế</h3>\r\n\r\n<p>Về thiết kế th&igrave; Samsung Galaxy S23 Ultra sẽ tiếp tục thừa hưởng kiểu d&aacute;ng sang trọng đến từ thế hệ trước, vẫn l&agrave; bộ khung kim loại, mặt lưng k&iacute;nh c&ugrave;ng kiểu tạo h&igrave;nh bo cong nhẹ ở cạnh b&ecirc;n v&agrave; m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020326.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế sang trọng - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020326.jpg\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n kiểu bo cong n&agrave;y sẽ hơi thi&ecirc;n hướng phẳng một ch&uacute;t so với S22 Ultra, điều n&agrave;y mang đến cho m&igrave;nh trải nghiệm cầm nắm chắc tay hơn, song cũng mang lại cảm gi&aacute;c dễ chịu cho những l&uacute;c sử dụng li&ecirc;n tục trong thời gian d&agrave;i.</p>\r\n\r\n<p>Về m&agrave;u sắc, năm nay Samsung cũng đ&atilde; cho ra c&aacute;c phi&ecirc;n bản m&agrave;u như: T&iacute;m, kem, xanh v&agrave; đen. Nh&igrave;n chung th&igrave; đ&acirc;y l&agrave; những m&agrave;u sắc cực kỳ sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn trẻ năng động, mạnh mẽ v&agrave; đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng đang l&agrave; doanh nh&acirc;n bởi ngoại h&igrave;nh đẳng cấp v&agrave; thanh lịch.</p>\r\n\r\n<p>Hiện tr&ecirc;n tay m&igrave;nh l&agrave; bản m&agrave;u xanh đặc trưng của Samsung, m&agrave;u n&agrave;y vừa đem đến sự trẻ trung tươi mới v&agrave; cũng vừa mang tr&ecirc;n m&igrave;nh một gam m&agrave;u tối để c&oacute; thể giữ được vẻ huyền b&iacute; đầy m&ecirc; hoặc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020336.jpg\" onclick=\"return false;\"><img alt=\"Màu sắc mê hoặc - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020336.jpg\" /></a></p>\r\n\r\n<p>Ở mặt lưng ta c&oacute; thể thấy Samsung trang bị cho m&aacute;y một lớp k&iacute;nh cường lực c&oacute; khả năng chống va đập tốt, được l&agrave;m theo kiểu nh&aacute;m nhẹ gi&uacute;p cho việc b&aacute;m dấu v&acirc;n tay gần như kh&ocirc;ng thấy xuất hiện trong qu&aacute; tr&igrave;nh m&igrave;nh trải nghiệm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020340.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng kính nhám - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020340.jpg\" /></a></p>\r\n\r\n<p>Về phần thiết kế camera th&igrave; năm nay h&atilde;ng gần như kh&ocirc;ng c&oacute; sự thay đổi g&igrave; so với Galaxy S22 Ultra, vẫn l&agrave; cụm camera được bố tr&iacute; ri&ecirc;ng lẻ v&agrave; được l&agrave;m nh&ocirc; l&ecirc;n kh&aacute; cao.</p>\r\n\r\n<p>Tuy nhi&ecirc;n xung quanh c&aacute;c ống k&iacute;nh sẽ được th&ecirc;m một lớp viền cao hơn so với bề mặt camera, điều n&agrave;y gi&uacute;p hạn chế việc trầy xước bề mặt ống k&iacute;nh rất tốt n&ecirc;n m&igrave;nh cũng y&ecirc;n t&acirc;m hơn trong l&uacute;c d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020347.jpg\" onclick=\"return false;\"><img alt=\"Vị trí camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020347.jpg\" /></a></p>\r\n\r\n<p>C&ograve;n về viền xung quanh m&aacute;y, Galaxy S23 Ultra được bao bọc bởi bộ khung l&agrave;m từ nh&ocirc;m với đặc t&iacute;nh bền bỉ, chắc chắn c&ugrave;ng trọng lượng được tối ưu cực kỳ hiệu quả.</p>\r\n\r\n<p>Bộ khung n&agrave;y được l&agrave;m theo kiểu b&oacute;ng lo&aacute;ng gi&uacute;p m&aacute;y c&oacute; th&ecirc;m một điểm nhấn đầy nổi bật về thiết kế. Cảm gi&aacute;c khi sờ v&agrave;o bộ khung như được phủ một lớp mạ b&oacute;ng xung quanh, v&igrave; thế đ&acirc;y sẽ kh&ocirc;ng phải l&agrave; vị tr&iacute; dễ xước như một bộ phận người người d&ugrave;ng ho&agrave;i nghi.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020353.jpg\" onclick=\"return false;\"><img alt=\"Khung viền bo cong - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020353.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213#hmenuid1\" target=\"_blank\">Dynamic AMOLED 2X</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">2K+ (1440 x 3088 Pixels)</a></p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.8&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2\" target=\"_blank\">120 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid5\" target=\"_blank\">1750 nits</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p>K&iacute;nh cường lực Corning Gorilla Glass Victus 2</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 200 MP &amp; Phụ 12 MP, 10 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@240fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#8k\" target=\"_blank\">8K 4320p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/quay-phim-sieu-cham-super-slow-motion-960fps-la-1144253\" target=\"_blank\">HD 720p@960fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 3);
INSERT INTO `tbl_product` (`id_pro`, `pro_code`, `pro_name`, `pro_desc`, `pro_img`, `pro_sale`, `pro_price`, `pro_warehouse`, `info_detail`, `pro_technical`, `id_cat`, `id_com`) VALUES
(12, '8', 'Điện thoại Samsung Galaxy S23+ 5G', 'Samsung Galaxy S23+ 5G 256GB là chiếc điện thoại thuộc dòng cao cấp nhất của Samsung được giới thiệu vào tháng 02/2023. Máy sở hữu một vài điểm ấn tượng như camera có khả năng quay video 8K, cùng với đó là con chip Snapdragon 8 Gen 2 mạnh mẽ hàng đầu giới điện thoại Android.', 'Screenshot 2023-05-04 175605.png', 5, '', 400, '<h3>Vẻ ngo&agrave;i đẳng cấp xứng danh flagship</h3>\r\n\r\n<p>Ấn tượng đầu ti&ecirc;n của m&igrave;nh khi tr&ecirc;n tay chiếc Galaxy S23+ l&agrave; c&aacute;i nh&igrave;n vu&ocirc;ng vắn sang trọng, tổng thể m&aacute;y được ho&agrave;n thiện từ c&aacute;c loại chất liệu cao cấp gi&uacute;p mang đến trải nghiệm cầm nắm đầm tay hơn.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111218.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế vuông vắn - Samsung Galaxy S23+ 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111218.jpg\" /></a></p>\r\n\r\n<p>Hơn thế, bộ khung nh&ocirc;m v&agrave; mặt lưng k&iacute;nh cường lực cũng mang đến cho m&aacute;y khả năng kh&aacute;ng xước tốt hay hạn chế được rủi ro nứt, vỡ mỗi khi m&aacute;y c&oacute; gặp va chạm ngo&agrave;i &yacute; muốn.&nbsp;</p>\r\n\r\n<p>Về kiểu ho&agrave;n thiện th&igrave; khung m&aacute;y được l&agrave;m theo kiểu nhẵn b&oacute;ng gi&uacute;p mang đến c&aacute;i nh&igrave;n bắt mắt v&agrave; sang trọng hơn, c&ugrave;ng với đ&oacute; l&agrave; mặt lưng l&agrave;m nh&aacute;m nhằm giảm thiểu hiện tượng b&aacute;m dấu v&acirc;n tay v&agrave; mồ h&ocirc;i mỗi khi sử dụng, ngo&agrave;i ra c&aacute;c vết xước nhẹ cũng được giảm thiểu đối với mặt lưng của chiếc m&aacute;y n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111223.jpg\" onclick=\"return false;\"><img alt=\"Khung viền nhôm chắc chắn - Samsung Galaxy S23+ 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111223.jpg\" /></a></p>\r\n\r\n<p>Thoạt nh&igrave;n th&igrave; ở phi&ecirc;n bản Galaxy S23+ c&oacute; lẽ sẽ kh&ocirc;ng c&oacute; qu&aacute; nhiều sự đổi mới so với thế hệ tiền nhiệm, tuy nhi&ecirc;n điểm m&agrave; ta c&oacute; thể dễ d&agrave;ng nhận thấy v&agrave; ph&acirc;n biệt được hai mẫu m&aacute;y giữa đời trước v&agrave; đời sau l&agrave; nằm ở phần cụm camera.</p>\r\n\r\n<p>Sẽ kh&ocirc;ng c&ograve;n đặt chung cụm nữa, m&agrave; thay v&agrave;o đ&oacute; camera tr&ecirc;n Galaxy S23+ đều được bố tr&iacute; theo c&aacute;ch ri&ecirc;ng lẻ, vừa mang đến điểm nhấn mới lạ xong cũng đem lại điểm nhận diện đặc trưng cho d&ograve;ng m&aacute;y n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111355.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera riêng biệt - Samsung Galaxy S23+ 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-080423-111355.jpg\" /></a></p>\r\n\r\n<p>C&ograve;n về nguy&ecirc;n l&yacute; thiết kế phần m&agrave;n h&igrave;nh th&igrave; Galaxy S23+ cũng kh&ocirc;ng c&oacute; qu&aacute; nhiều điều kh&aacute;c biệt, vẫn sẽ l&agrave; m&agrave;n h&igrave;nh phẳng với c&aacute;c viền si&ecirc;u mỏng bao bọc xung quanh, c&ugrave;ng với đ&oacute; l&agrave; h&igrave;nh notch dạng đục lỗ chứa camera được l&agrave;m nhỏ để tối ưu diện t&iacute;ch hiển thị.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213#hmenuid1\" target=\"_blank\">Dynamic AMOLED 2X</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">Full HD+ (1080 x 2340 Pixels)</a></p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.6&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2\" target=\"_blank\">120 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid5\" target=\"_blank\">1750 nits</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p>K&iacute;nh cường lực Corning Gorilla Glass Victus 2</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 12 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#8k\" target=\"_blank\">8K 4320p@30fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 3),
(13, '9', 'Điện thoại Samsung Galaxy S22 Ultra 5G', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', 'Screenshot 2023-05-04 180037.png', 5, '', 600, '<h3>Sở hữu một diện mạo đầy nổi bật</h3>\r\n\r\n<p>Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những d&ograve;ng Note trước đ&acirc;y của h&atilde;ng đem đến cho bạn c&oacute; cảm gi&aacute;c vừa mới lạ vừa ho&agrave;i niệm. Khối lượng của m&aacute;y 228 g cho cảm gi&aacute;c cầm nắm đầm tay, khi cầm m&aacute;y trần th&igrave; hơi c&oacute; cảm gi&aacute;c dễ trượt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" /></a></p>\r\n\r\n<p>Phần mặt lưng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;được l&agrave;m nh&aacute;m n&ecirc;n hạn chế tốt việc b&aacute;m dấu v&acirc;n tay, c&oacute; thiết kế cũng kh&aacute; đơn giản nhưng vẫn to&aacute;t l&ecirc;n vẻ sang trọng v&agrave; cao cấp của chiếc m&aacute;y. Cụm camera sau tr&ecirc;n Galaxy S22 Ultra 5G được thiết kế trần tạo cảm gi&aacute;c gọn g&agrave;ng v&agrave; cũng tạo n&ecirc;n một điểm nhấn độc đ&aacute;o cho chiếc m&aacute;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" /></a></p>\r\n\r\n<p>C&oacute; thể n&oacute;i Galaxy S22 Ultra 5G ch&iacute;nh l&agrave; chiếc m&aacute;y đầu ti&ecirc;n được t&iacute;ch hợp b&uacute;t S Pen ho&agrave;n hảo trong một th&acirc;n m&aacute;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-s\" target=\"_blank\">d&ograve;ng Galaxy S</a>. Giờ đ&acirc;y, bạn c&oacute; thể dễ d&agrave;ng ph&aacute;c thảo, ghi ch&uacute; lại những &yacute; tưởng v&ocirc; c&ugrave;ng nhanh ch&oacute;ng với độ trễ đ&atilde; được cải thiện cho cảm gi&aacute;c viết vẽ v&ocirc; c&ugrave;ng ch&acirc;n thật.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thao tác viết bằng bút S Pen\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ với Snapdragon 8 Gen 1</h3>\r\n\r\n<p>Hiệu năng tr&ecirc;n Galaxy S22 Ultra 5G l&agrave; điều khỏi b&agrave;n c&atilde;i khi m&aacute;y sử dụng chip Snapdragon 8 Gen 1 v&ocirc; c&ugrave;ng mạnh mẽ với tiến tr&igrave;nh sản xuất 4 nm. Khi m&aacute;y chơi game cũng chỉ ấm l&ecirc;n một ch&uacute;t ở vị tr&iacute; cụm camera chứ kh&ocirc;ng ho&agrave;n to&agrave;n qu&aacute; n&oacute;ng như những sản phẩm kh&aacute;c khi d&ugrave;ng c&ugrave;ng con chip n&agrave;y.</p>\r\n\r\n<p>M&aacute;y dễ d&agrave;ng vượt qua được c&aacute;c tựa game Li&ecirc;n Qu&acirc;n, PUBG Mobile, c&agrave;i đặt cấu h&igrave;nh tối đa th&igrave; biểu đồ FPS tr&ecirc;n Galaxy S22 Ultra 5G vẫn kh&aacute; ổn định, kh&ocirc;ng bị drop qu&aacute; nhiều. Kể cả tựa game Genshin Impact ở mức đồ họa mặc định th&igrave; m&aacute;y chơi vẫn mượt m&agrave;, đồ họa hiển thị đẹp mắt.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213#hmenuid1\" target=\"_blank\">Dynamic AMOLED 2X</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-man-hinh-la-gi-co-anh-huong-gi-toi-chat-luong-1335939#hmenuid1\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">2K+ (1440 x 3088 Pixels)</a></p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng:</p>\r\n\r\n	<p>6.8&quot; - Tần số qu&eacute;t&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tan-so-quet-man-hinh-may-tinh-la-gi-1292309#subhmenuid2\" target=\"_blank\">120 Hz</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#hmenuid1\">Độ s&aacute;ng tối đa:</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-sang-nit-tren-man-hinh-laptop-la-gi-bao-nhieu-la-phu-hop-1337509#subhmenuid5\" target=\"_blank\">1750 nits</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt k&iacute;nh cảm ứng:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tat-tan-tat-ve-kinh-gorilla-glass-victus-plus-1472303#KinhcuonglucCorningGorillaGlassVictus+\" target=\"_blank\">K&iacute;nh cường lực Corning Gorilla Glass Victus+</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Camera sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722\">Độ ph&acirc;n giải:</a></p>\r\n\r\n	<p>Ch&iacute;nh 108 MP &amp; Phụ 12 MP, 10 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Quay phim:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@240fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd\" target=\"_blank\">FullHD 1080p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#4k\" target=\"_blank\">4K 2160p@60fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#hd\" target=\"_blank\">HD 720p@30fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#8k\" target=\"_blank\">8K 4320p@24fps</a></p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/quay-phim-sieu-cham-super-slow-motion-960fps-la-1144253\" target=\"_blank\">HD 720p@960fps</a></p>\r\n	</li>\r\n</ul>\r\n', 2, 3),
(14, '10', 'Đồng hồ thông minh Apple Watch GST 45.1mm', 'Đồng hồ thông minh HAYLOU GST với mức giá chưa đến 2 triệu, sở hữu phong cách thiết kế hiện đại, màn hình chất lượng và đa dạng tính năng nên được rất nhiều người dùng lựa chọn. ', 'Screenshot 2023-05-04 180752.png', 5, '', 100, '<h3>Kiểu d&aacute;ng hiện đại, khả năng hiển thị tốt</h3>\r\n\r\n<p>HAYLOU GST c&oacute; mặt đồng hồ&nbsp;<strong>45.1 mm&nbsp;</strong>ph&ugrave; hợp với cổ tay của người d&ugrave;ng nam v&agrave; nữ, bo cong 4 g&oacute;c tinh tế. Đồng hồ c&oacute; phần&nbsp;<strong>viền hợp kim&nbsp;</strong>cứng c&aacute;p, mặt k&iacute;nh nhựa 2.5D bảo vệ m&agrave;n h&igrave;nh trước những va đập ngo&agrave;i &yacute; muốn.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh-haylou\" target=\"_blank\">Đồng hồ th&ocirc;ng minh HAYLOU</a>&nbsp;c&oacute; khối lượng&nbsp;<strong>50 g</strong>&nbsp;kh&ocirc;ng qu&aacute; nặng cho người sử dụng, những hoạt động thể thao hay l&agrave;m việc nh&agrave; đều kh&ocirc;ng bị ảnh hưởng. D&acirc;y đồng hồ được l&agrave;m bằng&nbsp;<strong>silicone</strong>&nbsp;c&oacute; độ bền cao, &ecirc;m &aacute;i khi đeo, kh&ocirc;ng thấm nước v&agrave; rất dễ l&agrave;m sạch. Phần d&acirc;y đeo c&oacute; thể th&aacute;o rời n&ecirc;n người d&ugrave;ng c&oacute; thể thay đổi theo sở th&iacute;ch, lưu &yacute; d&ugrave;ng d&acirc;y c&oacute; c&ugrave;ng k&iacute;ch thước.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-22.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh HAYLOU GST - Thiết kế tối giản\" src=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-22.jpg\" /></a></p>\r\n\r\n<p>Cạnh b&ecirc;n phải của đồng hồ c&oacute; một n&uacute;t cứng hỗ trợ người d&ugrave;ng ra - v&agrave;o menu một c&aacute;ch nhanh ch&oacute;ng. Mặt sau l&agrave; phần cảm biến v&agrave; tiếp điểm sạc nam ch&acirc;m được l&agrave;m kh&aacute; tỉ mỉ n&ecirc;n khi sử dụng cũng kh&ocirc;ng bị cấn tay. Theo cảm nhận của m&igrave;nh th&igrave; kiểu đồng hồ n&agrave;y kh&aacute; dễ d&ugrave;ng, ph&ugrave; hợp với nhiều loại trang phục từ c&ocirc;ng sở đến thể thao.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-100.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh HAYLOU GST - Nút vật lý\" src=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-100.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#hmenuid3\" target=\"_blank\">M&agrave;n h&igrave;nh TFT&nbsp;</a>k&iacute;ch thước&nbsp;<strong>1.69 inch</strong>&nbsp;kh&aacute; lớn, độ ph&acirc;n giải&nbsp;<strong>240 x 280 pixels</strong>&nbsp;hiển thị c&aacute;c nội dung chi tiết, m&agrave;u sắc trung thực mang đến sự thoải m&aacute;i cho m&igrave;nh khi xem. Trường hợp đeo đồng hồ đi ra ngo&agrave;i trời th&igrave; m&agrave;n h&igrave;nh sẽ xuất hiện b&oacute;ng mờ nhẹ nhưng kh&ocirc;ng ảnh hưởng đến việc m&igrave;nh xem c&aacute;c nội dung đang hiển thị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-23.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh HAYLOU GST - Màn hình lớn \" src=\"https://cdn.tgdd.vn/Products/Images/7077/286740/dong-ho-thong-minh-haylou-gst-den-23.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#hmenuid3\" target=\"_blank\">TFT</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.69 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>240 x 280 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>45.1 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p>K&iacute;nh nhựa 2.5D</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p>Hợp kim</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>2.2 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 45.1 mm - Ngang 36.5 mm - D&agrave;y 11.5 mm - Nặng 50 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 5),
(15, '12', 'Đồng hồ thông minh Apple Watch SE 2022 GPS', 'Trong sự kiện Far Out 2022, nhà Táo Khuyết đã mang đến hàng loạt sản phẩm mới trong đó có đồng hồ thông minh Apple Watch SE 2022 GPS 40mm. Mẫu smartwatch giá rẻ mới nhất của Apple này hứa hẹn sẽ khiến cho các iFans đứng ngồi không yên khi sở hữu nhiều tính năng hấp dẫn.', 'Screenshot 2023-05-04 181402.png', 5, '', 300, '<h3>Kiểu d&aacute;ng cuốn h&uacute;t với thiết kế đặc trưng của Apple</h3>\r\n\r\n<p>Nh&igrave;n tổng thể,&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple-watch-se-2022\" target=\"_blank\">đồng hồ th&ocirc;ng minh Apple Watch SE 2022</a>&nbsp;vẫn giữ kiểu thiết kế tương tự như thế hệ tiền nhiệm, tuy nhi&ecirc;n&nbsp;đ&atilde; được Apple trang bị&nbsp;<strong>m&agrave;n h&igrave;nh lớn hơn 30%</strong>&nbsp;so với phi&ecirc;n bản Watch 3 Series, cho bạn một kh&ocirc;ng gian hiển thị lớn hơn. Tấm nền&nbsp;<strong>OLED</strong>&nbsp;c&ugrave;ng độ ph&acirc;n giải&nbsp;<strong>324 x 394 pixels</strong>&nbsp;cũng mang đến những trải nghiệm về thị gi&aacute;c tuyệt vời trong bất cứ điều kiện &aacute;nh s&aacute;ng n&agrave;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple\" target=\"_blank\">Đồng hồ th&ocirc;ng minh Apple</a>&nbsp;c&oacute; khung viền được ho&agrave;n thiện từ&nbsp;<strong>hợp kim nh&ocirc;m</strong>&nbsp;kết hợp c&ugrave;ng d&acirc;y đeo silicone với nhiều m&agrave;u sắc. B&ecirc;n cạnh đ&oacute;, lớp vỏ xung quanh c&aacute;c cảm biến của thiết bị đ&atilde; được đổi mới để ph&ugrave; hợp hơn với m&agrave;u sắc của đồng hồ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-2.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh Apple Watch SE 2022 GPS 40mm - Thiết kế cuốn hút\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-2.jpg\" /></a></p>\r\n\r\n<h3>Hiệu suất nhanh hơn với bộ vi xử l&yacute; ho&agrave;n to&agrave;n mới</h3>\r\n\r\n<p>Hệ thống&nbsp;<strong>vi xử l&yacute; S8 SiP</strong>&nbsp;mới nhất v&agrave; mạnh nhất l&agrave; một trong những n&acirc;ng cấp đ&aacute;ng gi&aacute; của&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple-watch-se\" target=\"_blank\">đồng hồ th&ocirc;ng minh Apple Watch SE</a>&nbsp;n&agrave;y. Apple cho biết, với bộ chipset được cải tiến, đồng hồ cho khả năng&nbsp;<strong>xử l&yacute; c&aacute;c t&aacute;c vụ nhanh hơn đến 20%</strong>&nbsp;so với thế hệ Watch SE trước đ&oacute;. Điều n&agrave;y mang đến cho bạn những trải nghiệm nhanh ch&oacute;ng, mượt m&agrave; v&agrave; thậm ch&iacute; vẫn rất ổn định trong nhiều năm tới.</p>\r\n\r\n<p>Apple Watch SE 2022 GPS 40mm hoạt động tr&ecirc;n nền tảng&nbsp;<strong>WatchOS 9 mới nhất</strong>. Apple đ&atilde; bổ sung nhiều t&iacute;nh năng cao cấp từ tiện &iacute;ch đến chăm s&oacute;c sức khoẻ n&acirc;ng cao. Nổi bật trong số đ&oacute; c&oacute; thể kể đến như c&aacute;c t&iacute;nh năng tập luyện chi tiết hơn, dữ liệu chuy&ecirc;n s&acirc;u về giấc ngủ lần đầu ti&ecirc;n v&agrave; theo d&otilde;i thuốc. Ngo&agrave;i ra, bạn cũng sẽ nhận được t&ugrave;y chọn cho c&aacute;c th&ocirc;ng b&aacute;o kiểu biểu ngữ (thay v&igrave; những th&ocirc;ng b&aacute;o chiếm to&agrave;n m&agrave;n h&igrave;nh), c&aacute;c t&iacute;nh năng thiết lập gia đ&igrave;nh mới v&agrave; mặt đồng hồ mới t&ugrave;y chỉnh.</p>\r\n\r\n<p>Lưu &yacute;: Apple Watch SE 2022 tương th&iacute;ch với d&ograve;ng iPhone 8 trở l&ecirc;n v&agrave; sử dụng hệ điều h&agrave;nh phi&ecirc;n bản mới nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-3.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh Apple Watch SE 2022 GPS 40mm - Vi xử lý hoàn toàn mới\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-3.jpg\" /></a></p>\r\n\r\n<h3>T&iacute;nh năng ph&aacute;t hiện va chạm&nbsp;</h3>\r\n\r\n<p>Giống như Apple Watch Series 8, Watch SE 2022 được cung cấp&nbsp;<strong>t&iacute;nh năng ph&aacute;t hiện va chạm</strong>. Apple đ&atilde; th&ecirc;m hai cảm biến gia tốc mới tr&ecirc;n đồng hồ v&agrave; gia tốc kế được sử dụng để ph&aacute;t hiện va chạm. Khi bạn c&agrave;i đặt số điện thoại người th&acirc;n l&agrave;m địa chỉ li&ecirc;n hệ khẩn cấp, t&iacute;nh năng n&agrave;y sẽ&nbsp;<strong>ph&aacute;t cảnh b&aacute;o</strong>&nbsp;cho c&aacute;c dịch vụ khẩn cấp, cung cấp th&ocirc;ng tin vị tr&iacute; v&agrave; th&ocirc;ng b&aacute;o cho những người th&acirc;n nếu chẳng may người d&ugrave;ng kh&ocirc;ng may gặp tai nạn &ocirc; t&ocirc;.</p>\r\n\r\n<h3>Đa dạng t&iacute;nh năng chăm s&oacute;c v&agrave; theo d&otilde;i sức khoẻ th&ocirc;ng minh</h3>\r\n\r\n<p>Apple Watch SE 2022 được thừa hưởng loạt cảm biến ấn tượng từ thế hệ cũ như theo d&otilde;i nhịp tim, chấm điểm chất lượng giấc ngủ, ph&aacute;t hiện t&eacute; ng&atilde;, nhắc nhở nhịp tim cao, thấp,... Đ&aacute;ng ch&uacute; &yacute;,&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh\" target=\"_blank\">đồng hồ th&ocirc;ng minh</a>&nbsp;n&agrave;y cũng sở hữu th&ecirc;m&nbsp;<strong>hệ thống cảm biến nhịp tim quang học thế hệ 2</strong>&nbsp;v&agrave;&nbsp;<strong>t&iacute;nh năng theo d&otilde;i thuốc</strong>, hỗ trợ bạn chủ động theo d&otilde;i sức khỏe nhanh v&agrave; ch&iacute;nh x&aacute;c hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-4.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh Apple Watch SE 2022 GPS 40mm - Tiện ích chăm sóc sức khoẻ\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-4.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-oled-tren-smartwatch-1231693#hmenuid1\" target=\"_blank\">OLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>324 x 394 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>40 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kinh-cuong-luc-ion-x-la-gi-973542#hmenuid1\" target=\"_blank\">Ion-X strengthened glass</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-tat-tan-tat-chat-lieu-khung-vien-cua-dong-1181950#subhmenuid5\" target=\"_blank\">Hợp kim nh&ocirc;m</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 40 mm - Ngang 34 mm - D&agrave;y 10.7 mm - Nặng 26.4 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 5),
(16, '13', 'Đồng hồ thông minh Apple Watch S8 GPS', 'Tại sự kiện Far Out diễn ra vào ngày 7/9, ngoài sự chú ý được đổ dồn vào iPhone 14 series thì các mẫu Apple Watch cũng là sản phẩm có được sức hút lớn. Năm nay, ngoài bộ đôi đồng hồ Apple Watch Series 8 và Apple Watch SE 2022 hứa hẹn sẽ khiến cho các iFans đứng ngồi không yên khi sở hữu nhiều tính năng hấp dẫn, nhà Táo cũng đã trình làng chiếc smartwatch mới mang tên Apple Watch Ultra LTE 49mm viền Titanium dây cao su phục vụ tối ưu hơn cho các tín đồ yêu thể thao.', 'Screenshot 2023-05-04 182006.png', 25, '', 200, '<h3>Kiểu d&aacute;ng thời thượng với thiết kế đặc trưng của Apple</h3>\r\n\r\n<p>Nh&igrave;n tổng thể, Apple Watch SE 2022 v&agrave;&nbsp;Apple Watch Series 8&nbsp;vẫn giữ kiểu thiết kế tương tự như thế hệ tiền nhiệm, tuy nhi&ecirc;n&nbsp;phi&ecirc;n bản Apple Watch SE mới được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh lớn hơn 30%</strong>&nbsp;so với phi&ecirc;n bản Watch 3 Series, cho bạn một kh&ocirc;ng gian hiển thị lớn hơn. Tấm nền&nbsp;<strong>OLED</strong>&nbsp;c&ugrave;ng độ ph&acirc;n giải cao<strong>&nbsp;</strong>cũng mang đến những trải nghiệm về thị gi&aacute;c tuyệt vời trong bất cứ điều kiện &aacute;nh s&aacute;ng n&agrave;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple\" target=\"_blank\">Đồng hồ th&ocirc;ng minh Apple</a>&nbsp;c&oacute; khung viền được ho&agrave;n thiện từ hợp kim nh&ocirc;m kết hợp c&ugrave;ng d&acirc;y đeo silicone, d&acirc;y vải với nhiều m&agrave;u sắc. B&ecirc;n cạnh đ&oacute;, lớp vỏ xung quanh c&aacute;c cảm biến của thiết bị đ&atilde; được đổi mới để ph&ugrave; hợp hơn với m&agrave;u sắc của đồng hồ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289610/apple-watch-s8-090922-101405.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh Apple Watch S8 - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289610/apple-watch-s8-090922-101405.jpg\" /></a></p>\r\n\r\n<p>Ở phi&ecirc;n bản Ultra, vẫn mang thiết kế bo cong 4 g&oacute;c quen thuộc&nbsp;nhưng Apple đ&atilde; trang bị&nbsp;<strong>khung viền Titanium</strong>&nbsp;c&ugrave;ng&nbsp;<strong>mặt k&iacute;nh Sapphire</strong>&nbsp;cao cấp l&agrave;m tăng th&ecirc;m t&iacute;nh bền bỉ cho chiếc đồng hồ. B&ecirc;n cạnh đ&oacute;, độ bền đạt ti&ecirc;u chuẩn qu&acirc;n đội&nbsp;<strong>MIL-STD 810H</strong>&nbsp;cũng cho ph&eacute;p người d&ugrave;ng hoạt động với cường độ cao hay ở trong m&ocirc;i trường khắc nghiệt m&agrave; kh&ocirc;ng lo vấn đề hư hỏng.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; phi&ecirc;n bản c&oacute; m&agrave;n h&igrave;nh s&aacute;ng nhất trong tất cả Apple Watch với độ s&aacute;ng l&ecirc;n đến&nbsp;<strong>2000 nits</strong>, n&uacute;t xoay&nbsp;<strong>Digital Crown</strong>&nbsp;to v&agrave; bền hơn, gi&uacute;p người d&ugrave;ng thao t&aacute;c dễ d&agrave;ng hơn trong mọi ho&agrave;n cảnh.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289610/apple-watch-s8-090922-095533.jpg\" onclick=\"return false;\"><img alt=\"Apple Watch Ultra LTE 49mm - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289610/apple-watch-s8-090922-095533.jpg\" /></a></p>\r\n\r\n<h3>Hiệu suất nhanh hơn với bộ vi xử l&yacute; ho&agrave;n to&agrave;n mới</h3>\r\n\r\n<p>Hệ thống&nbsp;<strong>vi xử l&yacute; S8 SiP</strong>&nbsp;mới nhất v&agrave; mạnh nhất l&agrave; một trong những n&acirc;ng cấp đ&aacute;ng gi&aacute; của&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple-watch-se\" target=\"_blank\">đồng hồ th&ocirc;ng minh Apple Watch SE</a>&nbsp;n&agrave;y. Apple cho biết, với bộ chipset được cải tiến, đồng hồ cho khả năng&nbsp;<strong>xử l&yacute; c&aacute;c t&aacute;c vụ nhanh hơn đến 20%</strong>&nbsp;so với thế hệ Watch SE trước đ&oacute;. Điều n&agrave;y mang đến cho bạn những trải nghiệm nhanh ch&oacute;ng, mượt m&agrave; v&agrave; thậm ch&iacute; vẫn rất ổn định trong nhiều năm tới.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-se-2022\" target=\"_blank\">Apple Watch SE 2022</a>&nbsp;hoạt động tr&ecirc;n nền tảng&nbsp;<strong>WatchOS 9 mới nhất</strong>. Apple đ&atilde; bổ sung nhiều t&iacute;nh năng cao cấp từ tiện &iacute;ch đến chăm s&oacute;c sức khoẻ n&acirc;ng cao. Nổi bật trong số đ&oacute; c&oacute; thể kể đến như c&aacute;c t&iacute;nh năng tập luyện chi tiết hơn, dữ liệu chuy&ecirc;n s&acirc;u về giấc ngủ lần đầu ti&ecirc;n v&agrave; theo d&otilde;i thuốc. Ngo&agrave;i ra, bạn cũng sẽ nhận được t&ugrave;y chọn cho c&aacute;c th&ocirc;ng b&aacute;o kiểu biểu ngữ (thay v&igrave; những th&ocirc;ng b&aacute;o chiếm to&agrave;n m&agrave;n h&igrave;nh), c&aacute;c t&iacute;nh năng thiết lập gia đ&igrave;nh mới v&agrave; mặt đồng hồ mới t&ugrave;y chỉnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-080922-051950.jpg\" onclick=\"return false;\"><img alt=\"Đồng hồ thông minh Apple Watch SE 2022 GPS 40mm - Vi xử lý hoàn toàn mới\" src=\"https://cdn.tgdd.vn/Products/Images/7077/289612/apple-watch-se-2022-080922-051950.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-oled-tren-smartwatch-1231693#hmenuid1\" target=\"_blank\">OLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.9 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>484 x 396 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>45 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kinh-cuong-luc-ion-x-la-gi-973542#hmenuid1\" target=\"_blank\">Ion-X strengthened glass</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-tat-tan-tat-chat-lieu-khung-vien-cua-dong-1181950#subhmenuid5\" target=\"_blank\">Hợp kim nh&ocirc;m</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 45 mm - Ngang 38 mm - D&agrave;y 10.7 mm - Nặng 38.8 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 5),
(17, '15', 'Đồng hồ thông minh BeFit B4', 'BeFit B4 mang ngôn ngữ thiết kế tối giản, đem đến sự thời thượng cho người sử dụng. Đồng hồ thông minh được trang bị nhiều tính năng hỗ trợ sức khỏe và rèn luyện thể thao chỉ với mức giá chưa đến 1 triệu đồng, chắc chắn sẽ làm bạn hài lòng.', 'Screenshot 2023-05-04 182517.png', 17, '', 200, '<h3>Phong c&aacute;ch tối giản, ph&ugrave; hợp với đa dạng người d&ugrave;ng</h3>\r\n\r\n<p>Ấn tượng đầu ti&ecirc;n l&uacute;c m&igrave;nh đeo chiếc&nbsp;<a href=\"https://www.thegioididong.com/dong-ho\" target=\"_blank\">đồng hồ</a>&nbsp;n&agrave;y l&ecirc;n tay l&agrave; n&oacute; cực kỳ nhẹ, khi hoạt động tay th&igrave; m&igrave;nh gần như kh&ocirc;ng cảm nhận được sự tồn tại của đồng hồ, t&iacute;nh lu&ocirc;n cả phần d&acirc;y đeo th&igrave; khối lượng chỉ&nbsp;<strong>38 g</strong>. Khung viền được l&agrave;m từ chất liệu&nbsp;<strong>Polycarbonate</strong>&nbsp;v&agrave;&nbsp;<strong>mặt k&iacute;nh nhựa</strong>&nbsp;vừa bền vừa nhẹ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-20.jpg\" onclick=\"return false;\"><img alt=\"BeFit B4 - Kiểu dáng hiện đại\" src=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-20.jpg\" /></a></p>\r\n\r\n<p>Phần d&acirc;y đồng hồ được l&agrave;m từ chất liệu&nbsp;<strong>silicone&nbsp;</strong>mềm dẻo, kh&ocirc;ng thấm nước n&ecirc;n kh&aacute; thoải m&aacute;i khi đeo, kh&oacute;a kim g&agrave;i truyền thống dễ d&agrave;ng sử dụng v&agrave; tr&ecirc;n d&acirc;y c&oacute; c&aacute;c nấc để điều chỉnh độ rộng cho ph&ugrave; hợp. M&igrave;nh kh&aacute; ưng &yacute; với phần d&acirc;y đeo n&agrave;y, khi rửa tay đồng hồ bị d&iacute;nh nước cũng mau ch&oacute;ng kh&ocirc;, kh&ocirc;ng g&acirc;y cảm gi&aacute;c bết r&iacute;t tr&ecirc;n da.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-21.jpg\" onclick=\"return false;\"><img alt=\"BeFit B4 - Dây đeo chắc chắn\" src=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-21.jpg\" /></a></p>\r\n\r\n<p>Mặt đồng hồ h&igrave;nh chữ nhật dễ phối đồ, k&iacute;ch thước<strong>&nbsp;44 mm&nbsp;</strong>kh&ocirc;ng qu&aacute; lớn, ph&ugrave; hợp với cổ tay vừa v&agrave; lớn. Khi đeo l&ecirc;n tay th&igrave; nh&igrave;n rất gọn g&agrave;ng, kh&ocirc;ng l&agrave;m cho tay của m&igrave;nh bị th&ocirc;, n&ecirc;n c&aacute;c bạn nữ cứ y&ecirc;n t&acirc;m sử dụng.</p>\r\n\r\n<p>Mặt sau của đồng hồ l&agrave; hệ thống cảm biến v&agrave; đế sạc được l&agrave;m kh&aacute; phẳng n&ecirc;n khi sử dụng kh&ocirc;ng bị cấn v&agrave; để lại vết hằn tr&ecirc;n da. Nhưng nếu đeo qu&aacute; chật trong thời gian d&agrave;i th&igrave; vẫn bị hằn da v&agrave; đau, n&ecirc;n c&aacute;c bạn cần lưu &yacute; điều chỉnh d&acirc;y đeo cho vừa vặn với cổ tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-22.jpg\" onclick=\"return false;\"><img alt=\"BeFit B4 - Cảm biến và đế sạc\" src=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-22.jpg\" /></a></p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh TFT 1.69 inch</strong>&nbsp;cho kh&ocirc;ng gian hiển thị được nhiều th&ocirc;ng tin hơn, độ ph&acirc;n giải&nbsp;<strong>240 x 280 pixels</strong>&nbsp;cung cấp cho người xem những nội dung r&otilde; r&agrave;ng, m&agrave;u sắc trung thực. Khi m&igrave;nh sử dụng ở ngo&agrave;i trời c&oacute; &aacute;nh s&aacute;ng cực cao th&igrave; khả năng hiển thị của m&agrave;n h&igrave;nh cũng tương đối tốt, c&aacute;c nội dung đều chi tiết.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-23.jpg\" onclick=\"return false;\"><img alt=\"BeFit B4 - Màn hình lớn\" src=\"https://cdn.tgdd.vn/Products/Images/7077/282958/dong-ho-thong-minh-befit-b4-den-23.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#hmenuid3\" target=\"_blank\">TFT</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.69 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>240 x 280 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>44 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p>Mặt k&iacute;nh nhựa</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p>Polycarbonate</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>2 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 44 mm - Ngang 38.5 mm - D&agrave;y 8.9 mm - Nặng 38 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 6),
(18, '16', 'Đồng hồ thông minh BeFit Sporty 2 Pro', 'Để được người tiêu dùng lựa chọn giữa hàng nghìn sản phẩm ngoài kia thì kiểu dáng đẹp mắt thôi là chưa đủ, mà cần phải trang bị đủ các tính năng theo dõi sức khỏe, luyện tập thể thao,... Befit Sporty 2 Pro không chỉ sở hữu vẻ ngoài bắt mắt mà còn được tích hợp nhiều tính năng thông minh hỗ trợ người dùng một cách tốt nhất.', 'Screenshot 2023-05-04 182914.png', 5, '', 100, '<h3>Vẻ ngo&agrave;i thời thượng, nam nữ đều d&ugrave;ng được</h3>\r\n\r\n<p>Befit Sporty 2 Pro c&oacute;&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-mat-tron\" target=\"_blank\">mặt đồng hồ h&igrave;nh tr&ograve;n</a>&nbsp;pha lẫn ch&uacute;t cổ điển trong một thiết bị hiện đại ph&ugrave; hợp với mọi người d&ugrave;ng. Sản phẩm kh&aacute; dễ phối với c&aacute;c loại trang phục, từ c&ocirc;ng sở đến thể thao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-64.jpg\" onclick=\"return false;\"><img alt=\"Befit Sporty 2 Pro - Vẻ ngoài thời thượng\" src=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-64.jpg\" /></a></p>\r\n\r\n<p>Khung viền của sản phẩm được l&agrave;m từ chất liệu&nbsp;<strong>hợp kim kẽm</strong>&nbsp;c&oacute; khả năng chịu lực tương đối tốt, hạn chế những hư hại khi xảy ra va chạm. Phần d&acirc;y sử dụng chất liệu&nbsp;<strong>silicone&nbsp;</strong>mang đến cho m&igrave;nh sự thoải m&aacute;i khi vận động cả một ng&agrave;y. Những l&uacute;c d&acirc;y bị d&iacute;nh bẩn việc l&agrave;m sạch cũng rất nhanh ch&oacute;ng, giữ cho sản phẩm lu&ocirc;n sạch đẹp.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-65.jpg\" onclick=\"return false;\"><img alt=\"Befit Sporty 2 Pro - Dây silicone \" src=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-65.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Befit Sporty 2 Pro c&ograve;n được tặng th&ecirc;m d&acirc;y da ch&iacute;nh h&atilde;ng ph&ugrave; hợp với những ai theo đuổi phong c&aacute;ch thanh lịch, sang trọng. Theo m&igrave;nh cảm nhận th&igrave; bề mặt da v&ocirc; c&ugrave;ng mềm mại, kh&ocirc;ng c&oacute; m&ugrave;i kh&oacute; chịu, những bạn c&oacute; l&agrave;n da nhạy cảm cũng c&oacute; thể an t&acirc;m sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-66.jpg\" onclick=\"return false;\"><img alt=\"Befit Sporty 2 Pro - Dây da tặng kèm\" src=\"https://cdn.tgdd.vn/Products/Images/7077/296858/befit-sporty-2-pro-den-66.jpg\" /></a></p>\r\n\r\n<p>Cạnh b&ecirc;n của mặt đồng hồ được trang bị<strong>&nbsp;2 n&uacute;t vật l&yacute;</strong>, n&uacute;t ph&iacute;a tr&ecirc;n c&oacute; thể xoay v&agrave; bấm để lựa chọn ứng dụng, mỗi lần xoay sẽ ph&aacute;t ra &acirc;m thanh như đ</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#subhmenuid2\" target=\"_blank\">AMOLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.3 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>360 x 360 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>44.8 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-mat-kinh-tren-dong-ho-thong-minh-1204238#hmenuid5\" target=\"_blank\">K&iacute;nh cường lực</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p>Hợp kim kẽm</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>2.2 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 44.8 mm - Ngang 44.8 mm - D&agrave;y 11 mm - Nặng 48.3 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 6),
(19, '18', 'Đồng hồ thông minh Xiaomi Redmi Watch 3', 'Tầm giá chưa đến 3 triệu đồng thì một chiếc smartwatch vừa có nghe gọi vừa được trang bị GPS độc lập khá hiếm thấy nhưng gần đây Xiaomi đã cho ra mắt sản phẩm đồng hồ thông minh Xiaomi Redmi Watch 3 có cả hai tính năng trên. Bên cạnh đó còn được trang bị nhiều tính năng hỗ trợ theo dõi sức khỏe và luyện tập phục vụ cho người dùng.', 'Screenshot 2023-05-04 183409.png', 17, '', 200, '<h3>Ngoại h&igrave;nh tương đồng với c&aacute;c thế hệ trước</h3>\r\n\r\n<p>X&eacute;t về vẻ bề ngo&agrave;i th&igrave; Xiaomi Redmi Watch 3 kh&ocirc;ng c&oacute; nhiều điểm kh&aacute;c biệt so với&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh/redmi-watch-2-lite\" target=\"_blank\">Xiaomi Redmi Watch 2 Lite</a>&nbsp;đ&atilde; ra mắt trước đ&oacute;. Với mặt đồng hồ c&oacute; k&iacute;ch thước&nbsp;<strong>42.6 mm</strong>&nbsp;được bo cong 4 g&oacute;c thao cảm gi&aacute;c thanh tho&aacute;t khi đeo tr&ecirc;n tay. Theo cảm quan của m&igrave;nh th&igrave; cạnh dưới của mặt đồng hồ hơi d&agrave;y hơn 3 cạnh c&ograve;n lại nh&igrave;n kh&ocirc;ng được c&acirc;n đối cho lắm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-100-3.jpg\" onclick=\"return false;\"><img alt=\"Xiaomi Redmi Watch 3 - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-100-3.jpg\" /></a></p>\r\n\r\n<p>L&uacute;c đeo chiếc đồng hồ n&agrave;y l&ecirc;n tay th&igrave; m&igrave;nh kh&ocirc;ng hề thấy nặng bởi&nbsp;khối lượng<strong>&nbsp;chỉ 37 g</strong>. Sử dụng&nbsp;<strong>d&acirc;y silicone&nbsp;</strong>c&oacute; bề mặt mềm mịn, tạo sự thoải m&aacute;i khi đeo tr&ecirc;n tay, chất liệu n&agrave;y chống thấm nước kh&aacute; tốt giữ sự kh&ocirc; tho&aacute;ng cả khi m&igrave;nh vận động chảy nhiều mồ h&ocirc;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-101-4.jpg\" onclick=\"return false;\"><img alt=\"Xiaomi Redmi Watch 3 - Khối lượng\" src=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-101-4.jpg\" /></a></p>\r\n\r\n<p>Thay v&igrave; d&ugrave;ng loại kh&oacute;a kim g&agrave;i truyền thống th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-xiaomi\" target=\"_blank\">đồng hồ th&ocirc;ng minh Xiaomi</a>&nbsp;đ&atilde; được trang bị kiểu kh&oacute;a đinh v&ocirc; c&ugrave;ng thẩm mỹ v&agrave; chắc chắn. Lần đầu sử dụng kiểu kh&oacute;a n&agrave;y m&igrave;nh đ&atilde; mất một l&uacute;c l&acirc;u để c&oacute; thể cố định đồng hồ, nhưng sau v&agrave;i lần th&igrave; thực hiện rất nhanh. D&acirc;y đồng hồ rất &ocirc;m tay, kh&ocirc;ng bị x&ecirc; dịch cả khi m&igrave;nh luyện tập.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-102-4.jpg\" onclick=\"return false;\"><img alt=\"Xiaomi Redmi Watch 3 - Khóa cài chắc chắn\" src=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-102-4.jpg\" /></a></p>\r\n\r\n<p>Cạnh b&ecirc;n của mặt đồng hồ được trang bị&nbsp;<strong>một n&uacute;t điều khiển</strong>&nbsp;với cảm gi&aacute;c bấm &ecirc;m nhẹ. Nằm lệch ra ph&iacute;a sau của n&uacute;t bấm l&agrave; loa v&agrave; micro hỗ trợ cho việc đ&agrave;m thoại trực tiếp ngay tr&ecirc;n đồng hồ. Lật ra mặt sau l&agrave; hệ thống cảm biến tuy hơi nh&ocirc; ra nhưng sẽ kh&ocirc;ng bị cấn, để lại vết hằn nếu điều chỉnh d&acirc;y đeo vừa vặn với cổ tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-103-2.jpg\" onclick=\"return false;\"><img alt=\"Xiaomi Redmi Watch 3 - Nút bấm\" src=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-103-2.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn, khả năng hiển thị tốt ở nhiều điều kiện &aacute;nh s&aacute;ng</h3>\r\n\r\n<p>Với&nbsp;<strong>m&agrave;n h&igrave;nh 1.75 inch</strong>&nbsp;th&igrave; đồng hồ th&ocirc;ng minh Xiaomi Redmi Watch 3 đ&atilde; mang đến một kh&ocirc;ng gian hiển thị v&ocirc; c&ugrave;ng rộng r&atilde;i, m&igrave;nh thực hiện thao t&aacute;c vuốt chạm tr&ecirc;n m&agrave;n h&igrave;nh rất thoải m&aacute;i kh&ocirc;ng lo bị nhầm. M&agrave;n h&igrave;nh c&oacute; độ nhạy ở mức ổn, đ&ocirc;i khi thực hiện nhanh c&aacute;c thao t&aacute;c th&igrave; sẽ c&oacute; t&igrave;nh trạng phản hồi trễ nhưng kh&ocirc;ng đ&aacute;ng kể.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-104-2.jpg\" onclick=\"return false;\"><img alt=\"Xiaomi Redmi Watch 3 - Màn hình sắc nét\" src=\"https://cdn.tgdd.vn/Products/Images/7077/304166/redmi-watch-3-104-2.jpg\" /></a></p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#subhmenuid2\" target=\"_blank\">AMOLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.75 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>390 x 450 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>42.6 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-mat-kinh-tren-dong-ho-thong-minh-1204238#hmenuid5\" target=\"_blank\">K&iacute;nh cường lực</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-tat-tan-tat-chat-lieu-khung-vien-cua-dong-1181950#hmenuid2\" target=\"_blank\">Nhựa</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid9\" target=\"_blank\">Silicone</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>2 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>13.5 - 20 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 42.6 mm - Ngang 36.56 mm - D&agrave;y 9.99 mm - Nặng 37 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 7);
INSERT INTO `tbl_product` (`id_pro`, `pro_code`, `pro_name`, `pro_desc`, `pro_img`, `pro_sale`, `pro_price`, `pro_warehouse`, `info_detail`, `pro_technical`, `id_cat`, `id_com`) VALUES
(20, '19', 'Vòng đeo tay thông minh Mi Band 7', 'Tháng 5/2022, Xiaomi đã cho ra mắt thế hệ smartband tiếp theo của mình mang tên Xiaomi Smart Band 7. Với những nâng cấp nhẹ về màn hình, tính năng sức khoẻ cũng như thêm nhiều chế độ luyện tập, đây là một sản phẩm đáng sở hữu dành cho những người dùng yêu thích sự nhỏ gọn của một thiết bị đeo tay thông minh nhưng vẫn có những tiện ích cơ bản, đủ dùng.', 'Screenshot 2023-05-04 183709.png', 19, '', 100, '<h3>Ngoại h&igrave;nh quen thuộc đậm chất Xiaomi, m&agrave;n h&igrave;nh AMOLED bo cong 2.5D</h3>\r\n\r\n<p>Về thiết kế, Mi Band 7 vẫn mang diện mạo đặc trưng h&igrave;nh con nhộng như c&aacute;c thế hệ trước đ&acirc;y, tuy nhi&ecirc;n đ&atilde; c&oacute; những sự thay đổi m&agrave; người d&ugrave;ng c&oacute; thể dễ d&agrave;ng nhận diện.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-1-3.jpg\" onclick=\"return false;\"><img alt=\"Vòng đeo tay thông minh Mi Band 7 - Diện mạo\" src=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-1-3.jpg\" /></a></p>\r\n\r\n<p>Dễ thấy nhất l&agrave; phần m&agrave;n h&igrave;nh đ&atilde; được Xiaomi tăng k&iacute;ch thước l&ecirc;n&nbsp;<strong>1.62 inch</strong>, lớn hơn&nbsp;<strong>25%</strong>&nbsp;so với&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh/mi-band-6\" target=\"_blank\">Mi Band 6</a>&nbsp;(<strong>1.56 inch</strong>), cho kh&ocirc;ng gian hiển thị rộng hơn, xem được nhiều th&ocirc;ng tin hơn. Phần m&agrave;n h&igrave;nh cũng được l&agrave;m mỏng hơn, c&oacute; độ&nbsp;<strong>cong 2.5D</strong>&nbsp;cho cảm gi&aacute;c vuốt, chạm tr&ecirc;n m&agrave;n h&igrave;nh &ldquo;đ&atilde;&rdquo; hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-12.jpg\" onclick=\"return false;\"><img alt=\"Vòng đeo tay thông minh Mi Band 7 - Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-12.jpg\" /></a></p>\r\n\r\n<p>Vẫn được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh AMOLED</strong>, smartband Xiaomi c&oacute; độ s&aacute;ng tuỳ chỉnh l&ecirc;n đến&nbsp;<strong>500 nits</strong>&nbsp;với mật độ điểm ảnh&nbsp;<strong>326 PPI</strong>&nbsp;gi&uacute;p h&igrave;nh ảnh hiển thị r&otilde; n&eacute;t ngay cả khi ra ngo&agrave;i trời.</p>\r\n\r\n<p>Ngo&agrave;i ra, t&iacute;nh năng&nbsp;<strong>M&agrave;n h&igrave;nh lu&ocirc;n hiển thị</strong>&nbsp;(Always on Display) thường thấy tr&ecirc;n c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh\" target=\"_blank\">đồng hồ th&ocirc;ng minh</a>&nbsp;của Xiaomi nay cũng đ&atilde; được t&iacute;ch hợp tr&ecirc;n Mi Band 7 gi&uacute;p bạn c&oacute; thể xem giờ tr&ecirc;n đồng hồ chỉ với một c&aacute;i nh&igrave;n m&agrave; kh&ocirc;ng cần nhấc cổ tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-11.jpg\" onclick=\"return false;\"><img alt=\"Vòng đeo tay thông minh Mi Band 7 - Màn hình luôn hiển thị\" src=\"https://cdn.tgdd.vn/Products/Images/7077/283146/mi-band-7-11.jpg\" /></a></p>\r\n\r\n<p>Phần viền m&agrave;n h&igrave;nh dưới của Mi Band 7 c&oacute; thiết kế d&agrave;y hơn viền tr&ecirc;n, nếu bạn nh&igrave;n trực diện sẽ kh&ocirc;ng r&otilde; nhưng khi nh&igrave;n nghi&ecirc;ng hoặc d&ugrave;ng giao diện m&agrave;u s&aacute;ng sẽ thấy, đ&acirc;y sẽ l&agrave; một điểm trừ nhỏ cho c&aacute;c bạn y&ecirc;u th&iacute;ch sự ho&agrave;n hảo. Tuy nhi&ecirc;n điều n&agrave;y c&oacute; thể khắc phục bằng c&aacute;ch d&ugrave;ng những giao diện m&agrave;u tối, Xiaomi đ&atilde; trang bị hơn&nbsp;<strong>100</strong>&nbsp;mặt đồng hồ tr&ecirc;n ứng dụng&nbsp;<a href=\"https://www.thegioididong.com/game-app/mi-fitness-ung-dung-ket-noi-voi-dong-ho-xiaomi-276983\" target=\"_blank\">Mi Fitness</a>&nbsp;cho người d&ugrave;ng thoả sức lựa chọn.</p>\r\n', '<p>M&agrave;n h&igrave;nh</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-man-hinh-thong-dung-tren-smartwatch-1169187#subhmenuid2\" target=\"_blank\">AMOLED</a></p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>1.62 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải:</p>\r\n\r\n	<p>490 &times; 192 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước mặt:</p>\r\n\r\n	<p>46.5 mm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu mặt:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-loai-mat-kinh-tren-dong-ho-thong-minh-1204238#hmenuid5\" target=\"_blank\">K&iacute;nh cường lực</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu khung viền:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-tat-tan-tat-chat-lieu-khung-vien-cua-dong-1181950#hmenuid2\" target=\"_blank\">Nhựa</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu d&acirc;y:</p>\r\n\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cac-chat-lieu-dong-ho-deo-tay-1171917#subhmenuid10\" target=\"_blank\">TPU</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Độ rộng d&acirc;y:</p>\r\n\r\n	<p>1.5 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ d&agrave;i d&acirc;y:</p>\r\n\r\n	<p>22.4 cm</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thay d&acirc;y:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 46.5 mm - Ngang 20.7 mm - D&agrave;y 12.25 mm - Nặng 13.5 g</p>\r\n	</li>\r\n</ul>\r\n', 4, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_pro_class`
--

CREATE TABLE `tbl_pro_class` (
  `id_pro_cl` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `name_memory` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_pro_class`
--

INSERT INTO `tbl_pro_class` (`id_pro_cl`, `id_pro`, `id_color`, `name_memory`, `price`, `quantity`) VALUES
(3, 5, 2, '64GB', '29990000', 100),
(4, 5, 3, '64GB', '29990000', 100),
(5, 5, 4, '64GB', '29990000', 100),
(6, 5, 2, '128GB', '32990000', 100),
(7, 5, 3, '128GB', '32990000', 100),
(8, 5, 4, '128GB', '32990000', 100),
(9, 6, 2, '128GB', '17990000', 100),
(10, 6, 3, '128GB', '17990000', 100),
(11, 6, 5, '128GB', '17990000', 100),
(12, 6, 2, '256GB', '20990000', 100),
(13, 6, 3, '256GB', '20990000', 100),
(14, 6, 5, '256GB', '20990000', 100),
(15, 7, 2, '64GB', '17990000', 100),
(16, 7, 3, '64GB', '17990000', 100),
(17, 7, 5, '64GB', '17990000', 100),
(18, 7, 2, '128GB', '19990000', 100),
(19, 7, 3, '128GB', '19990000', 100),
(20, 7, 5, '128GB', '19990000', 100),
(21, 8, 4, '128GB', '19990000', 100),
(22, 8, 2, '128GB', '19990000', 100),
(23, 9, 2, '128GB', '8890000', 100),
(24, 9, 6, '128GB', '8990000', 100),
(25, 9, 2, '256GB', '10990000', 100),
(26, 9, 6, '256GB', '10990000', 100),
(27, 10, 2, '128GB', '4890000', 100),
(28, 10, 5, '128GB', '4899000', 100),
(29, 11, 2, '128GB', '1599000', 100),
(30, 11, 5, '128GB', '15990000', 100),
(31, 11, 4, '128GB', '15990000', 100),
(32, 12, 2, '128GB', '15990000', 100),
(33, 12, 4, '128GB', '15990000', 100),
(34, 12, 2, '256GB', '20990000', 100),
(35, 12, 4, '256GB', '20990000', 100),
(36, 13, 2, '128GB', '20000000', 100),
(37, 13, 3, '128GB', '21000000', 100),
(38, 13, 5, '128GB', '21000000', 100),
(39, 13, 2, '256GB', '25000000', 100),
(40, 13, 3, '256GB', '25000000', 100),
(41, 13, 5, '256GB', '25000000', 100),
(42, 14, 2, '', '590000', 100),
(43, 15, 3, '', '6000000', 100),
(44, 15, 2, '', '6100000', 100),
(45, 15, 3, '', '6000000', 100),
(46, 16, 3, '', '3990000', 100),
(47, 16, 3, '', '3990000', 100),
(48, 17, 2, '', '2590000', 100),
(49, 17, 7, '', '27990000', 100),
(50, 18, 2, '', '5900000', 100),
(51, 19, 3, '', '2700000', 100),
(52, 19, 2, '', '2800000', 100),
(53, 20, 2, '', '5000000', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_statistical`
--

CREATE TABLE `tbl_statistical` (
  `id_st` int(11) NOT NULL,
  `date` varchar(500) NOT NULL,
  `order_qt` int(11) NOT NULL,
  `sales` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_statistical`
--

INSERT INTO `tbl_statistical` (`id_st`, `date`, `order_qt`, `sales`, `quantity`) VALUES
(2, '2023-05-04', 2, '51927200', 3),
(5, '2023-05-08', 3, '53070500', 3),
(6, '2023-05-09', 1, '5605000', 1),
(7, '2023-05-14', 1, '4050000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` longtext NOT NULL,
  `phone` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `fullname`, `username`, `password`, `email`, `address`, `phone`, `role_id`) VALUES
(1, 'Nguyễn Xuân Lộc', 'adminloc', '123456', 'nguyenloc160501@gmail.com', 'Bắc Ninh', 0, 1),
(2, 'Hoàng Kim lợi', 'khachhang01', '123456', 'nguyenloc160501@gmail.com', 'bn', 123456789, 2),
(3, 'Lộc', 'nhanvien01', '123456', 'nguyen@gmail.com', 'BN', 123451, 3),
(4, 'Nguyễn xuân mạnh', 'nhanvien02', '123456', 'tien@gmail.com', 'Bắc Ninh', 0, 3),
(5, 'Hoàng Kim Lợi', 'kimloi1223', 'Kimloi123', 'nguyenloc160501@gmail.com', 'Hà Nội', 12345555, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- Chỉ mục cho bảng `img_pro`
--
ALTER TABLE `img_pro`
  ADD PRIMARY KEY (`id_img_pro`);

--
-- Chỉ mục cho bảng `memory`
--
ALTER TABLE `memory`
  ADD PRIMARY KEY (`id_memory`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_cm`);

--
-- Chỉ mục cho bảng `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id_com`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_pro`);

--
-- Chỉ mục cho bảng `tbl_pro_class`
--
ALTER TABLE `tbl_pro_class`
  ADD PRIMARY KEY (`id_pro_cl`);

--
-- Chỉ mục cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  ADD PRIMARY KEY (`id_st`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `img_pro`
--
ALTER TABLE `img_pro`
  MODIFY `id_img_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `memory`
--
ALTER TABLE `memory`
  MODIFY `id_memory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_pro_class`
--
ALTER TABLE `tbl_pro_class`
  MODIFY `id_pro_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  MODIFY `id_st` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
