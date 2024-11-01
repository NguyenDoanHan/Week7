-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2024 lúc 11:32 AM
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
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Car', 'he', 0),
(2, 'hi_2', 'aaa', 0),
(4, 'qưeqwewq', 'qưeqwee', 0),
(5, 'Thegioi', 'thegioi', 0),
(6, 'Trần Viết Giang', 'Giang đây', 0),
(7, 'Lập trình', 'a', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `excerpt` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'VinFast chính thức mở bán mẫu SUV điện VF 7 tại Philippines', ' Trong khuôn khổ Hội Nghị Thượng đỉnh Xe điện Philippines lần thứ 12 (PEVS), ngày 24/10 VinFast công bố giá và chính thức bắt đầu nhận đặt cọc mẫu SUV điện 5 chỗ ngồi VF 7.', ' Trong khuôn khổ Hội Nghị Thượng đỉnh Xe điện Philippines lần thứ 12 (PEVS), ngày 24/10 VinFast công bố giá và chính thức bắt đầu nhận đặt cọc mẫu SUV điện 5 chỗ ngồi VF 7.\r\n<img src=\"https://image.bnews.vn/MediaUpload/Org/2024/10/24/photo2-20241024195255.jpeg\" alt=\"\">\r\n\r\nVinFast chính thức mở bán xe ô tô điện tại Philippines\r\nSự kiện khẳng định cam kết của VinFast trong việc thúc đẩy chuyển đổi giao thông xanh tại Philippines và tiếp tục mở rộng dải sản phẩm xe điện phong phú của hãng ở thị trường Đông Nam Á.\r\n\r\nVinFast VF 7 trở thành mẫu xe thứ 3 được bán tại thị trường Philippines, sau VF 5 và VF 3. Tại Philippines, VF 7 sẽ có 2 phiên bản gồm VF 7 Base và VF 7 Plus, đem đến những sự lựa chọn đa dạng và phù hợp với từng khách hàng.\r\n\r\nGiá niêm yết dao động từ 1.470.000 peso (chính sách thuê pin) đến 1.760.000 peso (mua kèm pin) cho bản Base và từ 1.730.000 peso (chính sách thuê pin) đến 2.380.000 peso (mua kèm pin) cho bản Plus. Chi phí gói thuê bao pin chỉ từ 6.300 peso/tháng, cho phép tối ưu hóa chi phí dựa trên nhu cầu di chuyển.\r\n\r\nTheo đó, phí thuê pin cho quãng đường di chuyển hàng tháng dưới 1.500 km là 6.300 peso/tháng, trên 1.500 km đến 2.500 km là 9.000 peso, và trên 2.500 km là 15.000 peso/tháng.\r\n\r\nTừ ngày 24/10, khách hàng tại Philippines có thể đặt cọc mua ô tô điện VF 7 với mức cọc 5.000 peso/xe trên website VinFast hoặc qua các cửa hàng đại lý chính hãng (cọc được áp dụng hoàn lại theo quy định của VinFast). Đặc biệt, những khách đặt hàng trước ngày 24/11/2024 sẽ nhận được ưu đãi đến 53.000 peso và nhiều quà tặng có giá trị 57.000 peso.\r\n\r\n<img src=\"https://image.bnews.vn/MediaUpload/Org/2024/10/24/photo3-20241024195338.jpeg\" alt=\"\">    \r\n\r\nĐại diện VinFast và các bên tại sự kiện ở Philippines\r\nÔng Cao Ngọc Nguyên Duy, Tổng Giám đốc VinFast Philippines, chia sẻ: “VF 7 là một trong những mẫu xe đột phá và có dấu ấn riêng đậm nét nhất trong dải sản phẩm đa dạng của VinFast. Mục tiêu của chúng tôi không đơn thuần là ra mắt một mẫu xe mới. Chúng tôi đang thúc đẩy một phong cách sống tập trung vào tính bền vững, khuyến khích những thói quen tiêu dùng thân thiện với môi trường và tiết kiệm năng lượng. Thông qua các sản phẩm của mình, VinFast mong muốn đồng hành cùng Philippines để phát triển một tương lai xanh và đóng góp vào sứ mệnh giảm lượng khí thải carbon trên quy mô toàn cầu”.\r\n\r\nPhiên bản VF 7 Plus trang bị hai môtơ điện, cho tổng công suất 348,6 mã lực, mô-men xoắn 500 Nm, dẫn động 4 bánh toàn thời gian. Pin cung cấp năng lượng cho môtơ điện trên bản này dung lượng 75,3 kWh, cho quãng đường di chuyển tối đa khoảng 496 km sau mỗi lần sạc đầy (tiêu chuẩn NEDC).\r\n\r\nBản VF 7 Base trang bị một môtơ điện, công suất 174 mã lực, mô-men xoắn 250 Nm. Bộ pin đi kèm dung lượng 59,6 kWh, cho quãng đường di chuyển tối đa 430 km/lần sạc đầy (tiêu chuẩn NEDC).\r\n\r\nCả hai phiên bản sở hữu các tính năng an toàn cơ bản như cân bằng điện tử, kiểm soát lực kéo, hỗ trợ khởi hành ngang dốc, kiểm soát chống lật. Ngoài ra, bản Plus có thêm gói hỗ trợ lái (ADAS), gồm những tính năng như giám sát hành trình thích ứng, cảnh báo lệch làn, cảnh báo va chạm phía trước, cảnh báo phương tiện cắt ngang phía sau, cảnh báo điểm mù, cảnh báo mở cửa, phanh tự động khẩn cấp phía trước, hệ thống camera 360 độ...\r\n\r\nNgoài hiệu suất ấn tượng, VF 7 còn nổi bật với thiết kế hiện đại. Chiếc xe hội tụ 4 yếu tố gồm: kiểu dáng tổng thể độc đáo, có chi tiết nhận diện riêng biệt, tinh tế về hoàn thiện và đảm bảo công năng vận hành', 'photo3-20241024195338.jpeg', 1, 1, 1, '2024-10-25 01:30:26', '2024-10-25 01:30:26', 1),
(2, 'VinFast chính thức mở bán mẫu SUV điện VF 7 tại Philippines', ' Trong khuôn khổ Hội Nghị Thượng đỉnh Xe điện Philippines lần thứ 12 (PEVS), ngày 24/10 VinFast công bố giá và chính thức bắt đầu nhận đặt cọc mẫu SUV điện 5 chỗ ngồi VF 7.', ' Trong khuôn khổ Hội Nghị Thượng đỉnh Xe điện Philippines lần thứ 12 (PEVS), ngày 24/10 VinFast công bố giá và chính thức bắt đầu nhận đặt cọc mẫu SUV điện 5 chỗ ngồi VF 7.\r\n<img src=\"https://image.bnews.vn/MediaUpload/Org/2024/10/24/photo2-20241024195255.jpeg\" alt=\"\">\r\n\r\nVinFast chính thức mở bán xe ô tô điện tại Philippines\r\nSự kiện khẳng định cam kết của VinFast trong việc thúc đẩy chuyển đổi giao thông xanh tại Philippines và tiếp tục mở rộng dải sản phẩm xe điện phong phú của hãng ở thị trường Đông Nam Á.\r\n\r\nVinFast VF 7 trở thành mẫu xe thứ 3 được bán tại thị trường Philippines, sau VF 5 và VF 3. Tại Philippines, VF 7 sẽ có 2 phiên bản gồm VF 7 Base và VF 7 Plus, đem đến những sự lựa chọn đa dạng và phù hợp với từng khách hàng.\r\n\r\nGiá niêm yết dao động từ 1.470.000 peso (chính sách thuê pin) đến 1.760.000 peso (mua kèm pin) cho bản Base và từ 1.730.000 peso (chính sách thuê pin) đến 2.380.000 peso (mua kèm pin) cho bản Plus. Chi phí gói thuê bao pin chỉ từ 6.300 peso/tháng, cho phép tối ưu hóa chi phí dựa trên nhu cầu di chuyển.\r\n\r\nTheo đó, phí thuê pin cho quãng đường di chuyển hàng tháng dưới 1.500 km là 6.300 peso/tháng, trên 1.500 km đến 2.500 km là 9.000 peso, và trên 2.500 km là 15.000 peso/tháng.\r\n\r\nTừ ngày 24/10, khách hàng tại Philippines có thể đặt cọc mua ô tô điện VF 7 với mức cọc 5.000 peso/xe trên website VinFast hoặc qua các cửa hàng đại lý chính hãng (cọc được áp dụng hoàn lại theo quy định của VinFast). Đặc biệt, những khách đặt hàng trước ngày 24/11/2024 sẽ nhận được ưu đãi đến 53.000 peso và nhiều quà tặng có giá trị 57.000 peso.\r\n\r\n<img src=\"https://image.bnews.vn/MediaUpload/Org/2024/10/24/photo3-20241024195338.jpeg\" alt=\"\">    \r\n\r\nĐại diện VinFast và các bên tại sự kiện ở Philippines\r\nÔng Cao Ngọc Nguyên Duy, Tổng Giám đốc VinFast Philippines, chia sẻ: “VF 7 là một trong những mẫu xe đột phá và có dấu ấn riêng đậm nét nhất trong dải sản phẩm đa dạng của VinFast. Mục tiêu của chúng tôi không đơn thuần là ra mắt một mẫu xe mới. Chúng tôi đang thúc đẩy một phong cách sống tập trung vào tính bền vững, khuyến khích những thói quen tiêu dùng thân thiện với môi trường và tiết kiệm năng lượng. Thông qua các sản phẩm của mình, VinFast mong muốn đồng hành cùng Philippines để phát triển một tương lai xanh và đóng góp vào sứ mệnh giảm lượng khí thải carbon trên quy mô toàn cầu”.\r\n\r\nPhiên bản VF 7 Plus trang bị hai môtơ điện, cho tổng công suất 348,6 mã lực, mô-men xoắn 500 Nm, dẫn động 4 bánh toàn thời gian. Pin cung cấp năng lượng cho môtơ điện trên bản này dung lượng 75,3 kWh, cho quãng đường di chuyển tối đa khoảng 496 km sau mỗi lần sạc đầy (tiêu chuẩn NEDC).\r\n\r\nBản VF 7 Base trang bị một môtơ điện, công suất 174 mã lực, mô-men xoắn 250 Nm. Bộ pin đi kèm dung lượng 59,6 kWh, cho quãng đường di chuyển tối đa 430 km/lần sạc đầy (tiêu chuẩn NEDC).\r\n\r\nCả hai phiên bản sở hữu các tính năng an toàn cơ bản như cân bằng điện tử, kiểm soát lực kéo, hỗ trợ khởi hành ngang dốc, kiểm soát chống lật. Ngoài ra, bản Plus có thêm gói hỗ trợ lái (ADAS), gồm những tính năng như giám sát hành trình thích ứng, cảnh báo lệch làn, cảnh báo va chạm phía trước, cảnh báo phương tiện cắt ngang phía sau, cảnh báo điểm mù, cảnh báo mở cửa, phanh tự động khẩn cấp phía trước, hệ thống camera 360 độ...\r\n\r\nNgoài hiệu suất ấn tượng, VF 7 còn nổi bật với thiết kế hiện đại. Chiếc xe hội tụ 4 yếu tố gồm: kiểu dáng tổng thể độc đáo, có chi tiết nhận diện riêng biệt, tinh tế về hoàn thiện và đảm bảo công năng vận hành', 'photo3-20241024195338.jpeg', 1, 1, 1, '2024-10-25 01:30:51', '2024-10-25 01:30:51', 1),
(5, 'editededited', 'Trái bóng lăn theo điệu vũ của những M10', 'Hai M10 gặp nhau ở trận bán kết đầu tiên của World Cup vào đêm thứ ba tới trên sân Lusail. Lionel Messi và Argentina của anh đối đầu với Luka Modric và Croatia bất khuất, kịch bản đẹp cho bất cứ nhà văn yêu thích bóng đá nào muốn viết ra.\r\nĐó sẽ là cuộc đối đầu thế nào? Trong kỳ World Cup điên rồ và nhiều bất ngờ này, chuyện gì cũng có thể xảy ra, nhưng cuối cùng, chỉ có một M10 vào đến chung kết (và anh ta có thắng ở đó hay không, thật khó đoán được). Nhưng trong đêm tứ kết, Argentina của Messi đã chơi một trận đấu không đơn giản, trước một đối thủ vùng lên ở những giây cuối để níu kéo hy vọng thắng lợi. Và Messi, đã ghi 1 bàn trong thời gian thi đấu chính thức trên chấm penalty, chính là người đã mở ra chiến thắng cho Argentina trong loạt luân lưu, bẻ gãy ý chí của những người Hà Lan. Trước đó, Croatia của Modric đã chơi một thứ bóng đá kiên nhẫn, khoa học, thậm chí có lúc nhẩn nha để đẩy trận đấu với Brazil vào loạt luân lưu. Ở đó, họ lại thắng, như trận gặp Nhật Bản, như hai trận vòng knock-out ở World Cup 4 năm trước mà họ trở thành á quân.\r\n\r\nTrái bóng lăn theo điệu vũ của những M10\r\nLionel Messi. Ảnh: Getty\r\nTrái bóng lăn theo điệu vũ của những M10\r\n Pha tranh bóng giữa tiền đạo Brazil Vinicius Junior (phải) và tiền vệ Croatia Luka Modric. Ảnh: AFP/TTXVN\r\nMessi nhảy những điệu tango trên sân cỏ Qatar, Modric lại giống như một vũ công của điệu waltz chậm, nhẹ nhàng, sâu lắng. Một bên Nam Mỹ bốc lửa và luôn hàm chứa những điều bất ngờ, như đường chuyền sắc như dao của anh đưa bóng cho Nahuel Molina ghi bàn mở tỷ số. Bên kia là thứ bóng đá lạnh lùng đầy toan tính, lúc cương lúc nhu và bình thản một cách đáng sợ, không hề rơi vào trạng thái sợ hãi hay bất ổn khi đối phương dâng cao và tấn công dồn dập. Modric là thủ lĩnh của đội bóng ấy, lúc nào cũng bình tĩnh, giản dị, nhẹ nhàng, như thể anh sinh ra là cho những trận đấu lớn như thế này. Messi đang theo chân của Maradona vĩ đại trong giải đấu mà anh khao khát đóng lại bằng một chiếc cúp vàng, chiếc cúp đã quay lưng lại với anh ở World Cup 2014. Modric muốn kết thúc sự nghiệp lẫy lừng của mình ở World Cup bằng một trận chung kết chiến thắng, xua đi những nỗi buồn từ trận chung kết thua Pháp trong cơn mưa tầm tã ở Moscow năm 2018.\r\n\r\nNhiều người tin rằng, họ đang được chứng kiến một Messi hay nhất trong các kỳ World Cup. Ở Nam Phi năm 2010, dưới tay của chính Diego Maradona huyền thoại, anh không ghi bàn thắng nào dù được kỳ vọng rất nhiều và rồi cùng Argentina thảm bại 0-4 trước Đức ở vòng knock-out. 4 năm sau, anh cùng Argentina vào đến chung kết và lại thua Đức. Ở Nga năm 2018, những vấn đề của đội bóng đã nhấn chìm họ trong khi bản thân Messi cũng mờ nhạt. Bây giờ, như một con chim đang hót những khúc ca cuối cùng trước khi giã biệt cõi đời, Messi đã chơi một thứ bóng đá tuyệt diệu và dẫn dắt Argentina vượt qua những khó khăn để vào bán kết. Anh đã ghi 4 bàn thắng (2 trong số đó đến từ chấm phạt đền) và 2 pha kiến tạo thành bàn. Trên con đường đến cúp vàng Mexico 1986, Maradona đã ghi 5 bàn thắng, nhưng đã cần đến những đồng đội của mình để cùng nâng cúp vàng, khi trong trận chung kết, Jose Luis Brown, Jorge Valdano và Jorge Burruchaga đã ghi bàn hạ CHLB Đức 3-2. Trong trận tứ kết trước Hà Lan, Lautaro Martinez chính là người ghi bàn “chốt hạ” trong loạt luân lưu.\r\n\r\nModric không ghi bàn như Messi, nhưng anh là thủ lĩnh về chiến thuật và tinh thần, là một dạng linh mục khi an ủi những cầu thủ Brazil đang khóc sau loạt luân lưu và là một phần sức mạnh lớn lao của Croatia. Điều đó đã được anh thể hiện ở Nga 4 năm trước, ở Qatar bây giờ, ở Real Madrid trong những cuộc chinh phục tại La Liga và Champions League. Anh cũng cần những đồng đội tỏa sáng dưới ảnh hưởng của mình để chiến thắng. Bruno Petkovic, người đã vật vờ nhiều năm ở Italy cho các câu lạc bộ nhỏ, đã khiến người ta nhắc đến anh với bàn thắng để đời vào lưới Brazil. Những gì đang xảy ra với Modric là sự khẳng định đẳng cấp và thiên tài của anh. Những gì đã xảy ra ở phút 117 khi Petkovic ghi bàn là một sự hồi sinh.\r\n\r\nVà đừng quên, dù những M10 là đội trưởng, thủ lĩnh của Argentina và Croatia, nhưng những người đóng vai trò quan trọng trong việc đưa họ vào đến bán kết chính là thủ môn của họ, những người gác đền đã chiến thắng đối phương trên chấm phạt đền. Argentina có Emiliano Martinez như ngày xưa từng có Sergio Goycochea, Croatia có Dominik Livakovic như 4 năm trước từng có Danijel Subasic...', '1 1.jpg', 5, 5, 5, '2024-10-25 02:44:51', '2024-10-25 02:44:51', 5),
(6, 'aaaaaaaaa', 'aaaaaaaaa', 'bão', '213asdsa', 0, 0, 0, '2024-10-25 03:13:49', '2024-10-25 03:13:49', 0),
(7, 'aaaaaaaaa', 'aaaaaaaaa', 'bão', '213asdsa', 7, 7, 7, '2024-10-25 03:14:08', '2024-10-25 03:14:08', 0),
(11, 'this is Giang', 'hiihihi', 'HAHAHAHAHAH', 'ME10', 22, 22, 22, '2024-10-25 14:47:56', '2024-10-25 14:47:56', 22),
(25, 'Tiêu đề', 'Mô tả ngắn', 'Nội dung chi tiết', 'link_hình_ảnh', 10, 1, 10, '2024-10-30 01:52:53', '2024-10-30 01:52:53', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_login`
--

CREATE TABLE `tb_login` (
  `MSSV` varchar(11) NOT NULL,
  `PASSWORD` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_login`
--

INSERT INTO `tb_login` (`MSSV`, `PASSWORD`, `email`) VALUES
('G13', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'tranvietgiang25@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usename`
--

CREATE TABLE `usename` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usename`
--

INSERT INTO `usename` (`id`, `name`) VALUES
(1, 'giang'),
(5, 'VF5'),
(223, 'Tran Viet Giang');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`MSSV`);

--
-- Chỉ mục cho bảng `usename`
--
ALTER TABLE `usename`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `usename`
--
ALTER TABLE `usename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
