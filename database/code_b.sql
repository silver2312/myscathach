-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2021 lúc 10:43 AM
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
  `bk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bk_des` text COLLATE utf8_unicode_ci NOT NULL,
  `bk_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bk_img` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bk_at` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `like` int(11) NOT NULL,
  `created_at` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `c_chap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_cate`
--

CREATE TABLE `book_cate` (
  `id` int(11) NOT NULL,
  `bk_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_like`
--

CREATE TABLE `book_like` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_list`
--

CREATE TABLE `book_list` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(54, 'Khác', 'Những truyện không thuộc những thể loại đã có .', 'khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `truyen_id` int(11) NOT NULL,
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ch_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `crea_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upd_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(0, 'ADMIN', 'phule23121999@gmail.com', NULL, '$2y$10$DudPFgBQS2AkduxR/75gEO7z6wcuB/AeX6RE8F9PkhYY3utuRJ/zO', 'kSzAMXMYjOgg2Fh80zIDYM6iPl31ZLktgpII1f84WWJ6v3RxIdF4GaCGOPUy', '2021-08-20 18:38:14', '2021-08-21 01:39:27', 0, 'https://i.imgur.com/VjEXUrF.png');

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
-- Chỉ mục cho bảng `profile`
--
ALTER TABLE `profile`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `book_cate`
--
ALTER TABLE `book_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `book_like`
--
ALTER TABLE `book_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `cmt_book`
--
ALTER TABLE `cmt_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `rep_cmt`
--
ALTER TABLE `rep_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
