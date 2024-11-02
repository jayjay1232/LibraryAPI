-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 01:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(9) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `name`) VALUES
(2, 'Author B'),
(3, 'Author C'),
(4, 'Author D'),
(5, 'Author E'),
(6, 'Author F'),
(7, 'Author G'),
(8, 'Author H'),
(9, 'Author I'),
(10, 'Author J'),
(11, 'Author K'),
(12, 'Author L'),
(13, 'Author M'),
(14, 'Author N'),
(15, 'Author O'),
(16, 'Author P'),
(17, 'Author Q'),
(18, 'Author R'),
(19, 'Author S'),
(20, 'Author T'),
(21, 'Author U'),
(22, 'Author V'),
(23, 'Author W'),
(24, 'Author X'),
(25, 'Author Y'),
(26, 'Author Z'),
(27, 'Author AA'),
(28, 'Author BB'),
(29, 'Author CC'),
(30, 'Author DD'),
(31, 'Author EE'),
(32, 'Author FF'),
(33, 'Author GG'),
(34, 'Author HH'),
(35, 'Author II'),
(36, 'Author JJ'),
(37, 'Author KK'),
(38, 'Author LL'),
(39, 'Author MM'),
(40, 'Author NN'),
(41, 'Author OO'),
(42, 'Author PP'),
(43, 'Author QQ'),
(44, 'Author RR'),
(45, 'Author SS'),
(46, 'Author TT'),
(47, 'Author UU'),
(48, 'Author VV'),
(49, 'Author WW'),
(50, 'Author XX'),
(51, 'Author YY'),
(52, 'Author ZZ'),
(53, 'Author AAA'),
(54, 'Author BBB'),
(55, 'Author CCC'),
(56, 'Author DDD'),
(57, 'Author EEE'),
(58, 'Author FFF'),
(59, 'Author GGG'),
(60, 'Author HHH'),
(61, 'Author III'),
(62, 'Author JJJ'),
(63, 'Author KKK'),
(64, 'Author LLL'),
(65, 'Author MMM'),
(66, 'Author NNN'),
(67, 'Author OOO'),
(68, 'Author PPP'),
(69, 'Author QQQ'),
(70, 'Author RRR'),
(71, 'Author SSS'),
(72, 'Author TTT'),
(73, 'Author UUU'),
(74, 'Author VVV'),
(75, 'Author WWW'),
(76, 'Author XXX'),
(77, 'Author YYY'),
(78, 'Author ZZZ'),
(79, 'Author AAAA'),
(80, 'Author BBBB'),
(81, 'Author CCCC'),
(82, 'Author DDDD'),
(83, 'Author EEEE'),
(84, 'Author FFFF'),
(85, 'Author GGGG'),
(86, 'Author HHHH'),
(87, 'Author IIII'),
(88, 'Author JJJJ'),
(89, 'Author KKKK'),
(90, 'Author LLLL'),
(91, 'Author MMMM'),
(92, 'Author NNNN'),
(93, 'Author OOOO'),
(94, 'Author PPPP'),
(95, 'Author QQQQ'),
(96, 'Author RRRR'),
(97, 'Author SSSS'),
(98, 'Author TTTT'),
(99, 'Author UUUU'),
(101, 'J.K. Rowling');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(9) NOT NULL,
  `title` char(255) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `authorid`) VALUES
(2, 'Invictus', 2),
(3, 'Alphabet', 3),
(4, 'English Literature', 4),
(5, 'Mathulog', 65),
(6, 'Science', 6),
(7, 'ESP', 7),
(8, 'HEKASI', 8),
(9, 'BOOOM', 9),
(10, 'Paness', 10),
(11, 'dabest', 11),
(12, 'Machine Learning', 12),
(13, 'TerraTurtle', 13),
(14, 'Forecasting', 14),
(15, 'Book Title 15', 15),
(16, 'Book Title 16', 16),
(17, 'uNKNOWWEWE', 17),
(18, 'Book Title 18', 18),
(19, 'Harry Potter', 19),
(20, 'marvel', 20),
(21, 'COMICS', 21),
(22, 'Batman', 22),
(23, 'SUPERMAN', 23),
(24, 'Math Literature', 24),
(25, 'uNKNOWN', 25),
(26, 'mACHINERY', 26),
(27, 'Book Title 27', 27),
(28, 'Book Title 28', 28),
(29, 'Book Title 29', 29),
(30, 'Book Title 30', 30),
(31, 'Book Title 31', 31),
(32, 'Book Title 32', 32),
(33, 'Book Title 33', 33),
(34, 'Book Title 34', 34),
(35, 'Book Title 35', 35),
(36, 'Book Title 36', 36),
(37, 'Book Title 37', 37),
(38, 'Book Title 38', 38),
(39, 'Book Title 39', 39),
(40, 'Book Title 40', 40),
(41, 'Book Title 41', 41),
(42, 'Book Title 42', 42),
(43, 'Book Title 43', 43),
(44, 'Book Title 44', 44),
(45, 'Book Title 45', 45),
(46, 'Book Title 46', 46),
(47, 'Book Title 47', 47),
(48, 'Book Title 48', 48),
(49, 'Book Title 49', 49),
(50, 'Book Title 50', 50),
(51, 'Book Title 51', 51),
(52, 'Book Title 52', 52),
(53, 'Book Title 53', 53),
(54, 'Book Title 54', 54),
(55, 'Book Title 55', 55),
(56, 'Book Title 56', 56),
(57, 'Book Title 57', 57),
(58, 'Book Title 58', 58),
(59, 'Book Title 59', 59),
(60, 'Book Title 60', 60),
(61, 'Book Title 61', 61),
(62, 'Book Title 62', 62),
(63, 'Book Title 63', 63),
(64, 'Book Title 64', 64),
(65, 'Book Title 65', 65),
(66, 'Book Title 66', 66),
(67, 'Book Title 67', 67),
(68, 'Book Title 68', 68),
(69, 'Book Title 69', 69),
(70, 'Book Title 70', 70),
(71, 'Book Title 71', 71),
(72, 'Book Title 72', 72),
(73, 'Book Title 73', 73),
(74, 'Book Title 74', 74),
(75, 'Book Title 75', 75),
(76, 'Book Title 76', 76),
(77, 'Book Title 77', 77),
(78, 'Book Title 78', 78),
(79, 'Book Title 79', 79),
(80, 'Book Title 80', 80),
(81, 'Book Title 81', 81),
(82, 'Book Title 82', 82),
(83, 'Book Title 83', 83),
(84, 'Book Title 84', 84),
(85, 'Book Title 85', 85),
(86, 'Book Title 86', 86),
(87, 'Book Title 87', 87),
(88, 'Book Title 88', 88),
(89, 'Book Title 89', 89),
(90, 'Book Title 90', 90),
(91, 'Book Title 91', 91),
(92, 'Book Title 92', 92),
(93, 'Book Title 93', 93),
(94, 'Book Title 94', 94),
(95, 'Book Title 95', 95),
(96, 'Book Title 96', 96),
(97, 'Book Title 97', 97),
(98, 'Book Title 98', 98),
(99, 'Book Title 99', 99),
(140, 'The Great Gatsby', 5),
(141, 'The Great Gatsby', 83),
(144, 'book101', 99),
(145, 'thisisabook', 77),
(146, 'thisisabook', 77),
(147, 'thisisabook', 77),
(148, 'thebook', 5);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `collectionid` int(9) NOT NULL,
  `bookid` int(9) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`collectionid`, `bookid`, `authorid`) VALUES
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(46, 46, 46),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50),
(51, 51, 51),
(52, 52, 52),
(53, 53, 53),
(54, 54, 54),
(55, 55, 55),
(56, 56, 56),
(57, 57, 57),
(58, 58, 58),
(59, 59, 59),
(60, 60, 60),
(61, 61, 61),
(62, 62, 62),
(63, 63, 63),
(64, 64, 64),
(65, 65, 65),
(66, 66, 66),
(67, 67, 67),
(68, 68, 68),
(69, 69, 69),
(70, 70, 70),
(71, 71, 71),
(72, 72, 72),
(73, 73, 73),
(74, 74, 74),
(75, 75, 75),
(76, 76, 76),
(77, 77, 77),
(78, 78, 78),
(79, 79, 79),
(80, 80, 80),
(81, 81, 81),
(82, 82, 82),
(83, 83, 83),
(84, 84, 84),
(85, 85, 85),
(86, 86, 86),
(87, 87, 87),
(88, 88, 88),
(89, 89, 89),
(90, 90, 90),
(91, 91, 91),
(92, 92, 92),
(93, 93, 93),
(94, 94, 94),
(95, 95, 95),
(96, 96, 96),
(97, 97, 97),
(98, 98, 98),
(99, 99, 99);

