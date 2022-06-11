-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 11:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'khoa', 'e10adc3949ba59abbe56e057f20f883e', 1),
(3, 'thanh', 'e10adc3949ba59abbe56e057f20f883e', 1),
(4, 'khoi', 'e10adc3949ba59abbe56e057f20f883e', 1),
(5, 'dai', 'e10adc3949ba59abbe56e057f20f883e', 1),
(6, 'tan', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(1, 1, '5564', 1),
(2, 1, '9401', 1),
(3, 1, '8212', 1),
(4, 20, '1459', 0),
(5, 20, '2380', 0),
(6, 20, '7108', 0),
(7, 20, '5220', 0),
(8, 20, '2662', 0),
(9, 20, '7437', 0),
(10, 20, '4200', 0),
(11, 21, '9999', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '5564', 7, 1),
(2, '5564', 5, 3),
(3, '9401', 7, 4),
(4, '8212', 11, 1),
(5, '1459', 11, 1),
(6, '1459', 7, 3),
(7, '2380', 10, 5),
(8, '7108', 11, 0),
(9, '5220', 9, 0),
(10, '2662', 8, 0),
(11, '7437', 10, 2),
(12, '4200', 5, 3),
(13, '9999', 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(3, 'Loa', 1),
(5, 'Ốp lưng', 3),
(6, 'Laptop', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(2, 'Loa', '1-2-2', '122', 1, '1649296229_AAE5nO0.jpg', 'sâsa', 'ssasasas', 1, 0),
(5, 'Loa cảm ứng', '001', '500000', 1, '1649306664_loa.jfif', 'Loa hay cực nè', 'Loa cực hay', 1, 3),
(6, 'Kèn', '002', '600000', 1, '1649306131_ken.jpg', 'Kèn hay lắm', 'Keèn đỉnh cao', 1, 4),
(7, 'Ốp lưng đít', '003', '20000', 1, '1649306174_ốp.jpg', 'Ốp đít', 'Ốp có cái mông', 1, 5),
(8, 'Loa sony', '004', '100000', 3, '1649396357_loa sony.jpg', 'Loa sony cực hay', 'Loa sony nha', 1, 3),
(9, 'Loa marshall', '005', '500000', 6, '1649396437_loa marshall.png', 'Loa marshall nha', 'Loa marshall nè', 1, 3),
(10, 'Loa phóng thanh', '007', '5000', 6, '1649396486_loa phóng thanh.jpg', 'Loa phường', 'Loa hẻm', 1, 3),
(11, 'Loa JBL', '1', '1000000', 9, '1649396571_loa jbl.jpg', 'Loa JBL', 'Loa nha', 1, 3),
(12, 'Ốp lưng che đậy máy ghi hình', '005', '50000', 50, '1649408492_ốp che cam.jpg', 'Đây là ốp che cam', 'Ko dành cho mấy thằng chụp lén', 1, 5),
(13, 'Ốp trái đào', '006', '50000', 50, '1649408558_ốp trái đào.jpg', 'Ốp có hình trái đào', 'Trái đào đc gắn trên ốp', 1, 5),
(14, 'Laptop dell', '2', '15000000', 60, '1649408651_laptop dell.jpg', 'Laptop hiệu dell', 'Laptop ko phải của hãng Asus', 1, 6),
(15, 'Laptop ASUS', '6', '15000000', 80, '1649408716_latop asus.jpg', 'Laptop Asus', 'ASUS nhe', 1, 6),
(16, 'MACBOOK PRO M1', '9', '50000000', 90, '1649408984_macbook.jpg', 'Macbook đỉnh cao đến từ nhà Apple', 'MACBOOK', 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
