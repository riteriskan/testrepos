-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 11 2022 г., 20:04
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `inform`
--

CREATE TABLE `inform` (
  `id` int NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `inform`
--

INSERT INTO `inform` (`id`, `login`, `password`, `name`, `surname`) VALUES
(1, 'kanken', 'qwerty', 'rodion', 'khodunov'),
(2, 'riterisan', 'qertys', 'Ann', 'Frayser'),
(3, 'amogus', 'bebrus', 'Анатолий', 'Амогусович'),
(4, 'werkos', '12qwaszx', 'Александр', 'Кулёков'),
(5, 'werkos', '1213йцуфывячс', 'Александр', 'Кулёков'),
(6, 'chinchopa', 'chinchopajero', 'Володя', 'Жариков'),
(7, 'chinchopajero', 'wasdddd', 'Генадий', 'Жариков'),
(8, 'greeeeeeeeen', 'grooob345', 'Генадий', 'Халаев'),
(9, 'gurman', 'kanekionelove', 'Цукияма', 'Шуу');

-- --------------------------------------------------------

--
-- Структура таблицы `work`
--

CREATE TABLE `work` (
  `uid` int NOT NULL,
  `PoW` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `work`
--

INSERT INTO `work` (`uid`, `PoW`, `post`) VALUES
(1, 'ЮЗГУ', 'Студент'),
(2, 'Дом', 'Писатель'),
(3, 'Космический корабль', 'Предатель'),
(4, 'ВТБ', 'Заместитель директора'),
(5, 'Пятёрочка', 'Продавец-кассир'),
(6, 'ggggggg', 'gffff'),
(7, 'Пуууур', 'sdfsdfsdf'),
(8, 'руууууук', 'sdfsdfsdf'),
(9, 'YouTube', 'Блогер');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `inform`
--
ALTER TABLE `inform`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `inform`
--
ALTER TABLE `inform`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `work`
--
ALTER TABLE `work`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `inform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
