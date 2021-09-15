-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 14, 2021 lúc 11:08 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `code_b`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `curr_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bk_des` text COLLATE utf8_unicode_ci NOT NULL,
  `bk_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bk_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bk_at` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `vip` int(11) DEFAULT NULL,
  `complete` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `c_chap` int(11) NOT NULL,
  `created_at` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `host`, `base_url`, `curr_url`, `bk_name`, `author`, `bk_des`, `bk_slug`, `bk_img`, `cate_id`, `user_id`, `bk_at`, `like`, `vip`, `complete`, `views`, `c_chap`, `created_at`, `updated_at`) VALUES
(6, '1', 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https://www.uukanshu.com/b/163114/&t=vi', 'https://www.uukanshu.com/b/163114/', 'Phú bà khởi động kế hoạch', 'Áo khoác không lạnh', '<p>Ph&uacute; b&agrave; khởi động kế hoạch t&oacute;m tắt: Hệ thống: T&igrave;m kiếm một vị mộng to&aacute;i nữ t&iacute;nh, xu&acirc;n xanh 16-33, hệ thống phụ tr&aacute;ch cho t&agrave;i ch&iacute;nh khởi đầu c&ugrave;ng viện trợ, k&yacute; chủ phụ tr&aacute;ch kh&ocirc;ng ngừng dư lực hỗ trợ l&agrave;m n&agrave;ng giải mộng, giải mộng th&agrave;nh c&ocirc;ng, hết thảy t&agrave;i ch&iacute;nh khởi đầu sẽ coi như đầu tư hủy bỏ phản hồi, giải mộng thất bại, t&agrave;i ch&iacute;nh khởi đầu sẽ gấp mười lần d&acirc;ng trả cấp k&yacute; chủ.<br />\r\nTrương nguy lại: &ldquo;C&ograve;n c&oacute; loại n&agrave;y thi&ecirc;n hạ rớt b&aacute;nh c&oacute; nh&acirc;n chuyện tốt? N&agrave;y kh&ocirc;ng phải t&ugrave;y t&ugrave;y tiện tiện t&igrave;m c&aacute;i b&igrave;nh thường g&acirc;y dựng sự nghiệp thất bại muội tử l&agrave; được!&rdquo;<br />\r\nMấy năm sau.<br />\r\nNh&igrave;n b&ecirc;n người một đ&aacute;m giải mộng th&agrave;nh c&ocirc;ng ph&uacute; b&agrave;.<br />\r\nTrương nguy lại tuyệt vọng: &ldquo;Đầu năm nay chẳng lẽ liền kh&ocirc;ng c&oacute; người thường sao!&rdquo; https://<br />\r\n－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－</p>', 'truyen-nhung', 'http://localhost/myscathach/public/upload/image/637574747954139107.jpg', 5, 0, 0, 0, 1, 0, 3, 248, '2021-09-05 13:50:02', '2021-09-11 16:41:31'),
(7, '1', 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https://www.uukanshu.com/b/161717/&t=vi', 'https://www.uukanshu.com/b/161717/', 'Ta thẻ bài lại biến dị tiến hóa', 'Hai thuyền', '<p>Ta thẻ b&agrave;i lại biến dị tiến h&oacute;a t&oacute;m tắt: &Uacute;c, xem nột, ở ph&iacute;a trước ph&aacute;t hiện một c&aacute;i c&ocirc; b&eacute; b&aacute;n di&ecirc;m, ch&uacute;ng ta chậm r&atilde;i tới gần n&agrave;ng, đối ch&iacute;nh l&agrave; như vậy, kh&ocirc;ng sai, thả lỏng điểm.<br />\r\nSau đ&oacute; ch&uacute;ng ta liền c&oacute; thể xem x&eacute;t đến n&agrave;ng thẻ b&agrave;i thăng cấp lộ tuyến.<br />\r\n&ldquo;Cường h&oacute;a lộ tuyến:<br />\r\nLộ tuyến một, mang n&agrave;ng t&igrave;m được 【 qu&aacute;i vật thợ săn &middot; mũ đỏ 】, tiến h&oacute;a v&igrave; quang chi truy săn giả.<br />\r\nLộ tuyến nhị, hiến tế một trương &aacute;c ma nguy&ecirc;n tạp, c&ugrave;ng quang chi &aacute;c ma k&yacute; kết khế ước.<br />\r\nLộ tuyến tam, hiến tế một trương hỏa thuộc t&iacute;nh ma ph&aacute;p tạp, đạt được vi&ecirc;m chi tinh linh, nhưng trưởng th&agrave;nh v&igrave; bạo vi&ecirc;m ma ph&aacute;p sư.<br />\r\nLộ tuyến bốn, hiến tế một trương c&aacute;nh trang bị nguy&ecirc;n tạp, nhưng tiến h&oacute;a v&igrave; quang chi thi&ecirc;n sứ.<br />\r\nLộ tuyến năm, hiến tế một trương Long tộc nguy&ecirc;n tạp, nhưng tiến h&oacute;a v&igrave; trong th&acirc;n thể k&yacute; t&uacute;c mạnh nhất chi long lực lượng coi trọng thiếu nữ.<br />\r\nLộ tuyến s&aacute;u, hiến tế mười trương quang thuộc t&iacute;nh ma ph&aacute;p nguy&ecirc;n tạp, đạt được ma nữ truyền thừa, trở th&agrave;nh vĩnh hằng quang chi ma nữ.<br />\r\nLộ tuyến bảy, c&ugrave;ng 【 quang &yacute; ch&iacute; 】 thẻ b&agrave;i dung hợp, truyền thừa quang chi &yacute; ch&iacute;, c&oacute; thể h&oacute;a th&acirc;n v&igrave; quang.<br />\r\nLộ tuyến t&aacute;m, c&ugrave;ng 【 quang minh chi thần 】 c&ugrave;ng 【 thần Hắc &Aacute;m 】 dung hợp, nhưng tiến h&oacute;a v&igrave; hỗn độn chi nữ thần, quang &aacute;m lu&acirc;n phi&ecirc;n chấp chưởng giả, thế giới s&aacute;ng lập chi thần.&rdquo;<br />\r\n???<br />\r\nL&yacute; ng&ocirc;n kinh ngạc ph&aacute;t hiện, giống như c&oacute; c&aacute;i g&igrave; đến kh&ocirc;ng được tiến h&oacute;a lộ tuyến. https://<br />\r\n－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－</p>', 'truyen-nhung', 'http://localhost/myscathach/public/upload/image/637560249778723058.jpg', 5, 0, 0, 0, 1, 0, 0, 0, '2021-09-05 13:51:17', '2021-09-06 11:39:18'),
(8, '1', 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https://www.uukanshu.com/b/162327/&t=vi', 'https://www.uukanshu.com/b/162327/', 'Lữ Bố không có khả năng mạnh như vậy ', 'Mọi nhà ca', 'Lữ Bố không có khả năng mạnh như vậy tóm tắt: Xuyên qua thành Lữ Bố, lập tức liền phải bị treo cổ ở bạch môn lâu. Cường địch ở bên, không binh không có tiền, có thể làm gì? Là ngoan ngoãn chờ chết, vẫn là tuyệt địa phản kích? Thả xem chiến thần Lữ Bố, như thế nào lợi dụng một cái cũ xưa vật phẩm đổi hệ thống chơi chuyển tam quốc, thu thiên hạ văn thần võ tướng, giúp đỡ đại hán nhất thống hoa di. https:// \r\n<br>\r\n－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－\r\n', NULL, 'http://localhost/myscathach/public/upload/image/637567166787783253.jpg', 55, 0, 0, 0, 0, 0, 0, 0, '2021-09-05 13:51:31', '2021-09-05 13:51:31'),
(10, NULL, NULL, NULL, '47647654764', '7654', '<p>jujhgj</p>', '47647654764', 'http://localhost/myscathach/public/upload/image/47647654764jpg', 2, 0, 0, 0, 1, 0, 0, 0, '2021-09-05 14:08:06', '2021-09-06 12:22:50'),
(11, '1', 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https://www.uukanshu.com/b/152990/&t=vi', 'https://www.uukanshu.com/b/152990/', 'Kia tốt đẹp vô hạn thế giới ', 'Xem thường kính miêu', 'Kia tốt đẹp vô hạn thế giới tóm tắt: Học tập cũng hảo, rèn luyện cũng thế, mấy thứ này mục tiêu cuối cùng đều là làm người quá thượng chính mình muốn thoải mái sinh hoạt.<br>Cho nên, sẽ không có người xuyên việt phấn đấu sau khi thành công còn không đi hưởng thụ sinh hoạt cùng nhân sinh? Sống còn không bằng thế giới hiện thực kẻ có tiền đi? Càng không đi thể hội thế giới này hết thảy tốt đẹp chi vật đi? Cùng với chính mình phấn đấu thành quả sao?<br>Không thể nào? Bằng hữu của ta. Nhân loại kiểu này thật sự tồn tại sao?<br>Những cái đó không lo người, có đại địch, hưởng thụ cô độc cùng biến cường, cùng với tư tưởng giác ngộ cao liền tính. Nhưng nỗ lực phấn đấu là vì càng tốt sinh hoạt đi? Không hảo hảo hưởng thụ mỗi cái thế giới mỹ diệu chỗ, lấy vô địch chi tư làm trò thanh tâm quả dục khổ hạnh tăng, máy móc biến cường. Như vậy người xuyên việt đương cái hai ba năm còn chưa tính, ba năm một quá……<br>Này người xuyên việt không lo cũng thế!<br>Cho nên, này chỉ là cái ở các thế giới phấn đấu biến cường, hơn nữa hưởng thụ mỗi cái thế giới sở độc hữu tốt đẹp chuyện xưa.<br>Không hơn. https:// \r\n<br>\r\n－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－\r\n', NULL, 'http://localhost/myscathach/public/upload/image/637465663757609545.jpg', 55, 0, 0, 0, 0, 0, 0, 0, '2021-09-05 15:13:48', '2021-09-05 15:13:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_cate`
--

CREATE TABLE `book_cate` (
  `id` int(11) NOT NULL,
  `bk_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book_cate`
--

INSERT INTO `book_cate` (`id`, `bk_id`, `cate_id`) VALUES
(6, 6, 55),
(7, 7, 55),
(8, 8, 55),
(12, 10, 17),
(13, 10, 23),
(14, 11, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_like`
--

CREATE TABLE `book_like` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book_like`
--

INSERT INTO `book_like` (`id`, `bk_id`, `uid`) VALUES
(5, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_list`
--

CREATE TABLE `book_list` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book_list`
--

INSERT INTO `book_list` (`id`, `bk_id`, `user_id`) VALUES
(3, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_des` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `cate_name`, `cate_des`, `cate_slug`) VALUES
(17, 'Huyền huyễn', 'Truyện Huyền Huyễn là thể loại truyện có yếu tố ma pháp, phép thuật, huyền bí tại một chiều song song khác. Cũng giống như truyện tu chân, các nhân vật phải tu luyện để không ngừng mạnh lên tất cả đều hướng tới một mục đích chung đó là trường sinh.', 'huyen-huyen'),
(18, 'Nhị Thứ Nguyên', 'Là truyện có mang 1 hoặc nhiều yếu tố có trong các bộ Anime.', 'nhi-thu-nguyen'),
(19, 'Võ hiệp', 'Võ hiệp hoặc kiếm hiệp là một thể loại trong văn hóa đại chúng Hoa ngữ nói về những cuộc phiêu du của những hiệp khách trên giang hồ.', 'vo-hiep'),
(20, 'Ngôn tình', 'Truyện ngôn tình có thể hiểu đơn là truyện tình cảm, tiểu thuyết lãng mạn giữa tình yêu nam nữ. Xoay quanh chuyện tình cảm của 2 nhân vật chính trong bộ tiểu thuyết ngôn tình là những tình tiết thú vị khác, phản ảnh thực tế tình trạng xã hội hay rời xa thực tế tùy vào tác giả và nội dung của truyện.', 'ngon-tinh'),
(21, 'Đô thị', 'Truyện đô thị là thể loại truyện có nội dung xoay quanh cuộc sống sinh hoạt hằng này, trong đô thi, thành phố, điều này đồng nghĩa với việc các tác phẩm có thể loại kể trên thường sở hữu ngôn ngữ hiện đại, rất gần với đời sống thực hiện nay.', 'do-thi'),
(22, 'Võng du', 'Võng du là thể loại truyện thuộc dạng khoa học viễn tượng , lấy bối cảnh thường là các game online trên mạng với công nghệ cao , hình ảnh chất lượng cao , kỹ xảo đồ sộ , mức chân thật cao , kỳ ảo , giàu chí tưởng tượng.', 'vong-du'),
(23, 'Khoa huyễn', 'Khoa Huyễn là một thuật ngữ Hán Việt dùng để đặt tên cho một thể loại truyện, tiểu thuyết ngôn tình hay kiếm hiệp có nguồn gốc từ Trung Quốc mang yếu tố khoa học viễn tưởng, do tác giả tưởng tượng ra trong một không gian khoa học kỳ bí, không có thật.', 'khoa-huyen'),
(24, 'Hệ thống', 'Truyện hệ thống là nhân vật chính khi sắm vai ở thế giới khác thường bị ràng buộc bởi một hệ thống các nhiệm vụ và phần thưởng, hạn chế hành động tự do của họ. ... Trong truyện hệ thống có đan xen nhiều thể loại khác như cung đấu, mạt thế, hiện đại, đô thị, võng du, dị giới…', 'he-thong'),
(25, 'Dị giới', 'Thể loại truyện dị giới là ý chỉ những bộ truyện mang các yếu tố phép thuật, kỳ ảo, được nhiều độc giả yêu thích vì sở hữu cốt truyện hay ho, mới lạ. Nhân vật trong truyện thường ở không gian không có thật như ma giới, tiên giới và nội dung là hành trình tu luyện ma pháp, kiếm pháp, tu tiên…', 'di-gioi'),
(26, 'Dị năng', 'Truyện dị năng chính là thể loại truyện thường có những nhân vật sở hữu những năng lực siêu nhiên mà người thường không thể nào có. Ở một thế giới khác biệt với những con người khác thường đó là điều thật thú vị đúng không các bạn.', 'di-nang'),
(27, 'Quân sự', 'Truyện có yếu tố quân sự, thường diễn ra trong môi trường quân đội, quân lính.', 'quan-su'),
(28, 'Lịch sử', 'Nội dung truyện thường xảy ra trong lịch sử, có nhiều yếu tố tương tự so với lịch sử thế giới thật.', 'lich-su'),
(29, 'Xuyên không', 'Xuyên Không, Xuyên Việt là thể loại nhân vật chính vì một lý do nào đó mà bị đưa đến sinh sống ở một không gian hay một khoảng thời gian khác.\r\n\r\nNhân vật chính có thể trực tiếp xuyên qua bằng thân xác mình hoặc sống lại bằng thân xác người khác.', 'xuyen-khong'),
(30, 'Xuyên nhanh', 'Truyện xuyên nhanh, mau xuyên, hay còn gọi là khoái xuyên, thường nói về những cuộc phiêu lưu xuyên qua nhiều thế giới một cách liên tục của nhân vật chính.\r\nThế giới được xuyên đến không giới hạn về mặt định nghĩa, có thể là không gian khác, thời gian khác, hoặc một thế giới giả tưởng có bối cảnh được định sẵn (phim ảnh, tiểu thuyết).\r\nMục đích của việc xuyên này thường là để hoàn thành nhiệm vụ được giao.', 'xuyen-nhanh'),
(31, 'Trùng sinh', 'Đây là thể truyện có nhân vật chính vì một lý do nào đó mà được sống lại sau khi chết đi, thể loại này thường kết hợp với thể loại xuyên không.', 'trung-sinh'),
(32, 'Trinh thám', 'Truyện trinh thám là thể loại truyện mang yếu tố điều tra, phá án mang nhiều yếu tố hình sự, với sự kích tính đến nghẹt thở từ những vụ án mạng ly kỳ hấp dẫn.', 'trinh-tham'),
(33, 'Thám hiểm', 'Nội dung truyện thường là những cuộc phiêu lưu thám hiểm những địa danh kỳ bí cực gay cấn.', 'tham-hiem'),
(34, 'Linh dị', 'Truyện có nhiều yếu tố ma quỷ rùng rợn, kinh dị.', 'linh-di'),
(35, 'Sắc', 'Những bộ truyện này thường có yếu nhạy cảm, dành cho độc giả 18 tuổi trở lên. Nếu bạn chưa đủ tuổi xem truyện này vui lòng không truy cập nội dung. Nếu cố ý vi phạm, TruyenFull không chịu bất cứ trách nhiệm gì về tác động của truyện này tới tâm lý của bạn.', 'sac'),
(36, 'Ngược', 'Truyện ngược là thể loại truyện có những tình tiết khiến người xem xúc động mạnh, thường là tức giận, luyến tiếc thậm chí là ức chế thay cho nhân vật, khi mà họ bị hành hạ về mặt thể xác hoặc tinh thần.', 'nguoc'),
(37, 'Sủng', 'Ngược với truyện ngược, truyện sủng là thể loại truyện khiến người đọc có cảm giác ngọt ngào vui vẻ, nơi mà nhân vật chính được nửa kia của mình quan tâm và cưng chiều hết mình.', 'sung'),
(38, 'Cung đấu', 'Truyện cung đấu là thể loại truyện có các nhân vật trong hoàng cung thời phong kiến đấu đá, âm mưu tính toán lẫn nhau.', 'cung-dau'),
(39, 'Nữ cường', 'Truyện nữ cường là thể loại truyện có những nhân vật nữ sở hữu tính cánh mạnh mẽ (có khi hơn cả đàn ông).', 'nu-cuong'),
(40, 'Gia đấu', 'Gia đấu cũng như trạch đấu là thể loại truyện có các tình tiết đấu đá, mưu tính nhau giữa các thành viên trong gia đình hoặc dòng họ.', 'gia-dau'),
(41, 'Đông phương', 'Là những truyện có nội dung xảy ra ở các nước phương Đông.', 'dong-phuong'),
(42, 'Đam mỹ', 'Truyện tình cảm giữa nam và nam.', 'dam-my'),
(43, 'Bách hợp', 'Truyện tình cảm giữa nữ và nữ.', 'bach-hop'),
(44, 'Hài hước', 'Những bộ truyện có nội dung hài hước, đem lại tiếng cười vui vẻ cho độc giả.', 'hai-huoc'),
(45, 'Làm ruộng', 'Điền văn, chủng điền văn là thể loại truyện cho những bạn thích những câu chuyện nhẹ nhàng, đơn giản.\r\n\r\nTruyện điền văn kể về cuộc sống điền viên, chăm sóc nhà cửa, lo toan cuộc sống sự nghiệp cũng như đời sống tình cảm của nhân vật chính. Truyện thể loại này thường ngọt ngào, không có cao trào, nút thắt, tranh đấu, tuy nhiên vẫn có một số ngoại lệ.', 'lam-ruong'),
(46, 'Cổ đại', 'Truyện có nội dung xảy ra ở thời cổ đại phong kiến.', 'co-dai'),
(47, 'Mạt thế', 'Là truyện có bối cảnh tận thế, thế giới bị sụp đổ và diệt vong vì những thảm họa.', 'mat-the'),
(48, 'Truyện Teen', 'Truyện teen là thể loại truyện được viết dành riêng cho lứa tuổi thanh thiếu niên mới lớn, tâm hồn đầy hồn nhiên và mộng mơ. Truyện thường tả về các mỗi tình tuổi học trò đầy hồn nhiên và tươi sáng.', 'truyen-teen'),
(49, 'Phương tây', 'Những tác phẩm được viết bởi các tác giả phương Tây.', 'phuong-tay'),
(50, 'Nữ phụ', 'Truyện kể về nhân vật chính là... nữ phụ trong các tiểu thuyết.', 'nu-phu'),
(51, 'Light Novel', 'Light Novel là một dạng tiểu thuyết Nhật Bản được viết nhằm chủ yếu hướng đến các độc giả trẻ như học sinh trung học. Dạng tiểu thuyết đang lan rộng và được giới tác giả cũng như độc giả trên thế giới đón nhận nồng nhiệt.', 'light-novel'),
(52, 'Việt Nam', 'Các tác phẩm của nền văn học Việt Nam, được viết bởi các danh tác nổi tiếng.', 'viet-nam'),
(53, 'Đoản văn', 'Truyện đoản văn là những truyện có nội dung ngắn, thưởng chỉ có một đến vài chương.', 'doan-van'),
(54, 'Khác', 'Những truyện không thuộc những thể loại đã có .', 'khac'),
(55, 'Truyện Nhúng', 'Là những truyện được người dùng thêm vào và được tự động dịch bởi máy.', 'truyen-nhung'),
(56, 'Vô địch văn', 'Truyện vô địch lưu là thể loại main bá đạo, max cấp từ đầu đến cuối. Khởi đầu truyện nhân vật chính đã là boss với sức mạnh vô địch, siêu nhiên chuyên đi vả mặt mấy thằng trang bức.', 'vo-dich-van');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `base_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `truyen_id` int(11) DEFAULT NULL,
  `header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ch_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `crea_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upd_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `base_url`, `truyen_id`, `header`, `active`, `content`, `ch_slug`, `position`, `views`, `crea_at`, `upd_at`) VALUES
(1, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37640.html&t=vi', 6, NULL, 0, NULL, NULL, 243, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(2, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37534.html&t=vi', 6, NULL, 0, NULL, NULL, 242, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(3, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37428.html&t=vi', 6, NULL, 0, NULL, NULL, 241, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(4, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37316.html&t=vi', 6, NULL, 0, NULL, NULL, 240, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(5, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36988.html&t=vi', 6, NULL, 0, NULL, NULL, 239, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(6, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36855.html&t=vi', 6, NULL, 0, NULL, NULL, 238, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(7, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36711.html&t=vi', 6, NULL, 0, NULL, NULL, 237, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(8, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36588.html&t=vi', 6, NULL, 0, NULL, NULL, 236, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(9, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36471.html&t=vi', 6, NULL, 0, NULL, NULL, 235, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(10, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36393.html&t=vi', 6, NULL, 0, NULL, NULL, 234, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(11, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36335.html&t=vi', 6, NULL, 0, NULL, NULL, 233, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(12, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36218.html&t=vi', 6, NULL, 0, NULL, NULL, 232, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(13, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F36076.html&t=vi', 6, NULL, 0, NULL, NULL, 231, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(14, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35967.html&t=vi', 6, NULL, 0, NULL, NULL, 230, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(15, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35834.html&t=vi', 6, NULL, 0, NULL, NULL, 229, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(16, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35692.html&t=vi', 6, NULL, 0, NULL, NULL, 228, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(17, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35550.html&t=vi', 6, NULL, 0, NULL, NULL, 227, 0, '2021-09-05 15:15:15', '2021-09-05 15:15:15'),
(18, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35403.html&t=vi', 6, NULL, 0, NULL, NULL, 226, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(19, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35335.html&t=vi', 6, NULL, 0, NULL, NULL, 225, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(20, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35153.html&t=vi', 6, NULL, 0, NULL, NULL, 224, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(21, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F35000.html&t=vi', 6, NULL, 0, NULL, NULL, 223, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(22, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34860.html&t=vi', 6, NULL, 0, NULL, NULL, 222, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(23, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34738.html&t=vi', 6, NULL, 0, NULL, NULL, 221, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(24, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34460.html&t=vi', 6, NULL, 0, NULL, NULL, 220, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(25, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34321.html&t=vi', 6, NULL, 0, NULL, NULL, 219, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(26, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34177.html&t=vi', 6, NULL, 0, NULL, NULL, 218, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(27, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F34023.html&t=vi', 6, NULL, 0, NULL, NULL, 217, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(28, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33898.html&t=vi', 6, NULL, 0, NULL, NULL, 216, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(29, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33732.html&t=vi', 6, NULL, 0, NULL, NULL, 215, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(30, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33602.html&t=vi', 6, NULL, 0, NULL, NULL, 214, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(31, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33450.html&t=vi', 6, NULL, 0, NULL, NULL, 213, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(32, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33297.html&t=vi', 6, NULL, 0, NULL, NULL, 212, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(33, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F33121.html&t=vi', 6, NULL, 0, NULL, NULL, 211, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(34, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32983.html&t=vi', 6, NULL, 0, NULL, NULL, 210, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(35, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32824.html&t=vi', 6, NULL, 0, NULL, NULL, 209, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(36, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32739.html&t=vi', 6, NULL, 0, NULL, NULL, 208, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(37, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32490.html&t=vi', 6, NULL, 0, NULL, NULL, 207, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(38, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32330.html&t=vi', 6, NULL, 0, NULL, NULL, 206, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(39, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32329.html&t=vi', 6, NULL, 0, NULL, NULL, 205, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(40, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F32026.html&t=vi', 6, NULL, 0, NULL, NULL, 204, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(41, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31865.html&t=vi', 6, NULL, 0, NULL, NULL, 203, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(42, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31733.html&t=vi', 6, NULL, 0, NULL, NULL, 202, 0, '2021-09-05 15:15:16', '2021-09-05 15:15:16'),
(43, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31551.html&t=vi', 6, NULL, 0, NULL, NULL, 201, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(44, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31408.html&t=vi', 6, NULL, 0, NULL, NULL, 200, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(45, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31267.html&t=vi', 6, NULL, 0, NULL, NULL, 199, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(46, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F31093.html&t=vi', 6, NULL, 0, NULL, NULL, 198, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(47, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30930.html&t=vi', 6, NULL, 0, NULL, NULL, 197, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(48, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30735.html&t=vi', 6, NULL, 0, NULL, NULL, 196, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(49, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30544.html&t=vi', 6, NULL, 0, NULL, NULL, 195, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(50, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30368.html&t=vi', 6, NULL, 0, NULL, NULL, 194, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(51, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30171.html&t=vi', 6, NULL, 0, NULL, NULL, 193, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(52, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F30006.html&t=vi', 6, NULL, 0, NULL, NULL, 192, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(53, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F29798.html&t=vi', 6, NULL, 0, NULL, NULL, 191, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(54, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F29583.html&t=vi', 6, NULL, 0, NULL, NULL, 190, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(55, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F29433.html&t=vi', 6, NULL, 0, NULL, NULL, 189, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(56, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F29238.html&t=vi', 6, NULL, 0, NULL, NULL, 188, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(57, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F29010.html&t=vi', 6, NULL, 0, NULL, NULL, 187, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(58, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28816.html&t=vi', 6, NULL, 0, NULL, NULL, 186, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(59, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28771.html&t=vi', 6, NULL, 0, NULL, NULL, 185, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(60, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28652.html&t=vi', 6, NULL, 0, NULL, NULL, 184, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(61, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28554.html&t=vi', 6, NULL, 0, NULL, NULL, 183, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(62, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28430.html&t=vi', 6, NULL, 0, NULL, NULL, 182, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(63, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28357.html&t=vi', 6, NULL, 0, NULL, NULL, 181, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(64, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28241.html&t=vi', 6, NULL, 0, NULL, NULL, 180, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(65, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F28141.html&t=vi', 6, NULL, 0, NULL, NULL, 179, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(66, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27976.html&t=vi', 6, NULL, 0, NULL, NULL, 178, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(67, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27903.html&t=vi', 6, NULL, 0, NULL, NULL, 177, 0, '2021-09-05 15:15:17', '2021-09-05 15:15:17'),
(68, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27807.html&t=vi', 6, NULL, 0, NULL, NULL, 176, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(69, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27578.html&t=vi', 6, NULL, 0, NULL, NULL, 175, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(70, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27518.html&t=vi', 6, NULL, 0, NULL, NULL, 174, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(71, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27388.html&t=vi', 6, NULL, 0, NULL, NULL, 173, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(72, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27341.html&t=vi', 6, NULL, 0, NULL, NULL, 172, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(73, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27190.html&t=vi', 6, NULL, 0, NULL, NULL, 171, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(74, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F27110.html&t=vi', 6, NULL, 0, NULL, NULL, 170, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(75, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26969.html&t=vi', 6, NULL, 0, NULL, NULL, 169, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(76, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26811.html&t=vi', 6, NULL, 0, NULL, NULL, 168, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(77, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26714.html&t=vi', 6, NULL, 0, NULL, NULL, 167, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(78, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26681.html&t=vi', 6, NULL, 0, NULL, NULL, 166, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(79, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26527.html&t=vi', 6, NULL, 0, NULL, NULL, 165, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(80, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26455.html&t=vi', 6, NULL, 0, NULL, NULL, 164, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(81, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26354.html&t=vi', 6, NULL, 0, NULL, NULL, 163, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(82, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26353.html&t=vi', 6, NULL, 0, NULL, NULL, 162, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(83, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26282.html&t=vi', 6, NULL, 0, NULL, NULL, 161, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(84, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26107.html&t=vi', 6, NULL, 0, NULL, NULL, 160, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(85, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F26028.html&t=vi', 6, NULL, 0, NULL, NULL, 159, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(86, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25912.html&t=vi', 6, NULL, 0, NULL, NULL, 158, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(87, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25809.html&t=vi', 6, NULL, 0, NULL, NULL, 157, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(88, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25687.html&t=vi', 6, NULL, 0, NULL, NULL, 156, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(89, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25591.html&t=vi', 6, NULL, 0, NULL, NULL, 155, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(90, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25449.html&t=vi', 6, NULL, 0, NULL, NULL, 154, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(91, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25373.html&t=vi', 6, NULL, 0, NULL, NULL, 153, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(92, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25222.html&t=vi', 6, NULL, 0, NULL, NULL, 152, 0, '2021-09-05 15:15:18', '2021-09-05 15:15:18'),
(93, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25130.html&t=vi', 6, NULL, 0, NULL, NULL, 151, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(94, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25075.html&t=vi', 6, NULL, 0, NULL, NULL, 150, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(95, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F25056.html&t=vi', 6, NULL, 0, NULL, NULL, 149, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(96, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24828.html&t=vi', 6, NULL, 0, NULL, NULL, 148, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(97, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24680.html&t=vi', 6, NULL, 0, NULL, NULL, 147, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(98, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24470.html&t=vi', 6, NULL, 0, NULL, NULL, 146, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(99, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24358.html&t=vi', 6, NULL, 0, NULL, NULL, 145, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(100, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24214.html&t=vi', 6, NULL, 0, NULL, NULL, 144, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(101, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F24130.html&t=vi', 6, NULL, 0, NULL, NULL, 143, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(102, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23950.html&t=vi', 6, NULL, 0, NULL, NULL, 142, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(103, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23822.html&t=vi', 6, NULL, 0, NULL, NULL, 141, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(104, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23649.html&t=vi', 6, NULL, 0, NULL, NULL, 140, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(105, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23577.html&t=vi', 6, NULL, 0, NULL, NULL, 139, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(106, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23385.html&t=vi', 6, NULL, 0, NULL, NULL, 138, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(107, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23274.html&t=vi', 6, NULL, 0, NULL, NULL, 137, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(108, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23096.html&t=vi', 6, NULL, 0, NULL, NULL, 136, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(109, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F23008.html&t=vi', 6, NULL, 0, NULL, NULL, 135, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(110, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22813.html&t=vi', 6, NULL, 0, NULL, NULL, 134, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(111, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22680.html&t=vi', 6, NULL, 0, NULL, NULL, 133, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(112, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22505.html&t=vi', 6, NULL, 0, NULL, NULL, 132, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(113, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22404.html&t=vi', 6, NULL, 0, NULL, NULL, 131, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(114, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22228.html&t=vi', 6, NULL, 0, NULL, NULL, 130, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(115, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F22115.html&t=vi', 6, NULL, 0, NULL, NULL, 129, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(116, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21919.html&t=vi', 6, NULL, 0, NULL, NULL, 128, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(117, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21735.html&t=vi', 6, NULL, 0, NULL, NULL, 127, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(118, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21568.html&t=vi', 6, NULL, 0, NULL, NULL, 126, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(119, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21409.html&t=vi', 6, NULL, 0, NULL, NULL, 125, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(120, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21204.html&t=vi', 6, NULL, 0, NULL, NULL, 124, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(121, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F21034.html&t=vi', 6, NULL, 0, NULL, NULL, 123, 0, '2021-09-05 15:15:19', '2021-09-05 15:15:19'),
(122, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F20818.html&t=vi', 6, NULL, 0, NULL, NULL, 122, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(123, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F20641.html&t=vi', 6, NULL, 0, NULL, NULL, 121, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(124, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F20429.html&t=vi', 6, NULL, 0, NULL, NULL, 120, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(125, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F20231.html&t=vi', 6, NULL, 0, NULL, NULL, 119, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(126, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F20045.html&t=vi', 6, NULL, 0, NULL, NULL, 118, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(127, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19891.html&t=vi', 6, NULL, 0, NULL, NULL, 117, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(128, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19703.html&t=vi', 6, NULL, 0, NULL, NULL, 116, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(129, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19664.html&t=vi', 6, NULL, 0, NULL, NULL, 115, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(130, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19492.html&t=vi', 6, NULL, 0, NULL, NULL, 114, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(131, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19276.html&t=vi', 6, NULL, 0, NULL, NULL, 113, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(132, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19220.html&t=vi', 6, NULL, 0, NULL, NULL, 112, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(133, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19145.html&t=vi', 6, NULL, 0, NULL, NULL, 111, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(134, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19144.html&t=vi', 6, NULL, 0, NULL, NULL, 110, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(135, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19143.html&t=vi', 6, NULL, 0, NULL, NULL, 109, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(136, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19142.html&t=vi', 6, NULL, 0, NULL, NULL, 108, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(137, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19141.html&t=vi', 6, NULL, 0, NULL, NULL, 107, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(138, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19140.html&t=vi', 6, NULL, 0, NULL, NULL, 106, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(139, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19139.html&t=vi', 6, NULL, 0, NULL, NULL, 105, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(140, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19138.html&t=vi', 6, NULL, 0, NULL, NULL, 104, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(141, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19137.html&t=vi', 6, NULL, 0, NULL, NULL, 103, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(142, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19136.html&t=vi', 6, NULL, 0, NULL, NULL, 102, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(143, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19135.html&t=vi', 6, NULL, 0, NULL, NULL, 101, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(144, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19134.html&t=vi', 6, NULL, 0, NULL, NULL, 100, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(145, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19133.html&t=vi', 6, NULL, 0, NULL, NULL, 99, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(146, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19132.html&t=vi', 6, NULL, 0, NULL, NULL, 98, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(147, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19131.html&t=vi', 6, NULL, 0, NULL, NULL, 97, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(148, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19130.html&t=vi', 6, NULL, 0, NULL, NULL, 96, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(149, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F19129.html&t=vi', 6, NULL, 0, NULL, NULL, 95, 0, '2021-09-05 15:15:20', '2021-09-05 15:15:20'),
(150, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F9899.html&t=vi', 6, NULL, 0, NULL, NULL, 94, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(151, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F7825.html&t=vi', 6, NULL, 0, NULL, NULL, 93, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(152, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F6810.html&t=vi', 6, NULL, 0, NULL, NULL, 92, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(153, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F6394.html&t=vi', 6, NULL, 0, NULL, NULL, 91, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(154, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F5156.html&t=vi', 6, NULL, 0, NULL, NULL, 90, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(155, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3534.html&t=vi', 6, NULL, 0, NULL, NULL, 89, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(156, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3533.html&t=vi', 6, NULL, 0, NULL, NULL, 88, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(157, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3532.html&t=vi', 6, NULL, 0, NULL, NULL, 87, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(158, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3531.html&t=vi', 6, NULL, 0, NULL, NULL, 86, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(159, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3530.html&t=vi', 6, NULL, 0, NULL, NULL, 85, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(160, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3529.html&t=vi', 6, NULL, 0, NULL, NULL, 84, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(161, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3528.html&t=vi', 6, NULL, 0, NULL, NULL, 83, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(162, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3527.html&t=vi', 6, NULL, 0, NULL, NULL, 82, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(163, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3526.html&t=vi', 6, NULL, 0, NULL, NULL, 81, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(164, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3525.html&t=vi', 6, NULL, 0, NULL, NULL, 80, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(165, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3524.html&t=vi', 6, NULL, 0, NULL, NULL, 79, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(166, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3523.html&t=vi', 6, NULL, 0, NULL, NULL, 78, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(167, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3522.html&t=vi', 6, NULL, 0, NULL, NULL, 77, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(168, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3521.html&t=vi', 6, NULL, 0, NULL, NULL, 76, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(169, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3520.html&t=vi', 6, NULL, 0, NULL, NULL, 75, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(170, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3519.html&t=vi', 6, NULL, 0, NULL, NULL, 74, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(171, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3518.html&t=vi', 6, NULL, 0, NULL, NULL, 73, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(172, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3517.html&t=vi', 6, NULL, 0, NULL, NULL, 72, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(173, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3516.html&t=vi', 6, NULL, 0, NULL, NULL, 71, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(174, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3515.html&t=vi', 6, NULL, 0, NULL, NULL, 70, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(175, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3514.html&t=vi', 6, NULL, 0, NULL, NULL, 69, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(176, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3513.html&t=vi', 6, NULL, 0, NULL, NULL, 68, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(177, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3512.html&t=vi', 6, NULL, 0, NULL, NULL, 67, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(178, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3511.html&t=vi', 6, NULL, 0, NULL, NULL, 66, 0, '2021-09-05 15:15:21', '2021-09-05 15:15:21'),
(179, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3510.html&t=vi', 6, NULL, 0, NULL, NULL, 65, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(180, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3509.html&t=vi', 6, NULL, 0, NULL, NULL, 64, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(181, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3508.html&t=vi', 6, NULL, 0, NULL, NULL, 63, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(182, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3507.html&t=vi', 6, NULL, 0, NULL, NULL, 62, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(183, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3506.html&t=vi', 6, NULL, 0, NULL, NULL, 61, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(184, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3505.html&t=vi', 6, NULL, 0, NULL, NULL, 60, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(185, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3504.html&t=vi', 6, NULL, 0, NULL, NULL, 59, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(186, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3503.html&t=vi', 6, NULL, 0, NULL, NULL, 58, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(187, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3502.html&t=vi', 6, NULL, 0, NULL, NULL, 57, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(188, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3501.html&t=vi', 6, NULL, 0, NULL, NULL, 56, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(189, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3500.html&t=vi', 6, NULL, 0, NULL, NULL, 55, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(190, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3499.html&t=vi', 6, NULL, 0, NULL, NULL, 54, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(191, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3498.html&t=vi', 6, NULL, 0, NULL, NULL, 53, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(192, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3497.html&t=vi', 6, NULL, 0, NULL, NULL, 52, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(193, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3496.html&t=vi', 6, NULL, 0, NULL, NULL, 51, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(194, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3495.html&t=vi', 6, NULL, 0, NULL, NULL, 50, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(195, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3494.html&t=vi', 6, NULL, 0, NULL, NULL, 49, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(196, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3493.html&t=vi', 6, NULL, 0, NULL, NULL, 48, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(197, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3492.html&t=vi', 6, NULL, 0, NULL, NULL, 47, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(198, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3491.html&t=vi', 6, NULL, 0, NULL, NULL, 46, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(199, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3490.html&t=vi', 6, NULL, 0, NULL, NULL, 45, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(200, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3489.html&t=vi', 6, NULL, 0, NULL, NULL, 44, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(201, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3488.html&t=vi', 6, NULL, 0, NULL, NULL, 43, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(202, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3487.html&t=vi', 6, NULL, 0, NULL, NULL, 42, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(203, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3486.html&t=vi', 6, NULL, 0, NULL, NULL, 41, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(204, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3485.html&t=vi', 6, NULL, 0, NULL, NULL, 40, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(205, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3484.html&t=vi', 6, NULL, 0, NULL, NULL, 39, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(206, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3483.html&t=vi', 6, NULL, 0, NULL, NULL, 38, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(207, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3482.html&t=vi', 6, NULL, 0, NULL, NULL, 37, 0, '2021-09-05 15:15:22', '2021-09-05 15:15:22'),
(208, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3481.html&t=vi', 6, NULL, 0, NULL, NULL, 36, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(209, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3480.html&t=vi', 6, NULL, 0, NULL, NULL, 35, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(210, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3479.html&t=vi', 6, NULL, 0, NULL, NULL, 34, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(211, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3478.html&t=vi', 6, NULL, 0, NULL, NULL, 33, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(212, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3477.html&t=vi', 6, NULL, 0, NULL, NULL, 32, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(213, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3476.html&t=vi', 6, NULL, 0, NULL, NULL, 31, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(214, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3475.html&t=vi', 6, NULL, 0, NULL, NULL, 30, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(215, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3474.html&t=vi', 6, NULL, 0, NULL, NULL, 29, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(216, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3473.html&t=vi', 6, NULL, 0, NULL, NULL, 28, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(217, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3472.html&t=vi', 6, NULL, 0, NULL, NULL, 27, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(218, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3471.html&t=vi', 6, NULL, 0, NULL, NULL, 26, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(219, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3470.html&t=vi', 6, NULL, 0, NULL, NULL, 25, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(220, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3469.html&t=vi', 6, NULL, 0, NULL, NULL, 24, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(221, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3468.html&t=vi', 6, NULL, 0, NULL, NULL, 23, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(222, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3467.html&t=vi', 6, NULL, 0, NULL, NULL, 22, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(223, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3466.html&t=vi', 6, NULL, 0, NULL, NULL, 21, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(224, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3465.html&t=vi', 6, NULL, 0, NULL, NULL, 20, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(225, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3464.html&t=vi', 6, NULL, 0, NULL, NULL, 19, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(226, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3463.html&t=vi', 6, NULL, 0, NULL, NULL, 18, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(227, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3462.html&t=vi', 6, NULL, 0, NULL, NULL, 17, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(228, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3461.html&t=vi', 6, NULL, 0, NULL, NULL, 16, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(229, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3460.html&t=vi', 6, NULL, 0, NULL, NULL, 15, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(230, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3459.html&t=vi', 6, NULL, 0, NULL, NULL, 14, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(231, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3458.html&t=vi', 6, NULL, 0, NULL, NULL, 13, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(232, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3457.html&t=vi', 6, NULL, 0, NULL, NULL, 12, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(233, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3456.html&t=vi', 6, NULL, 0, NULL, NULL, 11, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(234, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3455.html&t=vi', 6, NULL, 0, NULL, NULL, 10, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(235, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3454.html&t=vi', 6, NULL, 0, NULL, NULL, 9, 0, '2021-09-05 15:15:23', '2021-09-05 15:15:23'),
(236, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3453.html&t=vi', 6, NULL, 0, NULL, NULL, 8, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(237, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3452.html&t=vi', 6, NULL, 0, NULL, NULL, 7, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(238, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3451.html&t=vi', 6, NULL, 0, NULL, NULL, 6, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(239, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3450.html&t=vi', 6, NULL, 0, NULL, NULL, 5, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(240, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3449.html&t=vi', 6, NULL, 0, NULL, NULL, 4, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(241, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3448.html&t=vi', 6, NULL, 0, NULL, NULL, 3, 0, '2021-09-05 15:15:24', '2021-09-05 15:15:24'),
(242, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3447.html&t=vi', 6, 'Chương 2 ngồi xổm!', 0, 'public/upload/truyen/6/2.txt', NULL, 2, 1, '2021-09-05 15:15:24', '2021-09-05 08:16:15'),
(243, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F3446.html&t=vi', 6, 'Chương 1 tại tuyến thu lưu 1 vị mộng toái độc thân nữ hài', 0, 'public/upload/truyen/6/1.txt', NULL, 1, 3, '2021-09-05 15:15:24', '2021-09-05 08:16:08'),
(244, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37854.html&t=vi', 6, NULL, 0, NULL, NULL, 245, 0, '2021-09-07 14:26:40', '2021-09-07 14:26:40'),
(245, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37759.html&t=vi', 6, NULL, 0, NULL, NULL, 244, 0, '2021-09-07 14:26:40', '2021-09-07 14:26:40'),
(246, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F38071.html&t=vi', 6, NULL, 0, NULL, NULL, 247, 0, '2021-09-10 15:49:23', '2021-09-10 15:49:23'),
(247, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F37963.html&t=vi', 6, NULL, 0, NULL, NULL, 246, 0, '2021-09-10 15:49:23', '2021-09-10 15:49:23'),
(248, 'http://dichtienghoa.com/translate/www.uukanshu.com?u=https%3A%2F%2Fwww.uukanshu.com%2Fb%2F163114%2F38294.html&t=vi', 6, NULL, 0, NULL, NULL, 248, 0, '2021-09-11 16:41:31', '2021-09-11 16:41:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt_book`
--

CREATE TABLE `cmt_book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `cmt` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `energy`
--

CREATE TABLE `energy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `energy`
--

INSERT INTO `energy` (`id`, `name`, `des`) VALUES
(1, 'Ma lực', 'Ma lực (tiếng Anh: Prana), năng lượng chi phối tất cả các ma thuật, và có thể coi nó tương tự như xăng dầu vậy. Ma lực mang rất nhiều cái tên: ma lực trong không khí gọi là Mana, với ý nghĩa tương tự trong văn hóa Polynesia. Ether không phải một dạng ma lực, mà là một thứ hoàn toàn khác. Nó không thể tồn tại độc lập hay tự mình làm được gì cả, nên luôn bị ràng buộc với một số kiểu người tiếp nhận. Vì lý do đó, các pháp sư sử dụng Ether chủ yếu bằng cách gắn nó vào trong một đối tượng hay hay dùng nó như một chất xúc tác để khởi đầu những ma thuật có bản chất can thiệp. \r\n#Theo_khái_niệm_fate'),
(2, 'Linh khí', 'Linh khí là gì? Tiếng Nhật “Reiki” có nghĩa là năng lượng sống của vũ trụ. Linh khí tồn tại trong vạn vật, linh tràn trề vô bờ bến, khí là năng lượng lưu thông trong vật thể;  vật thể càng lâu năm, càng tích tụ nhiều linh khí.'),
(3, 'Thần lực', 'Thần lực hay Lực lượng là một sức mạnh liên kết, siêu hình và phổ biến trong vũ trụ. Thường được các vị thần sử dụng.'),
(4, 'Yêu Lực', 'Là năng lượng mặt tối của linh khí. Yêu lực có các đặc tính của linh khí nhưng chúng được dùng bơi yêu quái. Yêu lực thường táo bạo giống như một ngọn núi lửa sắp phun trào.'),
(5, 'ME (Myths Energy)', 'ME (Myths Energy): tạm dịch là \'Năng lượng thần thoại\'. Là một loại năng lượng cấp \'khái niệm\'.Trong khởi nguyên căn nguyên ghi chép chỉ có các vị sáng thế thần hoặc thần vương cấp mới sở hữu lẫn sử dụng được nó. Tượng trưng cho độ phồn vinh lẫn sức mạnh của thần hệ đó.'),
(6, 'Nội lực', 'Nội lực là nguồn năng lượng bên trong cơ thể con người, là \'nhiên liệu\' để con người vận hành những chuyển động đặc biệt của mình. Nội lực là gốc, chiêu thức là ngọn. Người muốn học võ công đều phải luyện nội công trước. Người dùng nội lực luyện công để gia tăng nội công. Và các bạn sẽ thấy nội công cao cường là có tất cả, những yếu tố còn lại coi như \'có cũng được, không có cũng được\'.'),
(7, 'Khí huyết', 'Khí huyết trong cơ thể bao gồm khí và huyết, là nguồn nuôi dưỡng toàn bộ cơ thể sống. Khí là chất dinh dưỡng (có nguồn gốc từ thức ăn) vận hành trong cơ thể, là sự biểu hiện hoạt động của các tạng phủ, khí quan. Huyết là chất dịch màu đỏ cũng có nguồn gốc từ thức ăn được tỳ vị chuyển đổi mà thành. Khí huyết thường thể hiện đặc trưng của thể tu.'),
(8, 'Công nghệ', 'Công nghệ (tiếng Anh: technology) là sự phát minh, sự thay đổi, việc sử dụng, và kiến thức về các công cụ, máy móc, kỹ thuật, kỹ năng nghề nghiệp, hệ thống, và phương pháp tổ chức, nhằm giải quyết một vấn đề, cải tiến một giải pháp đã tồn tại, đạt một mục đích, hay thực hiện một chức năng cụ thể đòi hỏi hàm lượng chất xám cao. Công nghệ ảnh hưởng đáng kể lên khả năng kiểm soát và thích nghi của chủng tộc đó vào môi trường tự nhiên của mình.'),
(9, 'Dị năng', 'Dị năng có nghĩa là những năng lực khác thường, đặc biệt.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_30_022115_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `physical`
--

CREATE TABLE `physical` (
  `id` int(11) NOT NULL,
  `percent` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `physical`
--

INSERT INTO `physical` (`id`, `percent`, `name`, `des`) VALUES
(1, '0.000000001', 'Nhân quả quyền hành', 'Tiên thiên thần linh trời sinh sử dụng nhân quả quyền năng. Sinh ra tốc độ tu hành lẫn sức mạnh vượt xa đồng cấp.'),
(3, '1', 'Đen thể chất', 'Đen tộc đặc hữu thể chất. Đen tộc có thể hiến tế trí lực + vận khí đổi lấy vô song sức mạnh. Sức mạnh được thêm vô thượng hạn theo thời gian kích hoạt nhưng thay vào đó Đen tộc sẽ mất đi ý thức chỉ còn là cỗ máy chiến tranh khiến thần linh cũng e ngại.'),
(4, '1', 'Phàm', 'Phàn thể không có gì đáng nhắc đến.'),
(5, '0.000001', 'Lôi', 'Thể chất thích ứng tốt nhất với lôi hệ kỹ năng.'),
(6, '0.0001', 'Hoả', 'Thể chất thích ứng tốt nhất với hoả hệ kỹ năng.'),
(7, '0.00001', 'Kim', 'Thể chất thích ứng tốt nhất với kim hệ kỹ năng.'),
(8, '0.00001', 'Mộc', 'Thể chất thích ứng tốt nhất với mộc hệ kỹ năng.'),
(9, '0.00001', 'Thổ', 'Thể chất thích ứng tốt nhất với thổ hệ kỹ năng.'),
(10, '0.00001', 'Thuỷ', 'Thể chất thích ứng tốt nhất với thuỷ hệ kỹ năng.'),
(11, '0.00001', 'Phong', 'Thể chất thích hợp với phong hệ kỹ năng.'),
(12, '1', 'Công nghệ trí khôn', 'Công nghệ tộc đặc hữu thể chất.'),
(13, '1', 'Mộc linh thể', 'Thụ linh tộc đặc hữu thể chất.'),
(14, '0.000001', 'Băng thể', 'Đặc hữu thể chất thích hợp băng hệ kỹ năng.'),
(15, '0.00000001', 'Thời gian quyền hành', 'Đặc hữu quyền hành của thần linh tộc.'),
(19, '0.001', 'Hậu thiên', 'Hậu thiên sinh linh thể chất.'),
(20, '0.00000001', 'Tiên thiên', 'Tiên thiên sinh linh thể chất.'),
(21, '0.000001', 'Lôi hoả', 'Là Thể chất thích ứng được hoả hệ và lôi hệ kỹ năng.'),
(22, '0.000003', 'Phật thể', 'Thể chất thích hợp Phật hệ công pháp.'),
(23, '1', 'Tự nhiên sủng nhi', 'Tộc ELF đặc trưng thể chất họ là con cưng của tự nhiên lẫn chúng thần . Thể chất này giúp hộ thích ứng đc mộc, thuỷ, thổ hệ kỹ năng.'),
(24, '0.004', 'Ma', 'Ma chính là sự thèm khát nhục dục, thất vọng, buồn bực, đói khát, bám víu, tham lam, chiếm giữ, lười biếng, đờ đẫn, sợ hãi, nghi ngờ, hận thù, tiện nghi, kiêu căng, tự phụ, yêu thương một cách ích kỷ, tự mãn với cái \"tôi\" của chính mình…'),
(25, '0', 'Vô tại', 'Không thuộc về bất cứ thế giới hay khái niệm nào. Một thể chất của chủng tộc không tồn tại.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `git` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ins` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `profile`
--

INSERT INTO `profile` (`id`, `uid`, `sex`, `bio`, `des`, `web`, `git`, `twi`, `ins`, `fb`) VALUES
(1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 0, 'Hololive (\")>', 'Pain', NULL, NULL, NULL, NULL, NULL),
(4, 7, 1, 'Honkai, Type Moon, Naruto', '1 kẻ tầm thường', NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 9, 0, 'Bách Hợp Vô Hạn Tốt Đẹp:)))', '2k3', NULL, NULL, NULL, NULL, 'https://www.facebook.com/Neeeko'),
(8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `percent` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `energy_id` int(11) NOT NULL,
  `phy_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `race`
--

INSERT INTO `race` (`id`, `percent`, `energy_id`, `phy_id`, `name`, `des`) VALUES
(1, '1', 8, 2, 'Nhân loại', '<p>Nh&acirc;n loại hay lo&agrave;i người l&agrave; một chủng tộc trong thế giới. Khởi nguy&ecirc;n của nh&acirc;n loại&nbsp;c&oacute; thể được thần tạo hoặc theo thuyết tiến ho&aacute; do ch&iacute;nh con người nghĩ ra. Tuỳ v&agrave;o từng thời kỳ m&agrave; con người chiếm vị tr&iacute; của m&igrave;nh trong vũ trụ.</p>'),
(2, '0.0131313', 7, 3, 'Đen Tộc', '<p>Chủng tộc tượng trưng cho CH&Acirc;U PHI, sở hữu chiến binh mạnh mẽ nhất vũ trụ. Nhưng cũng l&agrave; chủng tộc c&oacute; tr&iacute; lực lẫn may mắn thấp nhất. Cổ thần Vira c&oacute; c&acirc;u &quot;Chọc bất cứ chủng tộc n&agrave;o cũng kh&ocirc;ng sao.Nhưng khi ngươi chọc đen tộc. Bọn hắn sẽ giống như những con ch&oacute; dại cắn ngươi kh&ocirc;ng tha với sức mạnh huỷ diệt.&quot;</p>'),
(3, '0.000000001', 3, 2, 'Thần tộc', '<p><strong>Thần</strong>&nbsp;hay&nbsp;<strong>thần linh</strong>&nbsp;l&agrave; hữu thể c&oacute; t&iacute;nh chất thần th&aacute;nh hoặc linh thi&ecirc;ng.</p>'),
(4, '0.005', 7, 2, 'Cẩu tộc', '<p>Cẩu tộc l&agrave; một tộc quần trong thế giới. Được thần linh quan t&acirc;m v&agrave; ch&uacute;c ph&uacute;c&nbsp;v&igrave; sự trung th&agrave;nh.</p>'),
(5, '0.00004', 8, 1, 'Công nghệ', '<p>Tộc quần th&ocirc;ng minh nhất thế giới s&aacute;nh vai ch&uacute;ng thần. V&igrave; đ&atilde; từng l&agrave;m th&iacute; nghiệm cấm kỵ &quot;Tạo thần&quot; n&ecirc;n đ&atilde; gần như bị diệt truyệt chỉ c&ograve;n lại một số &iacute;t tộc nh&acirc;n c&ograve;n sống hoặc nhận được truyền thừa của tộc n&agrave;y.</p>'),
(6, '0.0000987', 7, 2, 'Ma tộc', '<p>Ma tộc l&agrave; chủng tộc sống ở mặt kh&aacute;c thế giới. Ma tộc thường th&iacute;ch tự do v&agrave; chiến tranh v&igrave; vậy những trận chiến thời sơ khai thường c&oacute; h&igrave;nh b&oacute;ng của Ma tộc nh&uacute;ng tay ch&acirc;m ng&ograve;i thổi gi&oacute;.</p>'),
(7, '0.00007', 1, 2, 'Elf', '<p><strong>Elf</strong>&nbsp;(số nhiều trong tiếng Anh:&nbsp;<em><strong>elves</strong></em>) l&agrave; một lo&agrave;i sinh vật&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Si%C3%AAu_nhi%C3%AAn\" title=\"Siêu nhiên\">si&ecirc;u nhi&ecirc;n</a>&nbsp;c&oacute;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Gi%E1%BB%91ng_ng%C6%B0%E1%BB%9Di\" title=\"Giống người\">h&igrave;nh d&aacute;ng như con người</a>&nbsp;trong&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BA%A7n_tho%E1%BA%A1i\" title=\"Thần thoại\">thần thoại</a>. Elf thường rất xinh đẹp v&agrave; chỉ sống trong rừng rậm.</p>'),
(8, '0.00000999', 4, 2, 'Long', '<p>Long Tộc được xem l&agrave; một trong bốn tộc h&ugrave;ng mạnh nhất trong thế giới&nbsp;c&ugrave;ng với&nbsp;<a href=\"https://12nuthan.fandom.com/vi/wiki/Quy_T%E1%BB%99c\" title=\"Quy Tộc\">Quy Tộc</a>,&nbsp;<a href=\"https://12nuthan.fandom.com/vi/wiki/Ph%C6%B0%E1%BB%A3ng_Ho%C3%A0ng_T%E1%BB%99c\" title=\"Phượng Hoàng Tộc\">Phượng Ho&agrave;ng Tộc</a>&nbsp;v&agrave;&nbsp;<a href=\"https://12nuthan.fandom.com/vi/wiki/K%E1%BB%B3_L%C3%A2n_T%E1%BB%99c\" title=\"Kỳ Lân Tộc\">Kỳ L&acirc;n Tộc</a>. Trong kinh Phật, Long l&agrave; một trong t&aacute;m bộ Thi&ecirc;n Long, cả phương Đ&ocirc;ng v&agrave; phương T&acirc;y, h&igrave;nh ảnh Long tộc đều được biểu thị cho lo&agrave;i linh vật huyền thoại c&oacute; sức mạnh phi thường.Long được m&ocirc; tả c&oacute; m&igrave;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/R%E1%BA%AFn\" title=\"Rắn\">rắn</a>, vảy&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%A1\" title=\"Cá\">c&aacute;</a>, bờm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/S%C6%B0_t%E1%BB%AD\" title=\"Sư tử\">sư tử</a>, sừng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BB%8D_H%C6%B0%C6%A1u_nai\" title=\"Họ Hươu nai\">hươu</a>, kh&ocirc;ng c&oacute; c&aacute;nh nhưng biết bay,</p>'),
(9, '0.00000777', 4, 2, 'Phượng tộc', '<p>Phượng ho&agrave;ng c&oacute; &yacute; nghĩa t&iacute;ch cực. N&oacute; l&agrave; biểu tượng của đức hạnh v&agrave; vẻ duy&ecirc;n d&aacute;ng, thanh nh&atilde;. Phượng ho&agrave;ng cũng biểu thị cho sự h&ograve;a hợp&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C3%82m_d%C6%B0%C6%A1ng\" title=\"Âm dương\">&acirc;m dương</a>. Theo truyền thuyết, n&oacute; xuất hiện trong thời kỳ h&ograve;a b&igrave;nh v&agrave; thịnh vượng nhưng kh&ocirc;ng c&oacute; khi thời kỳ tăm tối sắp đến.</p>\r\n\r\n<p>L&agrave; h&oacute;a th&acirc;n của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C3%82u_C%C6%A1\" title=\"Âu Cơ\">&Acirc;u Cơ</a>&nbsp;l&agrave; quốc mẫu của d&acirc;n tộc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\" title=\"Việt Nam\">Việt Nam</a>&nbsp;trong truyền thuyết con rồng ch&aacute;u ti&ecirc;n. &Acirc;u Cơ l&agrave; một ti&ecirc;n nữ, con g&aacute;i một vị thần n&uacute;i n&agrave;o đ&oacute; m&agrave; kh&ocirc;ng phải l&agrave; Đế Lai của Thần N&ocirc;ng Thị. N&agrave;ng đi khắp bốn phương để gi&uacute;p đỡ v&agrave; chữa trị cho những người đang l&acirc;m bệnh v&agrave; gặp kh&oacute; khăn. N&agrave;ng c&oacute; l&ograve;ng từ bi v&agrave; c&oacute; t&agrave;i về y thuật. Một ng&agrave;y nọ, một con qu&aacute;i vật l&agrave;m n&agrave;ng sợ h&atilde;i. N&agrave;ng liền biến th&agrave;nh một con phượng ho&agrave;ng m&agrave; bay đi. Lạc Long Qu&acirc;n, l&agrave; thần rồng từ biển cả, thấy n&agrave;ng đang gặp nguy hiểm liền cầm lấy cục đ&aacute; v&agrave; giết t&ecirc;n qu&aacute;i vật Sau đ&oacute; t&igrave;nh y&ecirc;u đ&atilde; nảy nở giữa hai người v&agrave; họ cưới nhau. &Acirc;u Cơ sinh ra một bọc trứng c&oacute; 100 người con đ&oacute; l&agrave; tổ ti&ecirc;n người Việt.</p>\r\n\r\n<p>Phượng ho&agrave;ng với c&aacute;c đặc điểm sau: đầu g&agrave;, h&agrave;m &eacute;n, cổ rắn, lưng r&ugrave;a, đu&ocirc;i c&aacute;, c&aacute;nh khổng tước với 5 m&agrave;u v&agrave; cao 6 thước. N&oacute; tượng trung cho 6 thi&ecirc;n thể m&agrave; ng&agrave;y nay c&oacute; thể hiểu n&ocirc;m na l&agrave;: đầu l&agrave; trời, mắt l&agrave; mặt trời, lưng l&agrave; Mặt Trăng, c&aacute;nh l&agrave; gi&oacute;, ch&acirc;n l&agrave; đất v&agrave; đu&ocirc;i l&agrave; c&aacute;c h&agrave;nh tinh. L&ocirc;ng của n&oacute; đại diện cho m&agrave;u sắc của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ng%C5%A9_h%C3%A0nh\" title=\"Ngũ hành\">Ngũ h&agrave;nh</a>: đen, trắng, đỏ, xanh, v&agrave;ng.</p>'),
(10, '0.00000666', 4, 2, 'Huyền Vũ tộc', '<p><strong>Huyền Vũ</strong>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Trung_Qu%E1%BB%91c\" title=\"Tiếng Trung Quốc\">tiếng Trung</a>: 玄武;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/B%C3%ADnh_%C3%A2m_H%C3%A1n_ng%E1%BB%AF\" title=\"Bính âm Hán ngữ\">B&iacute;nh &acirc;m H&aacute;n ngữ</a>:&nbsp;<em>Xu&aacute;nwǔ</em>), c&ograve;n gọi l&agrave;&nbsp;<strong>Ch&acirc;n V&otilde; đại đế</strong>,&nbsp;<strong>Bắc đế Ch&acirc;n V&otilde; đế qu&acirc;n</strong>,&nbsp;<strong>Đ&atilde;ng Ma Thi&ecirc;n t&ocirc;n</strong>,&nbsp;<strong>Hắc Đế</strong>, l&agrave; một vị thần quan trọng của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%A1o_gi%C3%A1o\" title=\"Đạo giáo\">Đạo gi&aacute;o</a><sup><a href=\"https://vi.wikipedia.org/wiki/Huy%E1%BB%81n_V%C5%A9#cite_note-ReferenceA-1\">[1]</a></sup>, một trong&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BB%A9_t%C6%B0%E1%BB%A3ng\" title=\"Tứ tượng\">tứ tượng</a>&nbsp;, v&agrave; cũng l&agrave; một kh&aacute;i niệm rộng trong&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Phong_th%E1%BB%A7y\" title=\"Phong thủy\">phong thủy</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C3%82m_d%C6%B0%C6%A1ng\" title=\"Âm dương\">thuyết &acirc;m dương</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tri%E1%BA%BFt_h%E1%BB%8Dc_ph%C6%B0%C6%A1ng_%C4%90%C3%B4ng\" title=\"Triết học phương Đông\">triết học phương Đ&ocirc;ng</a>. Ch&acirc;n th&acirc;n của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BA%A5n_V%C5%A9\" title=\"Trấn Vũ\">Huyền Thi&ecirc;n Trấn Vũ</a>&nbsp;nổi tiếng trong đạo gi&aacute;o.</p>'),
(11, '0.00000888', 4, 2, 'Bạch Hổ tộc', '<p><strong>Bạch Hổ</strong>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Trung_Qu%E1%BB%91c\" title=\"Tiếng Trung Quốc\">tiếng Trung</a>: 白虎 B&aacute;ihǔ) l&agrave; một trong&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BB%A9_t%C6%B0%E1%BB%A3ng\" title=\"Tứ tượng\">tứ tượng</a>&nbsp;, v&agrave; cũng l&agrave; một kh&aacute;i niệm rộng trong&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Phong_th%E1%BB%A7y\" title=\"Phong thủy\">phong thủy</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C3%82m_d%C6%B0%C6%A1ng\" title=\"Âm dương\">thuyết &acirc;m dương</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tri%E1%BA%BFt_h%E1%BB%8Dc_ph%C6%B0%C6%A1ng_%C4%90%C3%B4ng\" title=\"Triết học phương Đông\">triết học phương Đ&ocirc;ng</a>.</p>\r\n\r\n<p>Bạch Hổ l&agrave; linh vật thi&ecirc;ng li&ecirc;ng c&oacute; tượng l&agrave; h&igrave;nh con&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BB%95\" title=\"Hổ\">hổ</a>&nbsp;(虎), c&oacute; m&agrave;u trắng (bạch, 白). Bạch Hổ đại diện cho yếu tố&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kim_(Ng%C5%A9_h%C3%A0nh)\" title=\"Kim (Ngũ hành)\">Kim</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C6%B0%E1%BB%9Bng_T%C3%A2y\" title=\"Hướng Tây\">hướng T&acirc;y</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%C3%B9a_thu\" title=\"Mùa thu\">m&ugrave;a thu</a>.</p>'),
(12, '0.0000999', 4, 2, 'Bí Hí', '<p><strong><a href=\"https://vi.wikipedia.org/wiki/B%C3%AD_H%C3%AD\" title=\"\">B&iacute; H&iacute;</a></strong>&nbsp;l&agrave; con trưởng của Rồng. C&ograve;n c&oacute; t&ecirc;n kh&aacute;c l&agrave;&nbsp;<strong>Quy Phu</strong>,&nbsp;<strong>Điền Hạ</strong>&nbsp;hay&nbsp;<strong>B&aacute; Hạ</strong>. Linh vật c&oacute; h&igrave;nh d&aacute;ng th&acirc;n r&ugrave;a, đầu rồng, c&oacute; sức mạnh vượt bậc, chịu được trọng lượng lớn n&ecirc;n thường được chạm khắc trang tr&iacute; l&agrave;m bệ đỡ cho c&aacute;c bệ đ&aacute;, cột đ&aacute;, bia đ&aacute;... Trong ch&iacute;n con của Rồng duy c&oacute; B&aacute; Hạ th&iacute;ch mang vật nặng, ngoại h&igrave;nh của n&oacute; giống con r&ugrave;a, đầu th&igrave; giống rồng, gọi l&agrave; con th&uacute; mang bia. C&oacute; mẹ l&agrave; Thần Quy Nữ.</p>'),
(13, '0.0000999', 4, 2, 'Li Vẫn', '<p><strong>Li Vẫn</strong>&nbsp;l&agrave; con thứ hai của Rồng. C&ograve;n c&oacute; t&ecirc;n gọi l&agrave;&nbsp;<strong>Si Vĩ</strong>&nbsp;hay&nbsp;<strong>Si Vẫn</strong>. Linh vật c&oacute; đầu rồng, miệng rộng, th&acirc;n ngắn, th&iacute;ch ngắm cảnh v&agrave; thường gi&uacute;p d&acirc;n diệt hỏa hoạn n&ecirc;n được chạm khắc l&agrave;m vật trang tr&iacute; tr&ecirc;n n&oacute;c c&aacute;c cung điện cổ, ch&ugrave;a chiền, đền đ&agrave;i&hellip; C&oacute; mẹ l&agrave; C&aacute; Ch&eacute;p Tinh.</p>'),
(14, '0.0000999', 4, 2, 'Bồ Lao', '<p><strong>Bồ Lao</strong>&nbsp;l&agrave; con thứ ba của Rồng. Linh vật th&iacute;ch &acirc;m thanh lớn, thường được đ&uacute;c tr&ecirc;n quai chu&ocirc;ng với mong muốn chiếc chu&ocirc;ng được đ&uacute;c c&oacute; &acirc;m thanh như &yacute; muốn. C&oacute; mẹ l&agrave; Hống.</p>'),
(15, '0.0000999', 4, 2, 'Bệ Ngạn', '<p><strong>Bệ Ngạn</strong>&nbsp;l&agrave; con thứ tư của Rồng. C&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave;&nbsp;<strong>Hiến Chương</strong>. Linh vật c&oacute; h&igrave;nh d&aacute;ng giống hổ, răng nanh d&agrave;i v&agrave; sắc, c&oacute; sức thị uy lớn, th&iacute;ch l&yacute; lẽ v&agrave; c&oacute; t&agrave;i c&atilde;i l&yacute; đ&ograve;i sự c&ocirc;ng bằng khi c&oacute; bất c&ocirc;ng, nhờ vậy bệ ngạn thường được đặt ở cửa nh&agrave; ngục hay ph&aacute;p đường, ngụ &yacute; răn đe người phạm tội v&agrave; nhắc nhở mọi người n&ecirc;n sống lương thiện. C&oacute; mẹ l&agrave; nữ thần Bạch Hổ.</p>'),
(16, '0.0000999', 4, 2, 'Thao Thiết', '<p><strong>Thao Thiết</strong>&nbsp;l&agrave; con thứ năm của Rồng. Linh vật c&oacute; đ&ocirc;i mắt to, miệng rộng, d&aacute;ng vẻ kỳ lạ, c&oacute; t&iacute;nh tham ăn v&ocirc; độ n&ecirc;n được đ&uacute;c tr&ecirc;n c&aacute;c đồ d&ugrave;ng trong ăn uống như ngụ &yacute; nhắc nhở người ăn đừng h&aacute;o ăn m&agrave; trở n&ecirc;n bất lịch sự. C&oacute; mẹ l&agrave; Trư Tinh.</p>'),
(17, '0.0000999', 4, 2, 'Công Phúc', '<p><strong>C&ocirc;ng Ph&uacute;c</strong>&nbsp;l&agrave; con thứ s&aacute;u của Rồng. Linh vật n&agrave;y th&iacute;ch nước n&ecirc;n được khắc l&agrave;m vật trang tr&iacute; ở c&aacute;c c&ocirc;ng tr&igrave;nh hay phương tiện giao th&ocirc;ng đường thủy như: cầu, r&atilde;nh dẫn nước, đập nước, bến t&agrave;u, thuyền b&egrave;&hellip; với mong muốn c&ocirc;ng ph&uacute;c lu&ocirc;n tiếp x&uacute;c, cai quản, tr&ocirc;ng coi lượng nước phục vụ nh&acirc;n d&acirc;n. C&oacute; mẹ l&agrave; C&aacute; Ch&eacute;p Tinh.</p>'),
(18, '0.0000999', 4, 2, 'Nhai Xải', '<p><strong>Nhai Xải</strong>&nbsp;l&agrave; con thứ bảy của Rồng. Linh vật c&oacute; t&iacute;nh kh&iacute; hung hăng, thường nổi cơn thịnh nộ v&agrave; ham s&aacute;t sinh n&ecirc;n thường được chạm khắc tr&ecirc;n c&aacute;c vũ kh&iacute; như đao, b&uacute;a, kiếm&hellip; ngụ &yacute; thị uy, l&agrave;m tăng th&ecirc;m sức mạnh v&agrave; l&ograve;ng can đảm của c&aacute;c chiến binh nơi trận mạc. C&oacute; mẹ l&agrave; Cửu Vĩ Ti&ecirc;n Hồ, nhưng v&igrave; hung t&iacute;nh n&ecirc;n được khắc họa c&oacute; đầu tựa như S&oacute;i.</p>'),
(19, '0.0000999', 4, 2, 'Toan Nghê', '<p><strong>Toan Ngh&ecirc;</strong>&nbsp;l&agrave; con thứ t&aacute;m của Rồng. Linh vật c&oacute; m&igrave;nh sư tử, đầu rồng, th&iacute;ch sự tĩnh lặng v&agrave; thường ngồi y&ecirc;n ngắm cảnh kh&oacute;i hương tỏa l&ecirc;n nghi ng&uacute;t n&ecirc;n được đ&uacute;c l&agrave;m vật trang tr&iacute; tr&ecirc;n c&aacute;c l&ograve; đốt trầm hương, ngụ &yacute; mong muốn hương thơm của trầm hương lu&ocirc;n tỏa ng&aacute;t. C&oacute; mẹ l&agrave; Sư Tinh Sơn Vương.</p>'),
(20, '0.0000999', 4, 2, 'Tiêu Đồ', '<p><strong>Ti&ecirc;u Đồ</strong>&nbsp;l&agrave; con thứ ch&iacute;n của Rồng. Linh vật c&oacute; t&iacute;nh kh&iacute; lười biếng, thường cuộn tr&ograve;n nằm ngủ, kh&ocirc;ng th&iacute;ch c&oacute; kẻ lạ x&acirc;m nhập l&atilde;nh địa của m&igrave;nh n&ecirc;n thường được khắc tr&ecirc;n c&aacute;nh cửa ra v&agrave;o, đ&uacute;ng v&agrave;o vị tr&iacute; tay cầm khi mở, ngụ &yacute; răn đe kẻ lạ muốn x&acirc;m nhập nhằm bảo vệ sự an to&agrave;n cho chủ nh&agrave;. C&oacute; mẹ l&agrave; Ngao Khuyển Tinh n&ecirc;n đầu khắc họa tựa như Sư Tử, thật ra Ngao l&agrave; vua của lo&agrave;i Ch&oacute;.</p>'),
(21, '0.000555', 4, 2, 'Kỳ lân(Việt)', '<p>Kỳ l&acirc;n l&agrave; linh vật b&aacute;o hiệu điềm l&agrave;nh, l&agrave; biểu tượng của sự th&ocirc;ng th&aacute;i, trường thọ, sự cao qu&yacute; v&agrave; của niềm hạnh ph&uacute;c lớn lao. Kỳ l&acirc;n cũng l&agrave; biểu tượng của l&ograve;ng nh&acirc;n từ v&agrave; sự trung th&agrave;nh. Kỳ l&acirc;n l&agrave; t&ecirc;n gh&eacute;p, trong đ&oacute; kỳ l&agrave; con đực v&agrave; l&acirc;n l&agrave; con c&aacute;i. Theo truyền thuyết, kỳ l&acirc;n l&agrave; sự kết hợp của c&aacute;c lo&agrave;i vật kh&aacute;c: m&igrave;nh hươu, đu&ocirc;i b&ograve;, tr&aacute;n s&oacute;i, m&oacute;ng ngựa, da c&oacute; 5 m&agrave;u: đỏ, v&agrave;ng, xanh, trắng, đen, dưới bụng c&oacute; m&agrave;u v&agrave;ng. Con kỳ c&oacute; một chiếc sừng ở giữa tr&aacute;n. Kỳ l&acirc;n bẩm t&iacute;nh rất nh&acirc;n từ, khi di chuyển n&oacute; tr&aacute;nh dẫm l&ecirc;n c&aacute;c lo&agrave;i c&ocirc;n tr&ugrave;ng, kh&ocirc;ng l&agrave;m hư hại c&aacute;c lo&agrave;i cỏ mềm dưới ch&acirc;n. N&oacute; cũng kh&ocirc;ng ăn thịt hay l&agrave;m hại bất kỳ con vật n&agrave;o v&agrave; kh&ocirc;ng bao giờ uống nước bẩn.</p>'),
(22, '0.00777', 4, 2, 'Long mã', '<p>Long m&atilde; l&agrave; h&oacute;a th&acirc;n của kỳ l&acirc;n, l&agrave; sự kết hợp đặc biệt giữa rồng, l&acirc;n v&agrave; ngựa. Đ&oacute; l&agrave; một linh vật c&oacute; sừng v&agrave; bờm của rồng, m&igrave;nh của con hươu xạ, th&acirc;n c&oacute; vảy của kỳ l&acirc;n, ch&acirc;n v&agrave; m&oacute;ng của ngựa; cao &ldquo;8 thước 5 tấc, xương cổ d&agrave;i, c&aacute;nh b&ecirc;n phải nh&uacute;ng xuống nước m&agrave; kh&ocirc;ng ướt, tr&ecirc;n c&oacute; th&aacute;nh nh&acirc;n để bức cổ đồ&rdquo;.</p>'),
(23, '0.00666', 4, 2, 'Nghê', '<p>Ngh&ecirc; l&agrave; h&oacute;a th&acirc;n của con ch&oacute;, người bạn th&acirc;n thiết với người d&acirc;n Việt Nam. Nếu con ch&oacute; l&agrave; vật canh giữ của cải, nh&agrave; cửa cho người d&acirc;n, th&igrave; ngh&ecirc; l&agrave; con vật canh giữ về mặt tinh thần, chống lại c&aacute;c thứ t&agrave; ma, &aacute;c quỷ.</p>'),
(24, '0.001', 4, 2, 'Tượng(Voi)', '<p>Tượng(voi) tượng trưng cho sức mạnh, sự kh&ocirc;n ngoan, thận trọng v&agrave; l&agrave; 1 trong 4 con vật đại diện cho sức mạnh v&agrave; sinh lực b&ecirc;n cạnh hổ, sư tử v&agrave; b&aacute;o. Tượng&nbsp;cũng l&agrave; 1 trong 7 b&aacute;u vật của Phật gi&aacute;o n&ecirc;n h&igrave;nh tượng của Tượng&nbsp;xuất hiện nhiều trong kiến tr&uacute;c v&agrave; trang tr&iacute; Phật gi&aacute;o.</p>'),
(25, '0.000000000000000001', 5, 2, 'Vô Tại', '<p>Chủng tộc đến căn nguy&ecirc;n kh&ocirc;ng biết họ l&agrave; g&igrave;? Từ bao giờ xuất hiện? Xuất hiện để l&agrave;m g&igrave;? Mọi thứ đều l&agrave; b&iacute; ẩn.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `race_ene`
--

CREATE TABLE `race_ene` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `energy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `race_ene`
--

INSERT INTO `race_ene` (`id`, `race_id`, `energy_id`) VALUES
(2, 1, 2),
(3, 1, 6),
(4, 1, 7),
(5, 1, 1),
(6, 1, 8),
(9, 3, 1),
(10, 3, 3),
(12, 4, 1),
(13, 4, 2),
(14, 4, 4),
(15, 4, 7),
(16, 5, 8),
(17, 6, 1),
(18, 6, 2),
(20, 6, 7),
(21, 7, 1),
(22, 8, 2),
(23, 8, 4),
(24, 9, 2),
(25, 9, 4),
(26, 10, 2),
(27, 10, 4),
(28, 11, 2),
(29, 11, 4),
(30, 12, 2),
(31, 12, 4),
(32, 13, 2),
(33, 13, 4),
(34, 14, 2),
(35, 14, 4),
(36, 15, 2),
(37, 15, 4),
(38, 16, 2),
(39, 16, 4),
(40, 17, 2),
(41, 17, 4),
(42, 18, 2),
(43, 18, 4),
(44, 19, 2),
(45, 19, 4),
(46, 20, 2),
(47, 20, 4),
(48, 21, 2),
(49, 21, 4),
(50, 22, 2),
(51, 22, 4),
(52, 23, 2),
(53, 23, 4),
(54, 24, 2),
(55, 24, 4),
(56, 25, 5),
(57, 2, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `race_phy`
--

CREATE TABLE `race_phy` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `phy_id` int(11) NOT NULL,
  `buff` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `race_phy`
--

INSERT INTO `race_phy` (`id`, `race_id`, `phy_id`, `buff`) VALUES
(1, 3, 1, 777),
(3, 2, 3, 666),
(5, 1, 4, 1),
(6, 1, 5, 19),
(7, 1, 6, 2),
(8, 1, 7, NULL),
(9, 1, 8, NULL),
(10, 1, 9, NULL),
(11, 1, 10, NULL),
(12, 1, 11, NULL),
(13, 1, 14, NULL),
(14, 1, 19, NULL),
(15, 1, 20, NULL),
(16, 1, 21, NULL),
(17, 1, 22, NULL),
(18, 3, 5, 190),
(19, 3, 6, 87),
(20, 3, 7, NULL),
(21, 3, 8, NULL),
(22, 3, 9, NULL),
(23, 3, 10, NULL),
(24, 3, 11, NULL),
(25, 3, 14, NULL),
(26, 3, 15, 572),
(27, 3, 19, NULL),
(28, 3, 20, NULL),
(29, 3, 21, NULL),
(30, 4, 4, 1),
(31, 4, 5, 26),
(32, 4, 6, 17),
(33, 4, 7, NULL),
(34, 4, 8, NULL),
(35, 4, 9, NULL),
(36, 4, 10, NULL),
(37, 4, 11, NULL),
(38, 4, 14, NULL),
(39, 4, 19, NULL),
(40, 4, 20, NULL),
(41, 4, 21, NULL),
(42, 5, 12, 1),
(43, 6, 5, 33),
(44, 6, 6, 27),
(45, 6, 7, NULL),
(46, 6, 8, NULL),
(47, 6, 9, NULL),
(48, 6, 10, NULL),
(49, 6, 11, NULL),
(50, 6, 14, NULL),
(51, 6, 19, NULL),
(52, 6, 20, NULL),
(53, 6, 21, NULL),
(54, 6, 22, NULL),
(56, 7, 23, 1),
(57, 8, 5, 119),
(58, 8, 6, 67),
(59, 8, 7, NULL),
(60, 8, 9, NULL),
(61, 8, 10, NULL),
(62, 8, 11, NULL),
(63, 8, 14, NULL),
(64, 8, 19, NULL),
(65, 8, 20, NULL),
(66, 8, 21, NULL),
(67, 9, 6, 87),
(68, 9, 19, NULL),
(69, 9, 20, NULL),
(70, 9, 21, NULL),
(71, 10, 8, NULL),
(72, 10, 9, NULL),
(73, 10, 14, NULL),
(74, 10, 19, NULL),
(75, 10, 20, NULL),
(76, 10, 21, NULL),
(77, 11, 5, 11),
(78, 11, 6, 47),
(79, 11, 7, NULL),
(80, 11, 19, NULL),
(81, 11, 20, NULL),
(82, 11, 21, NULL),
(83, 9, 11, NULL),
(84, 12, 9, NULL),
(85, 12, 19, NULL),
(86, 12, 20, NULL),
(87, 13, 10, NULL),
(88, 13, 19, NULL),
(89, 13, 20, NULL),
(90, 14, 5, 99),
(91, 14, 11, NULL),
(92, 14, 19, NULL),
(93, 14, 20, NULL),
(94, 15, 7, NULL),
(95, 15, 19, NULL),
(96, 15, 20, NULL),
(97, 16, 19, NULL),
(98, 16, 20, NULL),
(99, 17, 10, NULL),
(100, 17, 19, NULL),
(101, 17, 20, NULL),
(102, 18, 7, NULL),
(103, 18, 19, NULL),
(104, 18, 20, NULL),
(105, 19, 8, NULL),
(106, 19, 11, NULL),
(107, 19, 19, NULL),
(108, 19, 20, NULL),
(109, 20, 11, NULL),
(110, 20, 19, NULL),
(111, 20, 20, NULL),
(112, 21, 5, 99),
(113, 21, 6, 87),
(114, 21, 11, NULL),
(115, 21, 19, NULL),
(116, 21, 20, NULL),
(117, 22, 5, 29),
(118, 22, 6, 37),
(119, 22, 11, NULL),
(120, 22, 19, NULL),
(121, 22, 20, NULL),
(122, 22, 21, NULL),
(123, 23, 5, 99),
(124, 23, 6, 67),
(125, 23, 7, NULL),
(126, 23, 19, NULL),
(127, 23, 20, NULL),
(128, 23, 21, NULL),
(129, 24, 9, NULL),
(130, 24, 19, NULL),
(131, 24, 20, NULL),
(132, 24, 22, NULL),
(133, 22, 10, NULL),
(134, 1, 24, NULL),
(135, 3, 24, NULL),
(136, 4, 24, NULL),
(137, 6, 24, NULL),
(138, 8, 24, NULL),
(139, 9, 24, NULL),
(140, 10, 24, NULL),
(141, 11, 24, NULL),
(142, 16, 24, NULL),
(143, 24, 24, 53),
(144, 25, 25, 9000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rep_cmt`
--

CREATE TABLE `rep_cmt` (
  `id` int(11) NOT NULL,
  `cmt_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `rep` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL,
  `u_img` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`, `u_img`) VALUES
(0, 'Amborse', 'phule23121999@gmail.com', NULL, '$2y$10$xxlVHwD22TITYj7dX6FYV.MLNME2ZkM1FMkb4svBFlL0kJzXZqAwW', 'R3DSHZqzfn8lKvxNRgAFidDoRXrTCmuDIz6y2221fxbNH4kTC67H1gtdkzeb', '2021-09-05 00:36:42', '2021-09-07 00:28:58', 0, 'http://localhost/myscathach/public/upload/user/phule23121999.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book_cate`
--
ALTER TABLE `book_cate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book_like`
--
ALTER TABLE `book_like`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cmt_book`
--
ALTER TABLE `cmt_book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `energy`
--
ALTER TABLE `energy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `physical`
--
ALTER TABLE `physical`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `race_ene`
--
ALTER TABLE `race_ene`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `race_phy`
--
ALTER TABLE `race_phy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rep_cmt`
--
ALTER TABLE `rep_cmt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `book_cate`
--
ALTER TABLE `book_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `book_like`
--
ALTER TABLE `book_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT cho bảng `cmt_book`
--
ALTER TABLE `cmt_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `energy`
--
ALTER TABLE `energy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `physical`
--
ALTER TABLE `physical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `race_ene`
--
ALTER TABLE `race_ene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `race_phy`
--
ALTER TABLE `race_phy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT cho bảng `rep_cmt`
--
ALTER TABLE `rep_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
