-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 04:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(2, 'iron man', 'ironman@gmail.com', '', 'hey, i would like to talk more about your art.'),
(3, 'fdgdfg', 'a@gmail.com', '', '....................'),
(4, 'gg', 'spiderman@gmail.com', '', 'hguyftcfygvu');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(60) NOT NULL,
  `image` varchar(500) NOT NULL,
  `views` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `userid`, `image`, `views`, `date`, `url_address`, `title`) VALUES
(16, 1, 'uploads/pexels-tomas-williams-1826076.jpg', 1, '2022-04-24 15:29:19', 'UNT9pJ7dRhIcyni2MjLwgKN60ZN0ohszFH3Xyi5t2F', 'picture'),
(17, 1, 'uploads/pexels-pixabay-315952.jpg', 4, '2022-04-24 15:30:11', 'EISAwW1Giv6ZvYKLKUtCI3CMAXGETIFqsiPUocJMqm50VT', 'vintage car'),
(18, 1, 'uploads/pexels-sergio-souza-2050604.jpg', 1, '2022-04-24 15:30:37', 'G3PL01X1bb0gDhfS1T08', 'vintage car'),
(19, 1, 'uploads/pexels-brett-sayles-1213922.jpg', 0, '2022-04-24 15:31:07', 'tebpYzQroqF7Iq7AL2aIcqZBsggruuPm81XwvFJPzk7FtY', 'radio'),
(20, 1, 'uploads/pexels-andrea-piacquadio-3822728.jpg', 5, '2022-04-24 15:31:27', 'd0UBH', 'radio'),
(21, 1, 'uploads/pexels-david-bartus-610293.jpg', 4, '2022-04-24 15:31:48', 'vSb6lTRXGLxoSGmJue0gJJadOjYk7d3P6bK5qo0KGeSXDlsIDVhv', 'girl'),
(22, 1, 'uploads/pexels-anna-urlapova-2957061.jpg', 1, '2022-04-24 15:32:16', 'mJEFK44ptnD18Z5JSZbUVy3mBICvmO1QvyVQjTnko8L', 'charry'),
(23, 1, 'uploads/pexels-janko-ferlic-590481.jpg', 3, '2022-04-24 19:25:58', 'sWcjUBDacFrtctSNkHYyCOwq4cqJIGsSD0ykMF6', 'car'),
(24, 1, 'uploads/hero.jpg', 1, '2022-04-25 05:54:09', 'RlasHlpeIL7dN8huT7mcR154Kp', 'flower'),
(25, 1, 'uploads/5.jpg', 1, '2022-04-25 06:17:37', 'Oc8gj3o2', 'rgg'),
(26, 1, 'uploads/img-08.jpg', 2, '2022-04-25 08:12:49', 'su9vzn4NMX8TDvwjm4X5VJC8yQRDAVslUiCWjR3dxD', 'city');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `url_address`, `email`, `password`, `date`, `image`) VALUES
(3, 'S2FXMY1yLSVJRetX4Y7PLhJa', 'km@gmail.com', '123', '2022-02-08 15:11:46', ''),
(4, 'VH8Iy8ewZGuImIsS9MjhvI97kE0hXeuTwCkGk2iEW', 'ironman@gmail.com', '123456', '2022-04-24 15:24:26', ''),
(5, 'exGSkbay8YSMiK7DbVi7zU0Vw', 'fahim@gmail.com', '123456', '2022-04-24 19:22:21', ''),
(6, 'TKVKCo8ayHFqbXJURKgkUuBGCoMlQQ', 'Fahim@gmail.com', '1234', '2022-04-24 19:22:49', ''),
(7, '04s87uz2bbWFVogTlGa7HFPy6DYCzBSR', 'a@gmail.com', '123', '2022-04-25 06:14:27', ''),
(8, 'W4eYPv0PC5WYqoP0T7K1mkSS5pVuHpWcD8ACWY1ojn2kMIDKBl', 'd@gmail.com', '123', '2022-04-25 08:12:06', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `date` (`date`),
  ADD KEY `views` (`views`),
  ADD KEY `views_2` (`views`),
  ADD KEY `userid_2` (`userid`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `email` (`email`),
  ADD KEY `url_address_2` (`url_address`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
