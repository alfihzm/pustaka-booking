-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 03:00 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 1, 2, 3, 'img1557402455.jpg'),
(2, 'Mudah Belajar Kompter Untuk Anak', 1, 'Bamabang Agus Setiawan', 'Huta Media', 2014, '9786025778500', 1, 2, 2, 'img1557402397.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo ', 2017, '8346753547', 1, 2, 2, 'img1555522493.jpg'),
(4, 'Detektif Conan Ep 200', 9, 'Okigawa Sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg'),
(5, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan indriyani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(7, 'Kolaborasi Code Igniter Dan Ajax Dalam Perancangan', 1, 'Anton Subagia', 'Elex Media Komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(8, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'img1557403658.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Hirmawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cinderamata`
--

CREATE TABLE `cinderamata` (
  `id` int(11) NOT NULL,
  `nama_gift` varchar(64) NOT NULL,
  `harga` int(64) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `deskripsi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinderamata`
--

INSERT INTO `cinderamata` (`id`, `nama_gift`, `harga`, `photo`, `deskripsi`) VALUES
(1, 'Tote Bag', 500, 'ToteBag_Ramah_Lingkungan.jpg', 'Tote Bag serbaguna ramah lingkungan, membawa perlengkapan anda saat bepergian. Tersedia dengan berbagai ukuran.'),
(6, 'Gantungan Kunci', 150, 'Ganci_Ramah_Lingkungan.jpg', 'Gantungan Kunci ramah lingkungan, cocok dibawa ke mana pun anda pergi.');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `img_logo` varchar(128) NOT NULL,
  `tagline` varchar(128) NOT NULL,
  `lokasi` varchar(256) NOT NULL,
  `deskripsi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('04062024001', 1, 5000),
('04062024001', 2, 5000),
('04062024001', 3, 5000),
('05062024002', 1, 5000),
('05062024002', 2, 5000),
('05062024002', 3, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `rekening` varchar(128) NOT NULL,
  `saldo` int(32) NOT NULL,
  `tgl_update` date NOT NULL,
  `jam_update` varchar(11) NOT NULL,
  `username` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `rekening`, `saldo`, `tgl_update`, `jam_update`, `username`) VALUES
(1, 'modal', 5250000, '2024-05-21', '18:23:14', 'alfihzm'),
(2, 'aruskas', 8500000, '2024-05-21', '18:36:12', 'alfihzm');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `lahir` date NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `poin` int(32) NOT NULL,
  `level` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('04062024001', '2024-06-04', '04062024001', 2, '2024-06-07', '0000-00-00', 'Pinjam', 0),
('05062024002', '2024-06-05', '05062024001', 2, '2024-06-08', '2024-06-05', 'Kembali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `sampah`
--

CREATE TABLE `sampah` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `jenis_sampah` varchar(64) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nilai_tukar` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampah`
--

INSERT INTO `sampah` (`id`, `no`, `jenis_sampah`, `kode`, `nilai_tukar`) VALUES
(1, 1, 'Botol Plastik', '', 1100),
(2, 2, 'Kaleng Alumunium', '', 13300),
(3, 3, 'Botol Plastik', '', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(16) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama`, `email`, `username`, `alamat`, `no_telp`, `photo`, `role_id`, `is_active`) VALUES
(0, 'Makarim', 'RI26@gmail.com', 'RI26', 'BSD ', '085858584040', 'default.jpg', 2, 1),
(10240001, 'Derby Markus', 'derbymarkus@gmail.com', 'derby', 'Bandung', '082173958206', 'default.jpg', 2, 1),
(10240002, 'Derby Fransiskus', 'derby@gmail.com', 'derby', 'Bandung', '082173958206', 'default.jpg', 2, 1),
(10240004, 'Dendi Rahmat', 'dendi@gmail.com', 'dendi', 'Lebak', '082175927592', 'default.jpg', 2, 1),
(10240005, 'Adam Warlock', 'adam@gmail.com', 'adam', 'Manchester', '082174927592', 'default.jpg', 2, 1),
(10240006, 'Agus Susanto', 'agus@gmail.com', 'agus', 'Pandeglang', '082173952058', 'default.jpg', 2, 1),
(10240007, 'Damar Aji', 'damar@gmail.com', 'damar', 'Sukabumi', '082186729673', 'default.jpg', 2, 1),
(10240011, 'Budi Pamungkas', 'budipm@gmail.com', 'budipm', 'Nganjuk', '082174927593', 'default.jpg', 2, 1),
(10240012, 'Mohammad Hamzah', 'mohamzah@gmail.com', 'hamzah', 'Kabupaten Tangerang', '082161872392', 'default.jpg', 2, 1),
(74574387, 'Maaruf', 'RI2@gmail.com', 'RI2', 'BSD', '0858585858', 'default.jpg', 2, 1),
(2147483647, 'Makarim', 'RI26@gmail.com', 'RI26', 'BSDQ', '085858584040', 'default.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_botol` int(11) NOT NULL,
  `jumlah_kaleng` int(11) NOT NULL,
  `jumlah_kardus` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `totalkoin` int(16) NOT NULL,
  `totalkonversi` int(16) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `catatan` varchar(128) DEFAULT NULL,
  `status` varchar(32) NOT NULL,
  `tgl_validasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_member`, `username`, `tanggal`, `jumlah_botol`, `jumlah_kaleng`, `jumlah_kardus`, `total`, `totalkoin`, `totalkonversi`, `lokasi`, `catatan`, `status`, `tgl_validasi`) VALUES
(4, 123455, '', '2024-05-20', 1, 0, 1, 0, 0, 0, 'Tenant Official', NULL, 'Sudah dikonfirmasi', '0000-00-00'),
(8, 12345689, '', '2024-05-20', 2, 1, 2, 0, 0, 0, 'Tenant Official', NULL, 'Sudah dikonfirmasi', '0000-00-00'),
(15, 10480001, 'betara', '2024-05-20', 1, 1, 0, 2, 14400, 0, 'Tenant Official', '', 'Sudah dikonfirmasi', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Mohammad Alfi Hamzami', 'alfihzm@gmail.com', 'default.jpg', '$2y$10$N/QXPiagAFiDiK45Fou3LuKwp1fOkcyowN2g4Z9FXDrCxuhEIT29q', 2, 1, 1717592314),
(2, 'Andrian Fakih', 'andriannfakih@gmail.com', 'default.jpg', '$2y$10$QdOPA6AfiToBDJN3hEwM0OUo4m43FwVG5EgQgJtlTuVB1LoIKF.Sy', 1, 1, 1701753458),
(3, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$qdcL5/MUfYd1dAA73KZFbuPqipGq31kZA.jtipk8I2RGgxUYVtLeC', 2, 1, 1712046873);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 6),
(6, 2, 2),
(7, 2, 3),
(8, 2, 5),
(10, 2, 8),
(11, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Dashboard'),
(2, 'Pengaturan User'),
(3, 'Manajemen Staff'),
(4, 'Manajemen Anggota'),
(5, 'Manajemen Sampah'),
(6, 'Manajemen Cinderamata'),
(7, 'Dashboard'),
(8, 'Transaksi');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-home', 1),
(2, 2, 'Dashboard', 'staff', 'fas fa-fw fa-home', 1),
(3, 3, 'Profil Saya', 'user/my_profile', 'fas fa-solid fa-user\r\n', 1),
(4, 3, 'Ubah Profil', 'user/edit_profile', 'fas fa-fw fa-user-pen', 1),
(5, 3, 'Ubah Password', 'user/ubah_password', 'fas fa-fw fa-key', 1),
(6, 4, 'Manajemen Staff', 'admin/staff', 'fas fa-fw fa-id-badge', 1),
(7, 4, 'Manajemen Member', 'admin/member', 'fas fa-fw fa-users', 1),
(8, 6, 'Manajemen Sampah', 'admin/sampah', 'fas fa-fw fa-trash-can', 1),
(9, 6, 'Manajemen Cinderamata', 'admin/cinderamata', '	\r\nfas fa-fw fa-gift', 1),
(10, 5, 'Informasi Member', 'staff/member', 'fas fa-fw fa-users', 1),
(12, 8, 'Manajemen Transaksi', 'transaction', 'fa-solid fa-money-bill-transfer', 1),
(13, 8, 'Manajemen Keuangan', 'finance', 'fa-solid fa-wallet\r\n', 1),
(14, 8, 'Manajemen Tarik Tunai', 'withdraw', 'fa-solid fa-money-bill-1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(11) NOT NULL,
  `tariktunai` int(16) NOT NULL,
  `metode` varchar(128) NOT NULL,
  `norek` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinderamata`
--
ALTER TABLE `cinderamata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cinderamata`
--
ALTER TABLE `cinderamata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
