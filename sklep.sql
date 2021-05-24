-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 24 Maj 2021, 11:13
-- Wersja serwera: 8.0.25-0ubuntu0.20.04.1
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podzespoły`
--

CREATE TABLE `podzespoły` (
  `id` int NOT NULL,
  `typy_id` int NOT NULL,
  `producenci_id` int NOT NULL,
  `nazwa` text COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `dostepnosc` tinyint(1) NOT NULL,
  `cena` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `podzespoły`
--

INSERT INTO `podzespoły` (`id`, `typy_id`, `producenci_id`, `nazwa`, `opis`, `dostepnosc`, `cena`) VALUES
(9, 1, 6, 'Ryzen 3600', 'dobry, szybki', 1, '849.00'),
(10, 6, 7, 'Z490-A PRO', 'Spoko, droga w sumie', 1, '709.00'),
(11, 7, 1, 'Signum SG1', 'dobra, tania, szyba z boku', 1, '216.00'),
(12, 2, 5, 'IRDM X BLACK', '16GBx1, 3200MHz', 0, '328.00'),
(13, 5, 8, 'A2000', '500GB, M.2, NVMe', 1, '259.00'),
(14, 8, 1, 'Fortis 3', '140mm', 0, '155.00'),
(15, 1, 4, 'Core i5 11600K', 'grzeje mocno', 0, '1199.00'),
(22, 1, 3, 'sad', 'sd', 0, '123.00'),
(23, 1, 1, 'Brutus M10', 'Mała, zgrabna, tania', 1, '119.00'),
(24, 1, 1, 'asd', 'asd', 0, '124.00'),
(25, 1, 6, 'Ryzen 3100', 'tani, wydajny', 1, '349.00'),
(26, 3, 3, 'GTX 1660 SUPER 6gb', 'szybka, niezawawodna', 1, '1499.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `id` int NOT NULL,
  `nazwa` text COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwa`, `opis`) VALUES
(1, 'Silentium PC', 'Obudowy, Chłodzenia, Wentylatory'),
(2, 'Asus', 'Płyty główne, Karty graficzne'),
(3, 'Gigabyte', 'Płyty główne, Karty graficzne'),
(4, 'Intel', 'Procesory'),
(5, 'Goodram', 'Dyski SSD, Pamięci RAM'),
(6, 'AMD', 'Procesory, Karty graficzne'),
(7, 'MSI', 'Płyty główne, Karty graficzne'),
(8, 'Kingston', 'Pamięci RAM, Dyski SSD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int NOT NULL,
  `kategoria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(3, 'Karta graficzna'),
(4, 'HDD'),
(5, 'SSD'),
(6, 'Płyta główna'),
(7, 'Obudowa'),
(8, 'Chłodzenie procesora');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `podzespoły`
--
ALTER TABLE `podzespoły`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typy_id` (`typy_id`),
  ADD KEY `producenci_id` (`producenci_id`);

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `podzespoły`
--
ALTER TABLE `podzespoły`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `producenci`
--
ALTER TABLE `producenci`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `podzespoły`
--
ALTER TABLE `podzespoły`
  ADD CONSTRAINT `podzespoły_ibfk_1` FOREIGN KEY (`typy_id`) REFERENCES `typy` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `podzespoły_ibfk_2` FOREIGN KEY (`producenci_id`) REFERENCES `producenci` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