-- --------------------------------------------------------

--
-- Table structure for table `jwt_tokens`
--

CREATE TABLE `jwt_tokens` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `iat` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `type` enum('access','refresh') NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jwt_tokens`
--

INSERT INTO `jwt_tokens` (`id`, `token`, `iat`, `exp`, `type`, `used`, `created_at`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjc2NjY2NjYsImV4cCI6MTczMDI1ODY2NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.9o830kVZ8iSxAYCgxDu_G7D_K5IXaBlKjBEvRR90mi8', 1727666666, 1730258666, 'refresh', 0, '2024-10-10 01:39:30'),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjc2NjY5MjgsImV4cCI6MTczMDI1ODkyOCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.HEtc997LPRW44UV4rt9bNdxo4JbTlJ6Z-h2LzrbtK_k', 1727666928, 1730258928, 'refresh', 0, '2024-10-10 01:39:30'),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjc2NjY5MjksImV4cCI6MTczMDI1ODkyOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.5EkL-JXb2gFgf-4yjFbdeiY8ZBrTzV_VBoCpYs_B0a0', 1727666929, 1730258929, 'refresh', 0, '2024-10-10 01:39:30'),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjc2NjY5MjksImV4cCI6MTczMDI1ODkyOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.5EkL-JXb2gFgf-4yjFbdeiY8ZBrTzV_VBoCpYs_B0a0', 1727666929, 1730258929, 'refresh', 0, '2024-10-10 01:39:30'),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjc2NjY5MzIsImV4cCI6MTcyNzY3MDUzMiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.SgCgpYwP3exjMNogO3szQ4a5ALfEsMirNKmFbKlcYI4', 1727666932, 1727670532, 'access', 0, '2024-10-10 01:39:30'),
(26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE1MjUsImV4cCI6MTczMDg1MzUyNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.BrcEFX7zXwm8n0j8_jkPbi7PPmMxAol2O_YmgRw-sHA', 1728261525, 1730853525, 'refresh', 0, '2024-10-10 01:39:30'),
(27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE1NDAsImV4cCI6MTcyODI2NTE0MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.AuCq-rhwwgc0KAbdTlokOjdNurM752AQ8tS-1R49BXA', 1728261540, 1728265140, 'access', 0, '2024-10-10 01:39:30'),
(28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE4MTcsImV4cCI6MTcyODI2NTQxNywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.u4cF4BC2y9pjSib8uBswxf2ZgXTuO1Uneo2Ni68Wr_4', 1728261817, 1728265417, 'access', 1, '2024-10-10 01:39:30'),
(29, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE4NTksImV4cCI6MTcyODI2NTQ1OSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.tW_sTe3aogJhc4jY23IytPPZyqPb01470cWZjCjje8U', 1728261859, 1728265459, 'access', 1, '2024-10-10 01:39:30'),
(30, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE5NDAsImV4cCI6MTcyODI2NTU0MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.CGnMuHjcCL4ztnyNVsRlpd-ez7F0pA-CEhUq8wfvvpU', 1728261940, 1728265540, 'access', 1, '2024-10-10 01:39:30'),
(31, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE5NjcsImV4cCI6MTcyODI2NTU2NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.o11gYMMd197-fIAedSJtoGEqFmK5RGAcwVksASUaIC0', 1728261967, 1728265567, 'access', 1, '2024-10-10 01:39:30'),
(32, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjE5NjcsImV4cCI6MTcyODI2NTU2NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.o11gYMMd197-fIAedSJtoGEqFmK5RGAcwVksASUaIC0', 1728261967, 1728265567, 'access', 1, '2024-10-10 01:39:30'),
(33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI0MzMsImV4cCI6MTcyODI2NjAzMywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.c-3hiT3tLNJPa-ah-IQCEuIXRZQNF-_3JibEq-e8bGQ', 1728262433, 1728266033, 'access', 1, '2024-10-10 01:39:30'),
(34, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI0NjQsImV4cCI6MTcyODI2NjA2NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.bD1HwcsT3XnKizrRBBMUpCKjWda1bMVCecrmPE1B-Eo', 1728262464, 1728266064, 'access', 1, '2024-10-10 01:39:30'),
(35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI1MzYsImV4cCI6MTcyODI2NjEzNiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.80GLkJKbkU8piUsmUMIlVtSS4pc8dMooVdrPPyW0ASs', 1728262536, 1728266136, 'access', 1, '2024-10-10 01:39:30'),
(36, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI1NzMsImV4cCI6MTcyODI2NjE3MywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.iq6XuMmyIMRvkAqk4lkog_L4SC7X79G5NN5czOcV_Ao', 1728262573, 1728266173, 'access', 1, '2024-10-10 01:39:30'),
(37, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI2MDUsImV4cCI6MTcyODI2NjIwNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.vgMAI8aWx0QOn_YYTtwkFWq36_StR7DSMhshSkp8LPo', 1728262605, 1728266205, 'access', 1, '2024-10-10 01:39:30'),
(38, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI3MTYsImV4cCI6MTcyODI2NjMxNiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.ie96UB7UMBewzmz9pJAQHSCfTSXVRwlWqIBO1enFKrQ', 1728262716, 1728266316, 'access', 1, '2024-10-10 01:39:30'),
(39, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI3NDYsImV4cCI6MTcyODI2NjM0NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19._CeHAyC1QIfvwV1BP9CHxWwqfuFyTwvyebMu20sVDBo', 1728262746, 1728266346, 'access', 1, '2024-10-10 01:39:30'),
(40, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4MzgsImV4cCI6MTcyODI2NjQzOCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.CMXHOaFSwtBsnnCmXMksQjV-i8u_EyzeEslm0Z322qE', 1728262838, 1728266438, 'access', 0, '2024-10-10 01:39:30'),
(41, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4MzksImV4cCI6MTcyODI2NjQzOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.lR6h21iD3st1XKT14OD86TocAefd0ndcw8MO9f0Gb-k', 1728262839, 1728266439, 'access', 0, '2024-10-10 01:39:30'),
(42, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4MzksImV4cCI6MTcyODI2NjQzOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.lR6h21iD3st1XKT14OD86TocAefd0ndcw8MO9f0Gb-k', 1728262839, 1728266439, 'access', 0, '2024-10-10 01:39:30'),
(43, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4MzksImV4cCI6MTcyODI2NjQzOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.lR6h21iD3st1XKT14OD86TocAefd0ndcw8MO9f0Gb-k', 1728262839, 1728266439, 'access', 0, '2024-10-10 01:39:30'),
(44, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4NDAsImV4cCI6MTcyODI2NjQ0MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.s9FnaKu9KRHQtHxvx5bGrKXBRiIpS0Sysv8e6JEm88M', 1728262840, 1728266440, 'access', 1, '2024-10-10 01:39:30'),
(45, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI4NzksImV4cCI6MTcyODI2NjQ3OSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.XMIDJsSTJC4FOHVybttbTxvy61JaDVgcX3na9aa5M0o', 1728262879, 1728266479, 'access', 1, '2024-10-10 01:39:30'),
(46, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI5NDEsImV4cCI6MTcyODI2NjU0MSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.s0pCMIWKfhZCSLXxld4-DiG7p0WxhNw_5jvLZqMhaDs', 1728262941, 1728266541, 'access', 1, '2024-10-10 01:39:30'),
(47, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjI5NjksImV4cCI6MTcyODI2NjU2OSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.znk8eJMmIWZojsnkC_9YCYps1Y0eGIgpxkYaFSj2zo8', 1728262969, 1728266569, 'access', 1, '2024-10-10 01:39:30'),
(48, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMxMTMsImV4cCI6MTcyODI2NjcxMywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.EJovCEm-UBdNbj-YXsd9QHdRPeYFv7RPOkPLZYc0maY', 1728263113, 1728266713, 'access', 1, '2024-10-10 01:39:30'),
(49, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMzMjcsImV4cCI6MTcyODI2NjkyNywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.wqxJBirXQ2Tca9BP21J3hEDKsSCA7KdFvuAZOwLTjvg', 1728263327, 1728266927, 'access', 0, '2024-10-10 01:39:30'),
(50, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMzMjgsImV4cCI6MTcyODI2NjkyOCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.p9mCkYunnq3dcfvmJj7KnJmgRkJO-N2S5SE9A61lwFM', 1728263328, 1728266928, 'access', 1, '2024-10-10 01:39:30'),
(51, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMzNTAsImV4cCI6MTcyODI2Njk1MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.34b92njLdZoSs3hb7msATzTVXLosu3j2HnZ4qtDikgI', 1728263350, 1728266950, 'access', 0, '2024-10-10 01:39:30'),
(52, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMzNTIsImV4cCI6MTcyODI2Njk1MiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.Bsifo_IboPjov9md8B7GawY2BaxBxPXY4_-yOYwECyk', 1728263352, 1728266952, 'access', 0, '2024-10-10 01:39:30'),
(53, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjMzNTQsImV4cCI6MTcyODI2Njk1NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.bALUyO5C5utrNYanB-y2oj5lDuVSzqNMjxlr7Z7WzAA', 1728263354, 1728266954, 'access', 1, '2024-10-10 01:39:30'),
(54, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM0MTUsImV4cCI6MTcyODI2NzAxNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.euv6cWIMFnP9QKMUnApr-JlXKld4wv5FuCV__6rjOd4', 1728263415, 1728267015, 'access', 1, '2024-10-10 01:39:30'),
(55, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM1MDUsImV4cCI6MTcyODI2NzEwNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.zNyMTYuJlrunoec5oanPh-Du_xpQtoKeC2HrNe2HDZE', 1728263505, 1728267105, 'access', 1, '2024-10-10 01:39:30'),
(56, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM1NDAsImV4cCI6MTcyODI2NzE0MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.iI1aaVbn4EucklPcbx5GVtn9OFJtXzEaYDQT1SBNTMs', 1728263540, 1728267140, 'access', 1, '2024-10-10 01:39:30'),
(57, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM1NzksImV4cCI6MTcyODI2NzE3OSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.92y3wpHjJ0wwy0t9UhXNgX41KZVUvRAv6nn4qZvIXU0', 1728263579, 1728267179, 'access', 1, '2024-10-10 01:39:30'),
(58, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM2MTcsImV4cCI6MTcyODI2NzIxNywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.4ljd1gn1z8zJL5NOezF1o6awXDHs3tk-1MJdJ1OQ7OU', 1728263617, 1728267217, 'access', 1, '2024-10-10 01:39:30'),
(59, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM3MzcsImV4cCI6MTcyODI2NzMzNywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.IrA4qt1LoHDW1DNvX2vjfiFPBEYcbkoSCuxHLmJs5WI', 1728263737, 1728267337, 'access', 0, '2024-10-10 01:39:30'),
(60, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM3MzcsImV4cCI6MTcyODI2NzMzNywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.IrA4qt1LoHDW1DNvX2vjfiFPBEYcbkoSCuxHLmJs5WI', 1728263737, 1728267337, 'access', 0, '2024-10-10 01:39:30'),
(61, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjM3MzksImV4cCI6MTcyODI2NzMzOSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.E7aGIHA2LddmyUAK97vJygxBjYpjI_1J4SjI3d2WYLk', 1728263739, 1728267339, 'access', 1, '2024-10-10 01:39:30'),
(62, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU0NzQsImV4cCI6MTczMDg1NzQ3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.jcTI3lCtr6ieUKqzmpcdf6upvlPthHbifW-9S40i0aY', 1728265474, 1730857474, 'refresh', 0, '2024-10-10 01:39:30'),
(63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NTYsImV4cCI6MTcyODI2OTE1NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.9ergDv3Qs42uqr9vjjSsddBU59RSWLAvJ8tfXCwxPAQ', 1728265556, 1728269156, 'access', 0, '2024-10-10 01:39:30'),
(64, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzEsImV4cCI6MTcyODI2OTE3MSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.sCY8lYbMaWBAWHMtJqFaDqmrF5MbIOcWirAMjZcqsCE', 1728265571, 1728269171, 'access', 0, '2024-10-10 01:39:30'),
(65, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzIsImV4cCI6MTcyODI2OTE3MiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.eVUo6WxHmhQJtiUpODQTVLx4S3zPYsqzt2feDexhyV8', 1728265572, 1728269172, 'access', 0, '2024-10-10 01:39:30'),
(66, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzIsImV4cCI6MTcyODI2OTE3MiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.eVUo6WxHmhQJtiUpODQTVLx4S3zPYsqzt2feDexhyV8', 1728265572, 1728269172, 'access', 0, '2024-10-10 01:39:30'),
(67, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzMsImV4cCI6MTcyODI2OTE3MywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.gDA_WTqoCYkm6Tqyxp8xIKDV6QAlPDkSAI3zkFR0Z6g', 1728265573, 1728269173, 'access', 0, '2024-10-10 01:39:30'),
(68, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzMsImV4cCI6MTcyODI2OTE3MywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.gDA_WTqoCYkm6Tqyxp8xIKDV6QAlPDkSAI3zkFR0Z6g', 1728265573, 1728269173, 'access', 0, '2024-10-10 01:39:30'),
(69, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzMsImV4cCI6MTcyODI2OTE3MywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.gDA_WTqoCYkm6Tqyxp8xIKDV6QAlPDkSAI3zkFR0Z6g', 1728265573, 1728269173, 'access', 0, '2024-10-10 01:39:30'),
(70, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(72, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(74, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(75, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzQsImV4cCI6MTcyODI2OTE3NCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.JiYukntI1LXabUOtOPgf7fam2pRndlGQCvNPwMQupEc', 1728265574, 1728269174, 'access', 0, '2024-10-10 01:39:30'),
(76, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzUsImV4cCI6MTcyODI2OTE3NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.P5FJUWTFIimArU-rBLxJhRHVyFf5MIdk8MyoaqGKw9g', 1728265575, 1728269175, 'access', 0, '2024-10-10 01:39:30'),
(77, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzUsImV4cCI6MTcyODI2OTE3NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.P5FJUWTFIimArU-rBLxJhRHVyFf5MIdk8MyoaqGKw9g', 1728265575, 1728269175, 'access', 0, '2024-10-10 01:39:30'),
(78, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzUsImV4cCI6MTcyODI2OTE3NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.P5FJUWTFIimArU-rBLxJhRHVyFf5MIdk8MyoaqGKw9g', 1728265575, 1728269175, 'access', 0, '2024-10-10 01:39:30'),
(79, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzUsImV4cCI6MTcyODI2OTE3NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.P5FJUWTFIimArU-rBLxJhRHVyFf5MIdk8MyoaqGKw9g', 1728265575, 1728269175, 'access', 0, '2024-10-10 01:39:30'),
(80, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzUsImV4cCI6MTcyODI2OTE3NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.P5FJUWTFIimArU-rBLxJhRHVyFf5MIdk8MyoaqGKw9g', 1728265575, 1728269175, 'access', 0, '2024-10-10 01:39:30'),
(81, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzYsImV4cCI6MTcyODI2OTE3NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.4m1N2DeZkh1I0wrxJew7iE-5g9OKXKyO-EiGSXDYwpo', 1728265576, 1728269176, 'access', 0, '2024-10-10 01:39:30'),
(82, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzYsImV4cCI6MTcyODI2OTE3NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.4m1N2DeZkh1I0wrxJew7iE-5g9OKXKyO-EiGSXDYwpo', 1728265576, 1728269176, 'access', 0, '2024-10-10 01:39:30'),
(83, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzYsImV4cCI6MTcyODI2OTE3NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.4m1N2DeZkh1I0wrxJew7iE-5g9OKXKyO-EiGSXDYwpo', 1728265576, 1728269176, 'access', 0, '2024-10-10 01:39:30'),
(84, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzcsImV4cCI6MTcyODI2OTE3NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.WINvxJFUccrj5z2IoidXI2QZIESex8wl61_FyX6OSJA', 1728265577, 1728269177, 'access', 0, '2024-10-10 01:39:30'),
(85, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzcsImV4cCI6MTcyODI2OTE3NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.WINvxJFUccrj5z2IoidXI2QZIESex8wl61_FyX6OSJA', 1728265577, 1728269177, 'access', 0, '2024-10-10 01:39:30'),
(86, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzcsImV4cCI6MTcyODI2OTE3NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.WINvxJFUccrj5z2IoidXI2QZIESex8wl61_FyX6OSJA', 1728265577, 1728269177, 'access', 0, '2024-10-10 01:39:30'),
(87, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzcsImV4cCI6MTcyODI2OTE3NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.WINvxJFUccrj5z2IoidXI2QZIESex8wl61_FyX6OSJA', 1728265577, 1728269177, 'access', 0, '2024-10-10 01:39:30'),
(88, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzcsImV4cCI6MTcyODI2OTE3NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.WINvxJFUccrj5z2IoidXI2QZIESex8wl61_FyX6OSJA', 1728265577, 1728269177, 'access', 0, '2024-10-10 01:39:30'),
(89, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzgsImV4cCI6MTcyODI2OTE3OCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.s8u_TZRvtA8GpEa1dtPQpUmjm5PeTKOtiNxLAd7sezM', 1728265578, 1728269178, 'access', 0, '2024-10-10 01:39:30'),
(90, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzgsImV4cCI6MTcyODI2OTE3OCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.s8u_TZRvtA8GpEa1dtPQpUmjm5PeTKOtiNxLAd7sezM', 1728265578, 1728269178, 'access', 0, '2024-10-10 01:39:30'),
(91, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzgsImV4cCI6MTcyODI2OTE3OCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.s8u_TZRvtA8GpEa1dtPQpUmjm5PeTKOtiNxLAd7sezM', 1728265578, 1728269178, 'access', 0, '2024-10-10 01:39:30'),
(92, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU1NzksImV4cCI6MTcyODI2OTE3OSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.8gafYpABQBvUc0D9Rmt-tqgktVwF6koY58V2CA5Qnus', 1728265579, 1728269179, 'access', 0, '2024-10-10 01:39:30'),
(93, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU2OTEsImV4cCI6MTcyODI2OTI5MSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.fJYQ6ppXyj91FUW-9zty-zxV5WXW6S_YIPAzAqf35k8', 1728265691, 1728269291, 'access', 1, '2024-10-10 01:39:30'),
(94, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgyNjU3MTUsImV4cCI6MTcyODI2OTMxNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.ETU-PaYtML-HeR16j9kxCtRlkMiXPJnAs83qBozNUKA', 1728265715, 1728269315, 'access', 1, '2024-10-10 01:39:30'),
(95, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODM3ODAsImV4cCI6MTczMDk3NTc4MCwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19._zo1wTEBCPr-C3AaiKdk6oUXWhIctJE-EKJfEVNrP18', 1728383780, 1730975780, 'refresh', 0, '2024-10-10 01:39:30'),
(96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1MzMsImV4cCI6MTczMDk3NjUzMywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19._84lIFMaKsWf7EekesNv4Q8T7ZCv76VnIzAfWzicDdQ', 1728384533, 1730976533, 'refresh', 0, '2024-10-10 01:39:30'),
(97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1MzUsImV4cCI6MTczMDk3NjUzNSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.258sTOeWf6E-yJu5IErucBMGvZnseHEw3aYapom6r7A', 1728384535, 1730976535, 'refresh', 0, '2024-10-10 01:39:30'),
(98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1NjUsImV4cCI6MTczMDk3NjU2NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.rVcZB3UBL9a4m2iAZvd9aElwdMr6OuwuADZ4TO3BvAg', 1728384565, 1730976565, 'refresh', 0, '2024-10-10 01:39:30'),
(99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1NjUsImV4cCI6MTczMDk3NjU2NSwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.rVcZB3UBL9a4m2iAZvd9aElwdMr6OuwuADZ4TO3BvAg', 1728384565, 1730976565, 'refresh', 0, '2024-10-10 01:39:30'),
(100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1NjYsImV4cCI6MTczMDk3NjU2NiwiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.ZoTD9TtyBWI3pseoEUsE9fR34Hfne6Fx7_lUdYQSOTM', 1728384566, 1730976566, 'refresh', 0, '2024-10-10 01:39:30'),
(101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODQ1NjcsImV4cCI6MTczMDk3NjU2NywiZGF0YSI6eyJ1c2VyaWQiOjEwNn19.DYSSNx4Em0izcIDQoemUKxulXv90ZBojaApGqZTeZD4', 1728384567, 1730976567, 'refresh', 0, '2024-10-10 01:39:30'),
(106, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODY3MjMsImV4cCI6MTcyODM5MDMyM30.P6TvWHk1oDI-2_Z9dO7ORvWkBbPTm4Om2tumntH6pbY', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(107, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODY3NzIsImV4cCI6MTcyODM5MDM3Mn0.mZSZUjJB9p1WJjTXF47PqHtXGZlWHHzsw89HLDqQ34w', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(108, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODY3ODYsImV4cCI6MTcyODM5MDM4Nn0.aPy3cWrc42ARnYMOm8k0yAFtz5H0X_sxIadderNfLfM', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(109, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODY5MDQsImV4cCI6MTcyODM5MDUwNH0.ehsCZ8IWqH0_3xsMymAbjJFTZCuX6lNLFSKNNo2jg04', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(110, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODcwNDMsImV4cCI6MTcyODM5MDY0M30.HonBSZp5bbJjJQ6Ak5G0UjISDDMoFK3ZfEfntrFoHV0', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(111, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODcyNjEsImV4cCI6MTcyODM5MDg2MX0.6c5pA-YOMjP5zEy-E6bR7CtI10-oK99-5f7etj04U8c', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(112, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODcyODYsImV4cCI6MTcyODM5MDg4Nn0._1EiMLEcmK_u5aRK4Gq82IdjcjJInM8fsRjMp6xmzRo', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(113, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODcyODcsImV4cCI6MTcyODM5MDg4N30.ShelPj2TBYt7uM9R5DhP57KFey5NRHAK3L4Phk5Y39U', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(114, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0MjIsImV4cCI6MTcyODM5MTAyMn0.RqTMkh5NpidbkbUNVnQLzKzQMCfrtGJagNEjqV_lR3w', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(115, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0MjcsImV4cCI6MTcyODM5MTAyN30.-XijEvG5vq5vnn8A6qHMtJghL1T2ipjqvx9VTC8lMeA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(116, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0MzIsImV4cCI6MTcyODM5MTAzMn0.a9cl-9M2NK30dJmxDZPQrg6gKskcLeGaDBxC0KR8scs', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(117, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0MzgsImV4cCI6MTcyODM5MTAzOH0.1XcARO2i6ZWmSfAJsZcjK7UR3AhQWAHx1gya5F5vMqE', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(118, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0NDcsImV4cCI6MTcyODM5MTA0N30.MQjKtuSMcCsWPkWvjNYmZxu6KhybowYo6zB_8-SZzY4', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(119, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0NTgsImV4cCI6MTcyODM5MTA1OH0.s7yXtaxJGBGgT4n5q13hUrynBmW-Q9kpCqWES3UoqmA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(120, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0NjksImV4cCI6MTcyODM5MTA2OX0.9eu74oMyH_H8yTW7ufy3qzm9S93J09kMrgPnXphkDN8', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(121, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0NzksImV4cCI6MTcyODM5MTA3OX0.pZD-XASCNF8V0Gqk0GMDFGjzfM5yQ-9dkqC6O96knYo', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(122, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc0OTAsImV4cCI6MTcyODM5MTA5MH0.J5D3a219b89fkQtbwneJzgMVSPbdqBheB2jKiGGXKsA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(123, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc3NzAsImV4cCI6MTcyODM5MTM3MH0.dXjn5TOsNY6atAbZNx_wZvRYWoEo2ZRhtabQDDVFktU', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(124, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc3ODIsImV4cCI6MTcyODM5MTM4Mn0.eN23I0Zb2OpzdPpgvflihE2xMGnF5eiDD3Ajw487BjE', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(125, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODc5NDksImV4cCI6MTcyODM5MTU0OX0.JDAQ8rWIcjWwbOVbWjaiYrCQAaRxn2-VhnuspimOJ88', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(126, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODgwMjQsImV4cCI6MTcyODM5MTYyNH0.tiX6P39hNNycJwMxUIzdT7cWp4DNguds_iJlstzE03c', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(127, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODgxMjksImV4cCI6MTcyODM5MTcyOX0.p74m4Efqn1xXBUEoym7dqTn5Z9IMoZIAREiPFjfno5c', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(128, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0MzgsImV4cCI6MTcyODM5MjAzOH0.n3iy0msaKjqAxGJzDzN8tuItrpt8m6jGEjJuTz5lD6g', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(129, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0NTUsImV4cCI6MTcyODM5MjA1NX0.q9A9jnInRRZYsMphN9h-CTzcURrKHfLKcjo3zxdPRFc', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(130, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0NTYsImV4cCI6MTcyODM5MjA1Nn0.Xns-XVns1Qm1fvg2yGxFxZ2A0sty-flUphDSDnviyis', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(131, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0NTYsImV4cCI6MTcyODM5MjA1Nn0.Xns-XVns1Qm1fvg2yGxFxZ2A0sty-flUphDSDnviyis', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(132, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0NTYsImV4cCI6MTcyODM5MjA1Nn0.Xns-XVns1Qm1fvg2yGxFxZ2A0sty-flUphDSDnviyis', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(133, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg0NTcsImV4cCI6MTcyODM5MjA1N30.kcnWhuezF7rFCPYrInUACEOQBY8Y35voBu1MAhsEZXE', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(134, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg3NjUsImV4cCI6MTcyODM5MjM2NX0.B377jCVGwt16kpYimfKoFR0mTp2z2ZKXdVYUqQMjOHE', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(135, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg4NzcsImV4cCI6MTcyODM5MjQ3N30.ASCu8qZap_7IdSlU0aQdYjCbvWhfmyqFC6RA2LpgxmA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(136, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODg4NzcsImV4cCI6MTcyODM5MjQ3N30.ASCu8qZap_7IdSlU0aQdYjCbvWhfmyqFC6RA2LpgxmA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(137, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODkwMjUsImV4cCI6MTcyODM5MjYyNX0.lMSFjoYq3Q99jbgHHe1hb7iNs9XWjNx0TJ8_97hFB9w', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(138, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODkxOTgsImV4cCI6MTcyODM5Mjc5OH0.sIcYvED7svAjSUra_bNVpotmreaqqRZScOwUZvwup_o', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(139, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODkyMTksImV4cCI6MTcyODM5MjgxOX0.weixkt_J2PkvLlJBvf303rjNpybXj-2TyRxekVSlFDU', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(146, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODk1MjQsImV4cCI6MTcyODM5MzEyNH0.PTpujVaH12S0jlBKEBRTvNkUC7vUzI14K27qESZ0HTo', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(147, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjgzODk1MzUsImV4cCI6MTcyODM5MzEzNX0.223kgBdZz68PooQHl_IE_Be1K-Yb0L9rt4XkyC2OQLQ', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(148, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAwMTYsImV4cCI6MTcyODQ1MzYxNn0.D33D6HBfSLxiLwRmpnQYkliFLSrTDOoSJutefoUarz0', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(149, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAwMjcsImV4cCI6MTcyODQ1MzYyN30.JQiwWUF3dsdaTuiaH3esWeD0JFN_f8AE-voaoDHvRYY', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(150, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAwNzUsImV4cCI6MTcyODQ1MzY3NX0.MhggTEvXYxVg8WXjkVk4em7bNuxSCU2MgrqebMvQpw0', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(151, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAwODcsImV4cCI6MTcyODQ1MzY4N30.EIaAFIrePHgnSAI-A-YDJxEBeZLTBSPqUcG4W1N7GNA', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(152, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAxMzYsImV4cCI6MTcyODQ1MzczNn0.7fE1D-5VsYHPPWh0zsW8rfpILULMIo_SAOJmKVEmfKk', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(153, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAxNDQsImV4cCI6MTcyODQ1Mzc0NH0.xGxjoP_SvOvwvzwwnwXMz1CxQHB0ADjf9SGgXNYwBi0', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(154, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAxNTksImV4cCI6MTcyODQ1Mzc1OX0.z6zn3I7koZTIpFRSS0z5aBWTnqBZk8xdSxKmDTjEyH0', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(155, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAxNzQsImV4cCI6MTcyODQ1Mzc3NH0.lynZhEv4Cn6QQolMVRXIhKEfAJ9Et7WOPplqKH0fZjA', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(156, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAyMDgsImV4cCI6MTcyODQ1MzgwOH0.jh6fBF3F3KOVYvfTmaMSSsJVUl7F51NIr0LT9LCYDLY', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(157, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTAyMjgsImV4cCI6MTcyODQ1MzgyOH0.mSjaV7fHVOj4l-D7-UjXZS1zmTjqKnxdjGel2jMjySI', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(158, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTE1OTEsImV4cCI6MTcyODQ1NTE5MX0.8tp9zh9fHwCHznFFjTU5UzJZ6hAPJk2RdSFKeo58-fY', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(159, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTE2MDEsImV4cCI6MTcyODQ1NTIwMX0.S-PFm6BP0JrM_HEITAT7NOZbiutFF8YXoo5EuGYW6Hs', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(160, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0NTE2MjksImV4cCI6MTcyODQ1NTIyOX0.KYO4L-oFFxzFGwfAJp53dGbY7GbaDtPBVORmW7Jd6Xw', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(161, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTQyMjUsImV4cCI6MTcyODQ5NzgyNX0.3c9oncyRgE5hf0gsmMNINWQh78B0SpmU3FFkEm7S0FQ', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(162, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTQyMzgsImV4cCI6MTcyODQ5NzgzOH0.YMUvDCTOjOk569OwijMS7VIVcHXz1itZi1sm5BiLPb4', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(163, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTQyODgsImV4cCI6MTcyODQ5Nzg4OH0.kG4815Wk0xLaYAoU4FFVesovIP2kqmwi-DEnzhX4O5Q', 0, 0, 'access', 1, '2024-10-10 01:39:30'),
(164, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTQzMTAsImV4cCI6MTcyODQ5NzkxMH0.xWeZpQs2piU_PvVkOjwSm4y0iwE-rWE2UQWYxcKYYSQ', 0, 0, 'access', 0, '2024-10-10 01:39:30'),
(165, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTU1NzksImV4cCI6MTcyODQ5OTE3OX0.2XQ34HZ0Mnx4esPUhiubd7YzzovLuvv0Ls37rtvdG8k', 0, 0, 'access', 0, '2024-10-10 01:39:39'),
(166, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTU3OTMsImV4cCI6MTcyODQ5OTM5M30.tfSpS4fUxCLwcqSpOIcl2_vufO2-9At9UsTAT9SvTqQ', 0, 0, 'access', 1, '2024-10-10 01:43:13'),
(167, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTU4MDIsImV4cCI6MTcyODQ5OTQwMn0.IAx5xKYK8kCpsJsOgxCp3ihXm4xHkQRW193MA1TuWlQ', 0, 0, 'access', 1, '2024-10-10 01:43:22'),
(168, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTU4NDgsImV4cCI6MTcyODQ5OTQ0OH0.g6hY5FQ3oJfTDSfQzyvbytphefyOxbWkwohDdJkRuu8', 0, 0, 'access', 1, '2024-10-10 01:44:08'),
(169, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTU4NjksImV4cCI6MTcyODQ5OTQ2OX0.tmF2_H_6QsHKiY1WldPUQJQTLt0alZbDdrCHiSmIp_0', 0, 0, 'access', 0, '2024-10-10 01:44:29'),
(170, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTYwNjUsImV4cCI6MTcyODQ5OTY2NX0.VI8kNGmtJENLU2_rJ7sBfR6IaXFKOoD1KO880f0G22k', 0, 0, 'access', 1, '2024-10-10 01:47:45'),
(171, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTYwODQsImV4cCI6MTcyODQ5OTY4NH0.JsJpbtdnudU74IoMJ6nkKMR2UqEdhQeD4Q8YdwksUcs', 0, 0, 'access', 0, '2024-10-10 01:48:04'),
(172, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY1NTUsImV4cCI6MTcyODUwMDE1NX0.vH-1n6OXF6fbiuXvgVO1JmgXS1qkAoZirhitZBjc6Yk', 0, 0, 'access', 0, '2024-10-10 01:55:55'),
(173, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY2MjksImV4cCI6MTcyODUwMDIyOX0.CVUDA_UaoA8LP0jH1tXvzgDiJ6ObjttEr-bYrpQRKMk', 0, 0, 'access', 0, '2024-10-10 01:57:09'),
(174, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDEsImV4cCI6MTcyODUwMDMwMX0.CCJPbrwt1siSX8kdmXFAE_0twMVSdhrFRhSjLHAiq8k', 0, 0, 'access', 0, '2024-10-10 01:58:21'),
(175, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDIsImV4cCI6MTcyODUwMDMwMn0.9soge75vwLrGOkMySD5MQ22WRXmQzTbxrkYrfjbZkVU', 0, 0, 'access', 0, '2024-10-10 01:58:22'),
(176, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDIsImV4cCI6MTcyODUwMDMwMn0.9soge75vwLrGOkMySD5MQ22WRXmQzTbxrkYrfjbZkVU', 0, 0, 'access', 0, '2024-10-10 01:58:22'),
(177, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDIsImV4cCI6MTcyODUwMDMwMn0.9soge75vwLrGOkMySD5MQ22WRXmQzTbxrkYrfjbZkVU', 0, 0, 'access', 0, '2024-10-10 01:58:22'),
(178, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDIsImV4cCI6MTcyODUwMDMwMn0.9soge75vwLrGOkMySD5MQ22WRXmQzTbxrkYrfjbZkVU', 0, 0, 'access', 0, '2024-10-10 01:58:22'),
(179, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDIsImV4cCI6MTcyODUwMDMwMn0.9soge75vwLrGOkMySD5MQ22WRXmQzTbxrkYrfjbZkVU', 0, 0, 'access', 0, '2024-10-10 01:58:22'),
(180, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDMsImV4cCI6MTcyODUwMDMwM30.eQQZdz_VZGGTuTln2ORpOv_5XF14qt4OVfE--zt1cYw', 0, 0, 'access', 0, '2024-10-10 01:58:23'),
(181, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDMsImV4cCI6MTcyODUwMDMwM30.eQQZdz_VZGGTuTln2ORpOv_5XF14qt4OVfE--zt1cYw', 0, 0, 'access', 0, '2024-10-10 01:58:23'),
(182, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDMsImV4cCI6MTcyODUwMDMwM30.eQQZdz_VZGGTuTln2ORpOv_5XF14qt4OVfE--zt1cYw', 0, 0, 'access', 0, '2024-10-10 01:58:23'),
(183, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY3MDMsImV4cCI6MTcyODUwMDMwM30.eQQZdz_VZGGTuTln2ORpOv_5XF14qt4OVfE--zt1cYw', 0, 0, 'access', 0, '2024-10-10 01:58:23'),
(184, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTY5ODIsImV4cCI6MTcyODUwMDU4Miwic3ViIjpudWxsfQ.uc93gOi5iah3au_-9soDQcwJ1cOI9pD5F-bPpGN4L8k', 0, 0, 'access', 0, '2024-10-10 02:03:02'),
(185, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwMzksImV4cCI6MTcyODUwMDYzOSwic3ViIjpudWxsfQ.ZZE6WA5vfUz5gaG6dxn41oDck_dNlK9SgBS3DV8a6CE', 0, 0, 'access', 0, '2024-10-10 02:03:59'),
(186, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwMzksImV4cCI6MTcyODUwMDYzOSwic3ViIjpudWxsfQ.ZZE6WA5vfUz5gaG6dxn41oDck_dNlK9SgBS3DV8a6CE', 0, 0, 'access', 0, '2024-10-10 02:03:59'),
(187, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwMzksImV4cCI6MTcyODUwMDYzOSwic3ViIjpudWxsfQ.ZZE6WA5vfUz5gaG6dxn41oDck_dNlK9SgBS3DV8a6CE', 0, 0, 'access', 0, '2024-10-10 02:03:59'),
(188, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwNDAsImV4cCI6MTcyODUwMDY0MCwic3ViIjpudWxsfQ.qtOqFKJBOafRjG_BXpZ0FuK7DrNv0FV0p_36o-j4H5I', 0, 0, 'access', 0, '2024-10-10 02:04:00'),
(189, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwNDAsImV4cCI6MTcyODUwMDY0MCwic3ViIjpudWxsfQ.qtOqFKJBOafRjG_BXpZ0FuK7DrNv0FV0p_36o-j4H5I', 0, 0, 'access', 0, '2024-10-10 02:04:00'),
(190, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwNDAsImV4cCI6MTcyODUwMDY0MCwic3ViIjpudWxsfQ.qtOqFKJBOafRjG_BXpZ0FuK7DrNv0FV0p_36o-j4H5I', 0, 0, 'access', 0, '2024-10-10 02:04:00'),
(191, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwNDAsImV4cCI6MTcyODUwMDY0MCwic3ViIjpudWxsfQ.qtOqFKJBOafRjG_BXpZ0FuK7DrNv0FV0p_36o-j4H5I', 0, 0, 'access', 0, '2024-10-10 02:04:00'),
(192, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcwODQsImV4cCI6MTcyODUwMDY4NH0.UBvJiWx8BmKPtioWtnsGFc0Cb5uFBB_pW2LYhdBpRpE', 0, 0, 'access', 1, '2024-10-10 02:04:44'),
(193, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcxMDAsImV4cCI6MTcyODUwMDcwMH0.VKOEobxerQRGE5M7v2eIgYeqVT9PVjjA5fTI6ccQOy0', 0, 0, 'access', 1, '2024-10-10 02:05:00'),
(194, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcxMTgsImV4cCI6MTcyODUwMDcxOH0.FNQVFma9jPAcFUAhdAwuCWRb4-jpW6hNcRQzpEI6-r0', 0, 0, 'access', 1, '2024-10-10 02:05:18'),
(195, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg0OTcxODQsImV4cCI6MTcyODUwMDc4NH0.PD0aM_oPci2uUEs4Z2Ei7zj0vSeA7CYty4wFkgiTXRg', 0, 0, 'access', 0, '2024-10-10 02:06:24'),
(196, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDA5ODEsImV4cCI6MTcyODU0NDU4MX0.gbRFU4gm9wXr8prJtVb6BhCQ14xBC00uCqkJpCQirIs', 0, 0, 'access', 1, '2024-10-10 14:16:21'),
(197, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDA5OTgsImV4cCI6MTcyODU0NDU5OH0.WRBq_yodthLeHOHG1yhcUz4SXib3QzJAcsd4JU20a4I', 0, 0, 'access', 0, '2024-10-10 14:16:38'),
(198, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDExNDYsImV4cCI6MTcyODU0NDc0Nn0.pMkzuSdOYB5qcCQE-D7NK21QiLUFzbB5io39dIkRFJY', 0, 0, 'access', 1, '2024-10-10 14:19:06'),
(199, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDExNjAsImV4cCI6MTcyODU0NDc2MH0.AxoNJ5N_4jvsZUEetVCWw_j8T6MImftAl83TGnk2Nuc', 0, 0, 'access', 0, '2024-10-10 14:19:20'),
(200, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDE5MjUsImV4cCI6MTcyODU0NTUyNX0.cArV4t2D3323AGUTR74sgRNVf_vkJrErNFNdw6ub0qw', 0, 0, 'access', 0, '2024-10-10 14:32:05'),
(201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDE5MjYsImV4cCI6MTcyODU0NTUyNn0.MOvqz7Y_SAiWemlQ_a2rZu0P2H6FGDBjZz3m0jua5cc', 0, 0, 'access', 1, '2024-10-10 14:32:06'),
(202, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDE5MzcsImV4cCI6MTcyODU0NTUzN30.BDgcF_8KT0urOUyxjavbf51HmTt6IBPITiz_xZWfP1E', 0, 0, 'access', 1, '2024-10-10 14:32:17'),
(203, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDE5NjUsImV4cCI6MTcyODU0NTU2NX0.TEi8JtnO47IZmRpU3svYKJc6gVKp48P4TxEB2MkXIxg', 0, 0, 'access', 0, '2024-10-10 14:32:45'),
(204, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIwNDUsImV4cCI6MTcyODU0NTY0NX0.2BZufBTnRP83vwSaP7a9U53Q84jTpOFm7uDnn3w1vbM', 0, 0, 'access', 1, '2024-10-10 14:34:05'),
(205, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIwNTQsImV4cCI6MTcyODU0NTY1NH0.jX5zaFMeZoittJ16qgqiSXJWjfejthpl8YtJBpttcT8', 0, 0, 'access', 1, '2024-10-10 14:34:15'),
(206, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIxNzksImV4cCI6MTcyODU0NTc3OX0.o6Vn5-UNcmbuKbyNO8n7E6QwIFIy9MX4zn4KTgL7IeA', 0, 0, 'access', 1, '2024-10-10 14:36:19'),
(207, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIyMDQsImV4cCI6MTcyODU0NTgwNH0.YDaREru6jhKwzGFJcKQ6O7XiW1idxEw4b2YF6HXU4A4', 0, 0, 'access', 1, '2024-10-10 14:36:44'),
(208, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIyOTEsImV4cCI6MTcyODU0NTg5MX0.brZiu8wc7Ela1mL6_PmifAQN9EIe-ZhPF13UEacAR4A', 0, 0, 'access', 1, '2024-10-10 14:38:11'),
(209, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIzNzYsImV4cCI6MTcyODU0NTk3Nn0.OC5_pcO7PdSkMJ_gq9gC_blC5luzeU9sUO8rxfSGw6c', 0, 0, 'access', 0, '2024-10-10 14:39:36'),
(210, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDIzODMsImV4cCI6MTcyODU0NTk4M30.yU4ppCQDFnvHmmY-xokpCbNgh6QuSgWk-cEubk4JgkA', 0, 0, 'access', 0, '2024-10-10 14:39:43'),
(211, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI1NDMsImV4cCI6MTcyODU0NjE0M30.HO90jvRRxLB84Ni6hXYXCE6GhFXBULHaHZpZO7sOQZg', 0, 0, 'access', 1, '2024-10-10 14:42:23'),
(212, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI1NjQsImV4cCI6MTcyODU0NjE2NH0.DabXcZkqfnMXzYKwQlr5LJM8xEukOyhCNX6UNXED4r0', 0, 0, 'access', 0, '2024-10-10 14:42:44'),
(213, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI3MTAsImV4cCI6MTcyODU0NjMxMH0.fE1JAZZq2ulXxs59HuiAiKmDQElFip7pdIQJXvjE0LI', 0, 0, 'access', 1, '2024-10-10 14:45:10');
INSERT INTO `jwt_tokens` (`id`, `token`, `iat`, `exp`, `type`, `used`, `created_at`) VALUES
(214, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI4NDEsImV4cCI6MTcyODU0NjQ0MX0.k-toXf3_qU1Fw6DC3J5gXWqMcqO-zFPU6RwHMlIBtXY', 0, 0, 'access', 0, '2024-10-10 14:47:21'),
(215, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI4NzQsImV4cCI6MTcyODU0NjQ3NH0.pOsJUuCINPEP2SglKo3rWUxDIyQ2h_UkD07JJ2EjOxY', 0, 0, 'access', 1, '2024-10-10 14:47:54'),
(216, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI4ODMsImV4cCI6MTcyODU0NjQ4M30.SC2OTVlxx0v9fdw3HPkJs2elqrq8K94BX6bM3qX9iPg', 0, 0, 'access', 1, '2024-10-10 14:48:03'),
(217, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI5MTEsImV4cCI6MTcyODU0NjUxMX0.zE1CyoTpF6wPLsNlXTa9BMEPbmFV-vYzyzP3grJdRxs', 0, 0, 'access', 1, '2024-10-10 14:48:31'),
(218, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI5NDMsImV4cCI6MTcyODU0NjU0M30.nwExjlUEHZrO66CUmUQhkSh4UcKKXtPk65M-wnb8PBw', 0, 0, 'access', 0, '2024-10-10 14:49:03'),
(219, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI5NzIsImV4cCI6MTcyODU0NjU3Mn0.7sFdGoS_teWhU0rx7vcBPW5ND00aUA2lG6VDBPYG5BU', 0, 0, 'access', 1, '2024-10-10 14:49:32'),
(220, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDI5ODIsImV4cCI6MTcyODU0NjU4Mn0.ZtY7mBuApboScDD1Ijq4pMgzUePri75EZHpFExQwDpU', 0, 0, 'access', 1, '2024-10-10 14:49:42'),
(221, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMwMDMsImV4cCI6MTcyODU0NjYwM30.h1l4GaNoaI_kCnBW5MOqDLctGxt5iN_MtJVn-LlMoVc', 0, 0, 'access', 1, '2024-10-10 14:50:03'),
(222, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMwNTUsImV4cCI6MTcyODU0NjY1NX0.U0jKlWOvOLDLhm8Bk1WxuaxVgxtS5GFG1ADOD13ETy4', 0, 0, 'access', 1, '2024-10-10 14:50:55'),
(223, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMwNzIsImV4cCI6MTcyODU0NjY3Mn0.dacEwLbsa-NKA_MaX_I2BkkSUBcNBbUou9vXzDn_Dgs', 0, 0, 'access', 0, '2024-10-10 14:51:12'),
(224, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMxMjIsImV4cCI6MTcyODU0NjcyMn0.NHG7qulx23v1otgf-NMAx1zb49PPQ1qHABNXDZwQvHs', 0, 0, 'access', 1, '2024-10-10 14:52:02'),
(225, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMxMzAsImV4cCI6MTcyODU0NjczMH0.cOz7qW2dmwM0e_PtfkFFitm9w-rVOhu_ky-2Li7AAsw', 0, 0, 'access', 1, '2024-10-10 14:52:10'),
(226, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDMxNDksImV4cCI6MTcyODU0Njc0OX0.WKs_HiOWqslREMsS3lE8AtVdiSxJflwkdzFY6DGvgEs', 0, 0, 'access', 1, '2024-10-10 14:52:29'),
(227, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQyMDksImV4cCI6MTcyODU0NzgwOX0.EwS75HkYXcd486qsQB-g5r95tenLiXhPPO18tLu97Ko', 0, 0, 'access', 1, '2024-10-10 15:10:09'),
(228, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQyMzcsImV4cCI6MTcyODU0NzgzN30.BXbdQ41ajHcnj3VYv1sslxqi2Z06jMwG5gVJoNedaGQ', 0, 0, 'access', 0, '2024-10-10 15:10:37'),
(229, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQyNzIsImV4cCI6MTcyODU0Nzg3Mn0.gCD4sp4yibqEmrUnJPAnLAgNQEqXEPoCFiVgUx_7VyI', 0, 0, 'access', 0, '2024-10-10 15:11:12'),
(230, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQzMTQsImV4cCI6MTcyODU0NzkxNH0.j9fsrc7h6VsmTsfkhNeQMKyn0fCfKEeKM7D7tUvRmeg', 0, 0, 'access', 0, '2024-10-10 15:11:54'),
(231, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQzMzksImV4cCI6MTcyODU0NzkzOX0.3c0hteWAN5GvN1pDO-J5t2atYcd-3Kpdvv_WEDNXbKg', 0, 0, 'access', 0, '2024-10-10 15:12:19'),
(232, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQ0MDIsImV4cCI6MTcyODU0ODAwMn0.TrFVBFJIaGMUfswmLcY-oSi6cX9L0HavsRk-SexoQl8', 0, 0, 'access', 1, '2024-10-10 15:13:22'),
(233, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQ0NDEsImV4cCI6MTcyODU0ODA0MX0.i7eM0D_a6yga7GjswIbmB7XMEJJlnnNI2dGNAKHdwuQ', 0, 0, 'access', 1, '2024-10-10 15:14:01'),
(234, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQ1MDUsImV4cCI6MTcyODU0ODEwNX0.K0y2FOj7QxweLXwOw-IJcktRBxIRI_0qcn-_X94Mq4E', 0, 0, 'access', 1, '2024-10-10 15:15:05'),
(235, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQ2NTEsImV4cCI6MTcyODU0ODI1MX0.WhGQRXVJcMEs4jhV3XYlYQ5PjcVK7ls-y7Y2Gtm_lCI', 0, 0, 'access', 1, '2024-10-10 15:17:31'),
(236, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDQ2NzMsImV4cCI6MTcyODU0ODI3M30.HcuREzoD-BwD0x6YdfSexkhDrfwZxcRqnz2NVrLy5HY', 0, 0, 'access', 0, '2024-10-10 15:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(9) NOT NULL,
  `username` char(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(101, 'user101', '5c773b22ea79d367b38810e7e9ad108646ed62e231868cefb0b1280ea88ac4f0'),
(102, 'user101', '5c773b22ea79d367b38810e7e9ad108646ed62e231868cefb0b1280ea88ac4f0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`collectionid`),
  ADD KEY `authorid` (`authorid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `books_authors`
--
ALTER TABLE `books_authors`
  MODIFY `collectionid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
