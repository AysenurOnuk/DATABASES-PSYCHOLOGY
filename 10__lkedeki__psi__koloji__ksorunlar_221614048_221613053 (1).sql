-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 May 2023, 14:43:51
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `10ülkedeki̇psi̇koloji̇ksorunlar_221614048_221613053`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinselyonelim`
--

CREATE TABLE `cinselyonelim` (
  `yonelimID` int(11) NOT NULL,
  `yonelimAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cinselyonelim`
--

INSERT INTO `cinselyonelim` (`yonelimID`, `yonelimAd`) VALUES
(1, 'Heteroseksüel'),
(2, 'Homoseksüel'),
(3, 'Biseksüel'),
(4, 'Panseksüel'),
(5, 'Aseksüel'),
(6, 'Transeksüel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `cinsitetID` int(11) NOT NULL,
  `cinsiyetAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`cinsitetID`, `cinsiyetAd`) VALUES
(1, 'Erkek'),
(2, 'Kadın'),
(3, 'Diğer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `engelturu`
--

CREATE TABLE `engelturu` (
  `TurID` int(11) NOT NULL,
  `engelTuru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `engelturu`
--

INSERT INTO `engelturu` (`TurID`, `engelTuru`) VALUES
(1, 'Doğuştan Fiziksel Engelli'),
(2, 'Doğuştan Zihinsel Engelli'),
(3, 'Fiziksel Engelli'),
(4, 'Zihinsel Engelli'),
(5, 'Engeli yok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta`
--

CREATE TABLE `hasta` (
  `kimlikID` int(11) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `dogumT` date NOT NULL,
  `yas` int(11) NOT NULL,
  `ulkeID` int(11) NOT NULL,
  `inancID` int(11) NOT NULL,
  `TurID` int(11) NOT NULL,
  `engelyuzde` float NOT NULL,
  `cinsiyetID` int(11) NOT NULL,
  `psikologID` int(11) NOT NULL,
  `yonelimID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hasta`
--

INSERT INTO `hasta` (`kimlikID`, `ad`, `soyad`, `dogumT`, `yas`, `ulkeID`, `inancID`, `TurID`, `engelyuzde`, `cinsiyetID`, `psikologID`, `yonelimID`) VALUES
(1, 'Joe', 'Goldberg', '1995-12-04', 28, 6, 11, 2, 45.7, 1, 1, 4),
(2, 'Süleyman ', 'Çakır', '1984-04-06', 39, 3, 16, 1, 27.9, 1, 3, 3),
(3, 'Gülben', 'Şimşek', '2003-10-26', 19, 4, 13, 5, 0, 2, 5, 5),
(4, 'Gaisha', 'Venus', '2000-02-06', 23, 1, 13, 3, 23.7, 2, 2, 4),
(5, 'Seda', 'Sayan', '1980-12-09', 43, 5, 11, 4, 42.7, 2, 4, 4),
(6, 'Chris', 'Joez', '1997-10-13', 26, 9, 1, 2, 28.6, 1, 6, 6),
(7, 'Behlül', 'Kor', '1992-09-18', 31, 7, 8, 4, 18.7, 1, 6, 3),
(8, 'Memati', 'Alemdar', '1991-01-01', 32, 8, 12, 2, 56.7, 3, 10, 6),
(9, 'Bruno', 'Hill', '1993-10-08', 30, 5, 16, 5, 0.8, 3, 7, 2),
(10, 'Ersoy', 'Öçalan', '1985-10-16', 38, 7, 4, 3, 84.7, 1, 7, 2),
(11, 'Eyşan', 'Skywalker', '1970-10-10', 53, 5, 10, 4, 56.7, 2, 10, 5),
(12, 'İlkkan', 'Yılmaz', '1990-09-09', 33, 9, 13, 2, 32.8, 1, 3, 2),
(13, 'Hürrem ', 'Osmanoğlu', '1964-04-28', 59, 2, 12, 1, 13.8, 2, 9, 4),
(14, 'Hafsa', 'Yoda', '2001-08-06', 22, 10, 14, 4, 13.8, 2, 1, 1),
(15, 'Obi', 'Wan', '1950-02-02', 73, 10, 11, 4, 18.8, 1, 7, 5),
(16, 'Nusret ', 'Altıntop', '1993-05-01', 30, 6, 15, 2, 12.8, 1, 8, 4),
(17, 'Daryl', 'Dixon', '1980-12-10', 43, 7, 12, 3, 46.5, 1, 1, 2),
(18, 'Polat', 'McCal', '2000-11-22', 23, 1, 3, 2, 13.9, 1, 8, 3),
(19, 'Elif', 'McCal', '2001-03-07', 22, 9, 4, 5, 0.9, 2, 8, 5),
(20, 'Lana', 'Diamond', '1980-01-09', 43, 8, 8, 5, 0, 2, 6, 3),
(21, 'Ali Rıza', 'Morgan', '1975-07-23', 47, 5, 1, 1, 39.8, 1, 5, 1),
(22, 'Yalvaç', 'Gray', '1992-09-13', 31, 4, 14, 3, 19.7, 3, 5, 6),
(23, 'Jonathan', 'Dio', '1960-12-18', 63, 5, 14, 3, 12.2, 1, 7, 4),
(24, 'Rihanna ', 'Onuk', '1999-10-11', 24, 2, 13, 4, 11.8, 2, 9, 4),
(25, 'Kürşat', 'Şahin', '2003-11-09', 19, 2, 1, 5, 0, 1, 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalik`
--

CREATE TABLE `hastalik` (
  `hastalikID` int(11) NOT NULL,
  `hastalikAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hastalik`
--

INSERT INTO `hastalik` (`hastalikID`, `hastalikAd`) VALUES
(1, 'Bipolar Bozukluk'),
(2, 'Yaygın Anksiyete Bozukluk'),
(3, 'Sosyal Fobi'),
(4, 'Panik Bozukluğu'),
(5, 'Yeme Bozukluğu'),
(6, 'Şizofren'),
(7, 'Stres Bozukluğu'),
(8, 'Madde Bağımlılığı'),
(9, 'Dikkat Eksikliği ve Hiperaktivite Bozukluğu'),
(10, 'Uyku Bozukluğu'),
(11, 'Şiddet mağduru'),
(12, 'Taciz ve tecavüz mağduru'),
(13, 'Obsesif - Kompulsif Bozukluk'),
(14, 'Obezite'),
(15, 'Depresyon'),
(16, 'Narsist bozukluk'),
(17, 'Takıntılı kişilik bozukluğu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalik_hasta`
--

CREATE TABLE `hastalik_hasta` (
  `kimlikID` int(11) NOT NULL,
  `hastalikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hastalik_hasta`
--

INSERT INTO `hastalik_hasta` (`kimlikID`, `hastalikID`) VALUES
(1, 1),
(1, 17),
(1, 6),
(2, 8),
(2, 7),
(3, 7),
(3, 16),
(3, 2),
(4, 8),
(4, 9),
(4, 10),
(5, 7),
(5, 1),
(6, 3),
(6, 4),
(7, 10),
(7, 12),
(8, 2),
(8, 8),
(8, 6),
(9, 4),
(10, 11),
(10, 5),
(11, 4),
(11, 8),
(11, 1),
(12, 7),
(12, 5),
(13, 3),
(13, 8),
(14, 9),
(14, 7),
(15, 6),
(15, 11),
(15, 13),
(16, 17),
(17, 1),
(17, 7),
(18, 6),
(18, 12),
(19, 6),
(19, 3),
(20, 4),
(20, 3),
(21, 5),
(21, 6),
(22, 6),
(22, 8),
(23, 4),
(23, 13),
(24, 10),
(25, 7),
(25, 5),
(25, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta_sorun`
--

CREATE TABLE `hasta_sorun` (
  `kimlikID` int(11) NOT NULL,
  `sorunID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hasta_sorun`
--

INSERT INTO `hasta_sorun` (`kimlikID`, `sorunID`) VALUES
(1, 7),
(1, 6),
(2, 3),
(2, 4),
(3, 4),
(3, 10),
(4, 3),
(4, 4),
(5, 7),
(5, 10),
(6, 10),
(7, 1),
(8, 2),
(8, 5),
(9, 3),
(9, 8),
(10, 5),
(11, 6),
(11, 9),
(12, 4),
(13, 7),
(13, 8),
(14, 6),
(14, 5),
(15, 7),
(15, 9),
(16, 4),
(16, 2),
(17, 3),
(18, 9),
(19, 6),
(19, 1),
(19, 4),
(20, 5),
(20, 8),
(21, 3),
(21, 1),
(22, 6),
(23, 5),
(24, 6),
(24, 7),
(25, 10),
(25, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `inanc`
--

CREATE TABLE `inanc` (
  `inancID` int(11) NOT NULL,
  `inancAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `inanc`
--

INSERT INTO `inanc` (`inancID`, `inancAd`) VALUES
(1, 'Müslüman'),
(2, 'Hristiyan'),
(3, 'Pagan'),
(4, 'Yahudi'),
(5, 'Ateist'),
(6, 'Agnostik'),
(7, 'Budist'),
(8, 'Hindu'),
(9, 'Müslüman'),
(10, 'Budist'),
(11, 'Hristiyan'),
(12, 'Yahudi'),
(13, 'Agnostik'),
(14, 'Ateist'),
(15, 'Hinduist'),
(16, 'Panteist');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitalar`
--

CREATE TABLE `kitalar` (
  `kitaID` int(11) NOT NULL,
  `kitaAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitalar`
--

INSERT INTO `kitalar` (`kitaID`, `kitaAd`) VALUES
(1, 'Afrika kıtası'),
(2, 'Asya kıtası'),
(3, 'Güney Amerika kıtası'),
(4, 'Kuzey Amerika kıtası'),
(5, 'Avustralya Kıtası'),
(6, 'Antarktika Kıtası'),
(7, 'Avrupa Kıtası');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kulturelyapi`
--

CREATE TABLE `kulturelyapi` (
  `yapiID` int(11) NOT NULL,
  `yapiAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kulturelyapi`
--

INSERT INTO `kulturelyapi` (`yapiID`, `yapiAd`) VALUES
(1, 'Farklı dinlere sahip '),
(2, 'Ticaret merkezli '),
(3, 'Etnik çeşitliğe sahip'),
(4, 'Spor, sanat ve sosyal anlamda etkinlikleri bulunan'),
(5, 'Tarım , hayvancılık ile geçimini sağlayan'),
(6, 'Başka ülkelere sömürülmüş'),
(7, 'Geleneksel ve yerel öğelerin ön plana çıktığı'),
(8, 'Modernleşmenin etkilerinin daha fazla hissedildiği'),
(9, 'Bireysel özgürlüklerin ön plana çıktığı'),
(10, 'Teknolojik ilerlemenin etkilerinin daha yaygın olduğu,'),
(11, 'Teknolojik ilerlemenin etkilerinin daha yaygın olduğu,');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `psikolog`
--

CREATE TABLE `psikolog` (
  `psikologID` int(11) NOT NULL,
  `psikologAd` varchar(100) NOT NULL,
  `psikologSoyad` varchar(100) NOT NULL,
  `dogumT` date NOT NULL,
  `yas` int(11) NOT NULL,
  `ulkeID` int(11) NOT NULL,
  `cinsiyetID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `psikolog`
--

INSERT INTO `psikolog` (`psikologID`, `psikologAd`, `psikologSoyad`, `dogumT`, `yas`, `ulkeID`, `cinsiyetID`) VALUES
(1, 'Aishie', 'Lynx', '2003-10-17', 19, 1, 2),
(2, 'Joe', 'Silver', '2001-07-30', 21, 8, 1),
(3, 'Yılmaz', 'Kaymaz', '1998-05-06', 25, 5, 1),
(4, 'Şahin', 'Kaplan', '1987-03-07', 36, 10, 1),
(5, 'Mika', 'Yeager', '1999-06-06', 24, 5, 2),
(6, 'Albert', 'Vincent', '1975-10-16', 48, 6, 1),
(7, 'Anakin', 'Skywalker', '2002-02-02', 18, 2, 1),
(8, 'Rosalie', 'Judith', '1987-02-07', 36, 9, 2),
(9, 'Marlon', 'Brando', '1962-01-10', 61, 3, 1),
(10, 'Fatma ', 'Turgut', '1984-01-30', 39, 2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

CREATE TABLE `randevu` (
  `randevutarih` date NOT NULL,
  `randevusure` time NOT NULL,
  `randevuID` int(11) NOT NULL,
  `kimlikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`randevutarih`, `randevusure`, `randevuID`, `kimlikID`) VALUES
('2023-01-18', '16:24:27', 1, 1),
('2021-05-10', '49:11:43', 2, 2),
('2016-01-13', '32:27:36', 3, 3),
('2022-03-14', '11:28:13', 4, 4),
('2018-05-09', '22:28:33', 5, 5),
('2023-02-06', '08:23:24', 6, 6),
('2023-02-22', '24:23:03', 7, 7),
('2021-01-12', '26:30:24', 8, 8),
('2019-01-15', '34:17:06', 9, 9),
('2023-01-09', '33:12:30', 10, 10),
('2023-01-23', '08:32:02', 11, 11),
('2020-01-18', '26:32:35', 12, 12),
('2023-02-14', '26:33:38', 13, 13),
('2023-02-07', '22:34:31', 14, 14),
('2022-11-06', '31:34:52', 15, 15),
('2017-12-10', '33:35:20', 16, 16),
('2021-02-16', '08:35:50', 17, 17),
('2020-03-17', '37:36:10', 18, 18),
('2023-02-07', '49:36:30', 19, 19),
('2018-05-11', '39:36:58', 20, 20),
('2019-03-04', '27:37:53', 21, 21),
('2018-02-06', '26:37:53', 22, 22),
('2023-03-22', '61:38:34', 23, 23),
('2015-03-09', '36:38:34', 24, 24),
('2023-02-13', '36:39:31', 25, 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorunlar`
--

CREATE TABLE `sorunlar` (
  `sorunID` int(11) NOT NULL,
  `sorunAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sorunlar`
--

INSERT INTO `sorunlar` (`sorunID`, `sorunAd`) VALUES
(1, 'Gelecek Kaygısı'),
(2, 'Akran Zorbalığı'),
(3, 'Maddi Yetersizlik'),
(4, 'Siyasete Maruz Kalma'),
(5, 'Din Baskısı'),
(6, 'Cinsiyet Eşitsizliği'),
(7, 'Cinsellik Sorunları'),
(8, 'Eğitim Yetersizliği'),
(9, 'Kadına Şiddet Durumu'),
(10, 'İstismar Durumu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulke`
--

CREATE TABLE `ulke` (
  `ulkeID` int(11) NOT NULL,
  `ulkeAd` varchar(100) NOT NULL,
  `ulkeNufus` int(12) NOT NULL,
  `ulkeGoc` int(11) NOT NULL,
  `terorSeviye` int(11) NOT NULL,
  `ozgurluk` int(11) NOT NULL,
  `kitaID` int(11) NOT NULL,
  `yonetimID` int(11) NOT NULL,
  `yapiID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ulke`
--

INSERT INTO `ulke` (`ulkeID`, `ulkeAd`, `ulkeNufus`, `ulkeGoc`, `terorSeviye`, `ozgurluk`, `kitaID`, `yonetimID`, `yapiID`) VALUES
(1, 'Japonya', 125700006, 10031, 13, 86, 2, 6, 11),
(2, 'Türkiye', 8500800, 185963, 46, 12, 7, 1, 3),
(3, 'Hindistan', 1425775850, 123859, 52, 12, 2, 1, 1),
(4, 'Güney Kore', 51269185, 2369, 3, 96, 2, 1, 8),
(5, 'İran', 86666342, 1365987, 98, 1, 2, 2, 7),
(6, 'Kanada', 39566448, 1200, 5, 89, 4, 4, 9),
(7, 'Nijerya', 213896578, 365236, 94, 2, 1, 1, 6),
(8, 'Brezilya', 212559417, 145736, 58, 46, 3, 1, 2),
(9, 'İtalya', 59865475, 3650, 7, 93, 7, 8, 4),
(10, 'Yeni Zelanda', 5236897, 1236589, 98, 1, 5, 4, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetimsekli`
--

CREATE TABLE `yonetimsekli` (
  `yonetimID` int(11) NOT NULL,
  `yonetimAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetimsekli`
--

INSERT INTO `yonetimsekli` (`yonetimID`, `yonetimAd`) VALUES
(1, 'Federal Cumhuriyet'),
(2, 'Teokrasi'),
(3, 'Oligarşi'),
(4, 'Monarşi'),
(5, 'Meşrutiyet'),
(6, 'Demokrasi'),
(8, 'Cumhuriyet');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cinselyonelim`
--
ALTER TABLE `cinselyonelim`
  ADD PRIMARY KEY (`yonelimID`);

--
-- Tablo için indeksler `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`cinsitetID`);

--
-- Tablo için indeksler `engelturu`
--
ALTER TABLE `engelturu`
  ADD PRIMARY KEY (`TurID`);

--
-- Tablo için indeksler `hasta`
--
ALTER TABLE `hasta`
  ADD PRIMARY KEY (`kimlikID`),
  ADD KEY `ulkeID` (`ulkeID`),
  ADD KEY `yonelimID` (`yonelimID`),
  ADD KEY `psikologID` (`psikologID`),
  ADD KEY `inancID` (`inancID`),
  ADD KEY `cinsiyetID` (`cinsiyetID`),
  ADD KEY `TurID` (`TurID`);

--
-- Tablo için indeksler `hastalik`
--
ALTER TABLE `hastalik`
  ADD PRIMARY KEY (`hastalikID`);

--
-- Tablo için indeksler `hastalik_hasta`
--
ALTER TABLE `hastalik_hasta`
  ADD KEY `hastalik_hasta_ibfk_1` (`hastalikID`),
  ADD KEY `hastalik_hasta_ibfk_2` (`kimlikID`);

--
-- Tablo için indeksler `hasta_sorun`
--
ALTER TABLE `hasta_sorun`
  ADD KEY `kimlikID` (`kimlikID`),
  ADD KEY `sorunID` (`sorunID`);

--
-- Tablo için indeksler `inanc`
--
ALTER TABLE `inanc`
  ADD PRIMARY KEY (`inancID`);

--
-- Tablo için indeksler `kitalar`
--
ALTER TABLE `kitalar`
  ADD PRIMARY KEY (`kitaID`);

--
-- Tablo için indeksler `kulturelyapi`
--
ALTER TABLE `kulturelyapi`
  ADD PRIMARY KEY (`yapiID`);

--
-- Tablo için indeksler `psikolog`
--
ALTER TABLE `psikolog`
  ADD PRIMARY KEY (`psikologID`),
  ADD KEY `ulkeID` (`ulkeID`),
  ADD KEY `cinsiyetID` (`cinsiyetID`);

--
-- Tablo için indeksler `randevu`
--
ALTER TABLE `randevu`
  ADD PRIMARY KEY (`randevuID`),
  ADD KEY `randevu_ibfk_1` (`kimlikID`);

--
-- Tablo için indeksler `sorunlar`
--
ALTER TABLE `sorunlar`
  ADD PRIMARY KEY (`sorunID`);

--
-- Tablo için indeksler `ulke`
--
ALTER TABLE `ulke`
  ADD PRIMARY KEY (`ulkeID`),
  ADD KEY `kitaID` (`kitaID`),
  ADD KEY `yapiID` (`yapiID`),
  ADD KEY `yonetimID` (`yonetimID`);

--
-- Tablo için indeksler `yonetimsekli`
--
ALTER TABLE `yonetimsekli`
  ADD PRIMARY KEY (`yonetimID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cinselyonelim`
--
ALTER TABLE `cinselyonelim`
  MODIFY `yonelimID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `cinsitetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `engelturu`
--
ALTER TABLE `engelturu`
  MODIFY `TurID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hasta`
--
ALTER TABLE `hasta`
  MODIFY `kimlikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `hastalik`
--
ALTER TABLE `hastalik`
  MODIFY `hastalikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `inanc`
--
ALTER TABLE `inanc`
  MODIFY `inancID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `kitalar`
--
ALTER TABLE `kitalar`
  MODIFY `kitaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `kulturelyapi`
--
ALTER TABLE `kulturelyapi`
  MODIFY `yapiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `psikolog`
--
ALTER TABLE `psikolog`
  MODIFY `psikologID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `randevu`
--
ALTER TABLE `randevu`
  MODIFY `randevuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `sorunlar`
--
ALTER TABLE `sorunlar`
  MODIFY `sorunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `ulke`
--
ALTER TABLE `ulke`
  MODIFY `ulkeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yonetimsekli`
--
ALTER TABLE `yonetimsekli`
  MODIFY `yonetimID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `hasta`
--
ALTER TABLE `hasta`
  ADD CONSTRAINT `hasta_ibfk_1` FOREIGN KEY (`ulkeID`) REFERENCES `ulke` (`ulkeID`),
  ADD CONSTRAINT `hasta_ibfk_2` FOREIGN KEY (`yonelimID`) REFERENCES `cinselyonelim` (`yonelimID`),
  ADD CONSTRAINT `hasta_ibfk_3` FOREIGN KEY (`psikologID`) REFERENCES `psikolog` (`psikologID`),
  ADD CONSTRAINT `hasta_ibfk_4` FOREIGN KEY (`inancID`) REFERENCES `inanc` (`inancID`),
  ADD CONSTRAINT `hasta_ibfk_5` FOREIGN KEY (`cinsiyetID`) REFERENCES `cinsiyet` (`cinsitetID`),
  ADD CONSTRAINT `hasta_ibfk_6` FOREIGN KEY (`TurID`) REFERENCES `engelturu` (`TurID`);

--
-- Tablo kısıtlamaları `hastalik_hasta`
--
ALTER TABLE `hastalik_hasta`
  ADD CONSTRAINT `hastalik_hasta_ibfk_1` FOREIGN KEY (`hastalikID`) REFERENCES `hastalik` (`hastalikID`),
  ADD CONSTRAINT `hastalik_hasta_ibfk_2` FOREIGN KEY (`kimlikID`) REFERENCES `hasta` (`kimlikID`);

--
-- Tablo kısıtlamaları `hasta_sorun`
--
ALTER TABLE `hasta_sorun`
  ADD CONSTRAINT `hasta_sorun_ibfk_1` FOREIGN KEY (`kimlikID`) REFERENCES `hasta` (`kimlikID`),
  ADD CONSTRAINT `hasta_sorun_ibfk_2` FOREIGN KEY (`sorunID`) REFERENCES `sorunlar` (`sorunID`);

--
-- Tablo kısıtlamaları `psikolog`
--
ALTER TABLE `psikolog`
  ADD CONSTRAINT `psikolog_ibfk_1` FOREIGN KEY (`ulkeID`) REFERENCES `ulke` (`ulkeID`),
  ADD CONSTRAINT `psikolog_ibfk_2` FOREIGN KEY (`cinsiyetID`) REFERENCES `cinsiyet` (`cinsitetID`);

--
-- Tablo kısıtlamaları `randevu`
--
ALTER TABLE `randevu`
  ADD CONSTRAINT `randevu_ibfk_1` FOREIGN KEY (`kimlikID`) REFERENCES `hasta` (`kimlikID`);

--
-- Tablo kısıtlamaları `ulke`
--
ALTER TABLE `ulke`
  ADD CONSTRAINT `ulke_ibfk_1` FOREIGN KEY (`kitaID`) REFERENCES `kitalar` (`kitaID`),
  ADD CONSTRAINT `ulke_ibfk_2` FOREIGN KEY (`yapiID`) REFERENCES `kulturelyapi` (`yapiID`),
  ADD CONSTRAINT `ulke_ibfk_3` FOREIGN KEY (`yonetimID`) REFERENCES `yonetimsekli` (`yonetimID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
