-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 15, 2018 lúc 04:12 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtienganh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbaiviet`
--

CREATE TABLE `tblbaiviet` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` int(10) NOT NULL,
  `tieude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhthumb` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcauhoi`
--

CREATE TABLE `tblcauhoi` (
  `idcau` int(10) NOT NULL,
  `cauhoi` text COLLATE utf8_unicode_ci NOT NULL,
  `cauA` text COLLATE utf8_unicode_ci NOT NULL,
  `cauB` text COLLATE utf8_unicode_ci NOT NULL,
  `cauC` text COLLATE utf8_unicode_ci NOT NULL,
  `CauD` text COLLATE utf8_unicode_ci NOT NULL,
  `da` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldanhmucbaiviet`
--

CREATE TABLE `tbldanhmucbaiviet` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `menu` int(1) NOT NULL,
  `home` int(1) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldethi`
--

CREATE TABLE `tbldethi` (
  `idde` int(10) NOT NULL,
  `tende` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idcau` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvideo`
--

CREATE TABLE `tblvideo` (
  `id` int(10) NOT NULL,
  `tieude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tlbtaikhoan`
--

CREATE TABLE `tlbtaikhoan` (
  `id` int(10) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `ngaydangky` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tlbtaikhoan`
--

INSERT INTO `tlbtaikhoan` (`id`, `hoten`, `email`, `ngaysinh`, `ngaydangky`) VALUES
(1, 'Nguyễn Thị Hoàng yến', 'yennth52@wru.vn', '1997-06-25', '2018-03-15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblbaiviet`
--
ALTER TABLE `tblbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcauhoi`
--
ALTER TABLE `tblcauhoi`
  ADD PRIMARY KEY (`idcau`);

--
-- Chỉ mục cho bảng `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbldethi`
--
ALTER TABLE `tbldethi`
  ADD PRIMARY KEY (`idde`);

--
-- Chỉ mục cho bảng `tblvideo`
--
ALTER TABLE `tblvideo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tlbtaikhoan`
--
ALTER TABLE `tlbtaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblbaiviet`
--
ALTER TABLE `tblbaiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblcauhoi`
--
ALTER TABLE `tblcauhoi`
  MODIFY `idcau` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbldethi`
--
ALTER TABLE `tbldethi`
  MODIFY `idde` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblvideo`
--
ALTER TABLE `tblvideo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tlbtaikhoan`
--
ALTER TABLE `tlbtaikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
