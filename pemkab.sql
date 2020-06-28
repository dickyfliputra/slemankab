-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 11:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemkab`
--

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` varchar(10) NOT NULL,
  `nama` text NOT NULL,
  `tingkat` enum('Daerah','Nasional','Internasional') NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama`, `tingkat`, `tanggal`) VALUES
('N-01', 'Penghargaan SLRT Award  dalam Inovasi Layanan SLRT (Sistem Layanan Rujukan Terpadu). Penghargaan ini diberikan atas inovasi N(G)Antar Paimah (Layanan Antar Sampai Rumah) dan Lasamba (Layanan Sambang Warga).', 'Nasional', '2018-07-25'),
('N-02', 'BKN (Badan kepegawaian Nasional) Award 2018 tipe B (untuk kategori kabupaten dengan ASN di bawah 10.000)', 'Daerah', '2018-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `gambar`, `password`, `role_id`, `user_active`, `date_create`) VALUES
(1, 'Dickyfli Perdana P', 'muaralembu11@gmail.com', 'default.jpg', '$2y$10$/niT6OTN8z/A7j83kaWupe0zngoz.qunwfzoUsrA3W47og0s6T5hS', 2, 1, 1593379640),
(2, 'Berto Juni Kristanto', 'bertojuni@gmail.com', 'default.jpg', '$2y$10$8bZaJr66ig7S982RBswVhevOq5pF4dKEOhdORB3zLSCzT3o3VazZK', 2, 1, 1593379987),
(3, 'Alvian', 'alvian@gmail.com', 'default.jpg', '$2y$10$JmB4.G4z9Lfb95d8KfD18ORE9RH5pzulBDJzzcNQPjfhGw0xE2l9C', 2, 1, 1593380446),
(4, 'Wahyu Oktoranda', 'wahyuokt@gmail.com', 'default.jpg', '$2y$10$QjHZyrxnvolZaiy2UQ/G/.ZI62wbs4XImsfOTegk1Sp4A3jqTVJ6u', 2, 1, 1593380532),
(5, 'Taufiq Rizal', 'tfq21@gmail.com', 'default.jpg', '$2y$10$CCoc.uNfIRRBUjueK4JqlOIFOTmbwD5DkQJ1xM84Vtc02pP4K6PrO', 2, 1, 1593380613);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
