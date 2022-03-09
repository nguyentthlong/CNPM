-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 05:42 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mp3`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `id` int(255) NOT NULL,
  `tenbaihat` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `casy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theloai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`id`, `tenbaihat`, `casy`, `tacgia`, `theloai`, `duongdan`) VALUES
(60, 'Build a Bitch', 'Bella Poarch ', '', 'Nhạc Quốc Tế', 'nhac/Build a Bitch Bella Poarch .mp3'),
(59, 'Phải Chăng Em Đã Yêu', 'Juky San ft RedT', '', 'Việt Nam', 'nhac/Phai-Chang-Em-Da-Yeu Juky San ft RedT.mp3'),
(55, 'Mấy Bé Lì', 'TLINH X NAOMI X YENJI', '', 'Rap Việt', 'nhac/May-be-li-TLINH-NAOMI-YENJI.mp3'),
(57, 'Đây Là Việt Nam', 'Rhymastic ft Blacka', '', 'Rap Việt', 'nhac/DayLaVietNam.mp3'),
(58, 'Salt', 'Ava Max', '', 'Nhạc Quốc Tế', 'nhac/Salt-Ava-Max.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `baihatmoi`
--

CREATE TABLE `baihatmoi` (
  `id` int(255) NOT NULL,
  `tenbaihat` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `casy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theloai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baihatmoi`
--

INSERT INTO `baihatmoi` (`id`, `tenbaihat`, `casy`, `tacgia`, `theloai`, `duongdan`) VALUES
(80, 'Breakfast', 'DH ft 151GDucky ft Minh', '', 'Rap Việt', 'nhac/BreakfastDH-151GDucky-Minh.mp3'),
(79, 'Build a Bitch', 'Bella Poarch ', '', 'Nhạc Quốc Tế', 'nhac/BuildaBitchBellaPoarch.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `casy`
--

CREATE TABLE `casy` (
  `id` int(255) NOT NULL,
  `casy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casy`
--

INSERT INTO `casy` (`id`, `casy`) VALUES
(80, 'TLINH X NAOMI X YENJI'),
(79, 'Bella Poarch '),
(81, 'Juky San ft RedT'),
(82, 'Ava Max'),
(83, 'Rhymastic ft Blacka');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `noidung` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `noidung`) VALUES
(9, 'images/logo/header.png'),
(8, 'images/logo/header.png'),
(10, 'images/logo/header (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `noidung` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `noidung`) VALUES
(17, 'Nhạc Quốc Tế'),
(16, 'Việt Nam'),
(19, 'Âu Mỹ'),
(20, 'Hàn Quốc'),
(21, 'Rap Việt'),
(22, 'Cách Mạng'),
(23, 'EDM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(4) NOT NULL,
  `ngaysinh` varchar(30) NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(255) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `gioitinh`, `ngaysinh`, `diachi`, `email`, `level`) VALUES
(1, 'admin', 'admin', 'Mạnh Long', '', '', 'VN', 'manklong2000@gmail.com', 3),
(33, 'manklong2000', 'nmlnml', 'Mạnh Long', 'Nam', '27-8-2000', 'Hà Nội', 'manklong2000@gmail.com', 1),
(34, 'zinzin', 'admin2', 'Long Zin', 'Nam', '20-9-2000', 'Long Biên', 'longzyn2009@gmail.com', 1),
(35, 'admin2', 'admin2', 'Long Zin', 'Nam', '20-9-2000', 'Tiểu Vương Quốc Long Biên', 'longzyn2009@gmail.com', 3),
(36, 'LongBeo', 'beobeo', 'LongBéo', 'Nam', '9-9-2000', 'VN', 'longbeo@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baihatmoi`
--
ALTER TABLE `baihatmoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casy`
--
ALTER TABLE `casy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baihat`
--
ALTER TABLE `baihat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `baihatmoi`
--
ALTER TABLE `baihatmoi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `casy`
--
ALTER TABLE `casy`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
