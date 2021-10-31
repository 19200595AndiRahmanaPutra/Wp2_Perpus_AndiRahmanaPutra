-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 05:34 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
`id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `Id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `Id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statiska dengan program komputer', 1, 'Ahmad Kholiqyl Amin', 'Deep publish', 2014, '9786022809432', 6, 1, 1, 'buku.jpg'),
(2, 'Mudah belajar komputer untuk anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 6, 1, 1, 'buku.jpg'),
(5, 'PHP Komplet Detektif', 1, 'Jubilee', 'Elex Media Komputino', 2017, '8346753547', 5, 1, 1, 'buku.jpg'),
(10, 'Detektif Canon Ep 200', 9, 'Okigawa Sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'buku.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur''aini dan Handayani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'buku.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr.Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'buku.jpg'),
(16, 'Kolaborasi Codeigner dan Ajax dalam Perancangan', 1, 'Anton Subagia', 'Elex Media Komputindo', 2017, '4334536577', 5, 0, 0, 'buku.jpg'),
(17, 'Form Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '8796868787879', 5, 0, 0, 'buku.jpg'),
(18, 'uku Saku Pramuka', 8, 'rudi Himawan', 'Pusat Perbukuan', 2016, '978686868796', 6, 0, 0, 'buku.jpg'),
(19, 'Rahasia Keajaiban Bumu', 3, 'Nurul Ikhsan', 'Luxima', 2014, '565756565768868', 0, 0, 0, 'buku.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`Id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`Id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`Id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `Id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
