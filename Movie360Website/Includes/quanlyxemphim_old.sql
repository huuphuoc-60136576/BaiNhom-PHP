-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 04:43 PM
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
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `maND` int(11) NOT NULL,
  `taiKhoan` varchar(20) NOT NULL,
  `matKhau` varchar(20) NOT NULL,
  `Admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`maND`, `taiKhoan`, `matKhau`, `Admin`) VALUES
(1, 'phuoc123', 'phuoc123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `maPhim` varchar(20) NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `moTa` int(255) NOT NULL,
  `trangThai` varchar(255) NOT NULL,
  `diem` float NOT NULL,
  `namPhatHanh` varchar(4) NOT NULL,
  `thuongLuong` varchar(255) NOT NULL,
  `luotDanhGia` int(11) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`maPhim`, `tenPhim`, `moTa`, `trangThai`, `diem`, `namPhatHanh`, `thuongLuong`, `luotDanhGia`, `poster`) VALUES
('P01', 'Phim 01', 0, '...', 9, '2021', '...', 9, '...');

-- --------------------------------------------------------

--
-- Table structure for table `tapphim`
--

CREATE TABLE `tapphim` (
  `maTapPhim` varchar(20) NOT NULL,
  `tapPhim` varchar(20) NOT NULL,
  `maPhim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `maTheLoai` varchar(20) NOT NULL,
  `tenTheLoai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `theloai-phim`
--

CREATE TABLE `theloai-phim` (
  `maTheLoai` varchar(20) NOT NULL,
  `maPhim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloai-phim`
--

INSERT INTO `theloai-phim` (`maTheLoai`, `maPhim`) VALUES
('TL01', 'P01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`maND`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maPhim`);

--
-- Indexes for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD PRIMARY KEY (`maTapPhim`),
  ADD KEY `maPhim` (`maPhim`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`maTheLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `maND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
