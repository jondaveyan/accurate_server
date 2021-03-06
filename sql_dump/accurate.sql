-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 26 2017 г., 12:25
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `accurate`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `own` enum('yes','no','','') CHARACTER SET latin1 NOT NULL,
  `debt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `own`, `debt`) VALUES
(21, 'Դվին', 'yes', 0),
(23, 'Մամիկոնյանց', 'yes', 0),
(24, 'Բյուրական', 'yes', 0),
(25, 'Պռոշյան', 'yes', 0),
(26, 'Արշակյան Ահարոն', 'no', 0),
(27, 'ՄԳՈ քոնսթ ՍՊԸ', 'no', 0),
(28, 'Անտոնյան Արտավազդ', 'no', 0),
(29, 'Վարդանյան Արթուր', 'no', 2418410),
(30, 'Առաքելյան Հրանտ', 'no', 3100000),
(31, 'Աղաջանյան Արման', 'no', 611500),
(32, 'Գարսևանյան Գոռ', 'no', 0),
(33, 'Տոլոյան Լևոն', 'no', 0),
(34, 'Օֆիս', 'no', 0),
(35, 'Մեդիսոն Էյբլ', 'no', 38976),
(36, 'Ասատրյան Դավիթ', 'no', 0),
(37, 'Ոսկանյան Հովսեփ', 'no', 508240),
(38, 'Հովհաննիսյան Դավիթ', 'no', 0),
(39, 'Կոբալյան Վալերի', 'no', 610680),
(40, 'Հովհաննիսյան Հովհաննես', 'no', 0),
(41, 'Արշակյան Ահարոն', 'no', 0),
(42, 'Անդրեասյան Համլետ', 'no', 100000),
(43, 'Վարդանյան Գրիշա', 'no', 245440),
(45, 'Աթալյան և որդիներ ՍՊԸ', 'no', 227520),
(46, 'Բարսեղյան  Լևոն', 'no', 0),
(47, 'Սնառտ ՍՊԸ', 'no', 582656),
(48, 'Առաքելյան Արտակ', 'no', 0),
(49, 'Պետոյան Պետրոս', 'no', 0),
(50, 'Խաչատրյան Արմեն', 'no', 19500),
(51, 'Ռաթևոսյան Սահակ', 'no', 354800),
(52, 'Գևորգյան Գևորգ', 'no', 1948000),
(53, 'Աբրահամյան Լևոն', 'no', 134809),
(54, 'Պետրոսյան Վազգեն', 'no', 112490),
(55, 'Բազալտ Էմ ՍՊԸ', 'no', 161175),
(56, 'Ակվալեն Շին ՍՊԸ', 'no', 19600),
(57, 'Վամ ՍՊԸ', 'no', 604220),
(58, 'Մելքոնյան Յուրա', 'no', 12117000),
(59, 'Մեսրոպ/Վահագ', 'no', 990000),
(60, 'Գալստյան Վլադիմիր', 'no', 53704),
(61, 'Սիմոնյան Տիգրան', 'no', 0),
(62, 'Ավետիսյան Բաբկեն', 'no', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `giveback`
--

CREATE TABLE `giveback` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `bad_quantity` int(11) NOT NULL,
  `useless_quantity` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `giveback`
--

INSERT INTO `giveback` (`id`, `client_id`, `product_id`, `quantity`, `bad_quantity`, `useless_quantity`, `date`) VALUES
(1, 28, 39, 15, 0, 0, '2016-12-29'),
(2, 28, 32, 40, 0, 0, '2016-12-29'),
(3, 28, 41, 40, 0, 0, '2016-12-29'),
(4, 28, 63, 35, 0, 0, '2016-12-29'),
(5, 28, 91, 8, 0, 0, '2016-12-29'),
(6, 27, 22, 55, 0, 0, '2016-12-22'),
(7, 49, 121, 2730, 0, 0, '2016-12-30'),
(8, 49, 47, 189, 0, 0, '2016-12-30'),
(9, 49, 56, 348, 0, 0, '2016-12-30'),
(10, 37, 91, 41, 0, 0, '2017-01-02'),
(11, 37, 66, 40, 0, 0, '2017-01-02'),
(12, 37, 68, 8, 0, 0, '2017-01-02'),
(13, 37, 61, 21, 0, 0, '2017-01-02'),
(14, 37, 34, 86, 0, 0, '2017-01-02'),
(15, 37, 41, 99, 0, 0, '2017-01-02'),
(16, 49, 56, 27, 0, 0, '2016-12-30'),
(17, 37, 39, 40, 0, 0, '2017-01-02'),
(18, 37, 63, 47, 0, 0, '2017-01-02'),
(19, 45, 34, 48, 0, 0, '2017-01-12'),
(20, 45, 34, 132, 0, 0, '2017-01-12'),
(21, 21, 93, 7, 0, 7, '2017-01-13'),
(22, 21, 95, 1, 0, 1, '2017-01-13'),
(23, 21, 97, 1, 0, 1, '2017-01-13'),
(24, 21, 99, 8, 0, 8, '2017-01-13'),
(25, 21, 102, 2, 0, 2, '2017-01-13'),
(26, 21, 128, 3, 0, 3, '2017-01-13'),
(27, 21, 104, 22, 0, 22, '2017-01-13'),
(28, 21, 110, 4, 0, 4, '2017-01-13'),
(29, 23, 91, 10, 0, 0, '2017-01-17'),
(30, 21, 101, 1, 0, 1, '2017-01-13'),
(31, 21, 41, 96, 96, 0, '2017-01-18'),
(32, 21, 39, 44, 44, 0, '2017-01-18'),
(33, 21, 121, 404, 0, 390, '2017-01-20'),
(34, 21, 56, 1, 0, 0, '2017-01-20'),
(35, 21, 46, 4, 0, 0, '2017-01-19'),
(36, 21, 47, 101, 0, 0, '2017-01-20'),
(37, 21, 56, 13, 0, 0, '2017-01-19'),
(38, 49, 102, 15, 0, 0, '2016-12-30'),
(39, 23, 154, 17, 0, 0, '2017-01-24'),
(40, 23, 63, 20, 0, 0, '2017-01-24'),
(41, 23, 65, 4, 0, 1, '2017-01-24'),
(42, 23, 68, 3, 0, 0, '2017-01-24'),
(43, 23, 66, 2, 0, 0, '2017-01-24'),
(44, 23, 70, 2, 0, 0, '2017-01-24'),
(45, 23, 154, 34, 0, 0, '2017-01-24'),
(46, 23, 29, 12, 0, 0, '2017-01-25'),
(47, 23, 31, 64, 0, 0, '2017-01-25'),
(48, 23, 12, 9, 0, 0, '2017-01-25'),
(49, 23, 11, 2, 0, 0, '2017-01-25'),
(50, 23, 41, 65, 0, 0, '2017-01-25'),
(51, 23, 39, 25, 0, 0, '2017-01-25'),
(52, 23, 63, 59, 0, 0, '2017-01-25'),
(53, 23, 65, 8, 0, 0, '2017-01-25'),
(54, 23, 68, 12, 0, 0, '2017-01-25'),
(55, 23, 66, 3, 0, 0, '2017-01-25'),
(56, 23, 154, 13, 0, 0, '2017-01-25'),
(57, 31, 63, 1, 0, 0, '2017-01-25'),
(58, 31, 68, 1, 0, 0, '2017-01-25'),
(60, 31, 32, 6, 0, 0, '2017-01-25'),
(61, 31, 41, 6, 0, 0, '2017-01-25'),
(62, 23, 63, 20, 0, 0, '2017-01-24'),
(63, 23, 65, 4, 0, 1, '2017-01-24'),
(64, 23, 68, 3, 0, 0, '2017-01-24'),
(65, 23, 66, 2, 0, 0, '2017-01-24'),
(66, 23, 70, 2, 0, 0, '2017-01-24'),
(67, 23, 154, 34, 0, 0, '2017-01-24');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `sale_price` float NOT NULL,
  `daily_price` float NOT NULL,
  `daily_sale` enum('daily','sale','','') NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `product_id`, `product_quantity`, `sale_price`, `daily_price`, `daily_sale`, `date`) VALUES
(32, 17, 2, 3, 0, 0, 'daily', '2016-11-07'),
(52, 24, 63, 10, 0, 0, 'daily', '2016-12-30'),
(53, 24, 65, 1, 0, 0, 'daily', '2016-12-30'),
(54, 24, 66, 4, 0, 0, 'daily', '2016-12-30'),
(55, 24, 70, 3, 0, 0, 'daily', '2016-12-30'),
(56, 24, 81, 16, 0, 0, 'daily', '2016-12-30'),
(57, 24, 82, 33, 0, 0, 'daily', '2016-12-30'),
(58, 24, 83, 4, 0, 0, 'daily', '2016-12-30'),
(59, 24, 84, 8, 0, 0, 'daily', '2016-12-30'),
(60, 24, 86, 10, 0, 0, 'daily', '2016-12-30'),
(62, 21, 9, 6, 0, 0, 'daily', '2016-12-30'),
(63, 21, 13, 125, 0, 0, 'daily', '2016-12-30'),
(73, 21, 15, 1, 0, 0, 'daily', '2016-12-30'),
(76, 21, 18, 37, 0, 0, 'daily', '2016-12-30'),
(77, 21, 19, 3, 0, 0, 'daily', '2016-12-30'),
(78, 21, 20, 71, 0, 0, 'daily', '2016-12-30'),
(79, 21, 23, 7, 0, 0, 'daily', '2016-12-30'),
(82, 21, 26, 349, 0, 0, 'daily', '2016-12-30'),
(83, 21, 27, 50, 0, 0, 'daily', '2016-12-30'),
(84, 21, 29, 43, 0, 0, 'daily', '2016-12-30'),
(85, 21, 31, 51, 0, 0, 'daily', '2016-12-30'),
(87, 21, 34, 63, 0, 0, 'daily', '2016-12-30'),
(88, 21, 36, 50, 0, 0, 'daily', '2016-12-30'),
(90, 21, 39, 403, 0, 0, 'daily', '2016-12-30'),
(91, 21, 41, 996, 0, 0, 'daily', '2016-12-30'),
(92, 21, 45, 17, 0, 0, 'daily', '2016-12-30'),
(93, 21, 46, 129, 0, 0, 'daily', '2016-12-30'),
(94, 21, 47, 125, 0, 0, 'daily', '2016-12-30'),
(95, 21, 48, 328, 0, 0, 'daily', '2016-12-30'),
(96, 21, 49, 44, 0, 0, 'daily', '2016-12-30'),
(97, 21, 56, 1119, 0, 0, 'daily', '2016-12-30'),
(98, 21, 58, 13, 0, 0, 'daily', '2016-12-30'),
(99, 21, 61, 64, 0, 0, 'daily', '2016-12-30'),
(100, 21, 62, 177, 0, 0, 'daily', '2016-12-30'),
(101, 21, 63, 873, 0, 0, 'daily', '2016-12-30'),
(102, 21, 65, 204, 0, 0, 'daily', '2016-12-30'),
(103, 21, 66, 227, 0, 0, 'daily', '2016-12-30'),
(104, 21, 68, 240, 0, 0, 'daily', '2016-12-30'),
(105, 21, 70, 183, 0, 0, 'daily', '2016-12-30'),
(106, 21, 81, 12, 0, 0, 'daily', '2016-12-30'),
(107, 21, 82, 24, 0, 0, 'daily', '2016-12-30'),
(108, 21, 83, 24, 0, 0, 'daily', '2016-12-30'),
(109, 21, 93, 580, 0, 0, 'daily', '2016-12-30'),
(110, 21, 95, 80, 0, 0, 'daily', '2016-12-30'),
(111, 21, 97, 125, 0, 0, 'daily', '2016-12-30'),
(112, 21, 99, 70, 0, 0, 'daily', '2016-12-30'),
(113, 21, 101, 45, 0, 0, 'daily', '2016-12-30'),
(114, 21, 102, 110, 0, 0, 'daily', '2016-12-30'),
(115, 21, 104, 81, 0, 0, 'daily', '2016-12-30'),
(116, 21, 105, 90, 0, 0, 'daily', '2016-12-30'),
(117, 21, 108, 96, 0, 0, 'daily', '2016-12-30'),
(118, 21, 110, 157, 0, 0, 'daily', '2016-12-30'),
(119, 21, 121, 6807, 0, 0, 'daily', '2016-12-30'),
(120, 21, 128, 20, 0, 0, 'daily', '2016-12-30'),
(124, 23, 11, 43, 0, 0, 'daily', '2016-12-30'),
(125, 23, 12, 58, 0, 0, 'daily', '2016-12-30'),
(126, 23, 29, 112, 0, 0, 'daily', '2016-12-30'),
(127, 23, 31, 326, 0, 0, 'daily', '2016-12-30'),
(130, 23, 39, 119, 0, 0, 'daily', '2016-12-30'),
(131, 23, 41, 386, 0, 0, 'daily', '2016-12-30'),
(132, 23, 48, 67, 0, 0, 'daily', '2016-12-30'),
(133, 23, 49, 0, 0, 0, 'daily', '2016-12-30'),
(134, 23, 56, 56, 0, 0, 'daily', '2016-12-30'),
(135, 23, 63, 565, 0, 0, 'daily', '2016-12-30'),
(137, 23, 66, 35, 0, 0, 'daily', '2016-12-30'),
(138, 23, 68, 63, 0, 0, 'daily', '2016-12-30'),
(139, 23, 70, 96, 0, 0, 'daily', '2016-12-30'),
(140, 23, 91, 10, 0, 0, 'daily', '2016-12-30'),
(141, 23, 93, 67, 0, 0, 'daily', '2016-12-30'),
(142, 23, 95, 16, 0, 0, 'daily', '2016-12-30'),
(143, 23, 97, 15, 0, 0, 'daily', '2016-12-30'),
(144, 23, 99, 20, 0, 0, 'daily', '2016-12-30'),
(145, 23, 101, 1, 0, 0, 'daily', '2016-12-30'),
(146, 23, 102, 130, 0, 0, 'daily', '2016-12-30'),
(147, 23, 104, 4, 0, 0, 'daily', '2016-12-30'),
(148, 23, 105, 1, 0, 0, 'daily', '2016-12-30'),
(149, 23, 110, 13, 0, 0, 'daily', '2016-12-30'),
(150, 23, 112, 9, 0, 0, 'daily', '2016-12-30'),
(151, 23, 113, 3, 0, 0, 'daily', '2016-12-30'),
(153, 23, 121, 1064, 0, 0, 'daily', '2016-12-30'),
(154, 23, 154, 195, 0, 0, 'daily', '2016-12-30'),
(156, 25, 16, 7, 0, 0, 'daily', '2016-12-30'),
(157, 25, 81, 6, 0, 0, 'daily', '2016-12-30'),
(158, 25, 82, 12, 0, 0, 'daily', '2016-12-30'),
(159, 25, 83, 12, 0, 0, 'daily', '2016-12-30'),
(160, 25, 84, 12, 0, 0, 'daily', '2016-12-30'),
(161, 25, 86, 6, 0, 0, 'daily', '2016-12-30'),
(162, 28, 32, 40, 0, 40, 'daily', '2016-12-16'),
(163, 28, 39, 15, 0, 20, 'daily', '2016-12-16'),
(164, 28, 41, 40, 0, 15, 'daily', '2016-12-16'),
(165, 28, 63, 35, 0, 60, 'daily', '2016-12-16'),
(166, 28, 91, 8, 0, 450, 'daily', '2016-12-16'),
(168, 27, 22, 55, 0, 72, 'daily', '2016-11-23'),
(169, 30, 93, 63, 0, 0, 'daily', '2016-12-30'),
(170, 30, 95, 18, 0, 0, 'daily', '2016-12-30'),
(171, 30, 97, 5, 0, 0, 'daily', '2016-12-30'),
(172, 30, 99, 24, 0, 0, 'daily', '2016-12-30'),
(173, 30, 101, 9, 0, 0, 'daily', '2016-12-30'),
(174, 30, 102, 30, 0, 0, 'daily', '2016-12-30'),
(176, 30, 105, 7, 0, 0, 'daily', '2016-12-30'),
(177, 30, 110, 3, 0, 0, 'daily', '2016-12-30'),
(178, 30, 121, 1037, 0, 0, 'daily', '2016-12-30'),
(179, 31, 32, 6, 0, 40, 'daily', '2016-12-30'),
(181, 31, 41, 7, 0, 10, 'daily', '2016-12-30'),
(183, 31, 155, 5, 240, 0, 'sale', '2016-12-30'),
(184, 31, 56, 2, 0, 20, 'daily', '2016-12-30'),
(186, 31, 63, 1, 0, 45, 'daily', '2016-12-30'),
(187, 31, 68, 1, 0, 72, 'daily', '2016-12-30'),
(199, 33, 56, 3, 12, 0, 'sale', '2016-12-17'),
(200, 33, 70, 1, 0, 0, 'sale', '2016-12-17'),
(201, 34, 17, 1, 0, 0, 'daily', '2016-12-30'),
(202, 34, 40, 1, 0, 0, 'daily', '2016-12-30'),
(203, 34, 42, 1, 0, 0, 'daily', '2016-12-30'),
(204, 34, 57, 7, 0, 0, 'daily', '2016-12-30'),
(205, 34, 94, 1, 0, 0, 'daily', '2016-12-30'),
(206, 34, 96, 1, 0, 0, 'daily', '2016-12-30'),
(207, 34, 98, 1, 0, 0, 'daily', '2016-12-30'),
(208, 34, 100, 1, 0, 0, 'daily', '2016-12-30'),
(209, 34, 103, 1, 0, 0, 'daily', '2016-12-30'),
(210, 34, 156, 1, 0, 0, 'daily', '2016-12-30'),
(211, 34, 106, 1, 0, 0, 'daily', '2016-12-30'),
(212, 34, 111, 4, 0, 0, 'daily', '2016-12-30'),
(213, 35, 34, 8, 0, 48, 'daily', '2016-12-30'),
(220, 39, 121, 60, 0, 0, 'daily', '2016-12-30'),
(221, 40, 121, 22, 0, 0, 'sale', '2016-12-17'),
(232, 23, 65, 92, 0, 0, 'daily', '2016-12-30'),
(239, 37, 34, 100, 0, 80, 'daily', '2016-12-30'),
(240, 37, 39, 40, 0, 20, 'daily', '2016-12-30'),
(241, 37, 41, 100, 0, 12, 'daily', '2016-12-30'),
(242, 37, 61, 21, 0, 80, 'daily', '2016-12-30'),
(243, 43, 81, 10, 0, 200, 'daily', '2016-12-30'),
(244, 43, 82, 32, 0, 0, 'daily', '2016-12-30'),
(245, 43, 83, 32, 0, 0, 'daily', '2016-12-30'),
(246, 43, 84, 10, 0, 0, 'daily', '2016-12-30'),
(247, 43, 86, 8, 0, 10, 'daily', '2016-12-30'),
(248, 44, 121, 51, 600, 0, 'sale', '2016-12-17'),
(249, 45, 34, 180, 0, 42, 'daily', '2016-12-30'),
(250, 45, 56, 4, 0, 6, 'daily', '2016-12-30'),
(251, 45, 121, 31, 0, 0, 'daily', '2016-12-30'),
(253, 47, 24, 150, 0, 72, 'daily', '2016-12-30'),
(254, 47, 27, 100, 0, 80, 'daily', '2016-12-30'),
(255, 48, 27, 5, 0, 54, 'daily', '2017-01-08'),
(256, 48, 32, 120, 0, 40, 'daily', '2017-01-08'),
(257, 48, 47, 1, 0, 0, 'daily', '2017-01-08'),
(259, 39, 65, 16, 0, 0, 'daily', '2016-12-30'),
(260, 37, 91, 41, 0, 160, 'daily', '2016-12-30'),
(261, 37, 66, 40, 0, 110, 'daily', '2016-12-30'),
(262, 37, 68, 8, 0, 110, 'daily', '2016-12-30'),
(265, 37, 63, 47, 0, 0, 'daily', '2016-12-30'),
(266, 21, 1, 9, 0, 0, 'daily', '2016-12-30'),
(267, 21, 37, 19, 0, 0, 'daily', '2016-12-30'),
(268, 21, 32, 2, 0, 0, 'daily', '2016-12-30'),
(269, 21, 154, 600, 0, 0, 'daily', '2016-12-30'),
(270, 25, 34, 59, 0, 0, 'daily', '2016-12-30'),
(271, 25, 48, 65, 0, 0, 'daily', '2016-12-30'),
(272, 25, 56, 128, 0, 0, 'daily', '2016-12-30'),
(273, 25, 61, 11, 0, 0, 'daily', '2016-12-30'),
(274, 25, 63, 47, 0, 0, 'daily', '2016-12-30'),
(275, 25, 66, 10, 0, 0, 'daily', '2016-12-30'),
(276, 25, 70, 36, 0, 0, 'daily', '2016-12-30'),
(277, 25, 93, 78, 0, 0, 'daily', '2016-12-30'),
(278, 25, 95, 13, 0, 0, 'daily', '2016-12-30'),
(279, 25, 97, 18, 0, 0, 'daily', '2016-12-30'),
(280, 25, 99, 22, 0, 0, 'daily', '2016-12-30'),
(281, 25, 101, 20, 0, 0, 'daily', '2016-12-30'),
(282, 25, 102, 20, 0, 0, 'daily', '2016-12-30'),
(283, 25, 104, 40, 0, 0, 'daily', '2016-12-30'),
(284, 25, 121, 1200, 0, 0, 'daily', '2016-12-30'),
(285, 25, 128, 62, 0, 0, 'daily', '2016-12-30'),
(286, 30, 104, 7, 0, 0, 'daily', '2016-12-30'),
(287, 49, 47, 190, 0, 15, 'daily', '2017-01-08'),
(288, 49, 56, 380, 0, 15, 'daily', '2017-01-08'),
(289, 49, 102, 15, 0, 40, 'daily', '2017-01-08'),
(290, 49, 110, 1, 0, 180, 'daily', '2017-01-08'),
(291, 49, 121, 2730, 0, 0, 'daily', '2017-01-08'),
(293, 21, 154, 50, 0, 0, 'daily', '2017-01-10'),
(298, 21, 154, 41, 0, 0, 'daily', '2017-01-10'),
(301, 21, 104, 16, 0, 0, 'daily', '2017-01-12'),
(302, 21, 63, 200, 0, 0, 'daily', '2017-01-13'),
(303, 21, 105, 5, 0, 0, 'daily', '2017-01-13'),
(304, 21, 63, 150, 0, 0, 'daily', '2017-01-13'),
(305, 21, 24, 70, 0, 0, 'daily', '2017-01-14'),
(306, 21, 27, 100, 0, 0, 'daily', '2017-01-14'),
(307, 21, 27, 50, 0, 0, 'daily', '2017-01-16'),
(308, 21, 76, 30, 0, 0, 'daily', '2017-01-17'),
(315, 21, 48, 100, 0, 0, 'daily', '2017-01-19'),
(316, 21, 68, 50, 0, 0, 'daily', '2017-01-18'),
(317, 21, 24, 130, 0, 0, 'daily', '2017-01-22'),
(318, 25, 146, 23, 0, 0, 'daily', '2017-01-23'),
(319, 25, 151, 4, 0, 0, 'daily', '2017-01-23'),
(320, 25, 150, 4, 0, 0, 'daily', '2017-01-23'),
(321, 25, 149, 4, 0, 0, 'daily', '2017-01-23'),
(322, 25, 55, 110, 0, 0, 'daily', '2017-01-23'),
(324, 21, 63, 100, 0, 0, 'daily', '2017-01-20'),
(326, 21, 63, 100, 0, 0, 'daily', '2017-01-19'),
(327, 21, 63, 100, 0, 0, 'daily', '2017-01-20'),
(329, 26, 27, 100, 0, 65, 'daily', '2017-01-21'),
(330, 21, 16, 251, 0, 0, 'daily', '2016-12-30'),
(331, 23, 99, 15, 0, 0, 'daily', '2017-01-19'),
(332, 23, 101, 15, 0, 0, 'daily', '2017-01-19'),
(333, 23, 47, 40, 0, 0, 'daily', '2017-01-19'),
(334, 23, 56, 80, 0, 0, 'daily', '2017-01-19'),
(335, 21, 24, 100, 0, 0, 'daily', '2017-01-18'),
(336, 21, 39, 70, 0, 0, 'daily', '2017-01-18'),
(338, 25, 105, 2, 0, 0, 'daily', '2016-12-30'),
(339, 21, 29, 25, 0, 0, 'daily', '2017-01-20'),
(340, 21, 157, 7, 0, 0, 'daily', '2016-12-30'),
(341, 25, 146, 5, 0, 0, 'daily', '2017-01-23'),
(342, 25, 148, 4, 0, 0, 'daily', '2017-01-23'),
(343, 25, 147, 4, 0, 0, 'daily', '2017-01-23'),
(344, 25, 153, 2, 0, 0, 'daily', '2017-01-23'),
(345, 25, 152, 2, 0, 0, 'daily', '2017-01-23'),
(346, 21, 27, 120, 0, 0, 'daily', '2017-01-24'),
(347, 21, 24, 80, 0, 0, 'daily', '2017-01-24'),
(348, 21, 39, 80, 0, 0, 'daily', '2017-01-24'),
(349, 61, 47, 60, 0, 15, 'daily', '2017-01-24'),
(350, 61, 56, 120, 0, 10, 'daily', '2017-01-24'),
(351, 21, 63, 20, 0, 0, 'daily', '2017-01-24'),
(352, 21, 65, 4, 0, 0, 'daily', '2017-01-24'),
(353, 21, 68, 3, 0, 0, 'daily', '2017-01-24'),
(354, 21, 66, 2, 0, 0, 'daily', '2017-01-24'),
(355, 21, 70, 2, 0, 0, 'daily', '2017-01-24'),
(356, 21, 154, 34, 0, 0, 'daily', '2017-01-24'),
(357, 21, 154, 50, 0, 0, 'daily', '2017-01-11'),
(358, 21, 154, 50, 0, 0, 'daily', '2017-01-17'),
(359, 21, 154, 10, 0, 0, 'daily', '2017-01-17'),
(360, 21, 154, 50, 0, 0, 'daily', '2017-01-19'),
(361, 21, 154, 50, 0, 0, 'daily', '2017-01-21'),
(362, 62, 33, 5, 0, 70, 'daily', '2017-01-26'),
(363, 21, 63, 20, 0, 0, 'daily', '2017-01-24'),
(364, 21, 65, 4, 0, 0, 'daily', '2017-01-24'),
(365, 21, 68, 3, 0, 0, 'daily', '2017-01-24'),
(366, 21, 66, 2, 0, 0, 'daily', '2017-01-24'),
(367, 21, 70, 2, 0, 0, 'daily', '2017-01-24'),
(368, 21, 154, 34, 0, 0, 'daily', '2017-01-24'),
(369, 21, 24, 100, 0, 0, 'daily', '2017-01-25');

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`id`, `client_id`, `amount`, `date`) VALUES
(1, 28, 60000, '2016-12-16'),
(2, 27, 40000, '2016-11-23');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` float NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sold_quantity` float NOT NULL,
  `new_quantity` int(1) NOT NULL,
  `bad_quantity` int(11) NOT NULL,
  `useless_quantity` int(11) NOT NULL,
  `daily_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `type`, `sold_quantity`, `new_quantity`, `bad_quantity`, `useless_quantity`, `daily_order`) VALUES
