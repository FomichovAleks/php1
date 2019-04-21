-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 21 2019 г., 19:30
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `alex`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `fio`, `email`, `text`, `date`) VALUES
(10, 'Александр', 'web@mail.ru', 'тестовая гостевая книга', '2019-04-21 13:51:01');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `price`, `src`, `small_src`, `is_active`) VALUES
(17, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/1.jpg', 'uploads/mini/1.jpg', 1),
(18, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/2.JPG', 'uploads/mini/2.JPG', 1),
(19, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/3.jpg', 'uploads/mini/3.jpg', 1),
(20, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/4.jpg', 'uploads/mini/4.jpg', 1),
(21, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/5.jpg', 'uploads/mini/5.jpg', 1),
(22, 'Стол деревянный TVE-6796', 'Стол – это предмет мебели, который имеется практически в каждом доме, и несёт определённые функции. Их используют как поверхность для приготовления еды и обедов, а также для работы или просто элегантного дополнения интерьера. Кроме того, они отличаются материалами, из которых произведены и типом конструкции.', 5000, 'uploads/6.jpg', 'uploads/mini/6.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `src` (`src`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `src`, `small_src`, `size`, `count`) VALUES
(35, '1.jpg', 'uploads/1.jpg', 'uploads/mini/1.jpg', 48116, 0),
(36, '2.JPG', 'uploads/2.JPG', 'uploads/mini/2.JPG', 43833, 0),
(37, '3.jpg', 'uploads/3.jpg', 'uploads/mini/3.jpg', 67692, 0),
(38, '4.jpg', 'uploads/4.jpg', 'uploads/mini/4.jpg', 92300, 0),
(39, '5.jpg', 'uploads/5.jpg', 'uploads/mini/5.jpg', 98824, 0),
(40, '6.jpg', 'uploads/6.jpg', 'uploads/mini/6.jpg', 32601, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
