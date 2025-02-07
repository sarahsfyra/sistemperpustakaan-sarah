-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2025 at 05:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `kelas` enum('X PPLG A','X PPLG B','XI PPLG A','XI PPLG B','XII PPLG A','XII PPLG B') NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `name`, `kelas`, `address`, `phone`) VALUES
(1, 'nai', 'X PPLG A', 'binjay 2', '08'),
(3, 'cala', 'X PPLG A', 'duta kranji', '09812345670'),
(4, 'asahirah', 'X PPLG A', 'kranji', '087811779118'),
(8, 'titin', 'XI PPLG B', 'Jl Bintara 14 RT 02/RW 014 No. 75', '085811046114');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` enum('X PPLG A','X PPLG B','XI PPLG A','XI PPLG B','XII PPLG A','XII PPLG B') NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `kode_buku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nama`, `kelas`, `tanggal_pinjam`, `kode_buku`) VALUES
(1, 'kayla', 'XI PPLG A', '2025-02-06', 'B123'),
(2, 'shafyra', 'XII PPLG B', '2025-02-07', 'B222'),
(3, 'putri', 'XI PPLG A', '2025-02-06', 'B000'),
(4, 'putri', 'XI PPLG A', '2025-02-06', 'B000'),
(5, 'titan', 'X PPLG A', '2025-02-07', 'B677'),
(6, 'titin ', 'XI PPLG B', '2025-02-07', 'B123');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` enum('X PPLG A','X PPLG B','XI PPLG A','XI PPLG B','XII PPLG A','XII PPLG B') NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `nama`, `kelas`, `kode_buku`, `tanggal_kembali`) VALUES
(1, 'kayla', 'XI PPLG A', 'B123', '2025-02-07'),
(2, 'putri', 'XI PPLG A', 'B000', '2025-02-13'),
(3, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(4, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(5, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(6, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(7, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(8, 'titan', 'X PPLG A', 'B677', '2025-02-08'),
(9, 'titin ', 'XI PPLG B', 'B123', '2025-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `kelas`, `email`, `password`) VALUES
(1, 'sara', 'XI', 'sar@gmail.com', '$2y$10$EYZMfcS.irjhJEt/Vz/DnOZP3UtAxP9hnixywFLhdbw6rLVHl6s5K'),
(2, 'titin ', 'XI', 'fatimahhardja@gmail.com', '$2y$10$injOh6xt8ISKicA49NVmtutqnUjwrtWPoUZFtWGrtpYW3HmOKYTYe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
