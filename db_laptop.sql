-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 09:58 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'Nurafiif Almas Azhari', 'NurafiifAlmas@gmail.com', 'rafiif123');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `warna` varchar(250) NOT NULL,
  `spesifikasi` varchar(250) NOT NULL,
  `harga` varchar(250) NOT NULL,
  `stock` int(11) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `jenis_barang`, `type`, `warna`, `spesifikasi`, `harga`, `stock`, `keterangan`) VALUES
(1, 'ASUS', 'ASUS Vivobook A442U', 'Black', 'Intel Core i5-8565U, Ram: 8GB, Nvidia GeForce MX110 GDDR5 2GB', 'Rp10.500.000', 150, 'Kelengkapan:  Charger, dijual dan dikirim oleh perusahaan kami, pengiriman 2 sampai 3 hari menyesuaikan keaadaan kerja lapangan.'),
(2, 'ASUS', 'ASUS Vivobook A442U', 'Silver', 'Intel Core i5-8565U, Ram: 8GB, Nvidia GeForce MX110 GDDR5 2GB', 'Rp10.500.000', 149, 'Kelengkapan:  Charger, dijual dan dikirim oleh perusahaan kami'),
(3, 'ASUS', 'ASUS Vivobook A442U', 'Gold', 'Intel Core i5-8565U, Ram: 8GB, Nvidia GeForce MX110 GDDR5 2GB', 'Rp10.500.000', 148, 'Kelengkapan:  Charger, dijual dan dikirim oleh perusahaan kami');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `tanggal_beli` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `user_id`, `laptop_id`, `tanggal_beli`) VALUES
(1, 2, 3, '05 Maret 2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(250) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kontak` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_user`, `username`, `password`, `alamat`, `kontak`, `gender`) VALUES
(1, 'Muhammad Daffa Kalfani S', 'DaffaKalfani@gmail.com', 'daffa123', 'Sawojajar, Malang', '082364684981', 'laki - laki'),
(2, 'Viola Aulia', 'ViolaAulia@gmail.com', 'Viola1234', 'Cliwung, Madiun', '085765432123', 'perempuan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
