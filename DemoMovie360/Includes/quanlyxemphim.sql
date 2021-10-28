-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 06:14 PM
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
-- Database: `quanlyxemphim`
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

-- --------------------------------------------------------

--
-- Table structure for table `lichsu`
--

CREATE TABLE `lichsu` (
  `MaLichSu` int(11) NOT NULL,
  `MaTapPhim` varchar(50) NOT NULL,
  `MaNguoiDung` int(11) NOT NULL,
  `ThoiGianXem` datetime NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `MaPhim` varchar(50) NOT NULL,
  `TenPhim` varchar(100) NOT NULL,
  `MoTa` varchar(1000) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  `Diem` int(11) NOT NULL DEFAULT 0,
  `PhatHanh` int(4) DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  `LuotDanhGia` int(11) NOT NULL DEFAULT 0,
  `ThoiGianThemPhim` datetime NOT NULL,
  `Poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phim_theloai`
--

CREATE TABLE `phim_theloai` (
  `MaPhim` varchar(50) NOT NULL,
  `MaTheLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tapphim`
--

CREATE TABLE `tapphim` (
  `MaTapPhim` varchar(50) NOT NULL,
  `TapPhim` varchar(100) NOT NULL,
  `MaPhim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `MaTheLoai` varchar(50) NOT NULL,
  `TenTheLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`MaPhim`);

--
-- Indexes for table `phim_theloai`
--
ALTER TABLE `phim_theloai`
  ADD PRIMARY KEY (`MaPhim`,`MaTheLoai`),
  ADD KEY `MaTheLoai` (`MaTheLoai`);

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
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lichsu`
--
ALTER TABLE `lichsu`
  MODIFY `MaLichSu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT;

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
