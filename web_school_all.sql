-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 12:00 PM
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
-- Database: `web_school_all`
--

-- --------------------------------------------------------

--
-- Table structure for table `doi_nhom`
--

CREATE TABLE `doi_nhom` (
  `id_nhom` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten` varchar(50) NOT NULL,
  `so_luong` smallint(6) NOT NULL,
  `muc_tieu` varchar(50) NOT NULL,
  `pham_vi` varchar(50) NOT NULL,
  `danh_gia` varchar(50) NOT NULL DEFAULT 'chưa có',
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doi_nhom`
--

INSERT INTO `doi_nhom` (`id_nhom`, `ten`, `so_luong`, `muc_tieu`, `pham_vi`, `danh_gia`, `ngay_tao`) VALUES
(000000001, 'lập trình trẻ', 0, 'thảo luận, trao đổi, hợp tác về lập tình', 'toàn trường', 'năng nổ', '2024-01-28 09:58:54'),
(000000002, 'Khoa học 11', 0, 'thảo luận các đề tài khoa học lớp 11', 'khối 11', 'đầy thú vị', '2024-01-28 09:58:54'),
(000000003, 'tâm lí tốt nghiệp', 0, 'chia sẻ về kinh nghiệm, cảm xúc, khó khăn của hs 1', 'khối 12', 'tích cực', '2024-01-28 09:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `giai_thuong`
--

CREATE TABLE `giai_thuong` (
  `id_giaithuong` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten` varchar(50) NOT NULL,
  `thong_tin_chi_tiet` varchar(50) NOT NULL,
  `link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoat_dong`
--

CREATE TABLE `hoat_dong` (
  `id_hoat_dong` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `the_loai` set('thi đua','phong trào') DEFAULT NULL,
  `noi_dung` varchar(500) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `ngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linh_vuc`
--

CREATE TABLE `linh_vuc` (
  `id_linh_vuc` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten` varchar(50) NOT NULL,
  `loai` set('môn học','tự do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linh_vuc`
--

INSERT INTO `linh_vuc` (`id_linh_vuc`, `ten`, `loai`) VALUES
(000000001, 'công nghệ', 'môn học'),
(000000002, 'công nghệ thông tin', 'tự do'),
(000000003, 'địa', 'môn học'),
(000000004, 'giáo dục kinh tế và pháp luật', 'môn học'),
(000000005, 'hóa', 'môn học'),
(000000006, 'khoa học', 'tự do'),
(000000007, 'kĩ năng tự học', 'tự do'),
(000000008, 'lí', 'môn học'),
(000000009, 'ngữ văn', 'môn học'),
(000000010, 'giáo dục quốc phòng', 'môn học'),
(000000011, 'sinh', 'môn học'),
(000000012, 'sử', 'môn học'),
(000000013, 'tiếng anh', 'môn học'),
(000000014, 'tình cảm học đường', 'tự do'),
(000000015, 'thể dục', 'môn học'),
(000000016, 'tin học', 'môn học'),
(000000017, 'tâm lý', 'tự do'),
(000000018, 'toán', 'môn học');

-- --------------------------------------------------------

--
-- Table structure for table `link_thi_dua`
--

CREATE TABLE `link_thi_dua` (
  `nam_hoc` varchar(50) NOT NULL,
  `tuan` enum('tuần 1','tuần 2','tuần 3','tuần 4','tuần 5','tuần 6','tuần 7','tuần 8','tuần 9','tuần 10','tuần 11','tuần 12','tuần 13','tuần 14','tuần 15','tuần 16','tuần 17','tuần 18','tuần 19','tuần 20','tuần 21','tuần 22','tuần 23','tuần 24','tuần 25','tuần 26','tuần 27','tuần 28','tuần 29','tuần 30','tuần 31','tuần 32','tuần 33','tuần 34','tuần 35','tuần 36','tuần 37','tuần 38','tuần 39','tuần 40','tuần 41','tuần 42','tuần 43','tuần 44','tuần 45','tuần 46','tuần 47','tuần 48','tuần 49','tuần 50','tuần 51','tuần 52','tuần 53','tuần 54','tuần 55','tuần 56','tuần 57','tuần 58','tuần 59','tuần 60') NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `id_lop` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten_lop` varchar(5) NOT NULL,
  `nam_hoc` varchar(10) NOT NULL,
  `so_luong_hs` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`id_lop`, `ten_lop`, `nam_hoc`, `so_luong_hs`) VALUES
(000000004, '21', '2023-2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nam_hoc`
--

CREATE TABLE `nam_hoc` (
  `nam_hoc` varchar(10) NOT NULL DEFAULT '0',
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nam_hoc`
--

INSERT INTO `nam_hoc` (`nam_hoc`, `ngay_bat_dau`, `ngay_ket_thuc`) VALUES
('2023-2024', '2024-01-28', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_giai_thuong`
--

CREATE TABLE `nhan_giai_thuong` (
  `id_ng_nhan` int(9) UNSIGNED ZEROFILL NOT NULL,
  `id_gt` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ngay_nhan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_loai_nhom`
--

CREATE TABLE `phan_loai_nhom` (
  `id_nhom` int(9) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_linh_vuc` int(9) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_loai_tai_lieu`
--

CREATE TABLE `phan_loai_tai_lieu` (
  `id_tai_lieu` int(9) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_linh_vuc` int(9) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phu_trach_mon`
--

CREATE TABLE `phu_trach_mon` (
  `id_gv` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `id_mon` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `id_lop` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `so_huu`
--

CREATE TABLE `so_huu` (
  `id_tai_lieu` int(9) UNSIGNED ZEROFILL NOT NULL,
  `id_tv` int(9) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoang`
--

CREATE TABLE `tai_khoang` (
  `id_tk` varchar(50) NOT NULL,
  `tk` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `id_tv` int(9) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tai_khoang`
--

INSERT INTO `tai_khoang` (`id_tk`, `tk`, `pass`, `id_tv`) VALUES
('3b2c00be-b', '1234', '4321', 000000003),
('62a0ab1b-b', '123', '321', 000000002),
('6e88e2b7-b', '12345', '54321', 000000005),
('9ddcd96c-b', '12', '21', 000000004);

--
-- Triggers `tai_khoang`
--
DELIMITER $$
CREATE TRIGGER `before_insert_tai_khoang` BEFORE INSERT ON `tai_khoang` FOR EACH ROW BEGIN
  SET NEW.id_tk = SUBSTRING(UUID(), 1, 10);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tai_lieu`
--

CREATE TABLE `tai_lieu` (
  `id_tai_lieu` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ten` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `mo_ta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tham_gia_hoat_dong`
--

CREATE TABLE `tham_gia_hoat_dong` (
  `id_hoat_dong` int(9) UNSIGNED NOT NULL,
  `id_thanhh_vien` int(9) UNSIGNED NOT NULL,
  `ngay_tham_gia` date NOT NULL,
  `vai_tro` enum('người tham gia','người phụ trách') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tham_gia_nhom`
--

CREATE TABLE `tham_gia_nhom` (
  `id_nhom` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `id_tv` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `ngay_tham_gia` int(11) DEFAULT NULL,
  `vai_tro` enum('thành viên','nhóm trưởng','nhóm phó') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanh_tich_hoc_tap`
--

CREATE TABLE `thanh_tich_hoc_tap` (
  `id_hs` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `id_lop` int(9) UNSIGNED NOT NULL,
  `tb_hk1` decimal(2,1) DEFAULT NULL,
  `xep_loai_hk1` enum('giỏi','trung bình','tién tiến','yếu','xuất sắc') DEFAULT NULL,
  `tb_hk2` decimal(2,1) DEFAULT NULL,
  `xep_loai_hk2` enum('giỏi','trung bình','tién tiến','yếu','xuất sắc') DEFAULT NULL,
  `tb_nam_hoc` decimal(2,2) DEFAULT NULL,
  `xep_loai_nam-hoc` enum('giỏi','trung bình','tién tiến','yếu','xuất sắc') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien`
--

CREATE TABLE `thanh_vien` (
  `id_tv` int(9) UNSIGNED ZEROFILL NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `gioi_tinh` enum('nam','nữ') NOT NULL,
  `nam_sinh` date NOT NULL,
  `doan_vien` enum('có','không') NOT NULL,
  `chuc_vu` set('giáo viên','học sinh','hiệu trưởng','hiệu phó','giám thị','cán bộ đoàn','ban chấp hành đoàn trường') NOT NULL DEFAULT '',
  `sdt` varchar(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `nhat_ki` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thanh_vien`
--

INSERT INTO `thanh_vien` (`id_tv`, `ho_ten`, `gioi_tinh`, `nam_sinh`, `doan_vien`, `chuc_vu`, `sdt`, `email`, `nhat_ki`) VALUES
(000000002, 'Trí', 'nam', '2006-11-07', 'có', 'học sinh', '0329622705', 'chinguyen.20192006@Gmail.com', '0'),
(000000003, 'Nam', 'nam', '1999-09-30', 'có', 'giáo viên', '0729529375', 'nam@gmail.com', '0'),
(000000004, 'Cầm', 'nữ', '1990-01-30', 'có', 'hiệu trưởng', '0573203724', 'cam@Gmail.com', '0'),
(000000005, 'Nhung', 'nữ', '1999-09-11', 'có', 'ban chấp hành đoàn trường', '0572043472', 'nhung@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien_lop`
--

CREATE TABLE `thanh_vien_lop` (
  `id_tv` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `id_lop` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `vai_tro` enum('lớp trưởng','giáo viên chủ nhiệm','thành viên','lớp phó','tổ trưởng') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thi_dua_theo_tuan`
--

CREATE TABLE `thi_dua_theo_tuan` (
  `id_lop` int(9) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000,
  `tuan` enum('tuần 1','tuần 2','tuần 3','tuần 4','tuần 5','tuần 6','tuần 7','tuần 8','tuần 9','tuần 10','tuần 11','tuần 12','tuần 13','tuần 14','tuần 15','tuần 16','tuần 17','tuần 18','tuần 19','tuần 20','tuần 21','tuần 22','tuần 23','tuần 24','tuần 25','tuần 26','tuần 27','tuần 28','tuần 29','tuần 30','tuần 31','tuần 32','tuần 33','tuần 34','tuần 35','tuần 36','tuần 37','tuần 38','tuần 39','tuần 40','tuần 41','tuần 42','tuần 43','tuần 44','tuần 45','tuần 46','tuần 47','tuần 48','tuần 49','tuần 50','tuần 51','tuần 52','tuần 53','tuần 54','tuần 55','tuần 56','tuần 57','tuần 58','tuần 59','tuần 60') NOT NULL,
  `diem_cong` smallint(6) NOT NULL DEFAULT 0,
  `diem_tru` smallint(6) NOT NULL DEFAULT 0,
  `tong_diem` smallint(6) NOT NULL DEFAULT 0,
  `link_chi_tiet` varchar(50) DEFAULT NULL,
  `xep_hang` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doi_nhom`
--
ALTER TABLE `doi_nhom`
  ADD PRIMARY KEY (`id_nhom`) USING BTREE;

--
-- Indexes for table `giai_thuong`
--
ALTER TABLE `giai_thuong`
  ADD PRIMARY KEY (`id_giaithuong`) USING BTREE;

--
-- Indexes for table `hoat_dong`
--
ALTER TABLE `hoat_dong`
  ADD PRIMARY KEY (`id_hoat_dong`);

--
-- Indexes for table `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD PRIMARY KEY (`id_linh_vuc`) USING BTREE,
  ADD UNIQUE KEY `ten` (`ten`);

--
-- Indexes for table `link_thi_dua`
--
ALTER TABLE `link_thi_dua`
  ADD UNIQUE KEY `nam_hoc_tuan` (`nam_hoc`,`tuan`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id_lop`),
  ADD UNIQUE KEY `ten_lop_nam_hoc` (`ten_lop`,`nam_hoc`),
  ADD KEY `FK_lop_nam_hoc` (`nam_hoc`);

--
-- Indexes for table `nam_hoc`
--
ALTER TABLE `nam_hoc`
  ADD PRIMARY KEY (`nam_hoc`);

--
-- Indexes for table `nhan_giai_thuong`
--
ALTER TABLE `nhan_giai_thuong`
  ADD KEY `FK_nhan_thuong_giai_thuong` (`id_gt`),
  ADD KEY `FK_nhan_thuong_thanh_vien` (`id_ng_nhan`) USING BTREE;

--
-- Indexes for table `phan_loai_nhom`
--
ALTER TABLE `phan_loai_nhom`
  ADD UNIQUE KEY `id_nhom_id_linh_vuc` (`id_nhom`,`id_linh_vuc`),
  ADD KEY `FK_phan_loai_nhom_linh_vuc` (`id_linh_vuc`);

--
-- Indexes for table `phan_loai_tai_lieu`
--
ALTER TABLE `phan_loai_tai_lieu`
  ADD UNIQUE KEY `id_tai_lieu_id_linh_vuc` (`id_tai_lieu`,`id_linh_vuc`),
  ADD KEY `FK_phan_loai_tai_lieu_linh_vuc` (`id_linh_vuc`);

--
-- Indexes for table `phu_trach_mon`
--
ALTER TABLE `phu_trach_mon`
  ADD UNIQUE KEY `id_gv_id_mon_id_lop` (`id_gv`,`id_mon`,`id_lop`),
  ADD KEY `FK_phu_trach_mon_linh_vuc` (`id_mon`),
  ADD KEY `FK_phu_trach_mon_lop` (`id_lop`);

--
-- Indexes for table `so_huu`
--
ALTER TABLE `so_huu`
  ADD UNIQUE KEY `id_tai_lieu_id_tv` (`id_tai_lieu`,`id_tv`),
  ADD KEY `FK_so_huu_thanh_vien` (`id_tv`);

--
-- Indexes for table `tai_khoang`
--
ALTER TABLE `tai_khoang`
  ADD PRIMARY KEY (`id_tk`),
  ADD UNIQUE KEY `tk` (`tk`),
  ADD UNIQUE KEY `id_tv` (`id_tv`);

--
-- Indexes for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  ADD PRIMARY KEY (`id_tai_lieu`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `ten` (`ten`);

--
-- Indexes for table `tham_gia_hoat_dong`
--
ALTER TABLE `tham_gia_hoat_dong`
  ADD KEY `FK_tham_gia_hoat_dong_hoat_dong` (`id_hoat_dong`),
  ADD KEY `FK_tham_gia_hoat_dong_thanh_vien` (`id_thanhh_vien`);

--
-- Indexes for table `tham_gia_nhom`
--
ALTER TABLE `tham_gia_nhom`
  ADD UNIQUE KEY `ma_nhom_ma_tv` (`id_nhom`,`id_tv`) USING BTREE,
  ADD KEY `FK_tham_gia_nhom_thanh_vien` (`id_tv`) USING BTREE;

--
-- Indexes for table `thanh_tich_hoc_tap`
--
ALTER TABLE `thanh_tich_hoc_tap`
  ADD UNIQUE KEY `id_hs_id_lop` (`id_hs`,`id_lop`),
  ADD KEY `FK_thanh_tich_hoc_tap_lop` (`id_lop`);

--
-- Indexes for table `thanh_vien`
--
ALTER TABLE `thanh_vien`
  ADD PRIMARY KEY (`id_tv`) USING BTREE;

--
-- Indexes for table `thanh_vien_lop`
--
ALTER TABLE `thanh_vien_lop`
  ADD UNIQUE KEY `id_tv_id_lop` (`id_tv`,`id_lop`),
  ADD KEY `FK_thanh_vien_lop_lop` (`id_lop`);

--
-- Indexes for table `thi_dua_theo_tuan`
--
ALTER TABLE `thi_dua_theo_tuan`
  ADD UNIQUE KEY `id_lop_tuan` (`id_lop`,`tuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doi_nhom`
--
ALTER TABLE `doi_nhom`
  MODIFY `id_nhom` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giai_thuong`
--
ALTER TABLE `giai_thuong`
  MODIFY `id_giaithuong` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoat_dong`
--
ALTER TABLE `hoat_dong`
  MODIFY `id_hoat_dong` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linh_vuc`
--
ALTER TABLE `linh_vuc`
  MODIFY `id_linh_vuc` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `id_lop` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  MODIFY `id_tai_lieu` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thanh_vien`
--
ALTER TABLE `thanh_vien`
  MODIFY `id_tv` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `link_thi_dua`
--
ALTER TABLE `link_thi_dua`
  ADD CONSTRAINT `FK__nam_hoc` FOREIGN KEY (`nam_hoc`) REFERENCES `nam_hoc` (`nam_hoc`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK_lop_nam_hoc` FOREIGN KEY (`nam_hoc`) REFERENCES `nam_hoc` (`nam_hoc`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `nhan_giai_thuong`
--
ALTER TABLE `nhan_giai_thuong`
  ADD CONSTRAINT `FK_nhan_thuong_giai_thuong` FOREIGN KEY (`id_gt`) REFERENCES `giai_thuong` (`id_giaithuong`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_nhan_thuong_thanh_vien` FOREIGN KEY (`id_ng_nhan`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `phan_loai_nhom`
--
ALTER TABLE `phan_loai_nhom`
  ADD CONSTRAINT `FK_phan_loai_nhom_doi_nhom` FOREIGN KEY (`id_nhom`) REFERENCES `doi_nhom` (`id_nhom`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phan_loai_nhom_linh_vuc` FOREIGN KEY (`id_linh_vuc`) REFERENCES `linh_vuc` (`id_linh_vuc`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `phan_loai_tai_lieu`
--
ALTER TABLE `phan_loai_tai_lieu`
  ADD CONSTRAINT `FK_phan_loai_tai_lieu_linh_vuc` FOREIGN KEY (`id_linh_vuc`) REFERENCES `linh_vuc` (`id_linh_vuc`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phan_loai_tai_lieu_tai_lieu` FOREIGN KEY (`id_tai_lieu`) REFERENCES `tai_lieu` (`id_tai_lieu`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `phu_trach_mon`
--
ALTER TABLE `phu_trach_mon`
  ADD CONSTRAINT `FK_phu_trach_mon_linh_vuc` FOREIGN KEY (`id_mon`) REFERENCES `linh_vuc` (`id_linh_vuc`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phu_trach_mon_lop` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phu_trach_mon_thanh_vien` FOREIGN KEY (`id_gv`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `so_huu`
--
ALTER TABLE `so_huu`
  ADD CONSTRAINT `FK_so_huu_tai_lieu` FOREIGN KEY (`id_tai_lieu`) REFERENCES `tai_lieu` (`id_tai_lieu`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_so_huu_thanh_vien` FOREIGN KEY (`id_tv`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tai_khoang`
--
ALTER TABLE `tai_khoang`
  ADD CONSTRAINT `FK_normal_acc_thanh_vien` FOREIGN KEY (`id_tv`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tham_gia_hoat_dong`
--
ALTER TABLE `tham_gia_hoat_dong`
  ADD CONSTRAINT `FK_tham_gia_hoat_dong_hoat_dong` FOREIGN KEY (`id_hoat_dong`) REFERENCES `hoat_dong` (`id_hoat_dong`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_tham_gia_hoat_dong_thanh_vien` FOREIGN KEY (`id_thanhh_vien`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tham_gia_nhom`
--
ALTER TABLE `tham_gia_nhom`
  ADD CONSTRAINT `FK_tham_gia_nhom_doi_nhom` FOREIGN KEY (`id_nhom`) REFERENCES `doi_nhom` (`id_nhom`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_tham_gia_nhom_thanh_vien` FOREIGN KEY (`id_tv`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `thanh_tich_hoc_tap`
--
ALTER TABLE `thanh_tich_hoc_tap`
  ADD CONSTRAINT `FK_thanh_tich_hoc_tap_lop` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_thanh_tich_hoc_tap_thanh_vien` FOREIGN KEY (`id_hs`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `thanh_vien_lop`
--
ALTER TABLE `thanh_vien_lop`
  ADD CONSTRAINT `FK_thanh_vien_lop_lop` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_thanh_vien_lop_thanh_vien` FOREIGN KEY (`id_tv`) REFERENCES `thanh_vien` (`id_tv`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `thi_dua_theo_tuan`
--
ALTER TABLE `thi_dua_theo_tuan`
  ADD CONSTRAINT `FK_thi_dua_theo_tuan_lop` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
