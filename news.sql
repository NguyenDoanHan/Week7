-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2024 lúc 11:12 AM
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
-- Cơ sở dữ liệu: `new`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'giải trí', '', 0),
(2, 'chính trị', '', 0),
(3, 'thể thao', '', 0),
(4, 'kinh tế', '', 0),
(5, 'khám phá', '', 0);

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
(1, 'Jose Mourinho nhận thẻ đỏ, Man Utd vẫn không thắng Fenerbahce', '(VTC News) - Man Utd bị Fenerbahce cầm hòa 1-1, dù sớm có bàn dẫn trước của Christian Eriksen.', 'Rạng sáng 25/10, Man Utd và Fenerbahce cầm hòa nhau với tỉ số 1-1 tại vòng 3 Europa League 2024-25. Trong thế trận kín kẽ, tâm điểm của cuộc đối đầu này lại nằm ở tấm thẻ đỏ của Jose Mourinho.\r\n<br>\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/25/mou-07212480.png\">\r\n<br>\r\nJose Mourinho nhận thẻ đỏ rời sân.\r\n\r\nPhút 56, khi tỉ số là 1-1, \"Người đặc biệt\" đòi penalty cho đội chủ nhà, sau khi Manuel Ugarte va chạm với Bright Osayi-Samuel, khiến cầu thủ Fenerbahce ngã trong vòng cấm. Tuy nhiên, trọng tài chính Clement Turpin không thổi phạt đền và cũng không xem lại màn hình VAR.\r\n\r\nPhản ứng gay gắt với tổ trọng tài, Mourinho nhận thẻ đỏ và phải lên khán đài xem phần còn lại trận đấu. Ông chọn chỗ ngồi ngay phía sau băng ghế huấn luyện, chỉ đạo cầu thủ thông qua các mẩu giấy gửi trợ lý.\r\n\r\nSau khi Mourinho rời sân, Fenerbahce và Man Utd không ghi thêm bàn thắng. Man Utd là đội mở tỉ số nhờ công của Christian Eriksen. Từ đường lên bóng phía cánh trái, Joshua Zirkzee nhận bóng trong vòng cấm, trả ngược tuyến hai cho tiền vệ Đan Mạch. Eriksen tung cú sút gọn gàng vào góc phải của thủ môn, mở tỉ số trận đấu.\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/25/erij-07223890.png\">\r\nEriksen ghi bàn thắng duy nhất cho Man Utd.\r\n\r\nFenerbahce nhiều lần đáp trả bằng nỗ lực của Szymanski và Saint-Maximin, nhưng cũng phải tới hiệp 2 mới tìm được bàn gỡ hòa. Phút 49, tiền đạo Youssef En-Nesyri đánh đầu quân bình tỉ số cho đội chủ nhà. Kết quả 1-1 được giữ nguyên tới cuối trận, Man Utd và Fenerbahce mỗi đội giành được 1 điểm.\r\n\r\nMan Utd tiếp nỗi chuỗi trận thất vọng tại Europa Leauge khi toàn hòa 3 trận đấu, hiện xếp thứ 21 trên 36 đội, xếp dưới Fenerbahce tới 7 bậc. Trận hòa Fenerbahce cũng đánh dấu tròn 1 năm, từ ngày Man Utd thắng trận gần nhất tại cúp châu Âu.\r\n\r\nNgày 25/10/2023, họ thắng Copenhagen 1-0 trên sân nhà, trước khi hòa hoặc thua cả 3 trận vòng bảng Champions League còn lại và rời giải. Tới Europa League 2024-25, Man Utd cũng hòa 3 trận liên tiếp dù những đối thủ đã dễ thở hơn. Đối thủ tiếp theo của Man Utd là đội bóng Hy Lạp - PAOK. Trận đấu diễn ra vào ngày 7/11.\r\n\r\n', 'mou-07212480.png', 3, 1, 1, '2024-10-25 02:17:38', '2024-10-25 02:17:38', 1),
(2, 'Sao Man Utd tặng quà bất ngờ cho thí sinh Đường lên đỉnh Olympia', '(VTC News) - Joshua Zirkzee, Andy Cole tặng chiếc áo Man Utd cho Nguyễn Quốc Nhật Minh - thí sinh giành giải Ba chung kết Đường lên đỉnh Olympia 2024.', 'Sáng 13/10, chung kết Đường lên đỉnh Olympia năm thứ 24 chính thức khép lại với phần thắng nghiêng về Vũ Quang Phú Đức, học sinh trường THPT chuyên Quốc học Huế. Nam sinh này giành chiến thắng ở cả 4 phần thi và lên ngôi vô địch đầy thuyết phục. \r\n\r\nNgoài kết quả chung cuộc, khán giả xem chương trình được chứng kiến món quà bất ngờ mà ban tổ chức chương trình Đường lên đỉnh Olympia chuẩn bị cho thí sinh Nguyễn Quốc Nhật Minh, đại diện của trường THPT chuyên Hùng Vương (Gia Lai).\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/462231872102241057876229637303048741428529035n-14225619.jpg\">\r\nJoshua Zirkzee và cựu danh thủ Andy Cole gửi tặng áo đấu Man Utd tới Nhật Minh.\r\n\r\nNgay trước phần thi Về đích, chương trình chiếu đoạn video quay tại sân vận động Old Trafford, sân nhà của đội bóng Nhật Minh đặc biệt yêu thích là Manchester Utd.\r\n\r\nTrong đoạn video, phóng viên Lê Tùng giới thiệu chiếc áo đấu Man Utd mà ban tổ chức dành tặng cho Nhật Minh. Chiếc áo được in tên Nhật Minh và số 7, số áo từng gắn liền với những huyền thoại như Eric Cantona hay Cristiano Ronaldo.\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/462231872102241057876229637303048741428529035n-14225619.jpg\">\r\nMón quà càng có ý nghĩa khi cựu danh thủ Andy Cole, hay tiền đạo Joshua Zirkzee đã trực tiếp cầm áo, gửi lời chúc mừng tới nam thí sinh Olympia.\r\n\r\n<img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2024/10/13/1-14282523.png\">\r\nNguyễn Quốc Nhật Minh (trái) giành giải Ba, nhận thưởng 100 triệu đồng.\r\n\r\nĐây là món quà tinh thần cho Nhật Minh trước khi bước vào phần thi quyết định. Thí sinh Gia Lai kết thúc phần thi với số điểm là 85, giành giải Ba chung cuộc và nhận thưởng 100 triệu đồng.\r\n\r\nQuán quân Võ Quang Phú Đức là chủ nhân của chiếc vòng nguyệt quế và phần thưởng 50.000 USD (1,25 tỷ đồng). ', '1-14282523.png', 3, 1, 1, '2024-10-23 02:18:03', '2024-10-30 02:18:03', 2),
(3, 'Bão số 6 TRAMI gây sóng biển cao 9 mét, nước dâng trên đất liền', 'Bão số 6 TRAMI có đường đi phức tạp, dự báo sẽ gây mưa lớn, nước dâng ở nhiều tỉnh miền Trung. Trên biển, sóng cao từ 7-9 mét.', 'Theo dự báo từ TTKKTV, hồi 22 giờ ngày 25/10, vị trí tâm bão TRAMI ở vào khoảng 17,5 độ Vĩ Bắc; 115,4 độ Kinh Đông, trên vùng biển phía Đông của khu vực Bắc Biển Đông, cách quần đảo Hoàng Sa khoảng 350km về phía Đông Đông Bắc. Sức gió mạnh nhất vùng gần tâm bão mạnh cấp 10 (89-102km/h), giật cấp 12. Di chuyển theo hướng Tây, tốc độ khoảng 20km/h.\r\n\r\nTừ 72 đến 120 giờ tiếp theo, bão di chuyển chủ yếu theo hướng Đông mỗi giờ đi được 5-10km, cường độ tiếp tục suy yếu thêm.\r\n <img src=\"https://i.ex-cdn.com/giadinhonline.vn/files/content/2024/10/26/screenshot_2-0007.jpg\">\r\n\r\nDự báo bão TRAMI trong các giờ tiếp theo.\r\nDo ảnh hưởng của bão số 6 TRAMI, khu vực Bắc Biển Đông gió mạnh cấp 8-9, vùng gần tâm bão đi qua cấp 10-12 (89-133km/h), giật cấp 15, sóng biển cao 5,0-7,0m, vùng gần tâm bão 7,0-9,0m; biển động dữ dội.\r\n\r\nTừ gần sáng ngày 27/10 vùng biển các tỉnh từ Quảng Bình đến Quảng Ngãi (bao gồm đảo Cồn Cỏ, Cù Lao Chàm, Lý Sơn) có gió mạnh dần lên cấp 6-7, sau tăng lên cấp 8-9, vùng gần tâm bão đi qua cấp 10-11, giật cấp 14, sóng biển cao 3,0-5,0m, vùng gần tâm bão 5,0-7,0m; biển động dữ dội.\r\n\r\nBão số 6 TRAMI gây mưa lớn, nước dâng nhiều khu vực\r\nKhông chỉ trên biển, do ảnh hưởng của bão số 6 TRAMI, từ sáng ngày 27/10, ven biển các tỉnh từ Quảng Trị tới Quảng Nam có khả năng xuất hiện nước dâng do bão cao từ 0,4-0,6m.\r\n\r\nTàu/thuyền hoạt động trong các vùng nguy hiểm nói trên (đặc biệt trên khu vực huyện đảo Hoàng Sa), khu vực biển ven bờ từ Quảng Bình đến Quảng Ngãi đều có khả năng chịu tác động của dông, lốc, gió mạnh, sóng lớn.\r\n\r\nNguy cơ cao sạt lở đê, kè biển tại ven biển các tỉnh từ Quảng Trị tới Quảng Nam do tác động của sóng lớn và nước dâng do bão.\r\n\r\nTrên đất liền, từ sáng ngày 27/10, trên đất liền ven biển từ Quảng Bình đến Quảng Ngãi có gió mạnh dần lên cấp 6-7, vùng gần tâm bão cấp 8-9, giật cấp 11.\r\n\r\nTừ chiều tối và đêm 26/10 đến 28/10, ở khu vực Quảng Trị đến Quảng Ngãi có mưa to đến rất to với tổng lượng mưa phổ biến từ 300-500mm, cục bộ có nơi trên 700mm. Cảnh báo nguy cơ có mưa cục bộ cường suất lớn (>100mm/3h). Khu vực Hà Tĩnh-Quảng Bình, Bình Định và Bắc Tây Nguyên có mưa to, cục bộ có nơi mưa rất to với tổng lượng mưa phổ biến từ 100-200mm, có nơi trên 300mm\r\n\r\nDiễn biến bão số 6 còn rất phức tạp và có thể có thay đổi. Cần lưu ý cập nhật trong các bản tin bão tiếp theo.\r\n\r\n', 'screenshot_2-0007.jpg', 2, 0, 0, '2024-10-26 05:07:51', '2024-10-26 05:07:51', 3),
(4, 'Đề xuất xem xét lại quy định kỷ luật đảng viên sinh con thứ 3', 'Vấn đề tỷ suất sinh thấp và Việt Nam đang tiến tới giai đoạn già hóa dân số được các đại biểu Quốc hội nêu ra cùng với đề xuất xem xét lại quy định đảng viên không được sinh con thứ 3.', 'Sáng 26/10, tại phiên thảo luận tổ của Quốc hội về tình hình kinh tế xã hội, Đại biểu Nguyễn Thiện Nhân (TPHCM) cho biết, ông từng kiến nghị bỏ quy định kỷ luật đảng viên sinh con thứ 3, để phù hợp với tình hình mới. Bởi trong xã hội hiện đại, gia đình nào cảm thấy không nuôi được con tự họ đã sinh ít con. Chỉ gia đình nào đủ điều kiện nuôi con tốt mới sinh nhiều con.\r\n\r\nNăm 2023, mức sinh của Việt Nam là 1,96, trong khi mức sinh thay thế lý tưởng là 2,1 con trên mỗi phụ nữ. Ông cho biết cách đây 7 năm, Trung ương yêu cầu giữ vững tổng tỷ suất sinh thay thế nhưng đến nay đã không giữ được.\r\n\r\nÔng nêu một trong các chỉ tiêu Trung ương đề ra là tổng tỷ suất sinh tăng nhưng trong báo cáo kinh tế - xã hội chưa có.\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/26/0be707e72be393bdcaf2-24605.jpg?width=0&s=pclCoeA5b6gDxF0iw-Eo2A\">\r\nĐại biểu Nguyễn Thiện Nhân. Ảnh: Quốc hội\r\n\"Chúng tôi thiết tha đề nghị bổ sung chỉ tiêu tổng tỷ suất sinh của cả nước vào báo cáo kinh tế, xã hội của Quốc hội và giám sát. Nếu chúng ta làm được 2 năm thì mới có cơ sở đưa vào chỉ tiêu 5 năm tới. Đây là vấn đề hệ trọng quốc gia vì liên quan đến phát triển con người…\", đại biểu Nguyễn Thiện Nhân bày tỏ.\r\n\r\nTheo ông Nhân, \"chúng ta xác định con người là trung tâm, tất cả vì con người, con người là động lực. Trong chăm lo con người thì chăm lo cuộc sống là rất quan trọng\". \r\n\r\nÔng Nhân cũng mong muốn Chính phủ sớm công bố mức sống tối thiểu và tiền lương đủ sống tối thiểu cho gia đình 4 người. Lương đủ sống tối thiểu là một người đi làm nuôi được người phụ thuộc và nuôi được con. Theo ông, từ đó mới nâng được tỷ suất sinh, mỗi gia đình có 2 con. \r\n\r\nĐại biểu Phạm Khánh Phong Lan (TPHCM) cho biết, Việt Nam đang nỗ lực nâng tỷ suất sinh nhưng cho tới giờ, đảng viên sinh con thứ 3 vẫn bị kỷ luật.\r\n\r\n\"Chúng ta phải xem lại các quy định trong quản lý cán bộ, đảng viên. Chưa kể sắp đến kỳ bổ nhiệm, có con thứ 3 là coi như xong\", bà Lan đề nghị.\r\n\r\n3cfbcabed1ba69e430ab.jpg\r\nĐại biểu Phạm Khánh Phong Lan. Ảnh: Quốc hội\r\nTheo đại biểu, chủ trương đảng viên không sinh con thứ 3 ở giai đoạn trước phù hợp nhưng hiện nay \"khi chúng ta thay đổi về quan điểm thì rất cần những thay đổi về chính sách, về các điều lệ cũng như quy định, đặc biệt là cho đảng viên, cán bộ\".\r\n\r\nCũng nói về tỷ suất sinh, đại biểu Trần Đức Thuận (Nghệ An) nêu tình trạng già hóa dân số khi Việt Nam chuẩn bị vào kỷ nguyên già hóa dân số. Năm 2017, Trung ương đã có Nghị quyết 21 về chính sách dân số trong tình hình mới, ngày 15/8 vừa qua, Chính phủ có Chỉ thị 27 về tăng cường công tác dân số, trong đó giao cho Bộ Y tế rà soát để nâng tỷ lệ sinh.\r\n\r\n', '0be707e72be393bdcaf2-24605.jpg', 4, 0, 0, '2024-10-26 05:16:43', '2024-10-26 05:16:43', 4),
(5, 'Bộ trưởng TN&MT: Dự án đường sắt tốc độ cao Bắc - Nam cần 10.827ha đất', 'Theo Bộ trưởng TN&MT Đỗ Đức Duy, dự án đường sắt tốc độ cao trên trục Bắc - Nam có nhu cầu sử dụng khoảng 10.827 ha đất. Chính phủ đang hoàn thiện hồ sơ trình Quốc hội xem xét, quyết định chủ trương đầu tư tại kỳ họp này.', 'Sáng 23/10, Quốc hội đã nghe Bộ trưởng TN&MT Đỗ Đức Duy trình quyết định chủ trương điều chỉnh Quy hoạch sử dụng đất quốc gia thời kỳ 2021-2030, tầm nhìn đến năm 2050.\r\n\r\nQua 3 năm thực hiện, quy hoạch sử dụng đất quốc gia đã phát huy hiệu quả tích cực, đáp ứng các mục tiêu phát triển kinh tế - xã hội, bảo đảm quốc phòng, an ninh.\r\n\r\nTuy nhiên, do ảnh hưởng của đại dịch Covid-19, thiên tai, kết hợp với các tác động tiêu cực từ tình hình biến động kinh tế, chính trị thế giới, dẫn đến việc phát triển các ngành, lĩnh vực còn gặp nhiều khó khăn nên việc chuyển dịch đất đai để thực hiện các dự án phát triển một số ngành, lĩnh vực chưa đáp ứng được yêu cầu.\r\n\r\nNgoài ra, việc chuẩn bị đầu tư và bố trí nguồn lực để thực hiện quy hoạch còn hạn chế.\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/23/231020240825-z5958091989748-c686bf7427f9bc4726bfe683e2986522-20533.jpg?width=0&s=q8ZUdNClxHq8X7BnIm3ndg\">\r\nBộ trưởng TN&MT Đỗ Đức Duy trình bày tờ trình. Ảnh: Quốc hội\r\nTheo Bộ trưởng TN&MT, tại thời điểm Quốc hội thông qua quy hoạch sử dụng đất quốc gia thì quy hoạch tổng thể quốc gia và nhiều quy hoạch ngành quốc gia, quy hoạch vùng, quy hoạch tỉnh chưa được phê duyệt. Do đó, chưa xác định đầy đủ, chính xác nhu cầu sử dụng đất trong quy hoạch, kế hoạch sử dụng đất quốc gia.\r\n\r\nSau khi các quy hoạch này được phê duyệt, cần phải điều chỉnh quy hoạch sử dụng đất quốc gia cho phù hợp với yêu cầu thực tiễn và bảo đảm tính thống nhất trong hệ thống các quy hoạch.\r\n\r\nBộ trưởng Đỗ Đức Duy cho biết, tại Hội nghị lần thứ 10, Ban Chấp hành Trung ương khóa 13 đã thống nhất chủ trương thực hiện Dự án đường sắt tốc độ cao trên trục Bắc - Nam trước năm 2030 với nhu cầu sử dụng đất khoảng 10.827 ha. Hiện, Chính phủ đang hoàn thiện hồ sơ để trình Quốc hội xem xét, quyết định chủ trương đầu tư tại kỳ họp này.\r\n\r\nBộ trưởng TN&MT cũng nêu nhiều dự án hạ tầng quan trọng quốc gia đã và đang được chuẩn bị đầu tư trong giai đoạn từ nay đến năm 2030. Vì vậy, cần phải sớm xác định và bố trí bổ sung quỹ đất thực hiện các dự án, bảo đảm mục tiêu phát triển hệ thống kết cấu hạ tầng chiến lược đồng bộ, kết nối không gian phát triển liên ngành, liên vùng, các hành lang kinh tế và các vùng động lực phát triển của quốc gia.\r\n\r\nTrình bày báo cáo thẩm tra sau đó, Chủ nhiệm Ủy ban Kinh tế của Quốc hội Vũ Hồng Thanh cho biết, việc Chính phủ đề xuất điều chỉnh quy hoạch sử dụng đất quốc gia là phù hợp với yêu cầu của Quốc hội, nhất là trong bối cảnh nước ta đang chuẩn bị triển khai một số dự án quan trọng quốc gia (Dự án đường sắt tốc độ cao trên trục Bắc - Nam).\r\n\r\nCơ quan thẩm tra tán thành sự cần thiết điều chỉnh quy hoạch sử dụng đất quốc gia như Chính phủ đề xuất.\r\n\r\nBộ trưởng TN&MT cho biết, Chính phủ sẽ trình Quốc hội điều chỉnh 8 chỉ tiêu sử dụng đất gồm nhóm đất nông nghiệp, nhóm đất phi nông nghiệp.\r\n\r\nViệc tính toán, xác định 8 chỉ tiêu sử dụng đất trong quy hoạch sử dụng đất quốc gia điều chỉnh lần này cần phải tiến hành rà soát kỹ lưỡng, cân đối các chỉ tiêu sử dụng đất của các ngành, lĩnh vực và các địa phương.\r\n\r\nTrong đó, ưu tiên bố trí quỹ đất sử dụng cho mục đích quốc phòng, an ninh, giữ ổn định quỹ đất trồng lúa để bảo đảm an ninh lương thực quốc gia, quản lý chặt chẽ đất rừng, duy trì độ che phủ rừng để góp phần bảo vệ môi trường sinh thái, ứng phó với biến đổi khí hậu và thực hiện mục tiêu phát triển bền vững.', '231020240825-z5958091989748-c686bf7427f9bc4726bfe683e2986522-20533.jpg', 5, 0, 0, '2024-10-26 05:18:49', '2024-10-26 05:18:49', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'phạm cả'),
(2, 'giang'),
(3, 'tuấn '),
(4, 'lan'),
(5, 'ánh');

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
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
