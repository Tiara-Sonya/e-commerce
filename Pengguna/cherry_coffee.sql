-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 01:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cherry_coffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(20) NOT NULL,
  `username` int(30) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_akun`
--

CREATE TABLE `daftar_akun` (
  `id_user` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `konfirmasi_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_daftar_menu_makanan_dan_minuman`
--

CREATE TABLE `data_daftar_menu_makanan_dan_minuman` (
  `id_menu` int(30) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(30) NOT NULL,
  `status` enum('Tersedia','Tidak Tersedia','','') NOT NULL,
  `jenis_menu` enum('MA','MU') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_daftar_menu_makanan_dan_minuman`
--

INSERT INTO `data_daftar_menu_makanan_dan_minuman` (`id_menu`, `nama_menu`, `gambar`, `harga`, `status`, `jenis_menu`) VALUES
(1, 'Nasi Goreng', 'nasgor.jpg', 13000, 'Tersedia', 'MA'),
(2, 'Mie Goreng', 'miegor.jpg', 13000, 'Tersedia', 'MA'),
(3, 'Mie Rebus', 'miebus.jpg', 13000, 'Tersedia', 'MA'),
(4, 'Lontong Sayur', 'lonyur.jpg', 13000, 'Tersedia', 'MA'),
(5, 'Nasi Dagang', 'nasgang.jpg', 7500, 'Tersedia', 'MA'),
(6, 'Kue Tradisional', 'kuenal.jpg', 5000, 'Tersedia', 'MA'),
(7, 'Pao', 'pao.jpg', 6500, 'Tersedia', 'MA'),
(8, 'Lampam', 'kuepam.jpg', 1000, 'Tersedia', 'MA'),
(9, 'Espresso', 'Espresso.jpg', 10000, 'Tersedia', 'MU'),
(10, 'Cappuchino Dingin', 'cappucino.jpg', 27000, 'Tersedia', 'MU'),
(11, 'Cappuchino Panas', 'capp-panas.jpg', 25000, 'Tersedia', 'MU'),
(12, 'Caffe Latte Dingin', 'CoffeeLatte.jpg', 27000, 'Tersedia', 'MU'),
(13, 'Caffe Latte Panas', 'cofflet-panas.jpg', 27000, 'Tersedia', 'MU'),
(14, 'Americano Dingin', 'Americano.jpg', 15000, 'Tersedia', 'MU'),
(15, 'Americano Panas', 'amenas.jpeg', 13000, 'Tersedia', 'MU'),
(16, 'Mochachino Dingin ', 'mochachino.jpg', 27000, 'Tersedia', 'MU'),
(17, 'Mochachino Panas', 'mocha-panas.jpg', 25000, 'Tersedia', 'MU'),
(18, 'Affogato', 'Affogato.jpg', 25000, 'Tersedia', 'MU'),
(19, 'Caramel Matchiatto', 'caramel.jpg', 27000, 'Tersedia', 'MU'),
(20, 'Avocado Coffee', 'avocadocof.jpg', 27000, 'Tersedia', 'MU'),
(21, 'V60', 'V60.jpg', 17000, 'Tersedia', 'MU'),
(22, 'Kalita Wave', 'Kalita.jpg', 25000, 'Tersedia', 'MU'),
(23, 'Vietnam Drip', 'vietnamDrip.jpg', 12000, 'Tersedia', 'MU'),
(24, 'Strawberry Tea', 'strawberrytea.jpg', 15000, 'Tersedia', 'MU'),
(25, 'Lychee Tea', 'LYCHEE-TEA.jpg', 15000, 'Tersedia', 'MU'),
(26, 'Lemon Tea ', 'Lemontea.jpg', 15000, 'Tersedia', 'MU'),
(27, 'Es Kopi Susu Cherry', 'eskopsu.jpg', 20000, 'Tersedia', 'MU'),
(28, 'Es Kopi Susu Aren', 'eskapsus.jpg', 22000, 'Tersedia', 'MU'),
(29, 'Es Kopi Milo', 'eskopmil.jpg', 20000, 'Tersedia', 'MU'),
(30, 'Es Kopi Coklat ', 'eskoplat.jpg', 20000, 'Tersedia', 'MU'),
(31, 'Kopi Susu Jahe', 'kophe.jpg', 20000, 'Tersedia', 'MU'),
(32, 'Orange Squash', 'orsquash.jpg', 18000, 'Tersedia', 'MU'),
(33, 'Pineapple Squash', 'pinesquash.jpg', 18000, 'Tersedia', 'MU'),
(34, 'Lemonade', 'lemonade.jpg', 18000, 'Tersedia', 'MU'),
(35, 'Virgin Mojito', 'virjito.jpg', 18000, 'Tersedia', 'MU'),
(36, 'Strawberry Mojito', 'strawjito.jpg', 18000, 'Tersedia', 'MU'),
(37, 'Teh O', 'teh o.jpg', 5000, 'Tersedia', 'MU'),
(38, 'Teh Obeng', 'teh obeng.jpg', 6000, 'Tersedia', 'MU'),
(39, 'Teh Susu Es', 'teh-susu-dingin.jpg', 8000, 'Tersedia', 'MU'),
(40, 'Teh Susu', 'teh-susu-panas.jpg', 7000, 'Tersedia', 'MU'),
(41, 'Teh Jahe', 'teh_jahe.jpg', 8000, 'Tersedia', 'MU'),
(42, 'Black Tea', 'Black_tea.png', 12000, 'Tersedia', 'MU'),
(43, 'English Breakfast Tea', 'english-breakfast-tea.png', 12000, 'Tersedia', 'MU'),
(44, 'Chamomile Tea', 'chamomile-tea.jpg', 12000, 'Tersedia', 'MU'),
(45, 'Early grey Tea', 'earl_grey_tea.jpg', 15000, 'Tersedia', 'MU'),
(46, 'Oolong Tea', 'Oolong tea.jpg', 8000, 'Tersedia', 'MU'),
(47, 'Iced  Black Tea', 'Iced_black_tea.jpg', 14000, 'Tersedia', 'MU'),
(48, 'Iced English Breakfast Tea', 'Iced_english_breakfast_tea.jpg', 14000, 'Tersedia', 'MU'),
(49, 'Iced Chamomile Tea', 'chamomile-iced-tea.jpg', 17000, 'Tersedia', 'MU'),
(50, 'Iced Earl Grey Tea', 'Earl-Gray-Iced-Tea.jpg', 14000, 'Tersedia', 'MU');

--
-- Triggers `data_daftar_menu_makanan_dan_minuman`
--
DELIMITER $$
CREATE TRIGGER `before_insert_menu` BEFORE INSERT ON `data_daftar_menu_makanan_dan_minuman` FOR EACH ROW BEGIN
    DECLARE nomor_unik INT;
    
    -- Menghitung nomor unik berdasarkan jenis_menu
    SET nomor_unik = COALESCE((SELECT MAX(SUBSTRING(id_menu, 3)) FROM data_daftar_menu_makanan_dan_minuman WHERE jenis_menu = NEW.jenis_menu), 0) + 1;

    -- Mengatur nilai id_menu sesuai format yang diinginkan
    SET NEW.id_menu = CONCAT(NEW.jenis_menu, nomor_unik);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesanan` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `jumlah_pesanan` int(20) NOT NULL,
  `status` enum('Sedang Diproses','Selesai','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `data_daftar_menu_makanan_dan_minuman`
--
ALTER TABLE `data_daftar_menu_makanan_dan_minuman`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `nama_menu` (`nama_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_daftar_menu_makanan_dan_minuman`
--
ALTER TABLE `data_daftar_menu_makanan_dan_minuman`
  MODIFY `id_menu` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `daftar_akun` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
