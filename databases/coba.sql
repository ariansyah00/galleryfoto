-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2024 pada 05.01
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `AlbumID` int(11) NOT NULL,
  `NamaAlbum` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `TanggalDibuat` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`AlbumID`, `NamaAlbum`, `Deskripsi`, `TanggalDibuat`, `UserID`) VALUES
(14, 'Buah-Buahan', 'Ini adalah Album tentang Buah-Buahan', '2024-03-04', 10),
(15, 'Game Online', 'Ini Album tentang Game Online', '2024-03-04', 10),
(16, 'Minuman', 'Ini adalah Album tentang Minuman', '2024-03-04', 10),
(17, 'teknologi', 'keajaiban teknologi', '2024-03-05', 10),
(19, 'Alam', 'sesuatu yang sangat indah sekali', '2024-04-05', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `FotoID` int(11) NOT NULL,
  `JudulFoto` varchar(255) NOT NULL,
  `DeskripsiFoto` text NOT NULL,
  `TanggalUnggah` date NOT NULL,
  `LokasiFile` varchar(255) NOT NULL,
  `AlbumID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`FotoID`, `JudulFoto`, `DeskripsiFoto`, `TanggalUnggah`, `LokasiFile`, `AlbumID`, `UserID`) VALUES
(23, 'Saledri', 'Sayuran Saledri termasuk dalam keluarga Umbelliferae, tanaman yang sering dijadikan herba atau tanaman berkhasiat obat', '2024-03-04', '13.jpg', 16, 10),
(24, 'Brokoli', 'Brokoli  merupakan Sayuran yang memiliki bunga berwarna hijau pada dataran dengan ketinggian di atas 700 mdpl.', '2024-03-04', '14.jpg', 16, 10),
(25, 'Kangkung', 'Kangkung (Ipomoea spp.). merupakan salah satu sayuran daun yang paling populer di Asia Tenggara. ', '2024-03-04', '15.jpg', 16, 10),
(26, 'Bayam', 'Sayuran Bayam merupakan salah satu jenis tanaman hijau yang paling banyak ditemui di Indonesia. Tanaman satu ini merupakan jenis sayuran yang mudah diolah untuk makanan sehari-hari mulai dari sup, pecel, gado-gado, sampai keripik. Amaranthus dubius ; biasa disebut juga dengan bayam petik.', '2024-03-04', '16.jpg', 16, 10),
(27, 'Nasi Goreng Malaysia', 'Nasi goreng Pattaya adalah olahan nasi yang berasal dari Malaysia. Makanan ini memiliki tampilan unik karena nasi gorengnya dibalut dengan telur dadar yang tipis.', '2024-03-04', '8.jpg', 16, 10),
(31, 'Daging Sapi ', 'Makanan daging sapi biasanya kerap dicari ketika Hari Raya Idul Adha. Terlebih lagi dengan daging sapi yang melimpah, kamu tentu bisa mengolahnya menjadi berbagai olahan masakan yang enak. Selain rendang, Anda bisa membuat semur daging sapi, daging sapi lada hitam, teriyaki, dan sop iga.', '2024-03-04', '10.jpg', 16, 10),
(33, 'Pisang', 'Pisang adalah tanaman buah berupa herba yang berasal dari kawasan di Asia Tenggara (termasuk Indonesia). Tanaman ini kemudian menyebar ke Afrika (Madagaskar), Amerika Selatan dan Tengah. Di Jawa Barat, pisang disebut dengan Cau, di Jawa Tengah dan Jawa Timur dinamakan gedang.', '2024-03-04', '6.jpg', 14, 10),
(34, 'Pepaya', 'Buah Pepaya merupakan tanaman berbatang tunggal dan tumbuh tegak. Batang tidak berkayu, silindris, berongga dan berwarna putih kehijauan. Tinggi tanaman berkisar antara 5 sampai10 meter, dengan perakaran yang kuat. Tanaman pepaya tidak mmpunyai percabangan.', '2024-03-04', '5.jpg', 16, 10),
(35, 'Stroberi', 'Buah stroberi (Fragaria x ananassa Duch.) adalah buah dengan kulit merah dengan bintik-bintik putih di bagian kulit yang merupakan bijinya, buah ini berwarna merah ketika sudah masak dan hijau ketika masih muda. Buah ini termasuk ke dalam keluarga Rosaceae.', '2024-03-04', '4.jpg', 14, 10),
(36, 'Anggur', 'Anggur (Vitis vinifera L.) merupakan tanaman buah berupa perdu merambat yang termasuk ke dalam keluarga Vitaceae. Tumbuhan ini berbentuk semak, batang berkayu, berbentuk silindris, warna batang kecoklatan, permukaan kasar, arah tumbuh batang memanjat, dan arah tumbuh cabang membelit.', '2024-03-04', '3.jpg', 14, 10),
(37, 'Buah Naga', 'Buah naga (Inggris: pitaya) adalah buah dari beberapa jenis kaktus dari marga Hylocereus dan Selenicereus. Buah ini berasal dari Meksiko, Amerika Tengah dan Amerika Selatan namun sekarang juga dibudidayakan di negara-negara Asia seperti Indonesia, Taiwan, Vietnam, Filipina, dan Malaysia.', '2024-03-04', '2.jpg', 14, 10),
(38, 'Mobile Legends Bang Bang', 'Game Mobile Legends: Bang Bang adalah permainan video seluler ber-genre multiplayer online battle arena (MOBA) yang dikembangkan dan diterbitkan oleh Moonton, anak perusahaan dari ByteDance.', '2024-03-04', 'a.jpg', 16, 10),
(39, 'Free Fire', 'Free fire adalah sebuah game perang yang mengumpulkan hingga 53 pemain disebuah peta yang luas, dimana setiap pemain harus saling membunuh dan menjadi satu-satunya orang yang bisa bertahan untuk menjadi pemenang (Forrest Li, 2019).', '2024-03-04', '19.jpg', 15, 10),
(40, 'Genshin Impact ', 'Genshin Impact adalah game yang bergenre dunia terbuka (open world) sekaligus bermain peran aksi. Pada permainan ini, pemain memungkinkan untuk mengendalikan salah satu karakter yang dapat digantikan di dalam sebuah party (kelompok).', '2024-03-04', '20.jpg', 16, 10),
(41, 'VALORANT', 'VALORANT adalah game tembak-menembak taktis tempat kamu dan 4 rekan tim berhadapan dengan 5 Agen lain dalam baku tembak berbekal satu nyawa per ronde untuk jadi yang pertama memenangkan 13 ronde', '2024-03-04', '21.jpg', 15, 10),
(42, 'Blood Strike ', 'Blood Strike adalah game mobile FPS Battle Royale. Rasakan Battle Royale 100 pemain dengan senjata yang bisa disesuaikan sepenuhnya!', '2024-03-04', '22.jpg', 15, 10),
(44, 'Teh', 'Teh adalah sejenis minuman yang di hasilkan dari pengolahan daun tanaman teh (Camellia sinensis). Daun yang di gunakan biasanya adalah daun pucuk di tambah 2-3 helai daun muda di bawahnya. Daun tersebut kemudian di olah dengan cara fermentasi sebelum dapat di konsumsi.', '2024-03-04', 'b.jpg', 16, 10),
(47, 'Kopi', 'Kopi merupakan sejenis minuman yang berasal dari proses pengolahan biji tanaman kopi. Kopi digolongkan ke dalam famili Rubiaceae dengan genus Coffea. Secara umum kopi hanya memiliki dua spesies yaitu Coffea arabica dan Coffea robusta (Saputra E., 2008).   ', '2024-03-04', '24.jpg', 16, 10),
(59, 'Susu', 'Susu merupakan minuman yang menjadi bagian penting dalam pola makan sehat. Susu dikenal sebagai minuman kaya nutrisi yang memberikan banyak manfaat bagi kesehatan tubuh, seperti kalsium, vitamin, dan protein. Kini, telah muncul jenis-jenis susu yang diolah dengan cara berbeda.', '2024-03-05', 'l.jpg', 16, 10),
(61, 'Jus', 'Sari buah atau jus (fruit juice) adalah cairan yang terdapat secara alami dalam buah-buahan. Sari buah populer dikonsumsi manusia sebagai minuman', '2024-03-05', '31.jpg', 16, 10),
(62, 'Soda', 'Minuman bersoda atau juga dikenal sebagai air karbonasi adalah air yang “disuntikkan” gas karbon dioksida.', '2024-03-05', '33.jpg', 16, 10),
(63, 'komputer', 'keajaiban teknologi', '2024-03-05', '35.jpg', 17, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `KomentarID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `LikeID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TanggalLike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`, `role`) VALUES
(10, 'alfin', '8606c00dd0519823dd31e565780eb496', 'alfin@gmail.com', 'alfin fauzan', 'cisalatri', 'user'),
(12, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'indonesia', 'admin'),
(13, 'riyad', 'cc67bcd8775d07d4e7a4e1de53f8e284', 'riyadsolihagisni@gmail.com', 'riyad solih agisni', 'Indonesia', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AlbumID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`FotoID`),
  ADD KEY `AlbumID` (`AlbumID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`KomentarID`),
  ADD KEY `FotoID` (`FotoID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `FotoID` (`FotoID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `AlbumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `FotoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`AlbumID`) REFERENCES `album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
