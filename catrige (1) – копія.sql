-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 12 2025 г., 11:34
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `catrige`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catriges`
--

CREATE TABLE `catriges` (
  `id` int(11) NOT NULL,
  `barcode` varchar(20) DEFAULT NULL,
  `name_catrige` varchar(256) DEFAULT NULL,
  `mark` varchar(256) DEFAULT NULL,
  `user` varchar(256) DEFAULT NULL,
  `printer` varchar(256) DEFAULT NULL,
  `status_catrige` varchar(256) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `catriges`
--

INSERT INTO `catriges` (`id`, `barcode`, `name_catrige`, `mark`, `user`, `printer`, `status_catrige`, `date_time`) VALUES
(1, '17', ' CA21058', 'V-L-C728A', 'Лабораторія', 'MF4430', 'Новий', '2005-04-22 21:00:00'),
(2, '00000024', 'СФ20190620', 'V-L-C052X', 'Кононська РА', 'MF428', 'Списано', '2024-09-09 12:24:15'),
(3, '31', 'Patron', 'ML2015', 'Борисенко ІВ', 'ML-2015', 'Заправка', '2005-04-22 21:00:00'),
(4, '48', 'BASF', 'CRG737', 'Бухгалтерія', 'Сanon 226', 'Заправка', '2005-04-22 21:00:00'),
(5, '55', 'Colorway', '435', 'Мельнічук В', '', 'Заправка', '2005-04-22 21:00:00'),
(6, '00000062', 'H259XK003UKDPNTDOOIAP005', 'BASF 57', 'Торговий', '', 'Повернуто з заправки', '2025-05-05 12:50:02'),
(7, '79', 'NewTone', 'P1102', 'Мельнічук В', '', 'Заправка', '2005-04-22 21:00:00'),
(8, '86', 'HP original', '12A', 'Валієва ЛМ', '', 'Заправка', '2005-04-22 21:00:00'),
(9, '93', 'HP original', '12A', 'Валієва ЛМ', '', 'Заправка', '2005-04-22 21:00:00'),
(10, '00000116', '22016080056AB', '283', 'Бухгалтерія', '', 'На заправку', '2024-08-19 05:37:59'),
(11, '00000109', '22016080056AB', '283', 'Бухгалтерія', '', 'На заправку', '2024-08-19 05:38:05'),
(12, '00000130', ' СФ21024', '737', 'кадри', '', 'Повернуто з заправки', '2025-04-11 08:51:46'),
(13, '00000123', 'колорвей', '737', 'кадри', '', 'На заправку', '2024-08-19 05:38:17'),
(14, '00000147', '', '435', 'склад/мельничук', '', 'На заправку', '2024-08-19 05:38:23'),
(15, '00000154', 'колорвей', '728', 'Лабораторія', '', 'На заправку', '2024-08-19 05:38:28'),
(16, '48', 'BASF', 'CRG737', 'Бухгалтерія', 'Сanon 226', 'На заправку', '2025-04-22 21:00:00'),
(17, '17', ' CA21058', 'V-L-C728A', 'Лабораторія', '', 'На заправку', '2025-04-22 21:00:00'),
(18, '00000161', 'Canon 057', '', 'Торговий', '', 'Повернуто з заправки', '2025-04-03 13:34:02'),
(20, '', 'Brother 7032', '', 'Склад ', '', 'На заправку', '0000-00-00 00:00:00'),
(21, '', 'Canon 052', '', 'Пост №1', '', 'На заправку', '0000-00-00 00:00:00'),
(22, '00000505', '52', '', 'Техвідділ', '', 'Повернуто з заправки', '2025-04-11 08:52:41'),
(24, '00000154', 'колорвей', '728', 'Лабораторія', '', 'Заправка', '2024-08-19 05:38:45'),
(25, '00000116', '22016080056AB', '283', 'Бухгалтерія', '', 'Заправка', '2024-08-19 05:38:50'),
(26, '00000109', '22016080056AB', '283', 'Бухгалтерія', '', 'Заправка', '2024-08-19 05:38:55'),
(27, '48', 'BASF', 'CRG737', 'Бухгалтерія', 'Сanon 226', 'Заправка', '0000-00-00 00:00:00'),
(28, '17', ' CA21058', 'V-L-C728A', 'Лабораторія', '', 'Заправка', '0000-00-00 00:00:00'),
(29, '00000147', '', '435', 'склад/мельничук', '', 'Заправка', '2024-08-19 05:39:06'),
(30, '00000123', 'колорвей', '737', 'кадри', '', 'Заправка', '2024-08-19 05:39:26'),
(32, '00000185', '', '', 'Обіходенко', '', 'Повернуто з заправки', '2025-02-05 11:47:20'),
(33, '00000208', '', '', 'Лісничук', '', '', '2024-08-19 05:39:42'),
(34, '00000215', '', '283', 'Кадри', '', 'Відправлено на заправку', '2025-02-17 10:31:30'),
(35, '00000222', '', '703', 'Баліцька', '', 'Відправлено на заправку', '2025-06-10 11:53:33'),
(36, '00000499', 'NewTone', '737', 'Юридичний відділ', 'Canon mf210', 'Відправлено на заправку', '2025-06-10 11:52:56'),
(37, '00000239', 'newtone', '737', 'Кадри', 'Canon mf 220', 'Відправлено на заправку', '2024-10-29 14:26:37'),
(38, '00000246', '', '12A', 'Валієва ЛМ', '', 'Повернуто з заправки', '2025-05-28 08:08:59'),
(39, '00000451', '', '737', 'Бухгалтерія', '', '', '2024-08-19 05:40:10'),
(40, '00000444', 'BASF', '057H', 'Торговий', 'Canon mf 429', 'Повернуто з заправки', '2025-04-01 11:53:49'),
(41, '00000437', '', '', 'Обіходенко', '', '', '2024-08-19 05:40:19'),
(42, '00000420', '', '', 'Валієва ЛМ', '', 'Відправлено на заправку', '2024-12-18 14:22:55'),
(43, '00000413', '', '', 'Бухгалтерія', '', '', '2024-08-19 05:40:29'),
(44, '00000291', '52', '052Н', 'Техвідділ', '', 'Повернуто з заправки', '2025-04-11 08:38:55'),
(45, '00000406', 'ColorWay', '12A', 'Баліцька', '', 'Повернуто з заправки', '2025-01-16 13:26:05'),
(46, '00000390', '', '12A', 'Валієва ЛМ', '', '', '2024-08-19 05:40:45'),
(47, '00000383', '', 'Tube', 'XEROX 1025', '', '', '2024-08-19 05:40:50'),
(48, '00000345', '', 'BASF Tube', 'XEROX 1025', '', '', '2024-08-19 05:40:55'),
(49, '00000253', 'test', 'test', 'test', 'test', 'Відправлено на заправку', '2024-08-15 13:36:33'),
(50, '00000321', '', '12A', 'Відділ кадрів/Валієва', 'HP LaserJet p1005', 'Повернуто з заправки', '2024-11-14 09:48:33'),
(51, '00000314', 'HP', '12A', 'Єкспорт/Каневський', 'HP LaserJet p1005', 'Повернуто з заправки', '2025-05-21 13:48:31'),
(52, '00000277', 'HP', '12A', 'Єкспорт/Каневський', 'HP LaserJet p1005', 'Повернуто з заправки', '2025-05-28 08:08:05'),
(53, '00000338', 'HP', '83A', 'Відділ кадрів', 'Canon MF 220', 'Відправлено на заправку', '2025-04-11 08:51:06'),
(54, '00000307', NULL, '052', 'відділ експорту/Загреьельна С. Р.', 'Canon mf 428', 'Повернуто з заправки', '2025-04-01 11:55:28'),
(55, '00000352', 'NewTone', 'HL-2140/2150', 'Склад запчатин', 'Brother', 'Повернуто з заправки', '2024-10-02 13:47:58'),
(56, '00000376', 'NewTone', 'LCE45E 4200/4220', 'Склад плівки', 'Samsung scx-4200', NULL, '2024-08-26 07:22:55'),
(57, '00000369', 'NewTone', 'LJ P1102/M1132', 'Склад готової продукції', 'HP LaserJet p1002', 'Повернуто з заправки', '2024-09-09 12:22:05'),
(58, '00000475', NULL, 'CE278A', 'Лабораторія', 'Canon ', 'Відправлено на заправку', '2024-10-01 07:07:50'),
(59, '00000512', 'Color Way', 'CW-HO2612', 'Баліцька', NULL, 'Повернуто з заправки', '2025-05-05 12:48:39'),
(60, '00000581', '', 'CF226A', 'відділ експорту/Загреьельна С. Р.', 'MF428', 'Повернуто з заправки', '2025-06-05 13:36:21'),
(61, '00000529', 'xerox', 'NL-5928 RC', 'охорона Пост №2', 'xerox', 'Повернуто з заправки', '2024-11-12 08:16:02'),
(62, '00000574', 'newtone', 'CRG737', 'Юридичний відділ', 'Canon mf 210', 'Повернуто з заправки', '2024-11-14 09:52:17'),
(63, '00000567', 'BASF', 'CGR737', 'Юридичний відділ', 'Canon mf 210', 'Відправлено на заправку', '2024-12-09 14:08:03'),
(64, '00000529', '737', 'Canon', 'Єкспорт/Каневський', 'Canon 237', 'Повернуто з заправки', '2025-03-05 13:57:40'),
(65, '00000536', 'hp', '12a', 'Валієва', NULL, 'Повернуто з заправки', '2025-03-05 13:56:48'),
(66, '00000543', 'Basf', '052H', 'Технічний відділ', 'Canon mf421', 'Повернуто з заправки', '2025-03-26 13:11:07'),
(67, '00000598', NULL, 'P1022', 'Торговий/Максим', 'HP LaserJet P1022', 'Повернуто з заправки', '2025-04-03 13:33:18'),
(68, '00000604', 'Canon 052', '052', 'Тех відділ', 'Canon mf 421', 'Повернуто з заправки', '2025-05-21 13:47:19');

-- --------------------------------------------------------

--
-- Структура таблицы `history_catriges`
--

CREATE TABLE `history_catriges` (
  `id` int(11) NOT NULL,
  `id_catrige` int(11) DEFAULT NULL,
  `status_catrige` varchar(256) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `history_catriges`
--

INSERT INTO `history_catriges` (`id`, `id_catrige`, `status_catrige`, `date_time`) VALUES
(1, 49, 'Відправлено на заправку', '2024-08-15 13:32:54'),
(2, 49, 'Повернуто з заправки', '2024-08-15 13:33:01'),
(3, 49, 'Відправлено на заправку', '2024-08-15 13:33:17'),
(4, 49, 'Повернуто з заправки', '2024-08-15 13:36:20'),
(5, 49, 'Відправлено на заправку', '2024-08-15 13:36:24'),
(6, 49, 'Повернуто з заправки', '2024-08-15 13:36:29'),
(7, 49, 'Відправлено на заправку', '2024-08-15 13:36:33'),
(8, 51, 'Відправлено на заправку', '2024-08-20 07:05:37'),
(9, 52, 'Відправлено на заправку', '2024-08-20 08:22:14'),
(10, 52, 'Повернуто з заправки', '2024-08-20 08:22:20'),
(11, 53, 'Відправлено на заправку', '2024-08-20 08:24:34'),
(12, 53, 'Повернуто з заправки', '2024-08-20 08:24:40'),
(13, 12, 'Відправлено на заправку', '2024-08-20 08:25:54'),
(14, 12, 'Повернуто з заправки', '2024-08-20 08:26:02'),
(15, 40, 'Відправлено на заправку', '2024-08-20 08:26:39'),
(16, 40, 'Повернуто з заправки', '2024-08-20 08:26:46'),
(17, 53, 'Відправлено на заправку', '2024-08-20 08:56:14'),
(18, 2, 'Відправлено на заправку', '2024-08-21 08:36:02'),
(19, 54, 'Відправлено на заправку', '2024-08-21 11:20:53'),
(20, 37, 'Відправлено на заправку', '2024-08-22 07:47:26'),
(21, 55, 'Відправлено на заправку', '2024-08-23 11:44:00'),
(22, 54, 'Повернуто з заправки', '2024-08-27 13:12:07'),
(23, 6, 'Відправлено на заправку', '2024-09-04 09:22:37'),
(24, 57, 'Відправлено на заправку', '2024-09-04 12:10:51'),
(25, 37, 'Повернуто з заправки', '2024-09-04 13:41:35'),
(26, 51, 'Повернуто з заправки', '2024-09-04 13:42:17'),
(27, 53, 'Повернуто з заправки', '2024-09-04 13:42:45'),
(28, 55, 'Повернуто з заправки', '2024-09-04 13:43:30'),
(29, 55, 'Відправлено на заправку', '2024-09-05 05:58:29'),
(30, 45, 'Відправлено на заправку', '2024-09-05 06:19:56'),
(31, 36, 'Відправлено на заправку', '2024-09-05 08:59:08'),
(32, 45, 'Повернуто з заправки', '2024-09-09 12:20:54'),
(33, 36, 'Повернуто з заправки', '2024-09-09 12:21:14'),
(34, 55, 'Повернуто з заправки', '2024-09-09 12:21:42'),
(35, 57, 'Повернуто з заправки', '2024-09-09 12:22:05'),
(36, 6, 'Повернуто з заправки', '2024-09-09 12:23:16'),
(37, 2, 'Повернуто з заправки', '2024-09-09 12:24:00'),
(38, 2, 'Списано', '2024-09-09 12:24:15'),
(39, 55, 'Відправлено на заправку', '2024-09-20 08:00:51'),
(40, 40, 'Відправлено на заправку', '2024-09-24 06:29:13'),
(41, 58, 'Відправлено на заправку', '2024-10-01 07:07:50'),
(42, 40, 'Повернуто з заправки', '2024-10-02 13:46:47'),
(43, 55, 'Повернуто з заправки', '2024-10-02 13:47:58'),
(44, 22, 'Відправлено на заправку', '2024-10-03 06:09:19'),
(45, 6, 'Відправлено на заправку', '2024-10-14 14:24:29'),
(46, 44, 'Відправлено на заправку', '2024-10-17 11:23:51'),
(47, 22, 'Повернуто з заправки', '2024-10-17 12:24:14'),
(48, 6, 'Повернуто з заправки', '2024-10-17 12:26:07'),
(49, 59, 'Відправлено на заправку', '2024-10-17 13:08:20'),
(50, 34, 'Відправлено на заправку', '2024-10-18 06:43:31'),
(51, 53, 'Відправлено на заправку', '2024-10-18 06:43:58'),
(52, 60, 'Відправлено на заправку', '2024-10-29 08:20:31'),
(53, 54, 'Відправлено на заправку', '2024-10-29 09:17:49'),
(54, 59, 'Повернуто з заправки', '2024-10-29 14:02:58'),
(55, 44, 'Повернуто з заправки', '2024-10-29 14:03:42'),
(56, 34, 'Повернуто з заправки', '2024-10-29 14:04:21'),
(57, 53, 'Повернуто з заправки', '2024-10-29 14:05:00'),
(58, 37, 'Відправлено на заправку', '2024-10-29 14:26:37'),
(59, 60, 'Повернуто з заправки', '2024-11-05 09:25:48'),
(60, 54, 'Повернуто з заправки', '2024-11-05 09:26:14'),
(61, 22, 'Відправлено на заправку', '2024-11-05 09:38:04'),
(62, 40, 'Відправлено на заправку', '2024-11-06 07:45:24'),
(63, 61, 'Відправлено на заправку', '2024-11-06 09:09:02'),
(64, 50, 'Відправлено на заправку', '2024-11-11 09:41:43'),
(65, 62, 'Відправлено на заправку', '2024-11-11 15:16:36'),
(66, 40, 'Повернуто з заправки', '2024-11-12 08:15:41'),
(67, 61, 'Повернуто з заправки', '2024-11-12 08:16:02'),
(68, 50, 'Повернуто з заправки', '2024-11-14 09:48:33'),
(69, 22, 'Повернуто з заправки', '2024-11-14 09:51:08'),
(70, 62, 'Повернуто з заправки', '2024-11-14 09:52:17'),
(71, 22, 'Відправлено на заправку', '2024-11-14 10:16:18'),
(72, 6, 'Відправлено на заправку', '2024-11-28 07:52:25'),
(73, 6, 'Повернуто з заправки', '2024-12-04 15:03:22'),
(74, 36, 'Відправлено на заправку', '2024-12-09 08:51:22'),
(75, 63, 'Відправлено на заправку', '2024-12-09 14:08:03'),
(76, 36, 'Повернуто з заправки', '2024-12-12 08:07:39'),
(77, 42, 'Відправлено на заправку', '2024-12-18 14:22:55'),
(78, 44, 'Відправлено на заправку', '2025-01-08 15:10:30'),
(79, 36, 'Відправлено на заправку', '2025-01-13 08:38:16'),
(80, 22, 'Повернуто з заправки', '2025-01-13 09:05:04'),
(81, 45, 'Відправлено на заправку', '2025-01-13 12:40:34'),
(82, 34, 'Відправлено на заправку', '2025-01-15 13:10:34'),
(83, 53, 'Відправлено на заправку', '2025-01-15 13:11:05'),
(84, 36, 'Повернуто з заправки', '2025-01-16 13:24:23'),
(85, 45, 'Повернуто з заправки', '2025-01-16 13:26:05'),
(86, 44, 'Повернуто з заправки', '2025-01-16 13:26:57'),
(87, 53, 'Повернуто з заправки', '2025-01-23 09:17:57'),
(88, 34, 'Повернуто з заправки', '2025-01-23 09:18:15'),
(89, 60, 'Відправлено на заправку', '2025-01-28 08:08:26'),
(90, 40, 'Відправлено на заправку', '2025-01-28 09:06:46'),
(91, 32, 'Відправлено на заправку', '2025-01-28 15:07:40'),
(92, 60, 'Повернуто з заправки', '2025-02-05 11:45:44'),
(93, 32, 'Повернуто з заправки', '2025-02-05 11:47:20'),
(94, 40, 'Повернуто з заправки', '2025-02-05 11:47:36'),
(95, 34, 'Відправлено на заправку', '2025-02-17 06:37:12'),
(96, 34, 'Повернуто з заправки', '2025-02-17 06:37:31'),
(97, 60, 'Відправлено на заправку', '2025-02-17 06:37:59'),
(98, 60, 'Повернуто з заправки', '2025-02-17 06:38:07'),
(99, 40, 'Відправлено на заправку', '2025-02-17 06:38:26'),
(100, 40, 'Повернуто з заправки', '2025-02-17 06:38:32'),
(101, 18, 'Відправлено на заправку', '2025-02-17 06:39:33'),
(102, 18, 'Повернуто з заправки', '2025-02-17 06:39:43'),
(103, 23, 'Списано', '2025-02-17 06:40:06'),
(104, 18, 'Відправлено на заправку', '2025-02-17 10:30:16'),
(105, 34, 'Відправлено на заправку', '2025-02-17 10:31:30'),
(106, 40, 'Відправлено на заправку', '2025-02-17 10:33:00'),
(107, 40, 'Повернуто з заправки', '2025-02-20 13:45:35'),
(108, 18, 'Повернуто з заправки', '2025-02-25 12:12:57'),
(109, 64, 'Відправлено на заправку', '2025-02-26 08:53:50'),
(110, 65, 'Відправлено на заправку', '2025-02-26 08:57:25'),
(111, 22, 'Відправлено на заправку', '2025-03-05 09:21:55'),
(112, 65, 'Повернуто з заправки', '2025-03-05 13:56:48'),
(113, 64, 'Повернуто з заправки', '2025-03-05 13:57:40'),
(114, 18, 'Відправлено на заправку', '2025-03-12 13:16:18'),
(115, 6, 'Відправлено на заправку', '2025-03-21 13:07:27'),
(116, 6, 'Повернуто з заправки', '2025-03-21 13:07:40'),
(117, 54, 'Відправлено на заправку', '2025-03-26 13:05:28'),
(118, 22, 'Повернуто з заправки', '2025-03-26 13:06:10'),
(119, 22, 'Відправлено на заправку', '2025-03-26 13:06:27'),
(120, 67, 'Відправлено на заправку', '2025-03-27 10:23:07'),
(121, 18, 'Повернуто з заправки', '2025-03-27 12:55:03'),
(122, 18, 'Відправлено на заправку', '2025-03-27 12:55:12'),
(123, 40, 'Відправлено на заправку', '2025-04-01 11:53:46'),
(124, 40, 'Повернуто з заправки', '2025-04-01 11:53:49'),
(125, 22, 'Повернуто з заправки', '2025-04-01 11:54:51'),
(126, 54, 'Повернуто з заправки', '2025-04-01 11:55:28'),
(127, 67, 'Повернуто з заправки', '2025-04-03 13:33:18'),
(128, 18, 'Повернуто з заправки', '2025-04-03 13:34:02'),
(129, 22, 'Відправлено на заправку', '2025-04-08 08:45:33'),
(130, 44, 'Відправлено на заправку', '2025-04-08 08:46:03'),
(131, 44, 'Повернуто з заправки', '2025-04-11 08:38:55'),
(132, 53, 'Відправлено на заправку', '2025-04-11 08:51:06'),
(133, 12, 'Відправлено на заправку', '2025-04-11 08:51:40'),
(134, 12, 'Повернуто з заправки', '2025-04-11 08:51:46'),
(135, 22, 'Повернуто з заправки', '2025-04-11 08:52:41'),
(136, 6, 'Відправлено на заправку', '2025-04-28 09:39:05'),
(137, 59, 'Відправлено на заправку', '2025-04-28 09:40:35'),
(138, 68, 'Відправлено на заправку', '2025-04-28 09:43:43'),
(139, 59, 'Повернуто з заправки', '2025-05-05 12:48:39'),
(140, 68, 'Повернуто з заправки', '2025-05-05 12:49:20'),
(141, 6, 'Повернуто з заправки', '2025-05-05 12:50:02'),
(142, 68, 'Відправлено на заправку', '2025-05-05 14:06:21'),
(143, 51, 'Відправлено на заправку', '2025-05-05 14:06:49'),
(144, 68, 'Повернуто з заправки', '2025-05-21 13:47:19'),
(145, 51, 'Повернуто з заправки', '2025-05-21 13:48:31'),
(146, 60, 'Відправлено на заправку', '2025-05-27 07:21:19'),
(147, 52, 'Відправлено на заправку', '2025-05-28 08:07:58'),
(148, 52, 'Повернуто з заправки', '2025-05-28 08:08:05'),
(149, 38, 'Відправлено на заправку', '2025-05-28 08:08:54'),
(150, 38, 'Повернуто з заправки', '2025-05-28 08:08:59'),
(151, 60, 'Повернуто з заправки', '2025-06-02 08:44:54'),
(152, 60, 'Відправлено на заправку', '2025-06-05 13:36:14'),
(153, 60, 'Повернуто з заправки', '2025-06-05 13:36:21'),
(154, 36, 'Відправлено на заправку', '2025-06-10 11:52:56'),
(155, 35, 'Відправлено на заправку', '2025-06-10 11:53:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `first_name`, `last_name`, `status`) VALUES
(1, 'admin', '1', 'Юрій', 'Кузнецов', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catriges`
--
ALTER TABLE `catriges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `history_catriges`
--
ALTER TABLE `history_catriges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catriges`
--
ALTER TABLE `catriges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `history_catriges`
--
ALTER TABLE `history_catriges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
