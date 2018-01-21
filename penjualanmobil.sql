-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 12:51 PM
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
-- Database: `penjualanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `no_faktur` int(10) NOT NULL,
  `kode_pembeli` varchar(10) NOT NULL,
  `kode_mobil` varchar(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`no_faktur`, `kode_pembeli`, `kode_mobil`, `tgl_fktur`, `jam_fktur`) VALUES
(1, 'CUS0001', 'AAA', '20/01/2018', '19:31:00'),
(2, 'CUS0001', 'AVZ001', '20/01/2018', '19:37:44'),
(3, 'CUS0001', 'AVZ001', '20/01/2018', '19:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `kode_mobil` varchar(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`kode_mobil`, `nama_mobil`, `merk`, `warna`, `tahun`, `harga`) VALUES
('AVZ001', 'AVANZA', 'TOYOTA', 'PUTIH', 2012, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `kode_pembeli` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_tlp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`kode_pembeli`, `nama`, `pekerjaan`, `alamat`, `no_tlp`) VALUES
('CUS0001', 'YANUAR KURNIANTO', 'MAHASISWA', 'JL. INTAN SARI 2 BANJARBARU', '085751738501');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(10) NOT NULL,
  `no_faktur` int(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_faktur`, `tgl_fktur`, `jam_fktur`, `kode_pembeli`, `nama`, `kode_mobil`, `nama_mobil`, `merk`, `warna`, `tahun`, `harga`) VALUES
(1, 1, '15/11/2016', '10:20:21', 1001, 'sumanto', 2, 'ALPAT', 'D110PS', 'PINK', 2011, 900000000),
(2, 1, '15/11/2016', '10:20:21', 2, 'sumidi', 3, 'FERARI', 'ST4324PK', 'SILVER', 2019, 150000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kode_mobil`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`kode_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
