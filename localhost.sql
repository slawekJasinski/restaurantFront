-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 07 Cze 2020, 09:58
-- Wersja serwera: 10.0.38-MariaDB
-- Wersja PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wikomp_gr11`
--
CREATE DATABASE IF NOT EXISTS `wikomp_gr11` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wikomp_gr11`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `id_adresu` int(10) UNSIGNED NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `ulica` varchar(50) NOT NULL,
  `nr_domu` varchar(10) NOT NULL,
  `nr_mieszkania` varchar(10) DEFAULT NULL,
  `kod_pocztowy` varchar(10) DEFAULT NULL,
  `kraj` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `adresy`
--

INSERT INTO `adresy` (`id_adresu`, `miasto`, `ulica`, `nr_domu`, `nr_mieszkania`, `kod_pocztowy`, `kraj`) VALUES
(5, 'Gdańsk', 'Poznańska', '20', '3', '98-878', 'Polska'),
(7, 'Kraków', 'Zamkowa', '10', '', '78-788', 'Polska'),
(8, 'Kraków', 'Zamkowa', '10', '10', '78-788', 'Polska'),
(3, 'Londyn', 'Londyńska', '40', '', '', 'Anglia'),
(10, 'Poznań', 'Katowicka', '14', '', '78-487', 'Polska'),
(6, 'Poznań', 'Katowicka', '78D', '10', '45-788', 'Polska'),
(1, 'Poznań', 'os. Piastowskie', '10', '1', '61-787', 'Polska'),
(2, 'Warszawa', 'Poznańska', '20', '2', '78-788', 'Polska'),
(4, 'Warszawa', 'Poznańska', '20', '3', '78-788', 'Polska'),
(9, 'Wrocław', 'Zamkowa', '10', '10', '25-787', 'Polska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy_klienci`
--

CREATE TABLE `adresy_klienci` (
  `id_adresu_klienta` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `id_typu_adresu` int(10) UNSIGNED NOT NULL,
  `id_adresu` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `adresy_klienci`
--

INSERT INTO `adresy_klienci` (`id_adresu_klienta`, `id_klienta`, `id_typu_adresu`, `id_adresu`) VALUES
(1, 1, 1, 1),
(3, 1, 2, 1),
(4, 1, 3, 8),
(5, 2, 1, 4),
(6, 2, 2, 6),
(7, 3, 2, 4),
(8, 4, 1, 10),
(9, 4, 2, 9),
(10, 4, 3, 5),
(11, 5, 1, 2),
(12, 5, 2, 3),
(13, 5, 3, 4),
(14, 6, 2, 7),
(15, 6, 3, 6),
(16, 7, 1, 8),
(17, 7, 2, 5),
(18, 8, 1, 4),
(19, 9, 3, 10),
(20, 10, 2, 7),
(21, 10, 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banki`
--

CREATE TABLE `banki` (
  `id_banku` int(10) UNSIGNED NOT NULL,
  `nazwa_banku` varchar(150) NOT NULL,
  `zakres_od` int(10) UNSIGNED NOT NULL,
  `zakres_do` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `banki`
--

INSERT INTO `banki` (`id_banku`, `nazwa_banku`, `zakres_od`, `zakres_do`) VALUES
(1, 'KAS Bank', 0, 1111),
(2, 'Aareal Bank Aktiengesellschaft (Spółka Akcyjna) - Oddział w Polsce', 1112, 1125),
(3, 'ABS Bank Spółdzielczy', 1126, 1139),
(4, 'Alior Bank Spółka Akcyjna', 1140, 1153),
(5, 'AS Inbank Spółka Akcyjna - Oddział w Polsce', 1154, 1167),
(6, 'Bałtycki Bank Spółdzielczy', 1168, 1181),
(7, 'Banca Farmafactoring S.p.A. Spółka Akcyjna Oddział w Polsce', 1182, 1195),
(8, 'Bank BPH Spółka Akcyjna', 1196, 1209),
(9, 'Bank Gospodarstwa Krajowego', 1210, 1223),
(10, 'Bank Handlowo-Kredytowy Spółka Akcyjna w Katowicach w likwidacji', 1224, 1237),
(11, 'Bank Handlowy w Warszawie Spółka Akcyjna', 1238, 1251),
(12, 'Bank Millennium Spółka Akcyjna', 1252, 1265),
(13, 'Bank Nowy BFG Spółka Akcyjna', 1266, 1279),
(14, 'Bank Ochrony Środowiska Spółka Akcyjna', 1280, 1293),
(15, 'Bank of China (Luxembourg) S.A. Spółka Akcyjna Oddział w Polsce', 1294, 1307),
(16, 'Bank Pocztowy Spółka Akcyjna', 1308, 1321),
(17, 'Bank Polska Kasa Opieki Spółka Akcyjna', 1322, 1335),
(18, 'BANK POLSKIEJ SPÓŁDZIELCZOŚCI SPÓŁKA AKCYJNA', 1336, 1349),
(19, 'Bank Rumia Spółdzielczy', 1350, 1363),
(20, 'Bank Spółdzielczy \"Bank Rolników\" w Opolu', 1364, 1377),
(21, 'Bank Spółdzielczy \"MAZOWSZE\" w Płocku', 1378, 1391),
(22, 'Bank Spółdzielczy \"Pałuki\" w Żninie', 1392, 1405),
(23, 'Bank Spółdzielczy \"Wspólna Praca\" w Kutnie', 1406, 1419),
(24, 'Bank Spółdzielczy Czechowice-Dziedzice-Bestwina', 1420, 1433),
(25, 'Bank Spółdzielczy Daleszyce-Górno', 1434, 1447),
(26, 'Bank Spółdzielczy Duszniki', 1448, 1461),
(27, 'Bank Spółdzielczy Grodków-Łosiów z siedzibą w Grodkowie', 1462, 1475),
(28, 'Bank Spółdzielczy im.Stefczyka w Belsku Dużym', 1476, 1489),
(29, 'Bank Spółdzielczy Lwówek Śląski w Lwówku Śląskim', 1490, 1503),
(30, 'Bank Spółdzielczy Muszyna-Krynica Zdrój', 1504, 1517),
(31, 'Bank Spółdzielczy Pojezierza Międzychodzko - Sierakowskiego w Sierakowie', 1518, 1531),
(32, 'Bank Spółdzielczy Rzemiosła w Krakowie', 1532, 1545),
(33, 'Bank Spółdzielczy Rzemiosła w Łodzi', 1546, 1559),
(34, 'Bank Spółdzielczy Rzemiosła w Radomiu', 1560, 1573),
(35, 'Bank Spółdzielczy Towarzystwo Oszczędnościowo - Pożyczkowe \"PA-CO-BANK\" w Pabianicach', 1574, 1587),
(36, 'Bank Spółdzielczy w Adamowie', 1588, 1601),
(37, 'Bank Spółdzielczy w Aleksandrowie Łódzkim', 1602, 1615),
(38, 'Bank Spółdzielczy w Andrespolu', 1616, 1629),
(39, 'Bank Spółdzielczy w Augustowie', 1630, 1643),
(40, 'Bank Spółdzielczy w Baborowie', 1644, 1657),
(41, 'Bank Spółdzielczy w Barcinie', 1658, 1671),
(42, 'Bank Spółdzielczy w Bargłowie Kościelnym', 1672, 1685),
(43, 'Bank Spółdzielczy w Bartoszycach', 1686, 1699),
(44, 'Bank Spółdzielczy w Bełchatowie', 1700, 1713),
(45, 'Bank Spółdzielczy w Będzinie', 1714, 1727),
(46, 'Bank Spółdzielczy w Białej', 1728, 1741),
(47, 'Bank Spółdzielczy w Białej Podlaskiej', 1742, 1755),
(48, 'Bank Spółdzielczy w Białej Rawskiej', 1756, 1769),
(49, 'Bank Spółdzielczy w Białobrzegach', 1770, 1783),
(50, 'Bank Spółdzielczy w Białogardzie', 1784, 1797),
(51, 'Bank Spółdzielczy w Białopolu', 1798, 1811),
(52, 'Bank Spółdzielczy w Białymstoku', 1812, 1825),
(53, 'Bank Spółdzielczy w Bieczu', 1826, 1839),
(54, 'Bank Spółdzielczy w Bielsku Podlaskim', 1840, 1853),
(55, 'Bank Spółdzielczy w Bieżuniu', 1854, 1867),
(56, 'Bank Spółdzielczy w Biłgoraju', 1868, 1881),
(57, 'Bank Spółdzielczy w Biszczy', 1882, 1895),
(58, 'Bank Spółdzielczy w Błaszkach', 1896, 1909),
(59, 'Bank Spółdzielczy w Błażowej', 1910, 1923),
(60, 'Bank Spółdzielczy w Brańsku', 1924, 1937),
(61, 'Bank Spółdzielczy w Brodnicy', 1938, 1951),
(62, 'Bank Spółdzielczy w Brzegu', 1952, 1965),
(63, 'Bank Spółdzielczy w Brzesku', 1966, 1979),
(64, 'Bank Spółdzielczy w Brzeźnicy', 1980, 1993),
(65, 'Bank Spółdzielczy w Busku-Zdroju', 1994, 2007),
(66, 'Bank Spółdzielczy w Bydgoszczy', 2008, 2021),
(67, 'Bank Spółdzielczy w Bystrej', 2022, 2035),
(68, 'Bank Spółdzielczy w Bytowie', 2036, 2049),
(69, 'Bank Spółdzielczy w Chłopicach', 2050, 2063),
(70, 'Bank Spółdzielczy w Chmielniku', 2064, 2077),
(71, 'Bank Spółdzielczy w Chodzieży', 2078, 2091),
(72, 'Bank Spółdzielczy w Chojnicach', 2092, 2105),
(73, 'Bank Spółdzielczy w Chojnie', 2106, 2119),
(74, 'Bank Spółdzielczy w Chojnowie', 2120, 2133),
(75, 'Bank Spółdzielczy w Chrzanowie', 2134, 2147),
(76, 'Bank Spółdzielczy w Chynowie', 2148, 2161),
(77, 'Bank Spółdzielczy w Ciechanowcu', 2162, 2175),
(78, 'Bank Spółdzielczy w Cieszynie', 2176, 2189),
(79, 'Bank Spółdzielczy w Cycowie', 2190, 2203),
(80, 'Bank Spółdzielczy w Czarnkowie', 2204, 2217),
(81, 'Bank Spółdzielczy w Czarnym Dunajcu', 2218, 2231),
(82, 'Bank Spółdzielczy w Czersku', 2232, 2245),
(83, 'Bank Spółdzielczy w Człuchowie', 2246, 2259),
(84, 'Bank Spółdzielczy w Czyżewie', 2260, 2273),
(85, 'Bank Spółdzielczy w Dąbrowie Tarnowskiej', 2274, 2287),
(86, 'Bank Spółdzielczy w Dobczycach', 2288, 2301),
(87, 'Bank Spółdzielczy w Dobrzeniu Wielkim', 2302, 2315),
(88, 'Bank Spółdzielczy w Dobrzycy', 2316, 2329),
(89, 'Bank Spółdzielczy w Dołhobyczowie', 2330, 2343),
(90, 'Bank Spółdzielczy w Dynowie', 2344, 2357),
(91, 'Bank Spółdzielczy w Działdowie z siedzibą w Lidzbarku', 2358, 2371),
(92, 'Bank Spółdzielczy w Dzierzgoniu', 2372, 2385),
(93, 'Bank Spółdzielczy w Dzierżoniowie', 2386, 2399),
(94, 'Bank Spółdzielczy we Frampolu', 2400, 2413),
(95, 'Bank Spółdzielczy w Ełku', 2414, 2427),
(96, 'Bank Spółdzielczy we Mstowie', 2428, 2441),
(97, 'Bank Spółdzielczy we Włoszakowicach', 2442, 2455),
(98, 'Bank Spółdzielczy we Włoszczowie', 2456, 2469),
(99, 'Bank Spółdzielczy we Wronkach', 2470, 2483),
(100, 'Bank Spółdzielczy we Wschowie', 2484, 2497),
(101, 'Bank Spółdzielczy w Garwolinie', 2498, 2511),
(102, 'Bank Spółdzielczy w Gąbinie', 2512, 2525),
(103, 'Bank Spółdzielczy w Gilowicach', 2526, 2539),
(104, 'Bank Spółdzielczy w Glinojecku', 2540, 2553),
(105, 'Bank Spółdzielczy w Gliwicach', 2554, 2567),
(106, 'Bank Spółdzielczy w Głogowie', 2568, 2581),
(107, 'Bank Spółdzielczy w Głogowie Małopolskim', 2582, 2595),
(108, 'Bank Spółdzielczy w Głogówku', 2596, 2609),
(109, 'Bank Spółdzielczy w Głowaczowie', 2610, 2623),
(110, 'Bank Spółdzielczy w Głownie', 2624, 2637),
(111, 'Bank Spółdzielczy w Głubczycach', 2638, 2651),
(112, 'Bank Spółdzielczy w Gniewie', 2652, 2665),
(113, 'Bank Spółdzielczy w Gnieźnie', 2666, 2679),
(114, 'Bank Spółdzielczy w Gogolinie', 2680, 2693),
(115, 'Bank Spółdzielczy w Goleniowie', 2694, 2707),
(116, 'Bank Spółdzielczy w Golubiu - Dobrzyniu', 2708, 2721),
(117, 'Bank Spółdzielczy w Gorlicach', 2722, 2735),
(118, 'Bank Spółdzielczy w Gorzycach', 2736, 2749),
(119, 'Bank Spółdzielczy w Gostyninie', 2750, 2763),
(120, 'Bank Spółdzielczy w Goworowie', 2764, 2777),
(121, 'Bank Spółdzielczy w Górze', 2778, 2791),
(122, 'Bank Spółdzielczy w Grabowie', 2792, 2805),
(123, 'Bank Spółdzielczy w Grębocinie', 2806, 2819),
(124, 'Bank Spółdzielczy w Grębowie', 2820, 2833),
(125, 'Bank Spółdzielczy w Grodzisku Wielkopolskim', 2834, 2847),
(126, 'Bank Spółdzielczy w Grójcu', 2848, 2861),
(127, 'Bank Spółdzielczy w Grudusku', 2862, 2875),
(128, 'Bank Spółdzielczy w Grybowie', 2876, 2889),
(129, 'Bank Spółdzielczy w Gryficach', 2890, 2903),
(130, 'Bank Spółdzielczy w Gryfinie', 2904, 2917),
(131, 'Bank Spółdzielczy w Hajnówce', 2918, 2931),
(132, 'Bank Spółdzielczy w Halinowie', 2932, 2945),
(133, 'Bank Spółdzielczy w Iławie', 2946, 2959),
(134, 'Bank Spółdzielczy w Iłowej', 2960, 2973),
(135, 'Bank Spółdzielczy w Iłowie', 2974, 2987),
(136, 'Bank Spółdzielczy w Iłży', 2988, 3001),
(137, 'Bank Spółdzielczy w Inowrocławiu', 3002, 3015),
(138, 'Bank Spółdzielczy w Izbicy', 3016, 3029),
(139, 'Bank Spółdzielczy w Jabłonce', 3030, 3043),
(140, 'Bank Spółdzielczy w Janowie Lubelskim', 3044, 3057),
(141, 'Bank Spółdzielczy w Jarocinie', 3058, 3071),
(142, 'Bank Spółdzielczy w Jarosławiu', 3072, 3085),
(143, 'Bank Spółdzielczy w Jasienicy', 3086, 3099),
(144, 'Bank Spółdzielczy w Jasieńcu', 3100, 3113),
(145, 'Bank Spółdzielczy w Jasionce', 3114, 3127),
(146, 'Bank Spółdzielczy w Jastrowiu', 3128, 3141),
(147, 'Bank Spółdzielczy w Jastrzębiu Zdroju', 3142, 3155),
(148, 'Bank Spółdzielczy w Jaworze', 3156, 3169),
(149, 'Bank Spółdzielczy w Jaworznie', 3170, 3183),
(150, 'Bank Spółdzielczy w Jedwabnem', 3184, 3197),
(151, 'Bank Spółdzielczy w Jeleśni', 3198, 3211),
(152, 'Bank Spółdzielczy w Jędrzejowie', 3212, 3225),
(153, 'Bank Spółdzielczy w Jordanowie', 3226, 3239),
(154, 'Bank Spółdzielczy w Józefowie nad Wisłą', 3240, 3253),
(155, 'Bank Spółdzielczy w Juchnowcu Górnym', 3254, 3267),
(156, 'Bank Spółdzielczy w Jutrosinie', 3268, 3281),
(157, 'Bank Spółdzielczy w Kadzidle', 3282, 3295),
(158, 'Bank Spółdzielczy w Kaliszu Pomorskim', 3296, 3309),
(159, 'Bank Spółdzielczy w Kalwarii Zebrzydowskiej', 3310, 3323),
(160, 'Bank Spółdzielczy w Kałuszynie', 3324, 3337),
(161, 'Bank Spółdzielczy w Kamieniu', 3338, 3351),
(162, 'Bank Spółdzielczy w Kamiennej Górze', 3352, 3365),
(163, 'Bank Spółdzielczy w Karczewie', 3366, 3379),
(164, 'Bank Spółdzielczy w Kazimierzu Dolnym', 3380, 3393),
(165, 'Bank Spółdzielczy w Kątach Wrocławskich', 3394, 3407),
(166, 'Bank Spółdzielczy w Kcyni', 3408, 3421),
(167, 'Bank Spółdzielczy w Kielcach', 3422, 3435),
(168, 'Bank Spółdzielczy w Kleszczowie', 3436, 3449),
(169, 'Bank Spółdzielczy w Kłobucku', 3450, 3463),
(170, 'Bank Spółdzielczy w Kłodawie', 3464, 3477),
(171, 'Bank Spółdzielczy w Kłodzku', 3478, 3491),
(172, 'Bank Spółdzielczy w Kobierzycach', 3492, 3505),
(173, 'Bank Spółdzielczy w Kocku', 3506, 3519),
(174, 'Bank Spółdzielczy w Kolbuszowej', 3520, 3533),
(175, 'Bank Spółdzielczy w Kolnie', 3534, 3547),
(176, 'Bank Spółdzielczy w Kołaczycach', 3548, 3561),
(177, 'Bank Spółdzielczy w Koniecpolu', 3562, 3575),
(178, 'Bank Spółdzielczy w Koninie', 3576, 3589),
(179, 'Bank Spółdzielczy w Konopiskach', 3590, 3603),
(180, 'Bank Spółdzielczy w Końskich', 3604, 3617),
(181, 'Bank Spółdzielczy w Kornicy', 3618, 3631),
(182, 'Bank Spółdzielczy w Koronowie', 3632, 3645),
(183, 'Bank Spółdzielczy w Korycinie', 3646, 3659),
(184, 'Bank Spółdzielczy w Kostrzynie', 3660, 3673),
(185, 'Bank Spółdzielczy w Koszęcinie', 3674, 3687),
(186, 'Bank Spółdzielczy w Kościanie', 3688, 3701),
(187, 'Bank Spółdzielczy w Kościerzynie', 3702, 3715),
(188, 'Bank Spółdzielczy w Kowalewie Pomorskim', 3716, 3729),
(189, 'Bank Spółdzielczy w Kowalu', 3730, 3743),
(190, 'Bank Spółdzielczy w Kożuchowie', 3744, 3757),
(191, 'Bank Spółdzielczy w Kórniku', 3758, 3771),
(192, 'Bank Spółdzielczy w Krapkowicach', 3772, 3785),
(193, 'Bank Spółdzielczy w Krasnosielcu z siedzibą w Makowie Mazowieckim', 3786, 3799),
(194, 'Bank Spółdzielczy w Krasnymstawie', 3800, 3813),
(195, 'Bank Spółdzielczy w Krokowej', 3814, 3827),
(196, 'Bank Spółdzielczy w Krośnie Odrzańskim', 3828, 3841),
(197, 'Bank Spółdzielczy w Krośniewicach', 3842, 3855),
(198, 'Bank Spółdzielczy w Krotoszynie', 3856, 3869),
(199, 'Bank Spółdzielczy w Kruszwicy', 3870, 3883),
(200, 'Bank Spółdzielczy w Krzepicach', 3884, 3897),
(201, 'Bank Spółdzielczy w Krzeszowicach', 3898, 3911),
(202, 'Bank Spółdzielczy w Krzywdzie', 3912, 3925),
(203, 'Bank Spółdzielczy w Krzyżanowicach', 3926, 3939),
(204, 'Bank Spółdzielczy w Księżpolu', 3940, 3953),
(205, 'Bank Spółdzielczy w Kurowie', 3954, 3967),
(206, 'Bank Spółdzielczy w Legionowie', 3968, 3981),
(207, 'Bank Spółdzielczy w Legnicy', 3982, 3995),
(208, 'Bank Spółdzielczy w Leśnicy', 3996, 4009),
(209, 'Bank Spółdzielczy w Leśniowicach', 4010, 4023),
(210, 'Bank Spółdzielczy w Leżajsku', 4024, 4037),
(211, 'Bank Spółdzielczy w Limanowej', 4038, 4051),
(212, 'Bank Spółdzielczy w Lipce', 4052, 4065),
(213, 'Bank Spółdzielczy w Lipinkach', 4066, 4079),
(214, 'Bank Spółdzielczy w Lipnie', 4080, 4093),
(215, 'Bank Spółdzielczy w Lipsku', 4094, 4107),
(216, 'Bank Spółdzielczy w Lubaczowie', 4108, 4121),
(217, 'Bank Spółdzielczy w Lubartowie', 4122, 4135),
(218, 'Bank Spółdzielczy w Lubawie', 4136, 4149),
(219, 'Bank Spółdzielczy w Lubeni', 4150, 4163),
(220, 'Bank Spółdzielczy w Lubichowie', 4164, 4177),
(221, 'Bank Spółdzielczy w Lubrańcu', 4178, 4191),
(222, 'Bank Spółdzielczy w Lubyczy Królewskiej', 4192, 4205),
(223, 'Bank Spółdzielczy w Łańcucie', 4206, 4219),
(224, 'Bank Spółdzielczy w Łapach', 4220, 4233),
(225, 'Bank Spółdzielczy w Łasinie', 4234, 4247),
(226, 'Bank Spółdzielczy w Łaskarzewie', 4248, 4261),
(227, 'Bank Spółdzielczy w Łaszczowie', 4262, 4275),
(228, 'Bank Spółdzielczy w Łebie', 4276, 4289),
(229, 'Bank Spółdzielczy w Łęcznej', 4290, 4303),
(230, 'Bank Spółdzielczy w Łobżenicy', 4304, 4317),
(231, 'Bank Spółdzielczy w Łochowie', 4318, 4331),
(232, 'Bank Spółdzielczy w Łomazach', 4332, 4345),
(233, 'Bank Spółdzielczy w Łomży', 4346, 4359),
(234, 'Bank Spółdzielczy w Łopusznie', 4360, 4373),
(235, 'Bank Spółdzielczy w Łosicach', 4374, 4387),
(236, 'Bank Spółdzielczy w Łososinie Dolnej', 4388, 4401),
(237, 'Bank Spółdzielczy w Łubnianach', 4402, 4415),
(238, 'Bank Spółdzielczy w Łukowej', 4416, 4429),
(239, 'Bank Spółdzielczy w Łukowie', 4430, 4443),
(240, 'Bank Spółdzielczy w Malborku', 4444, 4457),
(241, 'Bank Spółdzielczy w Małej Wsi', 4458, 4471),
(242, 'Bank Spółdzielczy w Miedźnej', 4472, 4485),
(243, 'Bank Spółdzielczy w Mielcu', 4486, 4499),
(244, 'Bank Spółdzielczy w Międzyrzecu Podlaskim', 4500, 4513),
(245, 'Bank Spółdzielczy w Mikołajkach', 4514, 4527),
(246, 'Bank Spółdzielczy w Miliczu', 4528, 4541),
(247, 'Bank Spółdzielczy w Mińsku Mazowieckim', 4542, 4555),
(248, 'Bank Spółdzielczy w Mławie', 4556, 4569),
(249, 'Bank Spółdzielczy w Mokobodach', 4570, 4583),
(250, 'Bank Spółdzielczy w Mońkach', 4584, 4597),
(251, 'Bank Spółdzielczy w Mrągowie', 4598, 4611),
(252, 'Bank Spółdzielczy w Mrozach', 4612, 4625),
(253, 'Bank Spółdzielczy w Mszanie Dolnej', 4626, 4639),
(254, 'Bank Spółdzielczy w Mszczonowie', 4640, 4653),
(255, 'Bank Spółdzielczy w Mykanowie', 4654, 4667),
(256, 'Bank Spółdzielczy w Nadarzynie w upadłości', 4668, 4681),
(257, 'Bank Spółdzielczy w Nakle n/Notecią', 4682, 4695),
(258, 'Bank Spółdzielczy w Nałęczowie', 4696, 4709),
(259, 'Bank Spółdzielczy w Namysłowie', 4710, 4723),
(260, 'Bank Spółdzielczy w Narolu', 4724, 4737),
(261, 'Bank Spółdzielczy w Narwi', 4738, 4751),
(262, 'Bank Spółdzielczy w Nasielsku', 4752, 4765),
(263, 'Bank Spółdzielczy w Nidzicy', 4766, 4779),
(264, 'Bank Spółdzielczy w Niechobrzu', 4780, 4793),
(265, 'Bank Spółdzielczy w Niedrzwicy Dużej', 4794, 4807),
(266, 'Bank Spółdzielczy w Nieliszu z/s w Stawie Noakowskim', 4808, 4821),
(267, 'Bank Spółdzielczy w Niemcach', 4822, 4835),
(268, 'Bank Spółdzielczy w Nowej Soli', 4836, 4849),
(269, 'Bank Spółdzielczy w Nowem n/Wisłą', 4850, 4863),
(270, 'Bank Spółdzielczy w Nowym Dworze Mazowieckim', 4864, 4877),
(271, 'Bank Spółdzielczy w Nowym Sączu', 4878, 4891),
(272, 'Bank Spółdzielczy w Nowym Stawie', 4892, 4905),
(273, 'Bank Spółdzielczy w Nowym Targu', 4906, 4919),
(274, 'Bank Spółdzielczy w Nowym Tomyślu', 4920, 4933),
(275, 'Bank Spółdzielczy w Obornikach Śląskich', 4934, 4947),
(276, 'Bank Spółdzielczy w Obszy', 4948, 4961),
(277, 'Bank Spółdzielczy w Olecku', 4962, 4975),
(278, 'Bank Spółdzielczy w Oleśnicy', 4976, 4989),
(279, 'Bank Spółdzielczy w Olkuszu w likwidacji', 4990, 5003),
(280, 'Bank Spółdzielczy w Olsztynku', 5004, 5017),
(281, 'Bank Spółdzielczy w Oławie', 5018, 5031),
(282, 'Bank Spółdzielczy w Opocznie', 5032, 5045),
(283, 'Bank Spółdzielczy w Osiu', 5046, 5059),
(284, 'Bank Spółdzielczy w Ostrowcu Świętokrzyskim', 5060, 5073),
(285, 'Bank Spółdzielczy w Ostrowi Mazowieckiej', 5074, 5087),
(286, 'Bank Spółdzielczy w Ośnie Lubuskim', 5088, 5101),
(287, 'Bank Spółdzielczy w Otmuchowie', 5102, 5115),
(288, 'Bank Spółdzielczy w Otwocku', 5116, 5129),
(289, 'Bank Spółdzielczy w Ozorkowie', 5130, 5143),
(290, 'Bank Spółdzielczy w Ożarowie', 5144, 5157),
(291, 'Bank Spółdzielczy w Pajęcznie', 5158, 5171),
(292, 'Bank Spółdzielczy w Parczewie', 5172, 5185),
(293, 'Bank Spółdzielczy w Pawłowicach', 5186, 5199),
(294, 'Bank Spółdzielczy w Piasecznie', 5200, 5213),
(295, 'Bank Spółdzielczy w Pieńsku', 5214, 5227),
(296, 'Bank Spółdzielczy w Pilźnie', 5228, 5241),
(297, 'Bank Spółdzielczy w Pińczowie', 5242, 5255),
(298, 'Bank Spółdzielczy w Pionkach', 5256, 5269),
(299, 'Bank Spółdzielczy w Piotrkowie Kujawskim', 5270, 5283),
(300, 'Bank Spółdzielczy w Piwnicznej - Zdroju', 5284, 5297),
(301, 'Bank Spółdzielczy w Platerowie', 5298, 5311),
(302, 'Bank Spółdzielczy w Pleszewie', 5312, 5325),
(303, 'Bank Spółdzielczy w Płońsku', 5326, 5339),
(304, 'Bank Spółdzielczy w Poczesnej', 5340, 5353),
(305, 'Bank Spółdzielczy w Poddębicach', 5354, 5367),
(306, 'Bank Spółdzielczy w Podegrodziu', 5368, 5381),
(307, 'Bank Spółdzielczy w Połańcu', 5382, 5395),
(308, 'Bank Spółdzielczy w Połczynie Zdroju', 5396, 5409),
(309, 'Bank Spółdzielczy w Poniatowej', 5410, 5423),
(310, 'Bank Spółdzielczy w Poniecu', 5424, 5437),
(311, 'Bank Spółdzielczy w Popowie z/s w Zawadach', 5438, 5451),
(312, 'Bank Spółdzielczy w Porąbce', 5452, 5465),
(313, 'Bank Spółdzielczy w Prabutach', 5466, 5479),
(314, 'Bank Spółdzielczy w Proszowicach', 5480, 5493),
(315, 'Bank Spółdzielczy w Prudniku', 5494, 5507),
(316, 'Bank Spółdzielczy w Pruszczu Gdańskim', 5508, 5521),
(317, 'Bank Spółdzielczy w Pruszczu Pomorskim', 5522, 5535),
(318, 'Bank Spółdzielczy w Przasnyszu', 5536, 5549),
(319, 'Bank Spółdzielczy w Przecławiu', 5550, 5563),
(320, 'Bank Spółdzielczy w Przedborzu', 5564, 5577),
(321, 'Bank Spółdzielczy w Przemkowie', 5578, 5591),
(322, 'Bank Spółdzielczy w Przeworsku', 5592, 5605),
(323, 'Bank Spółdzielczy w Przysusze', 5606, 5619),
(324, 'Bank Spółdzielczy w Pszczółkach', 5620, 5633),
(325, 'Bank Spółdzielczy w Pszczynie', 5634, 5647),
(326, 'Bank Spółdzielczy w Pucku', 5648, 5661),
(327, 'Bank Spółdzielczy w Pułtusku', 5662, 5675),
(328, 'Bank Spółdzielczy w Rabie Wyżnej', 5676, 5689),
(329, 'Bank Spółdzielczy w Raciążu', 5690, 5703),
(330, 'Bank Spółdzielczy w Raciborzu', 5704, 5717),
(331, 'Bank Spółdzielczy w Radomiu', 5718, 5731),
(332, 'Bank Spółdzielczy w Radomyślu Wielkim', 5732, 5745),
(333, 'Bank Spółdzielczy w Radymnie', 5746, 5759),
(334, 'Bank Spółdzielczy w Radziejowie', 5760, 5773),
(335, 'Bank Spółdzielczy w Radzyniu Podlaskim', 5774, 5787),
(336, 'Bank Spółdzielczy w Rajczy', 5788, 5801),
(337, 'Bank Spółdzielczy w Raszkowie', 5802, 5815),
(338, 'Bank Spółdzielczy w Raszynie', 5816, 5829),
(339, 'Bank Spółdzielczy w Reszlu', 5830, 5843),
(340, 'Bank Spółdzielczy w Ropczycach', 5844, 5857),
(341, 'Bank Spółdzielczy w Różanie', 5858, 5871),
(342, 'Bank Spółdzielczy w Ruścu', 5872, 5885),
(343, 'Bank Spółdzielczy w Rutce-Tartak', 5886, 5899),
(344, 'Bank Spółdzielczy w Rykach', 5900, 5913),
(345, 'Bank Spółdzielczy w Rymanowie', 5914, 5927),
(346, 'Bank Spółdzielczy w Rzepinie', 5928, 5941),
(347, 'Bank Spółdzielczy w Rzeszowie', 5942, 5955),
(348, 'Bank Spółdzielczy w Samsonowie', 5956, 5969),
(349, 'Bank Spółdzielczy w Sandomierzu', 5970, 5983),
(350, 'Bank Spółdzielczy w Sawinie', 5984, 5997),
(351, 'Bank Spółdzielczy w Sejnach', 5998, 6011),
(352, 'Bank Spółdzielczy w Sędziszowie', 6012, 6025),
(353, 'Bank Spółdzielczy w Sędziszowie Młp.', 6026, 6039),
(354, 'Bank Spółdzielczy w Siedlcach', 6040, 6053),
(355, 'Bank Spółdzielczy w Siedlcu', 6054, 6067),
(356, 'Bank Spółdzielczy w Siemiatyczach', 6068, 6081),
(357, 'Bank Spółdzielczy w Sieradzu', 6082, 6095),
(358, 'Bank Spółdzielczy w Sierakowicach', 6096, 6109),
(359, 'Bank Spółdzielczy w Skaryszewie', 6110, 6123),
(360, 'Bank Spółdzielczy w Skawinie', 6124, 6137),
(361, 'Bank Spółdzielczy w Skępem', 6138, 6151),
(362, 'Bank Spółdzielczy w Skierniewicach', 6152, 6165),
(363, 'Bank Spółdzielczy w Skoczowie', 6166, 6179),
(364, 'Bank Spółdzielczy w Skórczu', 6180, 6193),
(365, 'Bank Spółdzielczy w Sławnie', 6194, 6207),
(366, 'Bank Spółdzielczy w Słomnikach', 6208, 6221),
(367, 'Bank Spółdzielczy w Słupcy', 6222, 6235),
(368, 'Bank Spółdzielczy w Sobieniach Jeziorach', 6236, 6249),
(369, 'Bank Spółdzielczy w Sochaczewie', 6250, 6263),
(370, 'Bank Spółdzielczy w Sokołach', 6264, 6277),
(371, 'Bank Spółdzielczy w Sokołowie Małopolskim', 6278, 6291),
(372, 'Bank Spółdzielczy w Sokółce', 6292, 6305),
(373, 'Bank Spółdzielczy w Sośnicowicach', 6306, 6319),
(374, 'Bank Spółdzielczy w Starachowicach', 6320, 6333),
(375, 'Bank Spółdzielczy w Starej Białej', 6334, 6347),
(376, 'Bank Spółdzielczy w Starogardzie Gdańskim', 6348, 6361),
(377, 'Bank Spółdzielczy w Staroźrebach', 6362, 6375),
(378, 'Bank Spółdzielczy w Starym Sączu', 6376, 6389),
(379, 'Bank Spółdzielczy w Staszowie', 6390, 6403),
(380, 'Bank Spółdzielczy w Stegnie', 6404, 6417),
(381, 'Bank Spółdzielczy w Stopnicy', 6418, 6431),
(382, 'Bank Spółdzielczy w Strykowie', 6432, 6445),
(383, 'Bank Spółdzielczy w Strzegowie', 6446, 6459),
(384, 'Bank Spółdzielczy w Strzelnie', 6460, 6473),
(385, 'Bank Spółdzielczy w Strzyżowie', 6474, 6487),
(386, 'Bank Spółdzielczy w Suchedniowie', 6488, 6501),
(387, 'Bank Spółdzielczy w Suchej Beskidzkiej', 6502, 6515),
(388, 'Bank Spółdzielczy w Suchowoli', 6516, 6529),
(389, 'Bank Spółdzielczy w Suszu', 6530, 6543),
(390, 'Bank Spółdzielczy w Suwałkach', 6544, 6557),
(391, 'Bank Spółdzielczy w Szadku', 6558, 6571),
(392, 'Bank Spółdzielczy w Szczebrzeszynie', 6572, 6585),
(393, 'Bank Spółdzielczy w Szczekocinach', 6586, 6599),
(394, 'Bank Spółdzielczy w Szczucinie', 6600, 6613),
(395, 'Bank Spółdzielczy w Szczuczynie', 6614, 6627),
(396, 'Bank Spółdzielczy w Szczytnie', 6628, 6641),
(397, 'Bank Spółdzielczy w Sztumie', 6642, 6655),
(398, 'Bank Spółdzielczy w Szubinie', 6656, 6669),
(399, 'Bank Spółdzielczy w Szumowie', 6670, 6683),
(400, 'Bank Spółdzielczy w Szydłowie', 6684, 6697),
(401, 'Bank Spółdzielczy w Ślesinie', 6698, 6711),
(402, 'Bank Spółdzielczy w Śmiglu', 6712, 6725),
(403, 'Bank Spółdzielczy w Środzie Śląskiej', 6726, 6739),
(404, 'BANK SPÓŁDZIELCZY w Środzie Wielkopolskiej', 6740, 6753),
(405, 'Bank Spółdzielczy w Świdnicy', 6754, 6767),
(406, 'Bank Spółdzielczy w Świeciu', 6768, 6781),
(407, 'Bank Spółdzielczy w Świerklańcu', 6782, 6795),
(408, 'Bank Spółdzielczy w Tarczynie', 6796, 6809),
(409, 'Bank Spółdzielczy w Tarnobrzegu', 6810, 6823),
(410, 'Bank Spółdzielczy w Tarnogrodzie', 6824, 6837),
(411, 'Bank Spółdzielczy w Tarnowskich Górach', 6838, 6851),
(412, 'Bank Spółdzielczy w Tczewie', 6852, 6865),
(413, 'Bank Spółdzielczy w Teresinie', 6866, 6879),
(414, 'Bank Spółdzielczy w Tomaszowie Lubelskim', 6880, 6893),
(415, 'Bank Spółdzielczy w Toruniu', 6894, 6907),
(416, 'Bank Spółdzielczy w Trzebielu', 6908, 6921),
(417, 'Bank Spółdzielczy w Trzebieszowie', 6922, 6935),
(418, 'Bank Spółdzielczy w Trzebnicy', 6936, 6949),
(419, 'Bank Spółdzielczy w Tucholi', 6950, 6963),
(420, 'Bank Spółdzielczy w Tworogu', 6964, 6977),
(421, 'Bank Spółdzielczy w Tychach', 6978, 6991),
(422, 'Bank Spółdzielczy w Tyczynie', 6992, 7005),
(423, 'Bank Spółdzielczy w Ustce', 7006, 7019),
(424, 'Bank Spółdzielczy w Ustroniu', 7020, 7033),
(425, 'Bank Spółdzielczy w Warce', 7034, 7047),
(426, 'Bank Spółdzielczy w Warcie', 7048, 7061),
(427, 'Bank Spółdzielczy w Wartkowicach', 7062, 7075),
(428, 'Bank Spółdzielczy w Wąchocku', 7076, 7089),
(429, 'Bank Spółdzielczy w Wąsewie', 7090, 7103),
(430, 'Bank Spółdzielczy w Werbkowicach', 7104, 7117),
(431, 'Bank Spółdzielczy w Węgierskiej Górce', 7118, 7131),
(432, 'Bank Spółdzielczy w Węgorzewie', 7132, 7145),
(433, 'Bank Spółdzielczy w Wieleniu', 7146, 7159),
(434, 'Bank Spółdzielczy w Wielopolu Skrzyńskim', 7160, 7173),
(435, 'Bank Spółdzielczy w Wierzbinku', 7174, 7187),
(436, 'Bank Spółdzielczy w Więcborku', 7188, 7201),
(437, 'Bank Spółdzielczy w Wilamowicach', 7202, 7215),
(438, 'Bank Spółdzielczy w Wiskitkach', 7216, 7229),
(439, 'Bank Spółdzielczy w Wisznicach', 7230, 7243),
(440, 'Bank Spółdzielczy w Witkowie', 7244, 7257),
(441, 'Bank Spółdzielczy w Wodzisławiu', 7258, 7271),
(442, 'Bank Spółdzielczy w Wojsławicach', 7272, 7285),
(443, 'Bank Spółdzielczy w Wolbromiu', 7286, 7299),
(444, 'Bank Spółdzielczy w Wolinie', 7300, 7313),
(445, 'Bank Spółdzielczy w Wołczynie', 7314, 7327),
(446, 'Bank Spółdzielczy w Wysokiej', 7328, 7341),
(447, 'Bank Spółdzielczy w Wysokiem Mazowieckiem', 7342, 7355),
(448, 'Bank Spółdzielczy w Zagórowie', 7356, 7369),
(449, 'Bank Spółdzielczy w Zaleszanach', 7370, 7383),
(450, 'Bank Spółdzielczy w Zambrowie', 7384, 7397),
(451, 'Bank Spółdzielczy w Zatorze', 7398, 7411),
(452, 'Bank Spółdzielczy w Zawadzkiem', 7412, 7425),
(453, 'Bank Spółdzielczy w Ząbkowicach Śląskich', 7426, 7439),
(454, 'Bank Spółdzielczy w Zgierzu', 7440, 7453),
(455, 'Bank Spółdzielczy w Zwoleniu', 7454, 7467),
(456, 'Bank Spółdzielczy w Żaganiu', 7468, 7481),
(457, 'Bank Spółdzielczy w Żmigrodzie', 7482, 7495),
(458, 'Bank Spółdzielczy w Żołyni', 7496, 7509),
(459, 'Bank Spółdzielczy w Żorach', 7510, 7523),
(460, 'Bank Spółdzielczy w Żurawicy', 7524, 7537),
(461, 'Bank Spółdzielczy w Żurominie', 7538, 7551),
(462, 'Bank Spółdzielczy w Żyrakowie', 7552, 7565),
(463, 'Bank Spółdzielczy w Żytnie', 7566, 7579),
(464, 'Bank Spółdzielczy w Żywcu', 7580, 7593),
(465, 'Bank Spółdzielczy Ziemi Kaliskiej', 7594, 7607),
(466, 'Bank Spółdzielczy Ziemi Kraśnickiej  w Kraśniku', 7608, 7621),
(467, 'Bank Spółdzielczy Ziemi Łęczyckiej w Łęczycy', 7622, 7635),
(468, 'Bank Spółdzielczy Ziemi Łowickiej w Łowiczu', 7636, 7649),
(469, 'Bank Spółdzielczy Ziemi Piotrkowskiej w Piotrkowie Trybunalskim', 7650, 7663),
(470, 'Bank Spółdzielczy Ziemi Wieluńskiej', 7664, 7677),
(471, 'Banque PSA Finance Spółka Akcyjna Oddział w Polsce', 7678, 7691),
(472, 'Beskidzki Bank Spółdzielczy', 7692, 7705),
(473, 'Bieszczadzki Bank Spółdzielczy w Ustrzykach Dolnych', 7706, 7719),
(474, 'BNP Paribas Bank Polska Spółka Akcyjna', 7720, 7733),
(475, 'BNP Paribas S.A. Oddział w Polsce', 7734, 7747),
(476, 'BNP Paribas Securities Services Spółka Komandytowo - Akcyjna Oddział w Polsce', 7748, 7761),
(477, 'Braniewsko - Pasłęcki Bank Spółdzielczy z siedzibą w Pasłęku', 7762, 7775),
(478, 'CAIXABANK, S.A. (SPÓŁKA AKCYJNA) ODDZIAŁ W POLSCE', 7776, 7789),
(479, 'China Construction Bank (Europe) S.A. (Spółka Akcyjna) Oddział w Polsce', 7790, 7803),
(480, 'Citibank Europe plc (Publiczna Spółka Akcyjna) Oddział w Polsce', 7804, 7817),
(481, 'Credit Agricole Bank Polska Spółka Akcyjna', 7818, 7831),
(482, 'Danske Bank A/S Spółka Akcyjna Oddział w Polsce', 7832, 7845),
(483, 'Deutsche Bank Polska Spółka Akcyjna', 7846, 7859),
(484, 'DNB Bank Polska Spółka Akcyjna', 7860, 7873),
(485, 'Elavon Financial Services Designated Activity Company (Spółka z O.O. o Wyznaczonym Przedmiocie Działalności) Oddział w Polsce', 7874, 7887),
(486, 'ESBANK Bank Spółdzielczy', 7888, 7901),
(487, 'ETNO Bank Spółdzielczy', 7902, 7915),
(488, 'EUROCLEAR Bank SA/NV (Spółka Akcyjna) - Oddział w Polsce', 7916, 7929),
(489, 'EXPRESS BANK SPÓŁDZIELCZY', 7930, 7943),
(490, 'FCA Bank S.p.A. Spółka Akcyjna Oddział w Polsce', 7944, 7957),
(491, 'FCE Bank Spółka Akcyjna Oddział w Polsce', 7958, 7971),
(492, 'Getin Noble Bank Spółka Akcyjna', 7972, 7985),
(493, 'Gospodarczy Bank Spółdzielczy Międzyrzecz', 7986, 7999),
(494, 'Gospodarczy Bank Spółdzielczy Radków z/s w Nowej Rudzie', 8000, 8013),
(495, 'Gospodarczy Bank Spółdzielczy w Barlinku', 8014, 8027),
(496, 'Gospodarczy Bank Spółdzielczy w Gorzowie Wielkopolskim', 8028, 8041),
(497, 'Gospodarczy Bank Spółdzielczy w Mosinie', 8042, 8055),
(498, 'Gospodarczy Bank Spółdzielczy w Strzelinie', 8056, 8069),
(499, 'HAITONG BANK, S.A. Spółka Akcyjna Oddział w Polsce', 8070, 8083),
(500, 'Hexa Bank Spółdzielczy', 8084, 8097),
(501, 'HSBC France (Spółka Akcyjna) Oddział w Polsce', 8098, 8111),
(502, 'Idea Bank Spółka Akcyjna', 8112, 8125),
(503, 'Ikano Bank AB (publ) Spółka Akcyjna Oddział w Polsce', 8126, 8139),
(504, 'Industrial and Commercial Bank of China (Europe) S.A. (Spółka Akcyjna) Oddział w Polsce', 8140, 8153),
(505, 'ING Bank Hipoteczny Spółka Akcyjna', 8154, 8167),
(506, 'ING Bank Śląski Spółka Akcyjna', 8168, 8181),
(507, 'Intesa Sanpaolo S.p.A. Spółka Akcyjna Oddział w Polsce', 8182, 8195),
(508, 'J.P. Morgan Europe Limited Spółka z ograniczoną odpowiedzialnością Oddział w Polsce', 8196, 8209),
(509, 'John Deere Bank S.A. Spółka Akcyjna Oddział w Polsce', 8210, 8223),
(510, 'Kaszubski Bank Spółdzielczy', 8224, 8237),
(511, 'Krakowski Bank Spółdzielczy', 8238, 8251),
(512, 'Kujawski Bank Spółdzielczy w Aleksandrowie Kujawskim', 8252, 8265),
(513, 'Kujawsko-Dobrzyński Bank Spółdzielczy', 8266, 8279),
(514, 'Kurpiowski Bank Spółdzielczy w Myszyńcu', 8280, 8293),
(515, 'Limes Bank Spółdzielczy', 8294, 8307),
(516, 'Lubelski Bank Spółdzielczy', 8308, 8321),
(517, 'Lubusko-Wielkopolski Bank Spółdzielczy z siedzibą w Drezdenku', 8322, 8335),
(518, 'Ludowy Bank Spółdzielczy w Obornikach', 8336, 8349),
(519, 'Ludowy Bank Spółdzielczy w Strzałkowie', 8350, 8363),
(520, 'Ludowy Bank Spółdzielczy w Zduńskiej Woli', 8364, 8377),
(521, 'Łącki Bank Spółdzielczy', 8378, 8391),
(522, 'Łużycki Bank Spółdzielczy w Lubaniu', 8392, 8405),
(523, 'Małopolski Bank Spółdzielczy', 8406, 8419),
(524, 'Mazovia Bank Spółdzielczy', 8420, 8433),
(525, 'Mazowiecki Bank Spółdzielczy w Łomiankach', 8434, 8447),
(526, 'Mazurski Bank Spółdzielczy w Giżycku', 8448, 8461),
(527, 'mBank Hipoteczny Spółka Akcyjna', 8462, 8475),
(528, 'mBank Spółka Akcyjna', 8476, 8489),
(529, 'Mercedes-Benz Bank Polska Spółka Akcyjna', 8490, 8503),
(530, 'Międzygminny Bank Spółdzielczy w Zbuczynie', 8504, 8517),
(531, 'Międzypowiatowy Bank Spółdzielczy w  Myszkowie', 8518, 8531),
(532, 'Mikołowski Bank Spółdzielczy w Mikołowie', 8532, 8545),
(533, 'Morąsko-Zalewski Bank Spółdzielczy', 8546, 8559),
(534, 'MUFG Bank (Europe) N.V. S.A. Oddział w Polsce', 8560, 8573),
(535, 'Nadnotecki Bank Spółdzielczy', 8574, 8587),
(536, 'Nadobrzański Bank Spółdzielczy w Rakoniewicach', 8588, 8601),
(537, 'Nadsański Bank Spółdzielczy', 8602, 8615),
(538, 'Nadwarciański Bank Spółdzielczy w Działoszynie', 8616, 8629),
(539, 'Nadwiślański Bank Spółdzielczy w Solcu-Zdroju', 8630, 8643),
(540, 'Narodowy Bank Polski', 8644, 8657),
(541, 'Nest Bank Spółka Akcyjna', 8658, 8671),
(542, 'Nordea Bank Abp Spółka Akcyjna Oddział w Polsce', 8672, 8685),
(543, 'Orzesko-Knurowski Bank Spółdzielczy  z siedzibą w Knurowie', 8686, 8699),
(544, 'Pałucki Bank Spółdzielczy w Wągrowcu', 8700, 8713),
(545, 'Pekao Bank Hipoteczny Spółka Akcyjna', 8714, 8727),
(546, 'Piastowski Bank Spółdzielczy w Janikowie', 8728, 8741),
(547, 'Pieniński Bank Spółdzielczy', 8742, 8755),
(548, 'PKO Bank Hipoteczny Spółka Akcyjna', 8756, 8769),
(549, 'PLUS BANK Spółka Akcyjna', 8770, 8783),
(550, 'Pobiedzisko - Gośliński Bank Spółdzielczy w Pobiedziskach', 8784, 8797),
(551, 'Podhalański Bank Spółdzielczy w Zakopanem', 8798, 8811),
(552, 'Podkarpacki Bank Spółdzielczy', 8812, 8825),
(553, 'Podlaski Bank Spółdzielczy w Knyszynie', 8826, 8839),
(554, 'Podlasko-Mazurski Bank Spółdzielczy  w Zabłudowie', 8840, 8853),
(555, 'Polski Bank Spółdzielczy w Ciechanowie', 8854, 8867),
(556, 'Polski Bank Spółdzielczy w Wyszkowie', 8868, 8881),
(557, 'Południowo-Mazowiecki Bank Spółdzielczy w Jedlińsku', 8882, 8895),
(558, 'Pomorski Bank Spółdzielczy w Świdwinie', 8896, 8909),
(559, 'Powiatowy Bank Spółdzielczy we Wrześni', 8910, 8923),
(560, 'Powiatowy Bank Spółdzielczy w Gostyniu', 8924, 8937),
(561, 'Powiatowy Bank Spółdzielczy w Kędzierzynie-Koźlu', 8938, 8951),
(562, 'Powiatowy Bank Spółdzielczy w Opolu  Lubelskim', 8952, 8965),
(563, 'Powiatowy Bank Spółdzielczy w Sokołowie Podlaskim', 8966, 8979),
(564, 'Powiatowy Bank Spółdzielczy w Tomaszowie Mazowieckim', 8980, 8993),
(565, 'Powiatowy Bank Spółdzielczy w Węgrowie', 8994, 9007),
(566, 'Powiatowy Bank Spółdzielczy w Zamościu', 9008, 9021),
(567, 'Powiatowy Bank Spółdzielczy w Złotoryi', 9022, 9035),
(568, 'Powiślański Bank Spółdzielczy w Kwidzynie', 9036, 9049),
(569, 'Powszechna Kasa Oszczędności Bank Polski Spółka Akcyjna', 9050, 9063),
(570, 'POZNAŃSKI BANK SPÓŁDZIELCZY', 9064, 9077),
(571, 'Pyrzycko-Stargardzki Bank Spółdzielczy', 9078, 9091),
(572, 'Raiffeisen Bank International AG (Spółka Akcyjna) Oddział w Polsce', 9092, 9105),
(573, 'RCI Banque Spółka Akcyjna Oddział w Polsce', 9106, 9119),
(574, 'Rejonowy Bank Spółdzielczy w Bychawie', 9120, 9133),
(575, 'Rejonowy Bank Spółdzielczy w Lututowie', 9134, 9147),
(576, 'Rejonowy Bank Spółdzielczy w Malanowie', 9148, 9161),
(577, 'Rybnicki Bank Spółdzielczy', 9162, 9175),
(578, 'Santander Bank Polska Spółka Akcyjna', 9176, 9189),
(579, 'Santander Consumer Bank Spółka Akcyjna', 9190, 9203),
(580, 'SGB-Bank Spółka Akcyjna', 9204, 9217),
(581, 'Skandinaviska Enskilda Banken AB (Spółka Akcyjna) - Oddział w Polsce', 9218, 9231),
(582, 'Société Générale Spółka Akcyjna Oddział w Polsce', 9232, 9245),
(583, 'Spółdzielczy Bank Ludowy im.Ks.P.Wawrzyniaka', 9246, 9259),
(584, 'Spółdzielczy Bank Ludowy w Kępnie', 9260, 9273),
(585, 'Spółdzielczy Bank Ludowy w Skalmierzycach', 9274, 9287),
(586, 'Spółdzielczy Bank Ludowy w Zakrzewie', 9288, 9301),
(587, 'Spółdzielczy Bank Ludowy w Złotowie', 9302, 9315),
(588, 'Spółdzielczy Bank Powiatowy w Piaskach', 9316, 9329),
(589, 'Spółdzielczy Bank Rozwoju', 9330, 9343),
(590, 'Spółdzielczy Bank Rzemiosła i Rolnictwa w Wołominie w upadłości likwidacyjnej', 9344, 9357),
(591, 'Svenska Handelsbanken AB Spółka Akcyjna Oddział w Polsce', 9358, 9371),
(592, 'Śląski Bank Spółdzielczy \"Silesia\" w Katowicach', 9372, 9385),
(593, 'Tatrzański Bank Spółdzielczy', 9386, 9399),
(594, 'TF BANK AB (Spółka z ograniczoną odpowiedzialnością) Oddział w Polsce', 9400, 9413),
(595, 'Toyota Bank Polska Spółka Akcyjna', 9414, 9427),
(596, 'UBS Europe SE (Spółka Europejska) Oddział w Polsce', 9428, 9441),
(597, 'Vistula Bank Spółdzielczy', 9442, 9455),
(598, 'Volkswagen Bank GmbH Spółka z ograniczoną odpowiedzialnością Oddział w Polsce', 9456, 9469),
(599, 'Warmiński Bank Spółdzielczy', 9470, 9483),
(600, 'Warmińsko - Mazurski Bank Spółdzielczy', 9484, 9497),
(601, 'Warszawski Bank Spółdzielczy', 9498, 9511),
(602, 'Western Union International Bank GmbH, Sp. z o.o. Oddział w Polsce', 9512, 9525),
(603, 'Wielkopolski Bank Spółdzielczy', 9526, 9539),
(604, 'Wschodni Bank Spółdzielczy w Chełmie', 9540, 9553),
(605, 'Zachodniopomorski Bank Spółdzielczy', 9554, 9567),
(606, 'Żuławski Bank Spółdzielczy', 9568, 9999);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blokady_kart`
--

CREATE TABLE `blokady_kart` (
  `id_blokady_karty` int(10) UNSIGNED NOT NULL,
  `id_karty` int(10) UNSIGNED NOT NULL,
  `nazwa_blokady` varchar(150) NOT NULL,
  `kwota_blokady` decimal(10,2) UNSIGNED NOT NULL,
  `data_blokady` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `blokady_kart`
--

INSERT INTO `blokady_kart` (`id_blokady_karty`, `id_karty`, `nazwa_blokady`, `kwota_blokady`, `data_blokady`) VALUES
(1, 1, 'ZABKA Z6768 K.1 SKORZEWO 616', 100.00, '2020-05-24 19:00:51'),
(2, 2, 'easyshare.pl Warszawa 616', 150.00, '2020-05-24 19:00:51');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `debug`
--

CREATE TABLE `debug` (
  `id_debug` int(11) NOT NULL,
  `wartosc` varchar(150) DEFAULT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `debug`
--

INSERT INTO `debug` (`id_debug`, `wartosc`, `data_wstawienia`) VALUES
(1, '1000.00', '2020-05-31 20:04:13'),
(2, '1000.00', '2020-05-31 20:04:13'),
(3, '200.00', '2020-05-31 20:04:13'),
(4, '1000.00', '2020-05-31 20:04:13'),
(5, '200.00', '2020-05-31 20:04:13'),
(6, '800.00', '2020-05-31 20:04:13'),
(7, '200.00', '2020-05-31 20:04:37'),
(8, '200.00', '2020-05-31 20:04:37'),
(9, '0.00', '2020-05-31 20:04:37'),
(10, '200.00', '2020-05-31 20:04:37'),
(11, '0.00', '2020-05-31 20:04:37'),
(12, '200.00', '2020-05-31 20:04:37'),
(13, '0.00', '2020-05-31 20:05:17'),
(14, '0.00', '2020-05-31 20:05:17'),
(15, '0.00', '2020-05-31 20:05:17'),
(16, '0.00', '2020-05-31 20:05:17'),
(17, '0.00', '2020-05-31 20:05:17'),
(18, '0.00', '2020-05-31 20:05:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dene_kontaktowe`
--

CREATE TABLE `dene_kontaktowe` (
  `id_danych_kontaktowych` int(10) UNSIGNED NOT NULL,
  `id_typu_danych_kontaktowych` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `numer_telefonu` varchar(12) DEFAULT NULL,
  `adres_email` varchar(100) DEFAULT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dene_kontaktowe`
--

INSERT INTO `dene_kontaktowe` (`id_danych_kontaktowych`, `id_typu_danych_kontaktowych`, `id_klienta`, `numer_telefonu`, `adres_email`, `data_wstawienia`) VALUES
(6, 1, 1, '+48777777777', NULL, '2020-05-24 14:02:42'),
(7, 2, 1, '+48612878451', NULL, '2020-05-24 14:02:42'),
(8, 3, 1, '+48612705741', NULL, '2020-05-24 14:02:42'),
(9, 4, 1, NULL, 'test1@test.pl', '2020-05-24 14:02:42'),
(10, 5, 1, NULL, 'sdvsdvvsdvsdv@test.pl', '2020-05-24 14:02:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dok_tozsamosci`
--

CREATE TABLE `dok_tozsamosci` (
  `id_dok_tozsamosci` int(10) UNSIGNED NOT NULL,
  `nazwa_dok_tozsamosci` varchar(20) NOT NULL,
  `id_uzytkownika_wstawiajacego` int(10) UNSIGNED NOT NULL,
  `dok_tozsamosci_data_wstawienia` datetime NOT NULL,
  `id_uzytkownika_modyfikujacego` int(10) UNSIGNED DEFAULT NULL,
  `dok_tozsamosci_data_madyfikacji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dok_tozsamosci`
--

INSERT INTO `dok_tozsamosci` (`id_dok_tozsamosci`, `nazwa_dok_tozsamosci`, `id_uzytkownika_wstawiajacego`, `dok_tozsamosci_data_wstawienia`, `id_uzytkownika_modyfikujacego`, `dok_tozsamosci_data_madyfikacji`) VALUES
(1, 'Dowód osobisty', 1, '2020-04-26 19:43:49', NULL, NULL),
(2, 'Paszport', 1, '2020-04-26 19:43:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ebok`
--

CREATE TABLE `ebok` (
  `id_ebok` int(11) UNSIGNED NOT NULL,
  `id_klienta` int(11) UNSIGNED NOT NULL,
  `login` varchar(50) NOT NULL,
  `haslo` text NOT NULL,
  `czy_dozwolone_logowanie` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `liczba_niepoprawnych_logowan` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `data_rejestracji` datetime NOT NULL,
  `ostatnie_logowanie` datetime DEFAULT NULL,
  `id_uzytkownika_wstawiajacego` int(11) UNSIGNED NOT NULL,
  `ebok_data_wstawienia` datetime NOT NULL,
  `id_uzytkownika_modyfikujacego` int(11) UNSIGNED DEFAULT NULL,
  `ebok_data_modyfikacji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ebok`
--

INSERT INTO `ebok` (`id_ebok`, `id_klienta`, `login`, `haslo`, `czy_dozwolone_logowanie`, `liczba_niepoprawnych_logowan`, `data_rejestracji`, `ostatnie_logowanie`, `id_uzytkownika_wstawiajacego`, `ebok_data_wstawienia`, `id_uzytkownika_modyfikujacego`, `ebok_data_modyfikacji`) VALUES
(1, 1, 'test1@test.pl', '123456789', 1, 0, '2020-04-26 16:15:17', NULL, 1, '2020-04-26 16:15:17', NULL, NULL),
(3, 2, 'test2@test.pl', '123456789', 1, 0, '2020-04-26 16:21:07', NULL, 1, '2020-04-26 16:21:07', NULL, NULL),
(4, 5, 'test5@test.pl', '123456789', 1, 0, '2020-04-26 16:22:50', NULL, 1, '2020-04-26 16:22:50', NULL, NULL),
(5, 8, 'test8@test.pl', '123456789', 0, 4, '2020-04-26 16:24:03', NULL, 1, '2020-04-26 16:24:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty`
--

CREATE TABLE `karty` (
  `id_karty` int(10) UNSIGNED NOT NULL,
  `id_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `numer_karty` varchar(16) NOT NULL,
  `data_waznosci` date NOT NULL,
  `CVV` int(3) NOT NULL,
  `czy_zablokowana` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - False, 1 - True'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `karty`
--

INSERT INTO `karty` (`id_karty`, `id_produktu_klienta`, `numer_karty`, `data_waznosci`, `CVV`, `czy_zablokowana`) VALUES
(1, 1, '2524901392588512', '2020-03-31', 554, 0),
(2, 1, '4593249064274839', '2021-03-31', 332, 0),
(3, 2, '7680249026769441', '2020-07-31', 656, 0),
(4, 3, '6538249050007420', '2020-08-31', 765, 0),
(5, 5, '6710249060520590', '2020-08-31', 874, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) UNSIGNED NOT NULL,
  `pierwsze_imie` varchar(50) NOT NULL,
  `drugie_imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `pesel` bigint(11) NOT NULL,
  `id_dok_tozsamosci` int(11) UNSIGNED NOT NULL,
  `numer_dok_tozsamosci` varchar(10) NOT NULL,
  `id_uzytkownika_wstawiajacego` int(11) UNSIGNED NOT NULL,
  `klienci_data_wstawienia` datetime NOT NULL,
  `id_uzytkownika_modyfikujacego` int(11) UNSIGNED DEFAULT NULL,
  `klienci_data_modyfikacji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `pierwsze_imie`, `drugie_imie`, `nazwisko`, `pesel`, `id_dok_tozsamosci`, `numer_dok_tozsamosci`, `id_uzytkownika_wstawiajacego`, `klienci_data_wstawienia`, `id_uzytkownika_modyfikujacego`, `klienci_data_modyfikacji`) VALUES
(1, 'Kamil', NULL, 'Mazurek', 74051245897, 1, 'ABC145145', 1, '2020-04-22 00:00:00', NULL, NULL),
(2, 'Adam', 'Marcin', 'Nowak', 45121545745, 1, 'ASD457845', 1, '2020-04-22 23:28:13', NULL, NULL),
(3, 'Damian', 'Jan', 'Kowalski', 88120545745, 1, 'AWW555645', 1, '2020-04-22 23:28:13', NULL, NULL),
(4, 'Michał', NULL, 'Pawłowski', 84121404754, 1, 'DDD457444', 1, '2020-04-22 23:28:13', NULL, NULL),
(5, 'Justyna', 'Anna', 'Jursza', 84020545745, 1, 'AFF457775', 1, '2020-04-22 23:28:13', NULL, NULL),
(6, 'Marta', NULL, 'Mróz', 75072545745, 1, 'AS451245', 1, '2020-04-22 23:28:13', NULL, NULL),
(7, 'Damian', 'Antoni', 'Sokołowski', 77113045745, 1, 'GGD787845B', 1, '2020-04-22 23:28:13', NULL, NULL),
(8, 'Anna', 'Natalia', 'Sobolewska', 92112720368, 1, 'BSD455145', 1, '2020-04-22 23:28:13', NULL, NULL),
(9, 'Martyna', 'Małgorzata', 'Dudka', 69080845745, 1, 'ASB437345', 1, '2020-04-22 23:28:13', NULL, NULL),
(10, 'Martyna', NULL, 'Peż', 56101945745, 1, 'ADD458815', 1, '2020-04-22 23:28:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kody_produkty_klienci`
--

CREATE TABLE `kody_produkty_klienci` (
  `id_kodu_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `id_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `kod` int(4) UNSIGNED NOT NULL,
  `czy_aktywny` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kody_produkty_klienci`
--

INSERT INTO `kody_produkty_klienci` (`id_kodu_produktu_klienta`, `id_produktu_klienta`, `kod`, `czy_aktywny`, `data_wstawienia`) VALUES
(1, 1, 4545, 1, '2020-05-24 15:35:05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk_przelewow`
--

CREATE TABLE `koszyk_przelewow` (
  `id_koszyka_przelewow` int(10) UNSIGNED NOT NULL,
  `id_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `czy_aktywny` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `koszyk_przelewow`
--

INSERT INTO `koszyk_przelewow` (`id_koszyka_przelewow`, `id_produktu_klienta`, `czy_aktywny`, `data_wstawienia`) VALUES
(1, 1, 1, '2020-05-24 19:16:08'),
(2, 2, 1, '2020-05-24 19:16:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `limity`
--

CREATE TABLE `limity` (
  `id_limitu` int(10) UNSIGNED NOT NULL,
  `nazwa_limitu` varchar(100) NOT NULL,
  `id_typu_limitu` int(10) UNSIGNED NOT NULL,
  `czy_aktywny` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `max_wartosc` double UNSIGNED NOT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `limity`
--

INSERT INTO `limity` (`id_limitu`, `nazwa_limitu`, `id_typu_limitu`, `czy_aktywny`, `max_wartosc`, `data_wstawienia`) VALUES
(1, 'Limity przelewów bez dodatkowej autoryzacji', 1, 1, 10000, '2020-05-24 17:44:27'),
(2, 'Limity przelewów z dodatkową autoryzacją', 1, 1, 50000, '2020-05-24 17:44:27'),
(3, 'Limity przelewów w aplikacji mobilnej', 1, 1, 5000, '2020-05-24 17:44:27'),
(4, 'Dzienny limit transakcji gotówkowych', 2, 1, 15000, '2020-05-24 17:54:27'),
(5, 'Miesięczny limit transakcji gotówkowych', 2, 1, 100000, '2020-05-24 17:54:27'),
(6, 'Dzienny limit transakcji bezgotówkowych', 3, 1, 50000, '2020-05-24 17:54:49'),
(7, 'Miesięczny limit transakcji bezgotówkowych', 3, 1, 100000, '2020-05-24 17:54:49'),
(8, 'Dzienny limit kwotowy transakcji na odległość (w tym transakcji internetowych)', 4, 1, 30000, '2020-05-24 17:55:25'),
(9, 'Miesięczny limit kwotowy transakcji na odległość (w tym transakcji internetowych)', 4, 1, 100000, '2020-05-24 17:55:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `limity_karty`
--

CREATE TABLE `limity_karty` (
  `id_limitu_karty` int(10) UNSIGNED NOT NULL,
  `id_limitu` int(10) UNSIGNED NOT NULL,
  `id_karty` int(10) UNSIGNED NOT NULL,
  `wartosc_limitu` double UNSIGNED NOT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `limity_karty`
--

INSERT INTO `limity_karty` (`id_limitu_karty`, `id_limitu`, `id_karty`, `wartosc_limitu`, `data_wstawienia`) VALUES
(1, 4, 1, 100, '2020-05-24 16:32:23'),
(2, 5, 1, 100, '2020-05-24 16:32:23'),
(3, 6, 1, 100, '2020-05-24 16:32:23'),
(4, 7, 1, 100, '2020-05-24 16:32:23'),
(5, 8, 1, 100, '2020-05-24 16:32:23'),
(6, 9, 1, 100, '2020-05-24 16:32:23'),
(7, 4, 2, 100, '2020-05-24 16:32:23'),
(8, 5, 2, 100, '2020-05-24 16:32:23'),
(9, 6, 2, 100, '2020-05-24 16:32:23'),
(10, 7, 2, 100, '2020-05-24 16:32:23'),
(11, 8, 2, 100, '2020-05-24 16:32:23'),
(12, 9, 2, 100, '2020-05-24 16:32:23'),
(13, 4, 4, 100, '2020-05-24 16:32:23'),
(14, 5, 4, 100, '2020-05-24 16:32:23'),
(15, 6, 4, 100, '2020-05-24 16:32:23'),
(16, 7, 4, 100, '2020-05-24 16:32:23'),
(17, 8, 4, 100, '2020-05-24 16:32:23'),
(18, 9, 4, 100, '2020-05-24 16:32:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `limity_produkty_klienci`
--

CREATE TABLE `limity_produkty_klienci` (
  `id_limitu_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `id_limitu` int(10) UNSIGNED NOT NULL,
  `id_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `wartosc_limitu` double UNSIGNED NOT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `limity_produkty_klienci`
--

INSERT INTO `limity_produkty_klienci` (`id_limitu_produktu_klienta`, `id_limitu`, `id_produktu_klienta`, `wartosc_limitu`, `data_wstawienia`) VALUES
(1, 1, 1, 50, '2020-05-24 16:20:01'),
(2, 2, 1, 50, '2020-05-24 16:20:01'),
(3, 3, 1, 50, '2020-05-24 16:20:01'),
(4, 1, 5, 100, '2020-05-24 16:20:01'),
(5, 2, 5, 100, '2020-05-24 16:20:01'),
(6, 3, 5, 100, '2020-05-24 16:20:01'),
(9, 1, 2, 100, '2020-05-24 16:21:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odbiorcy`
--

CREATE TABLE `odbiorcy` (
  `id_odbiorcy` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `rachunek_odbiorcy` varchar(26) NOT NULL,
  `nazwa_odbiorcy` varchar(50) NOT NULL,
  `nazwa_skrocona` varchar(20) NOT NULL,
  `adres_odbiorcy` varchar(100) DEFAULT NULL,
  `czy_zaufany` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - False, 1 - True',
  `tytul` varchar(150) DEFAULT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `odbiorcy`
--

INSERT INTO `odbiorcy` (`id_odbiorcy`, `id_klienta`, `rachunek_odbiorcy`, `nazwa_odbiorcy`, `nazwa_skrocona`, `adres_odbiorcy`, `czy_zaufany`, `tytul`, `data_wstawienia`) VALUES
(5, 1, '09109014050000000105467297', 'Janusz Kowalski', 'Janusz Kowalski', 'Poznańska 10/1, 61-747 Poznań', 1, 'Przelew', '2020-05-24 20:12:06'),
(6, 2, '09109014050000000105467297', 'Janusz Kowalski', 'Janusz Kowalski', 'Poznańska 10/1, 61-747 Poznań', 1, 'Przelew', '2020-05-24 20:12:06'),
(7, 1, '02100087827955906929268527', 'Adam Marcin Nowak', 'Brat Adam', 'os. Batorego 78D/78, 67-145 Poznań', 0, 'Przelew', '2020-05-24 20:12:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(10) UNSIGNED NOT NULL,
  `nazwa_produktu` varchar(50) NOT NULL,
  `id_typu_produktu` int(10) UNSIGNED NOT NULL,
  `data_od` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_do` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa_produktu`, `id_typu_produktu`, `data_od`, `data_do`) VALUES
(1, 'Twoje konto <30', 1, '2020-05-20 19:11:29', NULL),
(2, 'Najtańsza karta kredytowa', 2, '2020-05-20 19:11:29', NULL),
(3, 'Kredyt dla nowych klientów', 3, '2020-05-20 19:11:29', NULL),
(4, 'Szybkie oszczędzanie', 4, '2020-05-20 19:11:29', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty_klienci`
--

CREATE TABLE `produkty_klienci` (
  `id_produktu_klienta` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `id_produktu` int(10) UNSIGNED NOT NULL,
  `numer_rachunku` varchar(26) NOT NULL,
  `data_aktywacji` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_rezygnacji` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `produkty_klienci`
--

INSERT INTO `produkty_klienci` (`id_produktu_klienta`, `id_klienta`, `id_produktu`, `numer_rachunku`, `data_aktywacji`, `data_rezygnacji`) VALUES
(1, 1, 1, '01100052449138977053770882', '2020-05-20 18:46:33', NULL),
(2, 2, 1, '02100087827955906929268527', '2020-05-20 18:46:33', NULL),
(3, 5, 2, '05100062258115593561409150', '2020-05-20 18:46:33', NULL),
(4, 8, 3, '08100052156316783584939777', '2020-05-20 18:46:33', NULL),
(5, 1, 2, '01100065020145812738727353', '2020-05-20 18:46:33', NULL),
(6, 1, 4, '01100000475497941155362940', '2020-05-20 18:46:33', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przelewy`
--

CREATE TABLE `przelewy` (
  `id_przelewu` int(10) UNSIGNED NOT NULL,
  `id_koszyka_przelewow` int(10) UNSIGNED NOT NULL,
  `na_rachunek` varchar(26) NOT NULL,
  `odbiorca` varchar(150) NOT NULL,
  `adres_odbiorcy` varchar(100) DEFAULT NULL,
  `tytul` varchar(150) NOT NULL,
  `kwota` decimal(10,2) UNSIGNED NOT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przelewy`
--

INSERT INTO `przelewy` (`id_przelewu`, `id_koszyka_przelewow`, `na_rachunek`, `odbiorca`, `adres_odbiorcy`, `tytul`, `kwota`, `data_wstawienia`) VALUES
(1, 1, '05100062258115593561409150', 'Justyna Anna Jursza', NULL, 'Opłata za czynsz', 50.00, '2020-05-24 19:33:45'),
(2, 1, '09109014050000000105467297', 'Janusz Kowalski', NULL, 'Wypłata za miesiąc 06/2020', 100.00, '2020-05-24 19:33:45'),
(3, 2, '01100052449138977053770882', 'Kamil Mazurek', NULL, 'Zwrot od komornika', 2000.00, '2020-05-24 19:33:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprawy`
--

CREATE TABLE `sprawy` (
  `id_sprawy` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `id_typu_sprawy` int(10) UNSIGNED NOT NULL,
  `id_statusu_sprawy` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `temat_sprawy` varchar(50) NOT NULL,
  `tresc_sprawy` text NOT NULL,
  `zalacznik` text,
  `data_zgloszenia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_zamkniecia` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sprawy`
--

INSERT INTO `sprawy` (`id_sprawy`, `id_klienta`, `id_typu_sprawy`, `id_statusu_sprawy`, `temat_sprawy`, `tresc_sprawy`, `zalacznik`, `data_zgloszenia`, `data_zamkniecia`) VALUES
(1, 1, 1, 1, 'Reklamacja testowa', 'skljdsd sdksad  asdjsadjsa djsaodjas sd jsdaojksa\r\n\r\nsadasdv sd sd  ds\r\nds sd \r\n sd sd d', NULL, '2020-05-23 14:29:23', NULL),
(2, 1, 2, 2, 'Sprawa testowa1', 'dscdscsdcsdc\r\ncsdcsdc\r\ndscsdcsdc\r\ndscsdc', NULL, '2020-05-23 14:29:23', NULL),
(3, 1, 2, 3, 'Sprawa testowa2', 'sdcasccascasc', NULL, '2020-05-23 14:29:23', NULL),
(4, 1, 2, 4, 'Sprawa testowa3', 'sascascasc', NULL, '2020-05-23 14:29:23', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statusy_sprawy`
--

CREATE TABLE `statusy_sprawy` (
  `id_statusu_sprawy` int(10) UNSIGNED NOT NULL,
  `nazwa_statusu_sprawy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `statusy_sprawy`
--

INSERT INTO `statusy_sprawy` (`id_statusu_sprawy`, `nazwa_statusu_sprawy`) VALUES
(4, 'Anulowana'),
(2, 'Rozpatrywana'),
(3, 'Zakończona'),
(1, 'Zgłoszona');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transakcje_przychodzace`
--

CREATE TABLE `transakcje_przychodzace` (
  `id_transakcji_przychodzacej` int(10) UNSIGNED NOT NULL,
  `data_transakcji` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `z_rachunku` varchar(26) NOT NULL,
  `nadawca` varchar(150) NOT NULL,
  `numer_rachunku` varchar(26) NOT NULL,
  `odbiorca` varchar(150) NOT NULL,
  `tytul` varchar(150) NOT NULL,
  `kwota` decimal(10,2) UNSIGNED NOT NULL,
  `id_transakcji_wychodzacej` int(10) UNSIGNED DEFAULT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `transakcje_przychodzace`
--

INSERT INTO `transakcje_przychodzace` (`id_transakcji_przychodzacej`, `data_transakcji`, `z_rachunku`, `nadawca`, `numer_rachunku`, `odbiorca`, `tytul`, `kwota`, `id_transakcji_wychodzacej`, `data_wstawienia`) VALUES
(1, '2020-05-23 14:00:38', '09109014050000000105467297', 'Janusz Kowalski', '01100052449138977053770882', 'Kamil Mazurek', 'Wpływ na konto', 500.00, NULL, '2020-05-24 13:57:52'),
(2, '2020-05-23 14:00:38', '09109014050000000105467297', 'Janusz Kowalski', '01100052449138977053770882', 'Kamil Mazurek', 'Wpływ na konto', 500.00, NULL, '2020-05-24 13:58:05'),
(3, '2020-05-23 14:55:12', '39249052449138977053770882', 'Kamil Mazurek', '02100087827955906929268527', 'Adam Marcin Nowak', 'Przelew testowy', 100.00, 1, '2020-05-23 14:55:12'),
(4, '2020-05-23 14:55:31', '39249052449138977053770882', 'Kamil Mazurek', '02100087827955906929268527', 'Adam Marcin Nowak', 'Przelew testowy', 100.00, 2, '2020-05-23 14:55:31');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transakcje_wychodzace`
--

CREATE TABLE `transakcje_wychodzace` (
  `id_transakcji_wychodzacej` int(10) UNSIGNED NOT NULL,
  `czy_wykonana` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - False, 1 - True',
  `data_transakcji` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `numer_rachunku` varchar(26) NOT NULL,
  `nadawca` varchar(150) NOT NULL,
  `na_rachunek` varchar(26) NOT NULL,
  `odbiorca` varchar(150) NOT NULL,
  `adres_odbiorcy` varchar(100) DEFAULT NULL,
  `tytul` varchar(150) NOT NULL,
  `kwota` decimal(10,2) UNSIGNED NOT NULL,
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `transakcje_wychodzace`
--

INSERT INTO `transakcje_wychodzace` (`id_transakcji_wychodzacej`, `czy_wykonana`, `data_transakcji`, `numer_rachunku`, `nadawca`, `na_rachunek`, `odbiorca`, `adres_odbiorcy`, `tytul`, `kwota`, `data_wstawienia`) VALUES
(1, 1, '2020-05-23 14:55:12', '01100052449138977053770882', 'Kamil Mazurek', '14249087827955906929268527', 'Adam Marcin Nowak', NULL, 'Przelew testowy', 100.00, '2020-05-23 14:55:12'),
(2, 1, '2020-05-23 14:55:31', '01100052449138977053770882', 'Kamil Mazurek', '14249087827955906929268527', 'Adam Marcin Nowak', NULL, 'Przelew testowy', 100.00, '2020-05-23 14:55:31'),
(5, 0, '2020-06-02 17:11:56', '01100000475497941155362940', 'adadsd', '01100052449138977053770882', 'asdasdas', 'sadasdsa', 'dasdasd', 100.00, '2020-05-31 17:11:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy_adresu`
--

CREATE TABLE `typy_adresu` (
  `id_typu_adresu` int(10) UNSIGNED NOT NULL,
  `nazwa_typu_adresu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `typy_adresu`
--

INSERT INTO `typy_adresu` (`id_typu_adresu`, `nazwa_typu_adresu`) VALUES
(1, 'Adres korespondencyjny'),
(3, 'Adres zameldowania'),
(2, 'Adres zamieszkania');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy_danych_kontaktowych`
--

CREATE TABLE `typy_danych_kontaktowych` (
  `id_typu_danych_kontaktowych` int(10) UNSIGNED NOT NULL,
  `nazwa_typu_danych_kontaktowych` varchar(50) NOT NULL,
  `rodzaj_danych_kontaktowych` int(11) UNSIGNED NOT NULL COMMENT '1 - Telefon, 2 - Email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `typy_danych_kontaktowych`
--

INSERT INTO `typy_danych_kontaktowych` (`id_typu_danych_kontaktowych`, `nazwa_typu_danych_kontaktowych`, `rodzaj_danych_kontaktowych`) VALUES
(1, 'Telefon komórkowy', 1),
(2, 'Telefon stacjonarny', 1),
(3, 'Telefon służbowy', 1),
(4, 'Adres email', 2),
(5, 'Alternatywny adres email', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy_limitow`
--

CREATE TABLE `typy_limitow` (
  `id_typu_limitu` int(10) UNSIGNED NOT NULL,
  `nazwa_typu_limitu` varchar(100) NOT NULL,
  `czy_limit_dla_kart` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `typy_limitow`
--

INSERT INTO `typy_limitow` (`id_typu_limitu`, `nazwa_typu_limitu`, `czy_limit_dla_kart`) VALUES
(1, 'Limity przelewów', 0),
(2, 'Limity dla kart w bankomatach', 1),
(3, 'Limity dla kart w sklepach', 1),
(4, 'Limity dla kart w internecie', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy_produktow`
--

CREATE TABLE `typy_produktow` (
  `id_typu_produktu` int(10) UNSIGNED NOT NULL,
  `nazwa_typu_produktu` varchar(30) NOT NULL,
  `czy_produkt_z_karta` tinyint(1) NOT NULL COMMENT '0 - False, 1 - True'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `typy_produktow`
--

INSERT INTO `typy_produktow` (`id_typu_produktu`, `nazwa_typu_produktu`, `czy_produkt_z_karta`) VALUES
(1, 'Konta osobiste', 1),
(2, 'Karty kredytowe', 1),
(3, 'Kredyty', 0),
(4, 'Lokaty', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy_sprawy`
--

CREATE TABLE `typy_sprawy` (
  `id_typu_sprawy` int(10) UNSIGNED NOT NULL,
  `nazwa_typu_sprawy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `typy_sprawy`
--

INSERT INTO `typy_sprawy` (`id_typu_sprawy`, `nazwa_typu_sprawy`) VALUES
(1, 'Reklamacja'),
(2, 'Zgłoszenie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `haslo` text NOT NULL,
  `czy_aktywny` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `id_uzytkownika_wstawiajacego` int(10) UNSIGNED NOT NULL,
  `uzytkownicy_data_wstawienia` datetime NOT NULL,
  `id_uzytkownika_modyfikujacego` int(10) UNSIGNED DEFAULT NULL,
  `uzytkownicy_data_madyfikacji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `imie`, `nazwisko`, `login`, `haslo`, `czy_aktywny`, `id_uzytkownika_wstawiajacego`, `uzytkownicy_data_wstawienia`, `id_uzytkownika_modyfikujacego`, `uzytkownicy_data_madyfikacji`) VALUES
(1, 'System', 'Bankowy', 'system.bankowy', '12345678', 1, 1, '2020-04-26 21:33:30', NULL, NULL),
(2, 'Jan', 'Kowalski', 'jan.kowalski', '12345678', 1, 1, '2020-04-26 21:33:30', NULL, NULL),
(3, 'Marcin', 'Nowak', 'marcin.nowak', '12345678', 1, 2, '2020-04-26 21:33:30', NULL, NULL),
(4, 'Anna', 'Mróz', 'anna.mroz', '12345678', 0, 2, '2020-04-26 21:33:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgody`
--

CREATE TABLE `zgody` (
  `id_zgody` int(10) UNSIGNED NOT NULL,
  `nazwa_zgody` varchar(150) NOT NULL,
  `czy_aktywna` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - False, 1 - True',
  `data_wstawienia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zgody`
--

INSERT INTO `zgody` (`id_zgody`, `nazwa_zgody`, `czy_aktywna`, `data_wstawienia`) VALUES
(1, 'Zgoda na przetwarzanie danych osobowych', 1, '2020-05-24 16:21:04'),
(2, 'Zgoda na kontakt drogą elektroniczną w celu marketingowym', 1, '2020-05-24 16:21:04'),
(3, 'Zgoda na kontakt telefoniczny w celu marketingowym', 1, '2020-05-24 16:21:04'),
(4, 'Zgoda na powiadomienie sms o otrzymaniu wiadomości związanych ze zmianami w regulacjach bankowych', 1, '2020-05-24 16:21:04'),
(5, 'Zgoda na otrzymywanie korespondencji w formie elektronicznej na adres email', 1, '2020-05-24 16:21:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgody_klienci`
--

CREATE TABLE `zgody_klienci` (
  `id_zgody_klienta` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `id_zgody` int(10) UNSIGNED NOT NULL,
  `data_wyrazenia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_rezygnacji` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zgody_klienci`
--

INSERT INTO `zgody_klienci` (`id_zgody_klienta`, `id_klienta`, `id_zgody`, `data_wyrazenia`, `data_rezygnacji`) VALUES
(1, 1, 1, '2020-05-24 15:26:41', NULL),
(3, 1, 2, '2020-05-24 15:27:06', NULL),
(4, 1, 3, '2020-05-24 15:27:45', NULL),
(5, 1, 4, '2020-05-24 15:27:45', NULL),
(6, 1, 5, '2020-05-24 15:27:45', NULL),
(7, 2, 1, '2020-05-24 15:27:45', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`id_adresu`),
  ADD UNIQUE KEY `miasto` (`miasto`,`ulica`,`nr_domu`,`nr_mieszkania`,`kod_pocztowy`,`kraj`);

--
-- Indeksy dla tabeli `adresy_klienci`
--
ALTER TABLE `adresy_klienci`
  ADD PRIMARY KEY (`id_adresu_klienta`),
  ADD UNIQUE KEY `id_klienta` (`id_klienta`,`id_typu_adresu`) USING BTREE,
  ADD KEY `id_adresu` (`id_adresu`),
  ADD KEY `adresy_klienci_ibfk_3` (`id_typu_adresu`);

--
-- Indeksy dla tabeli `banki`
--
ALTER TABLE `banki`
  ADD PRIMARY KEY (`id_banku`),
  ADD UNIQUE KEY `nazwa_banku` (`nazwa_banku`),
  ADD UNIQUE KEY `zakres_od` (`zakres_od`),
  ADD UNIQUE KEY `zakres_do` (`zakres_do`);

--
-- Indeksy dla tabeli `blokady_kart`
--
ALTER TABLE `blokady_kart`
  ADD PRIMARY KEY (`id_blokady_karty`),
  ADD KEY `id_karty` (`id_karty`),
  ADD KEY `nazwa_blokady` (`nazwa_blokady`),
  ADD KEY `kwota_blokady` (`kwota_blokady`),
  ADD KEY `data_blokady` (`data_blokady`);

--
-- Indeksy dla tabeli `debug`
--
ALTER TABLE `debug`
  ADD PRIMARY KEY (`id_debug`),
  ADD KEY `wartosc` (`wartosc`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `dene_kontaktowe`
--
ALTER TABLE `dene_kontaktowe`
  ADD PRIMARY KEY (`id_danych_kontaktowych`),
  ADD UNIQUE KEY `id_typu_danych_kontaktowych` (`id_typu_danych_kontaktowych`,`id_klienta`),
  ADD KEY `numer_telefonu` (`numer_telefonu`),
  ADD KEY `adres_email` (`adres_email`) USING BTREE,
  ADD KEY `dene_kontaktowe_ibfk_1` (`id_klienta`);

--
-- Indeksy dla tabeli `dok_tozsamosci`
--
ALTER TABLE `dok_tozsamosci`
  ADD PRIMARY KEY (`id_dok_tozsamosci`),
  ADD UNIQUE KEY `nazwa_dok_tozsamosci` (`nazwa_dok_tozsamosci`),
  ADD KEY `id_uzytkownika_wstawiajacego` (`id_uzytkownika_wstawiajacego`),
  ADD KEY `id_uzytkownika_modyfikujacego` (`id_uzytkownika_modyfikujacego`);

--
-- Indeksy dla tabeli `ebok`
--
ALTER TABLE `ebok`
  ADD PRIMARY KEY (`id_ebok`),
  ADD UNIQUE KEY `id_klienta` (`id_klienta`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `id_uzytkownika_wstawiajacego` (`id_uzytkownika_wstawiajacego`),
  ADD KEY `id_uzytkownika_modyfikujacego` (`id_uzytkownika_modyfikujacego`),
  ADD KEY `liczba_niepoprawnych_logowan` (`liczba_niepoprawnych_logowan`),
  ADD KEY `data_rejestracji` (`data_rejestracji`),
  ADD KEY `ostatnie_logowanie` (`ostatnie_logowanie`),
  ADD KEY `czy_dozwolone_logowanie` (`czy_dozwolone_logowanie`);

--
-- Indeksy dla tabeli `karty`
--
ALTER TABLE `karty`
  ADD PRIMARY KEY (`id_karty`),
  ADD UNIQUE KEY `numer_karty` (`numer_karty`),
  ADD KEY `id_produktu_klienta` (`id_produktu_klienta`),
  ADD KEY `data_waznosci` (`data_waznosci`),
  ADD KEY `czy_zablokowana` (`czy_zablokowana`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`),
  ADD UNIQUE KEY `pesel` (`pesel`) USING BTREE,
  ADD UNIQUE KEY `numer_dok_tozsamosci` (`numer_dok_tozsamosci`) USING BTREE,
  ADD KEY `id_dok_tozsamosci` (`id_dok_tozsamosci`),
  ADD KEY `pierwsze_imie` (`pierwsze_imie`) USING BTREE,
  ADD KEY `drugie_imie` (`drugie_imie`) USING BTREE,
  ADD KEY `nazwisko` (`nazwisko`) USING BTREE,
  ADD KEY `id_uzytkownika_wstawiajacego` (`id_uzytkownika_wstawiajacego`),
  ADD KEY `id_uzytkownika_modyfikujacego` (`id_uzytkownika_modyfikujacego`);

--
-- Indeksy dla tabeli `kody_produkty_klienci`
--
ALTER TABLE `kody_produkty_klienci`
  ADD PRIMARY KEY (`id_kodu_produktu_klienta`) USING BTREE,
  ADD UNIQUE KEY `kod` (`kod`),
  ADD KEY `id_produktu_klienta` (`id_produktu_klienta`),
  ADD KEY `czy_aktywny` (`czy_aktywny`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `koszyk_przelewow`
--
ALTER TABLE `koszyk_przelewow`
  ADD PRIMARY KEY (`id_koszyka_przelewow`),
  ADD KEY `id_produktu_klienta` (`id_produktu_klienta`),
  ADD KEY `czy_aktywny` (`czy_aktywny`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `limity`
--
ALTER TABLE `limity`
  ADD PRIMARY KEY (`id_limitu`),
  ADD UNIQUE KEY `nazwa_limitu` (`nazwa_limitu`),
  ADD KEY `id_typu_limitu` (`id_typu_limitu`),
  ADD KEY `data_wstawienia` (`data_wstawienia`),
  ADD KEY `czy_aktywny` (`czy_aktywny`),
  ADD KEY `max_wartosc` (`max_wartosc`);

--
-- Indeksy dla tabeli `limity_karty`
--
ALTER TABLE `limity_karty`
  ADD PRIMARY KEY (`id_limitu_karty`),
  ADD UNIQUE KEY `id_limitu` (`id_limitu`,`id_karty`),
  ADD KEY `wartosc_limitu` (`wartosc_limitu`),
  ADD KEY `data_wstawienia` (`data_wstawienia`),
  ADD KEY `limity_karty_ibfk_1` (`id_karty`);

--
-- Indeksy dla tabeli `limity_produkty_klienci`
--
ALTER TABLE `limity_produkty_klienci`
  ADD PRIMARY KEY (`id_limitu_produktu_klienta`),
  ADD UNIQUE KEY `id_limitu` (`id_limitu`,`id_produktu_klienta`),
  ADD KEY `data_wstawienia` (`data_wstawienia`),
  ADD KEY `wartosc_limitu` (`wartosc_limitu`),
  ADD KEY `limity_produkty_klienci_ibfk_2` (`id_produktu_klienta`);

--
-- Indeksy dla tabeli `odbiorcy`
--
ALTER TABLE `odbiorcy`
  ADD PRIMARY KEY (`id_odbiorcy`),
  ADD UNIQUE KEY `id_klienta` (`id_klienta`,`rachunek_odbiorcy`),
  ADD KEY `nazwa_odbiorcy` (`nazwa_odbiorcy`),
  ADD KEY `nazwa_skrocona` (`nazwa_skrocona`),
  ADD KEY `adres_odbiorcy` (`adres_odbiorcy`),
  ADD KEY `czy_zaufany` (`czy_zaufany`),
  ADD KEY `tytul` (`tytul`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`),
  ADD UNIQUE KEY `nazwa_produktu` (`nazwa_produktu`),
  ADD KEY `id_typu_produktu` (`id_typu_produktu`),
  ADD KEY `data_od` (`data_od`),
  ADD KEY `data_do` (`data_do`);

--
-- Indeksy dla tabeli `produkty_klienci`
--
ALTER TABLE `produkty_klienci`
  ADD PRIMARY KEY (`id_produktu_klienta`),
  ADD UNIQUE KEY `numer_rachunku` (`numer_rachunku`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_produktu` (`id_produktu`),
  ADD KEY `data_aktywacji` (`data_aktywacji`),
  ADD KEY `data_rezygnacji` (`data_rezygnacji`);

--
-- Indeksy dla tabeli `przelewy`
--
ALTER TABLE `przelewy`
  ADD PRIMARY KEY (`id_przelewu`),
  ADD KEY `id_koszyka_przelewow` (`id_koszyka_przelewow`),
  ADD KEY `na_rachunek` (`na_rachunek`),
  ADD KEY `odbiorca` (`odbiorca`),
  ADD KEY `tytul` (`tytul`),
  ADD KEY `kwota` (`kwota`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `sprawy`
--
ALTER TABLE `sprawy`
  ADD PRIMARY KEY (`id_sprawy`),
  ADD KEY `id_typu_sprawy` (`id_typu_sprawy`),
  ADD KEY `temat_sprawy` (`temat_sprawy`),
  ADD KEY `id_statusu_sprawy` (`id_statusu_sprawy`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `data_zgloszenia` (`data_zgloszenia`),
  ADD KEY `data_zamkniecia` (`data_zamkniecia`);

--
-- Indeksy dla tabeli `statusy_sprawy`
--
ALTER TABLE `statusy_sprawy`
  ADD PRIMARY KEY (`id_statusu_sprawy`),
  ADD UNIQUE KEY `nazwa_statusu_sprawy` (`nazwa_statusu_sprawy`);

--
-- Indeksy dla tabeli `transakcje_przychodzace`
--
ALTER TABLE `transakcje_przychodzace`
  ADD PRIMARY KEY (`id_transakcji_przychodzacej`),
  ADD UNIQUE KEY `id_transakcji_wychodzacej` (`id_transakcji_wychodzacej`),
  ADD KEY `z_rachunku` (`z_rachunku`),
  ADD KEY `nadawca` (`nadawca`),
  ADD KEY `odbiorca` (`odbiorca`),
  ADD KEY `tytul` (`tytul`),
  ADD KEY `numer_rachunku` (`numer_rachunku`),
  ADD KEY `data_transakcji` (`data_transakcji`);

--
-- Indeksy dla tabeli `transakcje_wychodzace`
--
ALTER TABLE `transakcje_wychodzace`
  ADD PRIMARY KEY (`id_transakcji_wychodzacej`),
  ADD KEY `data_transakcji` (`data_transakcji`),
  ADD KEY `nadawca` (`nadawca`),
  ADD KEY `na_rachunek` (`na_rachunek`),
  ADD KEY `odbiorca` (`odbiorca`),
  ADD KEY `tytul` (`tytul`),
  ADD KEY `czy_wykonana` (`czy_wykonana`),
  ADD KEY `numer_rachunku` (`numer_rachunku`),
  ADD KEY `data_wstawienia` (`data_wstawienia`);

--
-- Indeksy dla tabeli `typy_adresu`
--
ALTER TABLE `typy_adresu`
  ADD PRIMARY KEY (`id_typu_adresu`),
  ADD UNIQUE KEY `nazwa_typu_adresu` (`nazwa_typu_adresu`);

--
-- Indeksy dla tabeli `typy_danych_kontaktowych`
--
ALTER TABLE `typy_danych_kontaktowych`
  ADD PRIMARY KEY (`id_typu_danych_kontaktowych`),
  ADD UNIQUE KEY `nazwa_typu_danych_kontaktowych` (`nazwa_typu_danych_kontaktowych`),
  ADD KEY `rodzaj_danych_kontaktowych` (`rodzaj_danych_kontaktowych`);

--
-- Indeksy dla tabeli `typy_limitow`
--
ALTER TABLE `typy_limitow`
  ADD PRIMARY KEY (`id_typu_limitu`),
  ADD UNIQUE KEY `nazwa_typu_limitu` (`nazwa_typu_limitu`),
  ADD KEY `czy_limit_dla_kart` (`czy_limit_dla_kart`);

--
-- Indeksy dla tabeli `typy_produktow`
--
ALTER TABLE `typy_produktow`
  ADD PRIMARY KEY (`id_typu_produktu`),
  ADD UNIQUE KEY `nazwa_typu_produktu` (`nazwa_typu_produktu`),
  ADD KEY `czy_produkt_z_karta` (`czy_produkt_z_karta`);

--
-- Indeksy dla tabeli `typy_sprawy`
--
ALTER TABLE `typy_sprawy`
  ADD PRIMARY KEY (`id_typu_sprawy`),
  ADD UNIQUE KEY `nazwa_typu_sprawy` (`nazwa_typu_sprawy`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `imie` (`imie`),
  ADD KEY `nazwisko` (`nazwisko`),
  ADD KEY `id_uzytkownika_wstawiajacego` (`id_uzytkownika_wstawiajacego`),
  ADD KEY `id_uzytkownika_modyfikujacego` (`id_uzytkownika_modyfikujacego`),
  ADD KEY `czy_aktywny` (`czy_aktywny`);

--
-- Indeksy dla tabeli `zgody`
--
ALTER TABLE `zgody`
  ADD PRIMARY KEY (`id_zgody`),
  ADD UNIQUE KEY `nazwa_zgody` (`nazwa_zgody`),
  ADD KEY `czy_aktywna` (`czy_aktywna`);

--
-- Indeksy dla tabeli `zgody_klienci`
--
ALTER TABLE `zgody_klienci`
  ADD PRIMARY KEY (`id_zgody_klienta`),
  ADD UNIQUE KEY `id_klienta_id_zgody` (`id_klienta`,`id_zgody`) USING BTREE,
  ADD KEY `data_wyrazenia` (`data_wyrazenia`),
  ADD KEY `data_rezygnacji` (`data_rezygnacji`),
  ADD KEY `zgody_klienci_ibfk_2` (`id_zgody`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `adresy`
--
ALTER TABLE `adresy`
  MODIFY `id_adresu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `adresy_klienci`
--
ALTER TABLE `adresy_klienci`
  MODIFY `id_adresu_klienta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `banki`
--
ALTER TABLE `banki`
  MODIFY `id_banku` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT dla tabeli `blokady_kart`
--
ALTER TABLE `blokady_kart`
  MODIFY `id_blokady_karty` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `debug`
--
ALTER TABLE `debug`
  MODIFY `id_debug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `dene_kontaktowe`
--
ALTER TABLE `dene_kontaktowe`
  MODIFY `id_danych_kontaktowych` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `dok_tozsamosci`
--
ALTER TABLE `dok_tozsamosci`
  MODIFY `id_dok_tozsamosci` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `ebok`
--
ALTER TABLE `ebok`
  MODIFY `id_ebok` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `karty`
--
ALTER TABLE `karty`
  MODIFY `id_karty` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `kody_produkty_klienci`
--
ALTER TABLE `kody_produkty_klienci`
  MODIFY `id_kodu_produktu_klienta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `koszyk_przelewow`
--
ALTER TABLE `koszyk_przelewow`
  MODIFY `id_koszyka_przelewow` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `limity`
--
ALTER TABLE `limity`
  MODIFY `id_limitu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `limity_karty`
--
ALTER TABLE `limity_karty`
  MODIFY `id_limitu_karty` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `limity_produkty_klienci`
--
ALTER TABLE `limity_produkty_klienci`
  MODIFY `id_limitu_produktu_klienta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `odbiorcy`
--
ALTER TABLE `odbiorcy`
  MODIFY `id_odbiorcy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `produkty_klienci`
--
ALTER TABLE `produkty_klienci`
  MODIFY `id_produktu_klienta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `przelewy`
--
ALTER TABLE `przelewy`
  MODIFY `id_przelewu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sprawy`
--
ALTER TABLE `sprawy`
  MODIFY `id_sprawy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `statusy_sprawy`
--
ALTER TABLE `statusy_sprawy`
  MODIFY `id_statusu_sprawy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `transakcje_przychodzace`
--
ALTER TABLE `transakcje_przychodzace`
  MODIFY `id_transakcji_przychodzacej` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `transakcje_wychodzace`
--
ALTER TABLE `transakcje_wychodzace`
  MODIFY `id_transakcji_wychodzacej` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `typy_adresu`
--
ALTER TABLE `typy_adresu`
  MODIFY `id_typu_adresu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `typy_danych_kontaktowych`
--
ALTER TABLE `typy_danych_kontaktowych`
  MODIFY `id_typu_danych_kontaktowych` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `typy_limitow`
--
ALTER TABLE `typy_limitow`
  MODIFY `id_typu_limitu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `typy_produktow`
--
ALTER TABLE `typy_produktow`
  MODIFY `id_typu_produktu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `typy_sprawy`
--
ALTER TABLE `typy_sprawy`
  MODIFY `id_typu_sprawy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `zgody`
--
ALTER TABLE `zgody`
  MODIFY `id_zgody` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `zgody_klienci`
--
ALTER TABLE `zgody_klienci`
  MODIFY `id_zgody_klienta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `adresy_klienci`
--
ALTER TABLE `adresy_klienci`
  ADD CONSTRAINT `adresy_klienci_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `adresy_klienci_ibfk_2` FOREIGN KEY (`id_adresu`) REFERENCES `adresy` (`id_adresu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `adresy_klienci_ibfk_3` FOREIGN KEY (`id_typu_adresu`) REFERENCES `typy_adresu` (`id_typu_adresu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `blokady_kart`
--
ALTER TABLE `blokady_kart`
  ADD CONSTRAINT `blokady_kart_ibfk_1` FOREIGN KEY (`id_blokady_karty`) REFERENCES `karty` (`id_karty`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `dene_kontaktowe`
--
ALTER TABLE `dene_kontaktowe`
  ADD CONSTRAINT `dene_kontaktowe_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dene_kontaktowe_ibfk_2` FOREIGN KEY (`id_typu_danych_kontaktowych`) REFERENCES `typy_danych_kontaktowych` (`id_typu_danych_kontaktowych`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `dok_tozsamosci`
--
ALTER TABLE `dok_tozsamosci`
  ADD CONSTRAINT `dok_tozsamosci_ibfk_1` FOREIGN KEY (`id_uzytkownika_wstawiajacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dok_tozsamosci_ibfk_2` FOREIGN KEY (`id_uzytkownika_modyfikujacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `ebok`
--
ALTER TABLE `ebok`
  ADD CONSTRAINT `ebok_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ebok_ibfk_2` FOREIGN KEY (`id_uzytkownika_wstawiajacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ebok_ibfk_3` FOREIGN KEY (`id_uzytkownika_modyfikujacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `karty`
--
ALTER TABLE `karty`
  ADD CONSTRAINT `karty_ibfk_1` FOREIGN KEY (`id_produktu_klienta`) REFERENCES `produkty_klienci` (`id_produktu_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_ibfk_1` FOREIGN KEY (`id_dok_tozsamosci`) REFERENCES `dok_tozsamosci` (`id_dok_tozsamosci`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `klienci_ibfk_2` FOREIGN KEY (`id_uzytkownika_wstawiajacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `klienci_ibfk_3` FOREIGN KEY (`id_uzytkownika_modyfikujacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `kody_produkty_klienci`
--
ALTER TABLE `kody_produkty_klienci`
  ADD CONSTRAINT `kody_produkty_klienci_ibfk_1` FOREIGN KEY (`id_produktu_klienta`) REFERENCES `produkty_klienci` (`id_produktu_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `koszyk_przelewow`
--
ALTER TABLE `koszyk_przelewow`
  ADD CONSTRAINT `koszyk_przelewow_ibfk_1` FOREIGN KEY (`id_produktu_klienta`) REFERENCES `produkty_klienci` (`id_produktu_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `limity`
--
ALTER TABLE `limity`
  ADD CONSTRAINT `limity_ibfk_1` FOREIGN KEY (`id_typu_limitu`) REFERENCES `typy_limitow` (`id_typu_limitu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `limity_karty`
--
ALTER TABLE `limity_karty`
  ADD CONSTRAINT `limity_karty_ibfk_1` FOREIGN KEY (`id_karty`) REFERENCES `karty` (`id_karty`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `limity_karty_ibfk_2` FOREIGN KEY (`id_limitu`) REFERENCES `limity` (`id_limitu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `limity_produkty_klienci`
--
ALTER TABLE `limity_produkty_klienci`
  ADD CONSTRAINT `limity_produkty_klienci_ibfk_1` FOREIGN KEY (`id_limitu`) REFERENCES `limity` (`id_limitu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `limity_produkty_klienci_ibfk_2` FOREIGN KEY (`id_produktu_klienta`) REFERENCES `produkty_klienci` (`id_produktu_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `odbiorcy`
--
ALTER TABLE `odbiorcy`
  ADD CONSTRAINT `odbiorcy_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_typu_produktu`) REFERENCES `typy_produktow` (`id_typu_produktu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `produkty_klienci`
--
ALTER TABLE `produkty_klienci`
  ADD CONSTRAINT `produkty_klienci_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `produkty_klienci_ibfk_2` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `przelewy`
--
ALTER TABLE `przelewy`
  ADD CONSTRAINT `przelewy_ibfk_1` FOREIGN KEY (`id_koszyka_przelewow`) REFERENCES `koszyk_przelewow` (`id_koszyka_przelewow`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `sprawy`
--
ALTER TABLE `sprawy`
  ADD CONSTRAINT `sprawy_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sprawy_ibfk_2` FOREIGN KEY (`id_statusu_sprawy`) REFERENCES `statusy_sprawy` (`id_statusu_sprawy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sprawy_ibfk_3` FOREIGN KEY (`id_typu_sprawy`) REFERENCES `typy_sprawy` (`id_typu_sprawy`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `transakcje_przychodzace`
--
ALTER TABLE `transakcje_przychodzace`
  ADD CONSTRAINT `transakcje_przychodzace_ibfk_1` FOREIGN KEY (`numer_rachunku`) REFERENCES `produkty_klienci` (`numer_rachunku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transakcje_przychodzace_ibfk_2` FOREIGN KEY (`id_transakcji_wychodzacej`) REFERENCES `transakcje_wychodzace` (`id_transakcji_wychodzacej`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `transakcje_wychodzace`
--
ALTER TABLE `transakcje_wychodzace`
  ADD CONSTRAINT `transakcje_wychodzace_ibfk_1` FOREIGN KEY (`numer_rachunku`) REFERENCES `produkty_klienci` (`numer_rachunku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD CONSTRAINT `uzytkownicy_ibfk_1` FOREIGN KEY (`id_uzytkownika_wstawiajacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `uzytkownicy_ibfk_2` FOREIGN KEY (`id_uzytkownika_modyfikujacego`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `zgody_klienci`
--
ALTER TABLE `zgody_klienci`
  ADD CONSTRAINT `zgody_klienci_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `zgody_klienci_ibfk_2` FOREIGN KEY (`id_zgody`) REFERENCES `zgody` (`id_zgody`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