(1, ' Ա Հենակ 100/170', 146, 'հատ', 0, 0, 0, 0, 9),
(9, 'Ա Հենակ 180/300 հին կարմիր', 6, 'հատ', 0, 0, 0, 0, 6),
(10, 'Ա Հենակ 200/350 сер հաստ հին հզ', 76, 'հատ', 0, 0, 0, 0, 0),
(11, 'Ա Հենակ 200/350 2մմ կապույտ/գ Թ ստ', 100, 'հատ', 0, 0, 0, 0, 41),
(12, 'Ա Հենակ 200/350 2մմ կապույտ Թ ստ', 103, '', 0, 0, 0, 0, 49),
(13, 'Ա Հենակ 200/350 2,5մմ կապ/գ Թ հզ', 363, 'հատ', 0, 0, 0, 0, 125),
(14, 'Ա Հենակ 200/360 հին կարմիր', 1, 'հատ', 0, 0, 0, 0, 0),
(15, 'Ա Հենակ 200/360 T', 41, 'հատ', 0, 0, 0, 0, 1),
(16, 'Ա Հենակ 200/360 сер հին հզ+', 517, 'հատ', 0, 0, 0, 0, 258),
(17, 'Ա Հենակ 210/370 Ռ ստ', 8, 'հատ', 0, 0, 0, 0, 1),
(18, 'Ա Հենակ 220/400 2,5մմ կապ/գ Թ հզ', 218, 'հատ', 0, 0, 0, 0, 37),
(19, 'Ա Հենակ 220/400 2,5մմ կապույտ Թ հզ', 201, 'հատ', 0, 0, 0, 0, 3),
(20, 'Ա Հենակ 250/450 հին կարմիր հզ', 155, 'հատ', 0, 0, 0, 0, 71),
(21, 'Ա Հենակ 250/450 2,5մմ կապ/գ Թ հզ', 100, 'հատ', 0, 0, 0, 0, 0),
(22, 'Ա Հենակ 260/420 Ռ ստ', 550, 'հատ', 0, 0, 0, 0, 0),
(23, 'Ա Հենակ 270/490 հաստ կարմիր', 9, 'հատ', 0, 0, 0, 0, 7),
(24, 'Ա Հենակ 290/450 Ռ նոր ստ', 750, 'հատ', 0, 0, 0, 0, 630),
(25, 'Ա Հենակ 300/510 հին կարմիր', 36, 'հատ', 0, 0, 0, 0, 0),
(26, 'Ա Հենակ 325/500 2,5մմ կապույտ Թ հզ', 349, 'հատ', 0, 0, 0, 0, 349),
(27, 'Ա Հենակ 350/550 հաստ կարմիր հզ+', 533, 'հատ', 0, 0, 0, 0, 525),
(29, 'Ա Հենակ 155/255 Ռ Թ BT51', 399, 'հատ', 0, 0, 0, 0, 168),
(30, 'Ա Հենակ 185/310 Ռ Թ BT51', 1279, 'հատ', 0, 0, 0, 0, 0),
(31, 'Ա Հենակ 185/310 Ռ US+ BT48', 902, 'հատ', 0, 0, 0, 0, 313),
(32, 'Ա Հենակ 210/370 Ռ ՍՏ+ BT48', 500, 'հատ', 0, 0, 0, 0, 122),
(33, 'Ա Հենակ 330/490 Ռ ՍՏ+ BT48', 200, 'հատ', 0, 0, 0, 0, 5),
(34, 'Ա Հենակ 210/370 Ռ ՍՏ BT58', 1096, 'հատ', 0, 0, 0, 0, 144),
(35, 'Ա Հենակ 210/370 Ռ Թ BT51', 1274, 'հատ', 0, 0, 0, 0, 0),
(36, 'Ա Հենակ թեք 200/360', 83, 'հատ', 0, 0, 0, 0, 50),
(37, 'Ա Հենակ թեք 300/500', 85, 'հատ', 0, 0, 0, 0, 19),
(38, 'Ժ Հենակի տակդիր 350/500/ռեզ.', 400, 'հատ', 0, 0, 0, 0, 0),
(39, 'Բ Եռոտանի', 980, 'հատ', 0, 0, 44, 0, 603),
(40, 'Բ Եռոտանի/նոր', 594, 'հատ', 0, 0, 0, 0, 1),
(41, 'Գ Քառոտանի', 2151, 'հատ', 0, 0, 96, 0, 1223),
(42, 'Գ Քառոտանի/նոր', 413, 'հատ', 0, 0, 0, 0, 1),
(43, 'Ծ Քառոտանի շվ.', 526, 'հատ', 0, 0, 0, 0, 0),
(44, 'Ծ Քառոտանի/խառ.', 100, 'հատ', 0, 0, 0, 0, 0),
(45, 'Ե Ամրաձող 0.5-0.7', 99, 'հատ', 0, 0, 0, 0, 17),
(46, 'Ե Ամրաձող 0.8', 762, 'հատ', 0, 0, 0, 0, 125),
(47, 'Ե Ամրաձող 1.0', 1897, 'հատ', 0, 0, 0, 0, 126),
(48, 'Ե Ամրաձող 1.2', 796, 'հատ', 0, 0, 0, 0, 560),
(49, 'Ե Ամրաձող 1.5', 57, 'հատ', 0, 0, 0, 0, 44),
(50, 'Ե Ամրաձող 2.0', 284, 'հատ', 0, 0, 0, 0, 0),
(51, 'Ե Ամրաձող 1.25 ամրան', 747, 'հատ', 0, 0, 0, 0, 0),
(52, 'Ե Ամրաձող 1.4-1.8 ամրան', 137, 'հատ', 0, 0, 0, 0, 0),
(53, 'Ե Ամրաձող 2.0-2.5 ամրան', 105, 'հատ', 0, 0, 0, 0, 0),
(54, 'Ե Ամրաձող 3.0', 245, 'հատ', 0, 0, 0, 0, 0),
(55, 'Թ Ամրակ բազմաֆունկ.', 110, 'հատ', 0, 0, 0, 0, 110),
(56, 'Զ Ձգան', 3359, 'հատ', 0, 0, 0, 0, 1500),
(57, 'Զ Ձգան/նոր', 3675, 'հատ', 0, 0, 0, 0, 7),
(58, 'Զ Ձգան պլաստիկ', 4036, 'հատ', 0, 0, 0, 0, 13),
(59, 'Ծ Զսպանակավոր Ձգան', 210, 'հատ', 0, 0, 0, 0, 0),
(60, 'Ծ Զսպանակավոր ձգանի բանալի', 10, 'հատ', 0, 0, 0, 0, 0),
(61, 'Դ Հեծան H-20 L=2.65', 356, 'հատ', 0, 0, 0, 0, 75),
(62, 'Դ Հեծան H-20 L=2.90', 185, 'հատ', 0, 0, 0, 0, 177),
(63, 'Դ Հեծան H-20 L=3.0', 2176, 'հատ', 0, 0, 0, 0, 2086),
(64, 'Դ Հեծան H-20 L=3.0 նոր Ռ', 254, 'հատ', 0, 0, 0, 0, 0),
(65, 'Դ Հեծան H-20 L=3.30', 594, 'հատ', 0, 0, 1, 2, 305),
(66, 'Դ Հեծան H-20 L=3.90', 323, 'հատ', 0, 0, 0, 0, 273),
(67, 'Դ Հեծան H-20 L=3.90/նոր', 30, 'հատ', 0, 0, 0, 0, 0),
(68, 'Դ Հեծան H-20 L=3.60', 423, 'հատ', 0, 0, 0, 0, 341),
(69, 'Դ Հեծան H-20 L=3.60/նոր', 100, 'հատ', 0, 0, 0, 0, 0),
(70, 'Դ Հեծան H-20 L=0.6-2.5', 546, 'հատ', 0, 0, 0, 0, 318),
(76, 'Ծ Խառաչոյի բռնակ Թ', 100, 'հատ', 0, 0, 0, 0, 30),
(77, 'Ծ նմուշ Թ1', 280, 'հատ', 0, 0, 0, 0, 0),
(78, 'Ծ նմուշ Թ2', 10, 'հատ', 0, 0, 0, 0, 0),
(79, 'Ծ նմուշ Թ3', 1, 'հատ', 0, 0, 0, 0, 0),
(80, 'Ծ նմուշ Թ4', 1, 'հատ', 0, 0, 0, 0, 0),
(81, 'Ժ Ռամա 80/200', 185, 'հատ', 0, 0, 0, 0, 44),
(82, 'Ժ Անկյունագիծ L-3մ', 365, 'հատ', 0, 0, 0, 0, 101),
(83, 'Ժ Հորիզոնագիծ L-2.5մ', 164, 'հատ', 0, 0, 0, 0, 72),
(84, 'Ժ Հենակ/բաշմակ L-0.5մ', 108, 'հատ', 0, 0, 0, 0, 30),
(85, 'Ծ Պատի անկեռ L-0.5մ', 50, 'հատ', 0, 0, 0, 0, 0),
(86, 'Ժ Հատակ', 25, 'հատ', 0, 0, 0, 0, 24),
(87, 'Ժ Աստիճան', 14, 'հատ', 0, 0, 0, 0, 0),
(88, 'Ծ Քառոտանի ԴԻՍԱՌՄՈ', 20, 'հատ', 0, 0, 0, 0, 0),
(89, 'Խ Նրբատախտակ դեղին', 105, 'հատ', 0, 0, 0, 0, 0),
(90, 'Խ Նրբատաղտակ 1.8*1.22*2.44', 184, 'հատ', 0, 0, 0, 0, 0),
(91, 'Խ Նրբատախտակ 1.8*1.22*2.44/1', 132, 'հատ', 0, 0, 0, 0, 0),
(92, 'Խ Նրբատախտակ 1.5*1.22*2.44', 0, 'հատ', 0, 0, 0, 0, 0),
(93, 'Է Վահան 120X60', 2239, 'հատ', 0, 0, 0, 7, 781),
(94, 'Է Վահան 120X60/նոր', 350, 'հատ', 0, 0, 0, 0, 1),
(95, 'Է Վահան 20x60', 381, 'հատ', 0, 0, 0, 1, 126),
(96, 'Է Վահան 20x60 նոր', 8, 'հատ', 0, 0, 0, 0, 1),
(97, 'Է Վահան 25x60', 423, 'հատ', 0, 0, 0, 1, 162),
(98, 'Է Վահան 25x60 նոր', 54, 'հատ', 0, 0, 0, 0, 1),
(99, 'Է Վահան 30x60', 475, 'հատ', 0, 0, 0, 8, 143),
(100, 'Է Վահան 30x60 նոր', 41, 'հատ', 0, 0, 0, 0, 1),
(101, 'Է Վահան 35x60', 102, 'հատ', 0, 0, 0, 1, 89),
(102, 'Է Վահան 40x60', 331, 'հատ', 0, 0, 0, 2, 288),
(103, 'Է Վահան 40x60/նոր', 49, 'հատ', 0, 0, 0, 0, 1),
(104, 'Է Ներքին անկյուն', 274, 'հատ', 0, 0, 0, 22, 126),
(105, 'Է Արտաքին անկյուն', 213, 'հատ', 0, 0, 0, 0, 105),
(106, 'Է Արտաքին անկյուն/նոր', 30, 'հատ', 0, 0, 0, 0, 1),
(107, 'Է Սյան վահան 40x75', 327, 'հատ', 0, 0, 0, 0, 0),
(108, 'Է Սյան վահան 50x75', 96, 'հատ', 0, 0, 0, 0, 96),
(109, 'Է Սյան վահան 60x75', 48, 'հատ', 0, 0, 0, 0, 0),
(110, 'Է Սթառ 20-30-40-50-60', 1155, 'հատ', 0, 0, 0, 4, 170),
(111, 'Է Սթառ 20-30-40-50-60/նոր', 117, 'հատ', 0, 0, 0, 0, 4),
(112, 'Է Սթառ 25-35-45-55-65', 40, 'հատ', 0, 0, 0, 0, 9),
(113, 'Է Սթառ 70-80-90-100', 154, 'հատ', 0, 0, 0, 0, 3),
(114, 'Է Կլոր սյան վահան Ø 25', 20, 'հատ', 0, 0, 0, 0, 0),
(115, 'Է Կլոր սյան վահան Ø 30', 40, 'հատ', 0, 0, 0, 0, 0),
(116, 'Է Կլոր սյան վահան Ø 40', 50, 'հատ', 0, 0, 0, 0, 0),
(117, 'Է Կլոր սյան վահան Ø 50 նոր', 30, 'հատ', 0, 0, 0, 0, 0),
(118, 'Է Կլոր սյան վահան Ø 60 նոր', 28, 'հատ', 0, 0, 0, 0, 0),
(119, 'Է Կլոր սյան վահան Ø 80/նոր', 60, 'հատ', 0, 0, 0, 0, 0),
(120, 'Է Կլոր սյան վահան Ø 100/նոր', 60, 'հատ', 0, 0, 0, 0, 0),
(121, 'Է Բռնակ', 29960, 'հատ', 73, 0, 0, 391, 9795),
(122, 'Է Վահան 20/25/30', 20, 'հատ', 0, 0, 0, 0, 0),
(123, 'Է Վահան 35/40/45', 22, 'հատ', 0, 0, 0, 0, 0),
(124, 'Է Վահան GEOSKY Y beam/նոր', 124, 'հատ', 0, 0, 0, 0, 0),
(125, 'Է Վահան GEOSKY H beam', 1235, 'հատ', 0, 0, 0, 0, 0),
(126, 'Է Վահան GEOSKY CUNEO/նոր', 250, 'հատ', 0, 0, 0, 0, 0),
(127, 'Է Վահան GEOPANEL ART/նոր', 20, 'հատ', 0, 0, 0, 0, 0),
(128, 'Է Վահան 120x30', 83, 'հատ', 0, 0, 0, 3, 79),
(129, 'Է Վահան 100х60', 43, 'հատ', 0, 0, 0, 0, 0),
(130, 'Է Վահան 90х60', 42, 'հատ', 0, 0, 0, 0, 0),
(131, 'է Վահան 90х30', 32, 'հատ', 0, 0, 0, 0, 0),
(132, 'Է Վահան 60х60', 73, 'հատ', 0, 0, 0, 0, 0),
(133, 'Է Վահան 60х30', 119, 'հատ', 0, 0, 0, 0, 0),
(134, 'Է Սթառ 60x40', 29, 'հատ', 0, 0, 0, 0, 0),
(135, 'Է Սթառ 60x30', 8, 'հատ', 0, 0, 0, 0, 0),
(136, 'Է Սթառ 60x20', 4, 'հատ', 0, 0, 0, 0, 0),
(137, 'Ի Ծածկի կանգնակ H=2.40մ', 160, 'հատ', 0, 0, 0, 0, 0),
(138, 'Ի Ծածկի կանգնակ H=1.80մ', 100, 'հատ', 0, 0, 0, 0, 0),
(139, 'Ի Ծածկի կանգնակ H=1.20մ', 60, 'հատ', 0, 0, 0, 0, 0),
(140, 'Ի Ծածկի կանգնակի կապ L=1.30մ', 400, 'հատ', 0, 0, 0, 0, 0),
(141, 'Ի Ծածկի կանգնակի կապ L=0.90մ', 100, 'հատ', 0, 0, 0, 0, 0),
(142, 'Ի Քառոտանի երկկողմանի H=0.5մ', 100, 'հատ', 0, 0, 0, 0, 0),
(143, 'Ի Քառոտանի միակողմանի H=0.5մ', 100, 'հատ', 0, 0, 0, 0, 0),
(144, 'Ծ Տելեսկոպիկ բաշմակ', 300, 'հատ', 0, 0, 0, 0, 0),
(145, 'Ծ Կանգնակների կցորդիչ Ф40x3', 280, 'հատ', 0, 0, 0, 0, 0),
(146, 'Թ Վահան մետաղ. կարկասով 130x300հ', 36, 'հատ', 0, 0, 0, 0, 28),
(147, 'Թ Վահան մետաղ. կարկասով 60x300հ', 4, 'հատ', 0, 0, 0, 0, 4),
(148, 'Թ Վահան մետաղ. կարկասով 40x300հ', 4, 'հատ', 0, 0, 0, 0, 4),
(149, 'Թ Վահան մետաղ. կարկասով 30x300հ', 4, 'հատ', 0, 0, 0, 0, 4),
(150, 'Թ Վահան մետաղ. կարկասով 25x300հ', 4, 'հատ', 0, 0, 0, 0, 4),
(151, 'Թ Վահան մետաղ. կարկասով 20x300հ', 4, 'հատ', 0, 0, 0, 0, 4),
(152, 'Թ Արտ. Անկյուն մետաղ. կարկ. 30x300հ', 2, 'հատ', 0, 0, 0, 0, 2),
(153, 'Թ Ներք. անկյուն մետ կարկ. 30x300հ', 2, 'հատ', 0, 0, 0, 0, 2),
(154, 'Խ Նրխատախտակ օգտ-ծ 1.8*1.22*2.44', 1096, 'հատ', 0, 0, 0, 0, 1079),
(155, 'Կ Պոլիէթիլ. խողովակ Ф 25', 95, 'գմ', 5, 0, 0, 0, 0),
(156, 'Է Ներքին անկյուն/նոր', 1, 'հատ', 0, 0, 0, 0, 1),
(157, 'Ա Հենակ 220/400 հին կարմիր', 11, 'հատ', 0, 0, 0, 0, 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `giveback`
--
ALTER TABLE `giveback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT для таблицы `giveback`
--
ALTER TABLE `giveback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;
--
-- AUTO_INCREMENT для таблицы `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
