
-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2017 г., 19:17
-- Версия сервера: 5.5.50
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `lyapin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `big`
--

CREATE TABLE IF NOT EXISTS `big` (
  `id` int(6) unsigned NOT NULL,
  `typ` varchar(5) NOT NULL,
  `thum_des` varchar(200) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `myfile_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `click` smallint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `small`
--

CREATE TABLE IF NOT EXISTS `small` (
  `id` int(6) unsigned NOT NULL,
  `typ` varchar(5) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `myfile_name` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `big`
--
ALTER TABLE `big`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `small`
--
ALTER TABLE `small`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `big`
--
ALTER TABLE `big`
  MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `small`
--
ALTER TABLE `small`
  MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT;