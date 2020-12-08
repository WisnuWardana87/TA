-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 04:27 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prestasi_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `prestasi_mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prestasi_mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bidang`
--

CREATE TABLE IF NOT EXISTS `tb_bidang` (
  `id_bidang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(128) NOT NULL,
  `ket_bidang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_bidang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_bidang`
--

INSERT INTO `tb_bidang` (`id_bidang`, `nama_bidang`, `ket_bidang`) VALUES
(1, 'Olahraga', 'Lomba sepak bola'),
(2, 'Bahasa Inggris', 'Lomba Debat Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fakultas`
--

CREATE TABLE IF NOT EXISTS `tb_fakultas` (
  `id_fakultas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_fakultas` varchar(128) NOT NULL,
  PRIMARY KEY (`id_fakultas`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Fakultas Teknik dan Kejuruan (FTK)'),
(2, 'Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA)'),
(3, 'Fakultas Ekonomi (FE)'),
(4, 'Fakultas Ilmu Pendidikan (FIP)'),
(5, 'Fakultas Bahasa dan Seni (FBS)'),
(6, 'Fakultas Olahraga dan Kesehatan (FOK)'),
(7, 'Fakultas Hukum dan Ilmu Sosial (FHIS)'),
(8, 'Fakultas Kedokteran (FK)');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_juara`
--

CREATE TABLE IF NOT EXISTS `tb_jenis_juara` (
  `id_jenis_juara` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis_juara` varchar(128) NOT NULL,
  `ket_jenis_juara` varchar(255) NOT NULL,
  PRIMARY KEY (`id_jenis_juara`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_jenis_juara`
--

INSERT INTO `tb_jenis_juara` (`id_jenis_juara`, `nama_jenis_juara`, `ket_jenis_juara`) VALUES
(1, 'Juara 1', 'juara 1 sepak bola'),
(2, 'juara 3', 'juara 3 debat bahasa inggris');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_prestasi`
--

CREATE TABLE IF NOT EXISTS `tb_jenis_prestasi` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `id_bidang` int(11) NOT NULL,
  `nama_jenis` varchar(128) NOT NULL,
  `ket_jenis` varchar(255) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_jenis_prestasi`
--

INSERT INTO `tb_jenis_prestasi` (`id_jenis`, `id_bidang`, `nama_jenis`, `ket_jenis`) VALUES
(1, 1, 'FA CUP', 'Juara 1 Fa Cup'),
(2, 2, 'Dies Natalis', 'Juara 1 Debat Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE IF NOT EXISTS `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `id_fakultas` int(11) NOT NULL,
  `nama_jurusan` varchar(128) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `id_fakultas`, `nama_jurusan`) VALUES
(1, 1, 'Teknik Industri'),
(2, 1, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nim`, `nama`, `id_prodi`) VALUES
(1, 1805021025, 'Nyoman Wisnu Wardana', 1),
(2, 1805021024, 'Kadek Hendra Sudarmawan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembimbing`
--

CREATE TABLE IF NOT EXISTS `tb_pembimbing` (
  `id_pembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `nip_pembimbing` varchar(128) NOT NULL,
  `nama_pembimbing` varchar(128) NOT NULL,
  PRIMARY KEY (`id_pembimbing`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_pembimbing`
--

INSERT INTO `tb_pembimbing` (`id_pembimbing`, `nip_pembimbing`, `nama_pembimbing`) VALUES
(2, '197603152001121002', 'Dr. Komang Setemen, S.Si., M.T.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi`
--

CREATE TABLE IF NOT EXISTS `tb_prestasi` (
  `id_prestasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_jenis_juara` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `nama_kegiatan` varchar(128) NOT NULL,
  `kota` varchar(128) NOT NULL,
  `jml_dana` decimal(10,0) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ket_prestasi` varchar(256) NOT NULL,
  `file_prestasi` varchar(128) NOT NULL,
  `id_pembimbing` int(11) NOT NULL,
  `tahun` varchar(16) NOT NULL,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_prestasi`
--

INSERT INTO `tb_prestasi` (`id_prestasi`, `id_jenis`, `id_tingkat`, `id_jenis_juara`, `tgl_mulai`, `tgl_selesai`, `nama_kegiatan`, `kota`, `jml_dana`, `name`, `ket_prestasi`, `file_prestasi`, `id_pembimbing`, `tahun`) VALUES
(3, 1, 1, 1, '2020-12-03', '2020-12-05', 'aaa', 'Singaraja', '211', 'Wisnu Wardana', 'aaa', '2906282.jpg', 2, '2019'),
(4, 1, 1, 1, '2020-12-02', '2020-12-26', 'aaa', 'Singaraja', '122222', 'Sudarma Puja', 'aaa', '1.jpg', 2, '2020'),
(5, 2, 2, 2, '2020-12-04', '2020-12-04', 'aaa', 'Singaraja', '1222', 'Sudarma Puja', 'aaa', 'gobleg.jpg', 2, '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE IF NOT EXISTS `tb_prodi` (
  `id_prodi` int(11) NOT NULL AUTO_INCREMENT,
  `id_jurusan` int(11) NOT NULL,
  `nama_prodi` varchar(128) NOT NULL,
  `jenjang` varchar(128) NOT NULL,
  PRIMARY KEY (`id_prodi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `id_jurusan`, `nama_prodi`, `jenjang`) VALUES
(1, 2, 'Manajemen Informatika', 'D3'),
(2, 2, 'Pendidikan Teknik Informatika', 'S1'),
(3, 2, 'Sistem Informasi', 'S1'),
(4, 2, 'Ilmu Komputer', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tingkat`
--

CREATE TABLE IF NOT EXISTS `tb_tingkat` (
  `id_tingkat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tingkat` varchar(128) NOT NULL,
  `ket_tingkat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tingkat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_tingkat`
--

INSERT INTO `tb_tingkat` (`id_tingkat`, `nama_tingkat`, `ket_tingkat`) VALUES
(1, 'Universitas', 'Lomba Debat Bahasa Inggris di Undiksha'),
(2, 'Kecamatan', 'Lomba sepak bola di kecamatan banjar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `image`, `password`, `id_fakultas`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Wisnu Wardana', 'wisnumario87@gmail.com', 'Wisnu1.jpg', '$2y$10$mZCSwQkKikHhChC9cvzjse.bPM.1KhYEEfOqBUvxHkBJbOLdPv8Zq', 1, 2, 1, 1601695915),
(2, 'Sudarma Puja', 'sudarmapujayasa97@gmail.com', 'IMG-20200905-WA0007.jpg', '$2y$10$899LUOnvq.WclW161gTHxuNZa9luclDnRq1gexe3ip4eJ/QRSbazm', 2, 2, 1, 1604138923),
(3, 'SIPRESMA', 'sipresma@gmail.com', 'default.jpg', '$2y$10$cG2Z5GAkarGshtUXsHdzeOZtuo7KhWbCw7LvJAfGZTncgbRhc.KLu', 0, 1, 1, 1604661307),
(4, 'Admin FTK', 'adminftk@gmail.com', 'ftk.jpg', '$2y$10$w57528WGZFOIsi0TSqAmL.GbS7ww4lpsKCvFaHMXxNfv2CID6dKPW', 1, 3, 1, 1607084506);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE IF NOT EXISTS `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(5, 1, 4),
(6, 1, 5),
(8, 1, 3),
(11, 1, 2),
(12, 1, 7),
(14, 2, 6),
(15, 3, 8),
(16, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE IF NOT EXISTS `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'MasterData'),
(4, 'Prestasi'),
(6, 'Mahasiswa'),
(7, 'Menu'),
(8, 'PrestasiFTK'),
(9, 'PrestasiFMIPA'),
(10, 'PrestasiFE'),
(11, 'PrestasiFIP'),
(12, 'PrestasiFBS'),
(13, 'PrestasiFOK'),
(14, 'PrestasiFHIS'),
(15, 'PrestasiFK');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Admin FTK'),
(4, 'Admin FMIPA'),
(5, 'Admin FE'),
(6, 'Admin FIP\r\n'),
(7, 'Admin FBS'),
(8, 'Admin FOK'),
(9, 'Admin FHIS'),
(10, 'Admin FK');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE IF NOT EXISTS `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'nav-icon fas fa-fw fa-tachometer-alt', 1),
(2, 1, 'Role', 'Admin/role', 'nav-icon fas fa-fw fa-user-tie', 1),
(3, 2, 'My Profile', 'user', 'nav-icon fas fa-fw fa-user', 1),
(4, 2, 'Edit Profile', 'user/edit', 'nav-icon fas fa-fw fa-user-edit', 1),
(5, 2, 'Change Password', 'user/change_password', 'nav-icon fas fa-fw fa-key', 1),
(6, 3, 'Data Fakultas', 'MasterData/daftar_fakultas', 'nav-icon fas fa-fw fa-university', 1),
(7, 3, 'Data Jurusan', 'MasterData/daftar_jurusan', 'nav-icon fas fa-fw fa-chalkboard-teacher', 1),
(8, 3, 'Data Prodi', 'MasterData/daftar_prodi', 'nav-icon fas fa-fw fa-edit', 1),
(9, 3, 'Data Pembimbing', 'MasterData/daftar_pembimbing', 'nav-icon fas fa-fw fa-user', 1),
(11, 4, 'Data Bidang Prestasi', 'Prestasi/daftar_bidang', 'nav-icon fas fa-fw fa-copy', 1),
(12, 4, 'Data Jenis Prestasi', 'Prestasi/daftar_jenis', 'nav-icon fas fa-fw fa-file', 1),
(13, 4, 'Data Tingkat Prestasi', 'Prestasi/daftar_tingkat', 'nav-icon fas fa-fw fa-award', 1),
(14, 4, 'Data Jenis Juara', 'Prestasi/daftar_jenis_juara', 'nav-icon fas fa-fw fa-medal', 1),
(15, 4, 'Data Prestasi', 'Prestasi/daftar_prestasi', 'nav-icon fas fa-fw fa-trophy', 1),
(16, 7, 'Menu Management', 'Menu/daftar_menu', 'nav-icon fas fa-fw fa-folder', 1),
(17, 7, 'Submenu Management', 'Menu/submenu', 'nav-icon fas fa-fw fa-folder-open', 1),
(20, 6, 'Data Prestasi', 'Mahasiswa/daftar_prestasi', 'nav-icon fas fa-fw fa-trophy', 1),
(21, 3, 'Data User', 'MasterData/daftar_user', 'nav-icon fas fa-fw fa-user-graduate', 1),
(22, 8, 'Data User FTK', 'PrestasiFTK/daftar_user', 'nav-icon fas fa-fw fa-user-graduate', 1),
(23, 8, 'Data Prestasi', 'PrestasiFTK/daftar_prestasi', 'nav-icon fas fa-fw fa-trophy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE IF NOT EXISTS `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'mademahesadharma@gmail.com', 'cE7AggaYwUgSkDano3ZYoI1oWj3wKHWNWK2GZpCe0Rg=', 1603715773),
(2, 'www@gmail.com', 'IJSKJsBD/F0RfkV66XTFnG7vBs2mACaxsx84MR6WKng=', 1603715940),
(3, 'suci@gmail.com', 'n3UJQi6JPtKdnD7O1qy4JwjzQa5UoAO9bUPsZlG6XnI=', 1603716301),
(4, 'agus@gmail.com', 'YlidffyJc3fccAgYRhn6QjHdNjasRfZDxkW86PCwdEA=', 1604661307),
(5, 'adminftk@gmail.com', 'Mbmx/1RBJHwUKYlRaLZP+YQQ4Xb+KyI9rI/GZeiHYKU=', 1606221805),
(6, 'adminftk@gmail.com', 'XlywZhSn1Vot4xHakXlWXaF1ZOV1pW1B4wDVp4i6830=', 1606221966),
(7, 'adminftk@gmail.com', 'mE/l706FSsQKa1cm6QVeIutRk0Lx89Fd8sJOv9pmUbY=', 1606222078),
(8, 'dhama@gmail.com', '90qpRGy3ZdvpkUUTvIc1rHc9e+AV2W1dHoQcpL+2lvc=', 1606964196),
(9, 'adminftk@gmail.com', 'Oq0hmSUDkeWkEvu7YxIbtl9KnNwQ75E7WJCPFKSZD68=', 1607084506);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
