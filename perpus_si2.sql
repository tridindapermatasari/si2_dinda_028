-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2022 pada 03.57
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_si2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '10000', 'Aktif', '2022-05-25'),
(2, '30000', 'Aktif', '2022-05-31'),
(3, '15000', 'Aktif', '2022-05-30'),
(4, '10000', 'Tidak Aktif', '2020-10-10'),
(13, '', 'Tidak Aktif', '2022-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(1, 'BK001', '0', '978-979-294-344-3', '0', 'Kolaborasi PHP 5 dan Mysql untuk pengembangan website + cd', 'Andi Offset', 'Eko Priyo Utomo', '2014', '', 8, '2022-05-31 19:39:19'),
(2, 'BK002', '0', '978-979-346-559-X', '0', 'Ilmu Dakwah', 'Kencana', 'Dr. Moh. Ali Aziz, M.AG', '2016', '', 1, '2022-05-31 19:41:03'),
(11, 'BK003', 'd43fbfc43d169e225b165099a910f1bc.jpg', '978-623-02-0508-8', NULL, 'Data Mining Untuk Perguruan Tinggi', 'STMIK BUDI DARMA', 'Efori Buulolo, S.Kom., M.Kom', '2020', '', 1, '2022-06-01 19:05:27'),
(13, 'BK0012', '511ae787bfd4a2d191a16049df4ab24b.jpg', '978-979-16776-7-7', NULL, 'Pendidikan pasca konflik: pendidikan multikultural berbasis konseling budaya masyarakat Maluku Utara', 'LKis Yogyakarta', 'M. Tahir Sapsuha', '2013', '', 12, '2022-06-01 19:15:54'),
(14, 'BK0014', '3a86d100301282d331dbb8f377a5a499.jpg', '978-979-769-297-1', NULL, 'Ilmu Negara', 'Rajawali', 'Prof. Dr. Ni\'Matul Huda, S.H., M.Hum.', '2010', '', 8, '2022-06-01 19:18:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(1, 'PJ001', '25000', 3, '2022-05-02\r\n'),
(3, 'PJ001', '0', 0, '2020-05-20'),
(5, 'PJ009', '0', 0, '2020-05-20'),
(6, 'PJ004', '0', 0, '2022-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Pemrograman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(4, 'AG002', 'dindaaja', '827ccb0eea8a706c4c34a16891f84e7b', 'Anggota', 'Dindaps', 'Medan', '2002-08-17', 'Perempuan', 'Medan', '08123456888', 'dinda123@gmail.com', '2022-05-30', 'user_1653978214.jpg'),
(6, 'AG006', 'dindacantik', '827ccb0eea8a706c4c34a16891f84e7b', 'Petugas', 'Dinda Cantik', 'Medan', '2002-08-17', 'Perempuan', 'Di Medan', '08111112345', 'dindacantik123@gmail.com', '2022-05-31', 'user_1653980340.jpg'),
(7, 'AG007', 'tridindaps', '827ccb0eea8a706c4c34a16891f84e7b', 'Anggota', 'Tridinda Permatasari', 'Medan', '2002-08-17', 'Perempuan', 'Medan Polonia', '088190999099', 'tridindapermatasari6@gmail.com', '2022-06-01', 'user_1654091527.jpg'),
(8, 'AG008', 'zidaneee', '827ccb0eea8a706c4c34a16891f84e7b', 'Anggota', 'Zidane Rizki', 'Aceh', '2000-02-20', 'Laki-Laki', 'Jalan Perjuangan Gang Effort', '088298782122', 'zidanerizki@gmail.com', '2022-06-02', 'user_1654172450.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(1, 'PJ001', 'AG002', 'BK008', 'Di Kembalikan', '2022-05-19', 1, '2022-05-20', '2022-05-20'),
(2, 'PJ002', 'AG002', 'BK002', 'Dipinjam', '2022-05-31', 3, '2022-06-03', '0'),
(4, 'PJ004', 'AG002', 'BK001', 'Di Kembalikan', '2022-05-31', 30, '2022-06-30', '2022-06-02'),
(10, 'PJ009', 'AG002', 'BK008', 'Di Kembalikan', '2022-05-20', 1, '2022-05-21', '2022-05-20'),
(13, 'PJ0011', 'AG007', 'BK0014', 'Dipinjam', '2022-06-02', 22, '2022-06-24', '0'),
(14, 'PJ0014', 'AG008', 'BK001', 'Dipinjam', '2022-06-02', 1, '2022-06-03', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
