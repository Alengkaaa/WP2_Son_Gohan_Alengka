-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 23.19
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(128) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 3, 'Ahmad Kholiqul Amin ', 'Deep publishw', 2015, '9786022809432222', 901, 1, 1, 'img1.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 0, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1685956377.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'book-default-cover.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur Aiyinidan Indriyani', 'Pusat Perbukuan', 2016, '757254724884', 3, 0, 0, 'book-default-cover.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia ', 'Published', 2015, '878674646488', 5, 0, 0, 'book-default-cover.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Peranangan', 1, 'Anton Subahagia', 'Elex Media Komputindo', 2017, '43345665677', 5, 0, 0, 'book-default-cover.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'book-default-cover.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'luxima', 2014, '565756565768868', 5, 0, 0, 'book-default-cover.jpg'),
(20, 'FANNY', 0, 'adam', 'rama', 2007, '1232323232323232', 3, 0, 0, 'img1681112453.jpg'),
(21, 'Statistika dengan Program Komputer12ww', 7, 'dae', 'adamaa', 1988, '1213131', 9000, 0, 0, 'img1686558485.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(3, 'Sainss'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(7, 'Agama'),
(8, 'Populer'),
(10, 'komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(0, 'Fredrin', 'alengkahagen@gmail.com', 'iconadmin.png', '12345678', 1, 1, 1),
(2, 'adam', 'alengka@gmail.com', 'default.jpg', '$2y$10$kKWwxYchvaUCM7PxpRy27.0NAeEMoPcoY.XDNHWjW9SyVxl7geoCO', 2, 1, 1686561069),
(3, 'gajah', 'kodok@gmail.com', 'default.jpg', '$2y$10$GcM3aCEVT1m/sMb7M2UovO1xkM35x4jtmacJ0B2I4.N5fOUm04ZLi', 2, 0, 1687121145),
(4, 'gajah', 'alengka12311@gmail.com', 'default.jpg', '$2y$10$KHCsSD42lfMqNMHhghfXOeOeOIX9Wolfv48z.Mxa4uvGKcfXzoIc6', 2, 0, 1687155677),
(5, 'gajaha', 'kodokq@gmail.com', 'default.jpg', '$2y$10$LvqlL9sXVCm6WYiV9UYkh.qGUCLbrjvpNs5bmlM2MKVDsEEEmFAk.', 2, 0, 1687155794),
(6, 'gajahaq', 'kodokijo@gmail.com', 'default.jpg', '$2y$10$fr26Dpg0XPRHQ01S6pXrfee3IPWOYvjOZJyBqH31ubZUu9195BTO6', 2, 0, 1687158435),
(7, 'sore', 'alengkahagen1233@gmail.com', 'default.jpg', '$2y$10$NRq/.Rqw/g1eNR06pgUbs.9AFp.fcRlSNNIhJyq/PSmsM0cPqmET.', 2, 0, 1687167317),
(8, 'alengka', 'alengkahagen27@gmail.com', 'default.jpg', '$2y$10$bQgnw5Y6z7ZxzdafZ/D0reXW24Ro6hghXgVDLIUXf3f0rlx3FDkWu', 1, 1, 1687167490),
(9, 'gajah', 'jj@gmail.com', 'default.jpg', '$2y$10$S2vjuxET29YP.OZW7GztF.gj.6WanmXBoZpB3KLJdP9tB3eTUD9Su', 1, 1, 1688303904),
(10, 'adminlah', 'ADMIN@GMAIL.COM', 'default.jpg', '$2y$10$iN9k.NqZWqGaPnesrajczuim82jguUAFZn9o/qsjZ8dMD0FwPN/ke', 1, 1, 1688410511);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
