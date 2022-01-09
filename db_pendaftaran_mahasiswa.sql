-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2022 pada 11.59
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pendaftaran_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `no_pendaftaran` varchar(50) NOT NULL,
  `no_pendaftar` varchar(50) NOT NULL,
  `nama_kampus` varchar(50) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`no_pendaftaran`, `no_pendaftar`, `nama_kampus`, `nama_jurusan`) VALUES
('001A', '00001', 'Universitas Islam Kalimantan', 'Teknik Informatika'),
('001B', '00002', 'Universitas Lambung Mangkurat', 'Kedokteran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` int(11) NOT NULL,
  `nama_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampus`
--

CREATE TABLE `kampus` (
  `nama_kampus` varchar(50) NOT NULL,
  `alamat_kampus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kampus`
--

INSERT INTO `kampus` (`nama_kampus`, `alamat_kampus`) VALUES
('Universitas Islam Kalimantan', 'Jl Adyaksa'),
('Universitas Lambung Mangkurat', 'Jl Ss'),
('Universitas Muhammadiyah', 'Jl B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `no_pendaftar` varchar(15) NOT NULL,
  `nama_pendaftar` varchar(50) NOT NULL,
  `alamat_pendaftar` text NOT NULL,
  `tanggal_lahir` text NOT NULL,
  `jenis_klamin` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftar`
--

INSERT INTO `pendaftar` (`no_pendaftar`, `nama_pendaftar`, `alamat_pendaftar`, `tanggal_lahir`, `jenis_klamin`, `no_hp`) VALUES
('00001', 'Indra', 'JL wkwkwkk', '10-10-10', 'Laki-Laki', '08123456789'),
('00002', 'bobi', 'JL wkwkwkk', '10-10-10', 'Laki-Laki', '08123456789'),
('00003', 'putri A', 'JL qwqwqw', '10-10-10', 'Perempuan', '081563214789');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
