-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 May 2023, 13:13:35
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `psikoloji`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinselyonelim`
--

CREATE TABLE `cinselyonelim` (
  `yonelimID` int(11) NOT NULL,
  `yonelimAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
(2, 'Kadın');

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
  `cinsiyetID` int(11) NOT NULL,
  `psikologID` int(11) NOT NULL,
  `yonelimID` int(11) NOT NULL,
  `hastaGiris` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hastaCikis` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalik`
--

CREATE TABLE `hastalik` (
  `hastalikID` int(11) NOT NULL,
  `hastalikAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalik_hasta`
--

CREATE TABLE `hastalik_hasta` (
  `hastalikID` int(11) NOT NULL,
  `kimlikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta_sorun`
--

CREATE TABLE `hasta_sorun` (
  `kimlikID` int(11) NOT NULL,
  `sorunID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
(8, 'Hindu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitalar`
--

CREATE TABLE `kitalar` (
  `kitaID` int(11) NOT NULL,
  `kitaAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kulturelyapi`
--

CREATE TABLE `kulturelyapi` (
  `yapiID` int(11) NOT NULL,
  `yapiAd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorunlar`
--

CREATE TABLE `sorunlar` (
  `sorunID` int(11) NOT NULL,
  `sorunAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetimsekli`
--

CREATE TABLE `yonetimsekli` (
  `yonetimID` int(11) NOT NULL,
  `yonetimAd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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
  ADD KEY `hastalikID` (`hastalikID`),
  ADD KEY `kimlikID` (`kimlikID`);

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
  MODIFY `yonelimID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `cinsitetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `engelturu`
--
ALTER TABLE `engelturu`
  MODIFY `TurID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hastalik`
--
ALTER TABLE `hastalik`
  MODIFY `hastalikID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `inanc`
--
ALTER TABLE `inanc`
  MODIFY `inancID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `kitalar`
--
ALTER TABLE `kitalar`
  MODIFY `kitaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kulturelyapi`
--
ALTER TABLE `kulturelyapi`
  MODIFY `yapiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `psikolog`
--
ALTER TABLE `psikolog`
  MODIFY `psikologID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sorunlar`
--
ALTER TABLE `sorunlar`
  MODIFY `sorunID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ulke`
--
ALTER TABLE `ulke`
  MODIFY `ulkeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yonetimsekli`
--
ALTER TABLE `yonetimsekli`
  MODIFY `yonetimID` int(11) NOT NULL AUTO_INCREMENT;

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
