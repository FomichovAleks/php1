-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 20 2019 г., 18:44
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
  `id` int(11) NOT NULL,
  `fio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `fio`, `email`, `text`, `date`) VALUES
(0, 'Александр', 'web@mail.ru', 'Спасибо разобрался', '2019-04-20 16:29:55');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `price`, `src`, `small_src`, `is_active`) VALUES
(2, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/2.JPG', 'uploads/mini/2.JPG', 1),
(3, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/3.jpg', 'uploads/mini/3.jpg', 1),
(4, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/4.jpg', 'uploads/mini/4.jpg', 1),
(5, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/5.jpg', 'uploads/mini/5.jpg', 1),
(6, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/6.jpg', 'uploads/mini/6.jpg', 1),
(8, 'Стол деревянный TVE-6796', 'Доставка\r\n\r\n1.Самовывоз бесплатно из магазинов\r\n2.Доставка по Москве и области 1500р.\r\n3.Доставка по всей России транспортной компанией ПЭК.       4.Транспортировка до ПЭК 1000р.\r\n\r\nОплата\r\nНаличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС).\r\nГарантия\r\nГарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/8.jpg', 'uploads/mini/8.jpg', 1),
(10, 'Стол деревянный TVE-6796', 'Доставка 1.Самовывоз бесплатно из магазинов 2.Доставка по Москве и области 1500р. 3.Доставка по всей России транспортной компанией ПЭК. 4.Транспортировка до ПЭК 1000р. Оплата Наличные. Карты: Visa, MasterCard, МИР. Юридическим лицам - безналичная оплата по счёту (работаем без НДС). Гарантия Гарантийный срок 6 мес. Быстрый возврат и обмен.', 5000, 'uploads/1.jpg', 'uploads/mini/1.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `src`, `small_src`, `size`, `count`) VALUES
(0, '2.JPG', 'uploads/2.JPG', 'uploads/mini/2.JPG', 43833, 6),
(0, '4.jpg', 'uploads/4.jpg', 'uploads/mini/4.jpg', 92300, 6),
(0, '5.jpg', 'uploads/5.jpg', 'uploads/mini/5.jpg', 98824, 6),
(0, '6.jpg', 'uploads/6.jpg', 'uploads/mini/6.jpg', 32601, 6),
(0, '7.jpg', 'uploads/7.jpg', 'uploads/mini/7.jpg', 55257, 1),
(0, '8.jpg', 'uploads/8.jpg', 'uploads/mini/8.jpg', 56684, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
