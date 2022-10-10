-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 05:08 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(3, 3, 10),
(4, 4, 10),
(5, 5, 10),
(6, 5, 1),
(7, 5, 7),
(8, 6, 10),
(9, 6, 1),
(10, 6, 7),
(11, 7, 10),
(12, 7, 1),
(13, 7, 7),
(14, 8, 10),
(15, 8, 1),
(16, 8, 7),
(17, 9, 10),
(18, 9, 1),
(19, 9, 7),
(20, 10, 10),
(21, 10, 1),
(22, 10, 7),
(23, 11, 10),
(24, 11, 1),
(25, 11, 7),
(26, 12, 10),
(27, 12, 1),
(28, 12, 7),
(29, 13, 10),
(30, 13, 1),
(31, 13, 7),
(32, 14, 10),
(33, 14, 1),
(34, 14, 7),
(35, 15, 10),
(36, 15, 1),
(37, 15, 7),
(38, 16, 10),
(39, 16, 1),
(40, 16, 7),
(41, 17, 10),
(42, 17, 1),
(43, 17, 7),
(44, 18, 1),
(45, 18, 2),
(46, 19, 1),
(47, 19, 2),
(48, 19, 6),
(49, 19, 2),
(50, 20, 1),
(51, 20, 2),
(52, 20, 6),
(53, 20, 2),
(54, 20, 9),
(55, 20, 4),
(56, 21, 1),
(57, 21, 2),
(58, 21, 6),
(59, 21, 2),
(60, 21, 9),
(61, 21, 4),
(62, 21, 1),
(63, 22, 1),
(64, 22, 2),
(65, 22, 6),
(66, 22, 2),
(67, 22, 9),
(68, 22, 4),
(69, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(3, '2022-10-10 10:19:50', '1', '2', '3', '5'),
(4, '2022-10-10 10:39:27', '1', '2', '3', '5'),
(5, '2022-10-10 10:51:46', '11', '22', '33', '55'),
(6, '2022-10-10 11:21:36', '11', '22', '33', '55'),
(7, '2022-10-10 11:22:05', '11', '22', '33', '55'),
(8, '2022-10-10 11:22:08', '11', '22', '33', '55'),
(9, '2022-10-10 11:22:52', '11', '22', '33', '55'),
(10, '2022-10-10 11:22:54', '11', '22', '33', '55'),
(11, '2022-10-10 11:23:38', '11', '22', '33', '55'),
(12, '2022-10-10 11:24:51', '11', '22', '33', '55'),
(13, '2022-10-10 11:24:54', '11', '22', '33', '55'),
(14, '2022-10-10 11:25:04', '11', '22', '33', '55'),
(15, '2022-10-10 11:26:00', '11', '22', '33', '55'),
(16, '2022-10-10 11:26:38', '11', '22', '33', '55'),
(17, '2022-10-10 11:27:26', '11', '22', '33', '55'),
(18, '2022-10-10 11:32:46', 'ิbig', 'Za', 'OOO', '99'),
(19, '2022-10-10 11:38:20', 'aaa', 'bbb', 'ccc', '111'),
(20, '2022-10-10 11:39:17', 'ddd', 'fff', 'ggg', '555'),
(21, '2022-10-10 11:42:52', 'www', 'eee', 'yyy', '777'),
(22, '2022-10-10 11:50:46', 'jjj', 'kkk', 'mmm', '888');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Vans Comfycrush Old Sko Multicolored moma', 'Style\nVN0A3WMA1PJ\n\nColorway\nWHITE/RAINBOW', 1800, 'https://i.ibb.co/V9XRB84/1800-Vans-Comfycrush-Old-Sko-Multicolored.jpg'),
(2, 'Vans x Pretty Guardian Sailor Moon Slip-On', 'Style\nVN0005VZ447\n\nColorway\nPURPLE/BLACK/YELLOW', 1800, 'https://i.ibb.co/rfTZqdd/1800-Vans-x-Pretty-Guardian-Sailor-Moon-Slip-On-V-Infant.webp'),
(3, 'VANS Authentic - Off White', 'Born in Anaheim, California in 1966, the Authentic is the original Vans heritage style. Originally known as Vans #44 Deck Shoes, the Authentic became an immediate cult icon, and has embodied our “Off The Wall” attitude ever since. Constructed with a simple low top, lace-up profile, this classic shoe keeps the old school vibe alive with sturdy canvas uppers, metal eyelets, and signature rubber waffle outsoles.', 1990, 'https://i.ibb.co/GCNyR0G/1990-VANS-Authentic-Off-White.jpg'),
(4, 'Authentic Disruptive', 'VN0A348A3Z2-สีครีมลาย ( Marshmallow / True White )- ตาไก่โลหะ\n- อัปเปอร์ทำจากผ้าแคนวาสที่แข็งแรง\n- โครงสร้างพื้นรองเท้าวัลคาไนซ์แบบดั้งเดิม\n- พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n- พื้นดอกยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', 2100, 'https://i.ibb.co/wBnLrRh/2100-Authentic-Disruptive.jpg'),
(5, 'Classic Slip-On Checkerboard', 'รองเท้าสลิปออนอันเป็นเอกลักษณ์ของ Vans\n- อัปเปอร์ทำจากผ้าแคนวาสทรงเตี้ยพร้อมพิมพ์ลายตาราง Vans สุดคลาสสิก\n- ส่วนหุ้มข้อบุนวมเพื่อการรองรับ\n- แต่งแถบด้านข้างแบบยางยืด\n- พื้นรองเท้าด้านนอกทำจากยางวาฟเฟิล', 2100, 'https://i.ibb.co/y6wJGyP/2100-Classic-Slip-On-Checkerboard.png'),
(6, 'Era Mix & Match', 'ส่วนบนของผ้าทำจากผ้าแคนวาส - ปลอกคอ - แท็บส้น \' Off The Wall \' - เทปฟ็อกซ์สูง - พื้นรองเท้าชั้นกลางวัลคาไนซ์ - ยางนอกพื้นรองเท้า', 2100, 'https://i.ibb.co/L64CJ2t/2100-Era-Mix-Match.jpg'),
(7, 'Classic Slip-On Checkerboard', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ภาพพิมพ์กระดานหมากรุก - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', 2300, 'https://i.ibb.co/Tw5Zp9Q/2300-Classic-Slip-On-Checkerboard.jpg'),
(8, 'Classic Slip-On Disruptive (VN0A33TB43D)', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', 2300, 'https://i.ibb.co/D9sLBFb/2300-Classic-Slip-On-Disruptive-VN0-A33-TB43-D.jpg'),
(9, ' Classic Slip-On Patchwork Floral', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', 2300, 'https://i.ibb.co/vDTBpyk/2300-Classic-Slip-On-Patchwork-Floral.png'),
(10, 'Era 95 DX Anaheim Factory', 'อัปเปอร์ทำจากผ้าแคนวาส - คอลเลคชั่น Anaheim Factory - แผ่นรองพื้นรองเท้า Ortholite - พื้นรองเท้ายางวาฟเฟิล', 2300, 'https://i.ibb.co/z4zQ29q/2300-Era-95-DX-Anaheim-Factory.jpg'),
(11, ' Era Chambray', '– พื้นรองเท้าวาฟเฟิล\n– ความสูงรวมของรองเท้า : 9 ซม.\n– พื้นรองเท้าชั้นนอก : อีลาสโตเมอร์\n– น้ำหนักรองเท้า (ไซส์เล็กสุด) : 332 กรัม\n– อัปเปอร์ : Chambray\n– แท็บส้น ‘ Off The Wall ‘\n– เทปฟ็อกซ์สูง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– พื้นรองเท้า : ยาง', 2300, 'https://i.ibb.co/8rF23h1/2300-Era-Chambray.jpg'),
(12, 'Era New Varsity', '– ส่วนบนของผ้าทำจากผ้าแคนวาส\n– ปลอกคอ\n– แท็บส้น ‘ Off The Wall ‘\n– เทปฟ็อกซ์สูง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– ยางนอกพื้นรองเท้า', 2300, 'https://i.ibb.co/Prb7w0y/2300-Era-New-Varsity.png\" alt=\"2300-Era-New-Varsity\" border=\"0\"></a> <a href=\"https://ibb.co/BjPKMYb\"><img src=\"https://i.ibb.co/BjPKMYb/2300-Era-U-Color.png'),
(13, 'Era U-Color', 'โดดเด่นด้วยส่วนบนของรองเท้าทำจากผ้าแคนวาสที่แข็งแรงตาไก่โลหะปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่นและพื้นรองเท้ายางวาฟเฟิลอันเป็นเอกลักษณ์', 2300, 'https://i.ibb.co/BjPKMYb/2300-Era-U-Color.png'),
(14, 'Slip-On Brushed Twill', '– อัปเปอร์ทำจากผ้า\n– เทปฟ็อกซ์สูง\n– ยางยืดด้านข้าง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– พื้นรองเท้ายางชั้นนอกดอกยางวาฟเฟิล\n– แผงยืดหยุ่น\n– แท็บส้น ‘ Off The Wall ‘', 2300, 'https://i.ibb.co/QMHCJv4/2300-Slip-On-Brushed-Twill.jpg'),
(15, 'Authentic Pig Suede', '– ตาไก่โลหะ\n– อัปเปอร์ทำจากหนังกลับ\n– โครงสร้างพื้นรองเท้าวัลคาไนซ์แบบดั้งเดิม\n– พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n– พื้นดอกยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', 2500, 'https://i.ibb.co/PQHHjjv/2500-Authentic-Pig-Suede.png'),
(16, 'Classic Slip-On Jawbones(VN0A4BV3TBU)', '- สลิปออนกราฟิกโทนสีโมโนโครม\r\n- อัปเปอร์ทำจากหนังวัว\r\n- พื้นรองเท้าทำจากผ้า\r\n- พื้นรองเท้ายางชั้นนอก\r\n- ปลายเท้ามน\r\n- สไตล์สลิปออน', 2500, 'https://i.ibb.co/0QgjSXy/2500-Classic-Slip-On-Jawbones-VN0-A4-BV3-TBU.jpg'),
(17, 'Slip-On Breast Cancer Awareness', 'อัปเปอร์ - ผ้าแคนวาส - วัสดุน้ำหนักเบาซึ่งมีให้เลือกหลายสีและใช้สำหรับการผลิตรองเท้าฤดูร้อนเป็นหลัก\nพื้นรองเท้าชั้นกลาง - ยาง - วัสดุที่ดูแลรักษาง่ายและคุณจะประทับใจโดยเฉพาะในสภาพอากาศที่ฝนตก\nพื้นรองเท้าชั้นนอก - วาฟเฟิล - พื้นรองเท้าชั้นนอกในตำนานที่จะไม่ขาดการสัมผัสกับพื้นผิว เป็นเรื่องปกติของรองเท้า Vans', 2500, 'https://i.ibb.co/Vg0q7NP/2500-Slip-On-Breast-Cancer-Awareness.png'),
(18, 'Vans Cultivate Care Classic SlipOn ( VN000XG88MC )', '– คอลเลกชั่น Cultivate Care\n– อัปเปอร์ทำจากผ้าแคนวาสที่ทนทานพร้อมลายตารางหมากรุกสีสันสดใส\n– แต่งแถบยาง\n– ยืดด้านข้าง\n– ส่วนหุ้มข้อบุนวมที่รองรับได้\n– ด้านข้างแบบโปร่งแสง\n– พื้นรองเท้าด้านนอกทำจากยางวาฟเฟิลหลากสี\nขนาด', 2500, 'https://i.ibb.co/ggwpc4t/2500-Vans-Cultivate-Care-Classic-Slip-On-VN000-XG88-MC.jpg'),
(19, 'Sk8-Hi  True White', '– อัปเปอร์ทำจากหนังกลับและผ้าแคนวาส\n– ปลอกคอ\n– ชั้นกักเก็บความร้อน\n– เสริม toecap\n– พื้นรองเท้าชั้นนอกวัลคาไนซ์\n– UltraCush insoles เพื่อความสบายที่ยาวนาน', 2600, 'https://i.ibb.co/rdm76M6/2600-Sk8-Hi-True-White.png'),
(20, 'Era Patchwork', 'ส่วนบนของผ้าใบ\n- หนังและหนังกลับซ้อนทับ\n- ปลอกคอ\n- แท็บส้น Off The Wall\n- UltraCush Sockliner\n- เทปฟ็อกซ์สูง\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์\n- ยางนอกพื้นรองเท้า\n- รูปแบบการลากวาฟเฟิล', 2800, 'https://i.ibb.co/cckbQL5/2800-Era-Patchwork.png'),
(21, 'Old Skool Ditsy Floral', 'อัปเปอร์ทำจากหนังกลับและผ้าแคนวาส\n- ด้านข้างที่โดดเด่น\n- การออกแบบลูกไม้แบบดั้งเดิม\n- ปลอกคอ\n- เสริมนิ้วเท้า\n- พื้นรองเท้าชั้นนอกวาฟเฟิล', 2800, 'https://i.ibb.co/9smWNb9/2800-Old-Skool-Ditsy-Floral.jpg'),
(22, 'Old Skool Packing Tape', 'อัปเปอร์ทำจากผ้าแคนวาสพิมพ์ลายและหนังกลับ\n- Re-Enforced Toecaps เพื่อทนต่อการสึกหรอและการฉีกขาด\n- Midsole Cushioning สำหรับการสวมใส่ตลอดวัน\n- ปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่น\n- พื้นรองเท้าชั้นนอก Vans Waffle อันเป็นเอกลักษณ์เพื่อการยึดเกาะและความทนทาน', 2800, 'https://i.ibb.co/cF5QKWt/2800-Old-Skool-Packing-Tape.png'),
(23, 'Old Skool Valentines Hearts', 'พิมพ์หัวใจวันวาเลนไทน์ที่ด้านข้าง\n- แถบด้านข้างอันเป็นสัญลักษณ์ของ Vans\n- ภาพเงาลูกไม้ด้านบนต่ำ\n- หนังนิ่มทนทาน\n- อัปเปอร์เป็นผ้าแคนวาส / หนังกลับ\n- การปิดเชือกผูกรองเท้า\n- ลิ้นเบาะและซับใน\n- พื้นรองเท้ายางชั้นนอก Waffle Outsole ลายเซ็นของ Vans', 2800, 'https://i.ibb.co/zJRwdT9/2800-Old-Skool-Valentines-Hearts.jpg'),
(24, 'Style 36 Classic Sport', 'อัปเปอร์ทำจากผ้าแคนวาสและหนังกลับ\n- ดีไซน์ลูกไม้แบบดั้งเดิม\n- ฝาครอบนิ้วเท้า\n- ซับในผ้า\n- พื้นรองเท้าชั้นนอกทำจากยางวาฟเฟิลแบบคลาสสิก\n- โครงสร้างวัลคาไนซ์ปลอกคอบุนวม\n- แท็บส้น \' Off The Wall \'', 2800, 'https://i.ibb.co/JKYFw7s/2890-Comfy-Cush-Era-Pinned.jpg'),
(25, 'Style 36 Retro Sport', 'ส่วนบนผ้าแคนวาส\n- การซ้อนทับหนังกลับ\n- แท็บส้น \' Off The Wall \'\n- เทปฟ็อกซ์สูง\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์\n- ยางรองพื้นชั้นนอกของ Gum\n- รูปแบบการลากวาฟเฟิล', 2800, 'https://i.ibb.co/SsBqw2M/2900-Era-95-DX-Anaheim-Factory.jpg'),
(26, 'ComfyCush Era Pinned', 'เชือกผูกรองเท้าปิด\n- สีน้ำเงินด้านหนึ่ง\n- อีกด้านสีส้ม\n- ลายทางด้านหน้า\n- อัปเปอร์ทำจากผ้าแคนวาสและหนังนิ่ม\n- รองเท้าทรงเตี้ย หน้าลูกไม้\n- ตาไก่โลหะ\n- เพิ่มการรองรับส่วนโค้ง\n- ซับในดูดซับความชื้น\n- ComfyCush พื้นรองเท้ายางวาฟเฟิล', 2890, 'https://i.ibb.co/JKYFw7s/2890-Comfy-Cush-Era-Pinned.jpg'),
(27, 'Era 95 DX Anaheim Factory', 'ดีไซน์เรียบง่ายสไตล์โอลด์สคูล\n- อัปเปอร์ทำจากผ้าแคนวาสแบบเย็บสองชั้น\n- ซับในผ้า\n- เชือกตาไก่โลหะ\n- พื้นรองเท้าบุโฟม\n- พื้นรองเท้าชั้นนอกวาฟเฟิลวัลคาไนซ์\n- ป้ายธงของ Vans ที่แผงด้านข้าง\n- ป้ายยาง Vans OTW ที่ส้นของกรอบ', 2900, 'https://i.ibb.co/SsBqw2M/2900-Era-95-DX-Anaheim-Factory.jpg'),
(28, 'Sk8-Mid Leather', 'ความงาม Sk8-Hi ในตำนานของ Vans ในรองเท้าชั้นกลาง\n- อัปเปอร์ทำจากหนังทนทาน\n- แบบผูกเชือก\n- เสริม toe caps\n- ส่วนหุ้มข้อและลิ้นรองเท้าบุนวมเบา\n- โครงสร้างพื้นรองเท้าวัลคาไนแบบดั้งเดิม ยืดหยุ่นและให้ความรู้สึกเหมือนเล่นกระดานโต้คลื่น\n- พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n- พื้นยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', 2900, 'https://i.ibb.co/ys0vLFZ/2900-Sk8-Mid-Leather.jpg'),
(29, 'Vans Era Brocade Patchwork', 'ส่วนบนของผ้าทำจากผ้าแคนวาส \n\n- มีนวม \n\n- แท็บส้น \' Off The Wall \' \n\n- เทปฟ็อกซ์สูง \n\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์ \n\n- พื้นรองเท้ายาง', 2900, 'https://i.ibb.co/DkT640T/2900-Vans-Era-Brocade-Patchwork.jpg'),
(30, 'Old Skool 36 DX Anaheim Factory', 'มีเทปฟ็อกซ์ที่สูงขึ้นเล็กน้อยแก้มยางเคลือบเงาและ Sidestripe อันเป็นสัญลักษณ์สีขาว ', 3200, 'https://i.ibb.co/gPMG4Ys/3200-Old-Skool-36-DX-Anaheim-Factory.png'),
(31, 'Old Skool Thermochrome Checker', 'อัปเปอร์เป็นผ้าแคนวาส+หนังกลับ เคลือบด้วยยางเปลี่ยนสี\n- พื้นรองเท้ายางชั้นนอก\n- การปิดเชือกผูกรองเท้า\n- พิมพ์กระดานหมากรุกที่ด้านข้าง\n- เปลี่ยนสีเมื่ออุณหภูมิร้อน', 3200, 'https://i.ibb.co/Xxp7CSH/3200-Old-Skool-Thermochrome-Checker.png'),
(32, 'ComfyCush Sk8-Mid', 'แบบหุ้มข้อ\n- โครงสร้างโฟมและยางขึ้นรูปร่วมกัน\n- เบาสบายความรู้สึกเหมือนยืนบนเมฆ\n- ปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่น\n- อัปเปอร์ทำจากหนังกลับและผ้าแคนวาสที่ทนทาน\n- พื้นรองเท้าวาฟเฟิลอันเป็นเอกลักษณ์', 3490, 'https://i.ibb.co/D7hzR8g/3490-Comfy-Cush-Sk8-Mid.jpg'),
(33, 'Carbon UltraRange Exo', 'EXO Skeleton ให้การสนับสนุนในตัวตลอดนิ้วเท้าและแก้มข้างตรงกลาง พร้อมตัวล็อคส้นเพื่อความกระชับพอดี\n- ULTRACUSH® FOR COMFORT พื้นรองเท้าชั้นกลาง UltraCush® Lite ที่ขึ้นรูปร่วมกันช่วยเพิ่มความสบาย ไม่ใช่น้ำหนัก\n- พื้นรองเท้าด้านนอกหุ้มด้วยวาฟเฟิลหุ้มยางทั้งตัวช่วยเพิ่มการยึดเกาะและความยืดหยุ่น\n- ลิ้น UltraCush® พร้อมช่องระบายอากาศให้การไหลเวียนของอากาศที่เหนือกว่า', 3500, 'https://i.ibb.co/xC9dW0m/3500-Carbon-Ultra-Range-Exo.jpg'),
(34, 'OLD SKOOL OVERT COMFYCUSH', 'OLD SKOOL OVERT COMFYCUSH นำการออกแบบมาจากสไตล์ดั้งเดิมจาก OLD SKOOL เข้ากับพื้นรองเท้าโฟม ComfyCush พื้นรองเท้าชั้นในถอดออกได้ พื้นรองเท้าด้านนอกทำจากยาง ComfyCush เพิ่มโฟมที่ลิ้นรองเท้าและส่วนหุ้มข้อเพื่อการรองรับและความสบายที่เพิ่มขึ้น ยังคงรูปลักษณ์อันเป็นเอกลักษณ์ของ Vans แต่เพิ่มความสบายยิ่งขึ้นไปอีก', 3690, 'https://i.ibb.co/3RsCttV/3690-OLD-SKOOL-OVERT-COMFYCUSH.jpg'),
(35, 'Vans MOCA x Authentic VN0A5KRDYQ8', 'ใส่สบาย', 3700, 'https://i.ibb.co/6HnGBJp/3700-Vans-MOCA-x-Authentic-VN0-A5-KRDYQ8.webp'),
(36, 'Vans House of Terror Old Skool The Exorcist Horror Black Shoe', 'ใส่สบาย', 4800, 'https://i.ibb.co/5v0LV0V/4800-Vans-House-of-Terror-Old-Skool-The-Exorcist-Horror-Black-Shoe.jpg'),
(37, 'VANS SK8 HI MOCA FRANCES STARK BLACK', 'ใส่สบาย', 4990, 'https://i.ibb.co/tJLXsch/4990-VANS-SK8-HI-MOCA-FRANCES-STARK-BLACK.webp'),
(38, 'Vans Save Our Planet x Era \'White Black\' Classic', 'ใส่สบาย', 5900, 'https://i.ibb.co/8YvS4Nd/5900-Vans-Save-Our-Planet-x-Era-White-Black-Classic.webp'),
(39, 'Classic Slip-On(Brocade) รุ่น VN0A5JMH8L8 ', 'ใส่สบาย', 2300, 'https://i.ibb.co/pdzWpVT/Classic-Slip-On-Brocade-VN0-A5-JMH8-L8-2300.webp'),
(40, 'Comfy Cush Old Skool ', 'ใส่สบาย', 3200, 'https://i.ibb.co/LkQSZQr/Comfy-Cush-Old-Skool-3200.webp'),
(41, 'Vans Classic Slip-On Shadow ', 'ใส่สบาย', 2100, 'https://i.ibb.co/Q8sR6XG/Vans-Classic-Slip-On-Shadow-2100.webp'),
(42, 'Vans Eco Theory Authentic', 'ใส่สบาย', 2600, 'https://i.ibb.co/Svvv2TC/Vans-Eco-Theory-Authentic-2600.webp'),
(43, 'Vans Eco Theory Sk8-Hi Tapered', 'ใส่สบาย', 3400, 'https://i.ibb.co/xXFR7HM/Vans-Eco-Theory-Sk8-Hi-Tapered-3400.webp'),
(44, 'Vans Era ', 'ใส่สบาย', 1990, 'https://i.ibb.co/m9KxQFB/Vans-Era-1990.webp'),
(45, 'Vans Sk8-Low Women\'s ', 'ใส่สบาย', 2800, 'https://i.ibb.co/jzvCbZj/Vans-Sk8-Low-Women-s-2800.webp'),
(46, 'vans Style 36 Women\'s ', 'ใส่สบาย', 2800, 'https://i.ibb.co/wpnHsqR/vans-Style-36-Women-s-2800.webp'),
(47, 'Vans รองเท้า Old Skool', 'ใส่สบาย', 2800, 'https://i.ibb.co/16gQ6h0/Vans-Old-Skool-2800.webp'),
(48, 'Vans รองเท้าผู้ชาย Sk8-Hi Tapered ', 'ใส่สบาย', 2600, 'https://i.ibb.co/kJ69ktg/Vans-Sk8-Hi-Tapered-2600.webp'),
(49, 'vans_เซล่ามูน1', 'ใส่สบาย', 3500, 'https://i.ibb.co/qNMHXjf/1-3500.webp'),
(50, 'Vansตาราง', 'ใส่สบาย', 1990, 'https://i.ibb.co/XjMwt7Z/1990.webp');

-- --------------------------------------------------------

--
-- Table structure for table `table 4`
--

CREATE TABLE `table 4` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(61) DEFAULT NULL,
  `COL 3` varchar(546) DEFAULT NULL,
  `COL 4` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 4`
--

INSERT INTO `table 4` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
('', 'name', 'description ', 'price'),
('1', 'Vans Comfycrush Old Sko Multicolored moma', 'Style\nVN0A3WMA1PJ\n\nColorway\nWHITE/RAINBOW', '1800'),
('2', 'Vans x Pretty Guardian Sailor Moon Slip-On', 'Style\nVN0005VZ447\n\nColorway\nPURPLE/BLACK/YELLOW', '1800'),
('3', 'VANS Authentic - Off White', 'Born in Anaheim, California in 1966, the Authentic is the original Vans heritage style. Originally known as Vans #44 Deck Shoes, the Authentic became an immediate cult icon, and has embodied our “Off The Wall” attitude ever since. Constructed with a simple low top, lace-up profile, this classic shoe keeps the old school vibe alive with sturdy canvas uppers, metal eyelets, and signature rubber waffle outsoles.', '1990'),
('4', 'Authentic Disruptive', 'VN0A348A3Z2-สีครีมลาย ( Marshmallow / True White )- ตาไก่โลหะ\n- อัปเปอร์ทำจากผ้าแคนวาสที่แข็งแรง\n- โครงสร้างพื้นรองเท้าวัลคาไนซ์แบบดั้งเดิม\n- พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n- พื้นดอกยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', '2100'),
('5', 'Classic Slip-On Checkerboard', 'รองเท้าสลิปออนอันเป็นเอกลักษณ์ของ Vans\n- อัปเปอร์ทำจากผ้าแคนวาสทรงเตี้ยพร้อมพิมพ์ลายตาราง Vans สุดคลาสสิก\n- ส่วนหุ้มข้อบุนวมเพื่อการรองรับ\n- แต่งแถบด้านข้างแบบยางยืด\n- พื้นรองเท้าด้านนอกทำจากยางวาฟเฟิล', '2100'),
('6', 'Era Mix & Match', 'ส่วนบนของผ้าทำจากผ้าแคนวาส - ปลอกคอ - แท็บส้น \' Off The Wall \' - เทปฟ็อกซ์สูง - พื้นรองเท้าชั้นกลางวัลคาไนซ์ - ยางนอกพื้นรองเท้า', '2100'),
('7', 'Classic Slip-On Checkerboard', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ภาพพิมพ์กระดานหมากรุก - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', '2300'),
('8', 'Classic Slip-On Disruptive (VN0A33TB43D)', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', '2300'),
('9', ' Classic Slip-On Patchwork Floral', 'พื้นรองเท้าชั้นนอกวัลคาไนซ์เพื่อความยืดหยุ่นและสัมผัสบอร์ด - ดอกยางวาฟเฟิล Vans เพื่อการยึดเกาะ - ลิ้นยางยืดเพื่อให้เข้าและถอดออกได้ง่าย - ปลอกคอหนังบุนวมเบา ๆ - ป้ายธง Vans ด้านข้างและตรายางด้านหลัง - พื้นรองเท้าบุนวมเพื่อความสบาย - Upper ด้านนอกผลิตจากผ้า Canvas ไร้รอยต่อ - Lining ซับด้านในผลิตจากผ้า Textile - Insole พื้นรองเท้าด้านในทำจากยาง Rubber - Outsole พื้นรองเท้าด้านล่างทำจากยาง Rubber - พื้นรองรับกันกระแทกได้เป็นอย่างดี - ระบายอากาศกันการอับชื้นได้ดี - ดูแลและทำความสะอาดง่าย - ด้ายเย็บคุณภาพตามมาตรฐาน Vans', '2300'),
('10', 'Era 95 DX Anaheim Factory', 'อัปเปอร์ทำจากผ้าแคนวาส - คอลเลคชั่น Anaheim Factory - แผ่นรองพื้นรองเท้า Ortholite - พื้นรองเท้ายางวาฟเฟิล', '2300'),
('11', ' Era Chambray', '– พื้นรองเท้าวาฟเฟิล\n– ความสูงรวมของรองเท้า : 9 ซม.\n– พื้นรองเท้าชั้นนอก : อีลาสโตเมอร์\n– น้ำหนักรองเท้า (ไซส์เล็กสุด) : 332 กรัม\n– อัปเปอร์ : Chambray\n– แท็บส้น ‘ Off The Wall ‘\n– เทปฟ็อกซ์สูง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– พื้นรองเท้า : ยาง', '2300'),
('12', 'Era New Varsity', '– ส่วนบนของผ้าทำจากผ้าแคนวาส\n– ปลอกคอ\n– แท็บส้น ‘ Off The Wall ‘\n– เทปฟ็อกซ์สูง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– ยางนอกพื้นรองเท้า', '2300'),
('13', 'Era U-Color', 'โดดเด่นด้วยส่วนบนของรองเท้าทำจากผ้าแคนวาสที่แข็งแรงตาไก่โลหะปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่นและพื้นรองเท้ายางวาฟเฟิลอันเป็นเอกลักษณ์', '2300'),
('14', 'Slip-On Brushed Twill', '– อัปเปอร์ทำจากผ้า\n– เทปฟ็อกซ์สูง\n– ยางยืดด้านข้าง\n– พื้นรองเท้าชั้นกลางวัลคาไนซ์\n– พื้นรองเท้ายางชั้นนอกดอกยางวาฟเฟิล\n– แผงยืดหยุ่น\n– แท็บส้น ‘ Off The Wall ‘', '2300'),
('15', 'Authentic Pig Suede', '– ตาไก่โลหะ\n– อัปเปอร์ทำจากหนังกลับ\n– โครงสร้างพื้นรองเท้าวัลคาไนซ์แบบดั้งเดิม\n– พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n– พื้นดอกยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', '2500'),
('16', 'Classic Slip-On Jawbones(VN0A4BV3TBU)', '\n- สลิปออนกราฟิกโทนสีโมโนโครม\n- อัปเปอร์ทำจากหนังวัว\n- พื้นรองเท้าทำจากผ้า\n- พื้นรองเท้ายางชั้นนอก\n- ปลายเท้ามน\n- สไตล์สลิปออน', '2500'),
('17', 'Slip-On Breast Cancer Awareness', 'อัปเปอร์ - ผ้าแคนวาส - วัสดุน้ำหนักเบาซึ่งมีให้เลือกหลายสีและใช้สำหรับการผลิตรองเท้าฤดูร้อนเป็นหลัก\nพื้นรองเท้าชั้นกลาง - ยาง - วัสดุที่ดูแลรักษาง่ายและคุณจะประทับใจโดยเฉพาะในสภาพอากาศที่ฝนตก\nพื้นรองเท้าชั้นนอก - วาฟเฟิล - พื้นรองเท้าชั้นนอกในตำนานที่จะไม่ขาดการสัมผัสกับพื้นผิว เป็นเรื่องปกติของรองเท้า Vans', '2500'),
('18', 'Vans Cultivate Care Classic SlipOn ( VN000XG88MC )', '– คอลเลกชั่น Cultivate Care\n– อัปเปอร์ทำจากผ้าแคนวาสที่ทนทานพร้อมลายตารางหมากรุกสีสันสดใส\n– แต่งแถบยาง\n– ยืดด้านข้าง\n– ส่วนหุ้มข้อบุนวมที่รองรับได้\n– ด้านข้างแบบโปร่งแสง\n– พื้นรองเท้าด้านนอกทำจากยางวาฟเฟิลหลากสี\nขนาด', '2500'),
('19', 'Sk8-Hi  True White', '– อัปเปอร์ทำจากหนังกลับและผ้าแคนวาส\n– ปลอกคอ\n– ชั้นกักเก็บความร้อน\n– เสริม toecap\n– พื้นรองเท้าชั้นนอกวัลคาไนซ์\n– UltraCush insoles เพื่อความสบายที่ยาวนาน', '2600'),
('20', 'Era Patchwork', 'ส่วนบนของผ้าใบ\n- หนังและหนังกลับซ้อนทับ\n- ปลอกคอ\n- แท็บส้น Off The Wall\n- UltraCush Sockliner\n- เทปฟ็อกซ์สูง\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์\n- ยางนอกพื้นรองเท้า\n- รูปแบบการลากวาฟเฟิล', '2800'),
('21', 'Old Skool Ditsy Floral', 'อัปเปอร์ทำจากหนังกลับและผ้าแคนวาส\n- ด้านข้างที่โดดเด่น\n- การออกแบบลูกไม้แบบดั้งเดิม\n- ปลอกคอ\n- เสริมนิ้วเท้า\n- พื้นรองเท้าชั้นนอกวาฟเฟิล', '2800'),
('22', 'Old Skool Packing Tape', 'อัปเปอร์ทำจากผ้าแคนวาสพิมพ์ลายและหนังกลับ\n- Re-Enforced Toecaps เพื่อทนต่อการสึกหรอและการฉีกขาด\n- Midsole Cushioning สำหรับการสวมใส่ตลอดวัน\n- ปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่น\n- พื้นรองเท้าชั้นนอก Vans Waffle อันเป็นเอกลักษณ์เพื่อการยึดเกาะและความทนทาน', '2800'),
('23', 'Old Skool Valentines Hearts', 'พิมพ์หัวใจวันวาเลนไทน์ที่ด้านข้าง\n- แถบด้านข้างอันเป็นสัญลักษณ์ของ Vans\n- ภาพเงาลูกไม้ด้านบนต่ำ\n- หนังนิ่มทนทาน\n- อัปเปอร์เป็นผ้าแคนวาส / หนังกลับ\n- การปิดเชือกผูกรองเท้า\n- ลิ้นเบาะและซับใน\n- พื้นรองเท้ายางชั้นนอก Waffle Outsole ลายเซ็นของ Vans', '2800'),
('24', 'Style 36 Classic Sport', 'อัปเปอร์ทำจากผ้าแคนวาสและหนังกลับ\n- ดีไซน์ลูกไม้แบบดั้งเดิม\n- ฝาครอบนิ้วเท้า\n- ซับในผ้า\n- พื้นรองเท้าชั้นนอกทำจากยางวาฟเฟิลแบบคลาสสิก\n- โครงสร้างวัลคาไนซ์ปลอกคอบุนวม\n- แท็บส้น \' Off The Wall \'', '2800'),
('25', 'Style 36 Retro Sport', 'ส่วนบนผ้าแคนวาส\n- การซ้อนทับหนังกลับ\n- แท็บส้น \' Off The Wall \'\n- เทปฟ็อกซ์สูง\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์\n- ยางรองพื้นชั้นนอกของ Gum\n- รูปแบบการลากวาฟเฟิล', '2800'),
('26', 'ComfyCush Era Pinned', 'เชือกผูกรองเท้าปิด\n- สีน้ำเงินด้านหนึ่ง\n- อีกด้านสีส้ม\n- ลายทางด้านหน้า\n- อัปเปอร์ทำจากผ้าแคนวาสและหนังนิ่ม\n- รองเท้าทรงเตี้ย หน้าลูกไม้\n- ตาไก่โลหะ\n- เพิ่มการรองรับส่วนโค้ง\n- ซับในดูดซับความชื้น\n- ComfyCush พื้นรองเท้ายางวาฟเฟิล', '2890'),
('27', 'Era 95 DX Anaheim Factory', 'ดีไซน์เรียบง่ายสไตล์โอลด์สคูล\n- อัปเปอร์ทำจากผ้าแคนวาสแบบเย็บสองชั้น\n- ซับในผ้า\n- เชือกตาไก่โลหะ\n- พื้นรองเท้าบุโฟม\n- พื้นรองเท้าชั้นนอกวาฟเฟิลวัลคาไนซ์\n- ป้ายธงของ Vans ที่แผงด้านข้าง\n- ป้ายยาง Vans OTW ที่ส้นของกรอบ', '2900'),
('28', 'Sk8-Mid Leather', 'ความงาม Sk8-Hi ในตำนานของ Vans ในรองเท้าชั้นกลาง\n- อัปเปอร์ทำจากหนังทนทาน\n- แบบผูกเชือก\n- เสริม toe caps\n- ส่วนหุ้มข้อและลิ้นรองเท้าบุนวมเบา\n- โครงสร้างพื้นรองเท้าวัลคาไนแบบดั้งเดิม ยืดหยุ่นและให้ความรู้สึกเหมือนเล่นกระดานโต้คลื่น\n- พื้นรองเท้าโฟม EVA ช่วยลดแรงกระแทก\n- พื้นยางวาฟเฟิลดั้งเดิมของ Vans ให้การยึดเกาะที่เหนือกว่า', '2900'),
('29', 'Vans Era Brocade Patchwork', 'ส่วนบนของผ้าทำจากผ้าแคนวาส \n\n- มีนวม \n\n- แท็บส้น \' Off The Wall \' \n\n- เทปฟ็อกซ์สูง \n\n- พื้นรองเท้าชั้นกลางวัลคาไนซ์ \n\n- พื้นรองเท้ายาง', '2900'),
('30', 'Old Skool 36 DX Anaheim Factory', 'มีเทปฟ็อกซ์ที่สูงขึ้นเล็กน้อยแก้มยางเคลือบเงาและ Sidestripe อันเป็นสัญลักษณ์สีขาว ', '3200'),
('31', 'Old Skool Thermochrome Checker', 'อัปเปอร์เป็นผ้าแคนวาส+หนังกลับ เคลือบด้วยยางเปลี่ยนสี\n- พื้นรองเท้ายางชั้นนอก\n- การปิดเชือกผูกรองเท้า\n- พิมพ์กระดานหมากรุกที่ด้านข้าง\n- เปลี่ยนสีเมื่ออุณหภูมิร้อน', '3200'),
('32', 'ComfyCush Sk8-Mid', 'แบบหุ้มข้อ\n- โครงสร้างโฟมและยางขึ้นรูปร่วมกัน\n- เบาสบายความรู้สึกเหมือนยืนบนเมฆ\n- ปลอกคอบุนวมเพื่อการรองรับและความยืดหยุ่น\n- อัปเปอร์ทำจากหนังกลับและผ้าแคนวาสที่ทนทาน\n- พื้นรองเท้าวาฟเฟิลอันเป็นเอกลักษณ์', '3490'),
('33', 'Carbon UltraRange Exo', 'EXO Skeleton ให้การสนับสนุนในตัวตลอดนิ้วเท้าและแก้มข้างตรงกลาง พร้อมตัวล็อคส้นเพื่อความกระชับพอดี\n- ULTRACUSH® FOR COMFORT พื้นรองเท้าชั้นกลาง UltraCush® Lite ที่ขึ้นรูปร่วมกันช่วยเพิ่มความสบาย ไม่ใช่น้ำหนัก\n- พื้นรองเท้าด้านนอกหุ้มด้วยวาฟเฟิลหุ้มยางทั้งตัวช่วยเพิ่มการยึดเกาะและความยืดหยุ่น\n- ลิ้น UltraCush® พร้อมช่องระบายอากาศให้การไหลเวียนของอากาศที่เหนือกว่า', '3500'),
('34', 'OLD SKOOL OVERT COMFYCUSH', 'OLD SKOOL OVERT COMFYCUSH นำการออกแบบมาจากสไตล์ดั้งเดิมจาก OLD SKOOL เข้ากับพื้นรองเท้าโฟม ComfyCush พื้นรองเท้าชั้นในถอดออกได้ พื้นรองเท้าด้านนอกทำจากยาง ComfyCush เพิ่มโฟมที่ลิ้นรองเท้าและส่วนหุ้มข้อเพื่อการรองรับและความสบายที่เพิ่มขึ้น ยังคงรูปลักษณ์อันเป็นเอกลักษณ์ของ Vans แต่เพิ่มความสบายยิ่งขึ้นไปอีก', '3690'),
('35', 'Vans MOCA x Authentic VN0A5KRDYQ8', 'ใส่สบาย', '3700'),
('36', 'Vans House of Terror Old Skool The Exorcist Horror Black Shoe', 'ใส่สบาย', '4800'),
('37', 'VANS SK8 HI MOCA FRANCES STARK BLACK', 'ใส่สบาย', '4990'),
('38', 'Vans Save Our Planet x Era \'White Black\' Classic', 'ใส่สบาย', '5900'),
('39', 'Classic Slip-On(Brocade) รุ่น VN0A5JMH8L8 ', 'ใส่สบาย', '2300'),
('40', 'Comfy Cush Old Skool ', 'ใส่สบาย', '3200'),
('41', 'Vans Classic Slip-On Shadow ', 'ใส่สบาย', '2100'),
('42', 'Vans Eco Theory Authentic', 'ใส่สบาย', '2600'),
('43', 'Vans Eco Theory Sk8-Hi Tapered', 'ใส่สบาย', '3400'),
('44', 'Vans Era ', 'ใส่สบาย', '1990'),
('45', 'Vans Sk8-Low Women\'s ', 'ใส่สบาย', '2800'),
('46', 'vans Style 36 Women\'s ', 'ใส่สบาย', '2800'),
('47', 'Vans รองเท้า Old Skool', 'ใส่สบาย', '2800'),
('48', 'Vans รองเท้าผู้ชาย Sk8-Hi Tapered ', 'ใส่สบาย', '2600'),
('49', 'vans_เซล่ามูน1', 'ใส่สบาย', '3500'),
('50', 'Vansตาราง', 'ใส่สบาย', '1990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
