-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2019 at 02:02 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athingde_mybundlelive`
--

-- --------------------------------------------------------

 --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `channel_id` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primary_genre_id_fk` int(3) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `channel_grouping_id_fk` int(2) NOT NULL,
  `group_rank` int(4) NOT NULL,
  `date_edited` datetime NOT NULL,
  `roku_app_id_fk` int(5) NOT NULL,
  `alt_service_id_fk` int(5) NOT NULL,
  `primary_channel_id_fk` int(5) NOT NULL,
  `is_real_alt` int(1) NOT NULL,
  `channel_id_fk_2` int(5) NOT NULL,
  `channel_id_fk_3` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`channel_id`, `code`, `name`, `primary_genre_id_fk`, `icon`, `channel_grouping_id_fk`, `group_rank`, `date_edited`, `roku_app_id_fk`, `alt_service_id_fk`, `primary_channel_id_fk`, `is_real_alt`, `channel_id_fk_2`, `channel_id_fk_3`) VALUES
(1, 'Viceland', 'Viceland', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(2, 'Fuse', 'Fuse', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 73, 0, 0, 0),
(3, 'Newsy', 'Newsy', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 23, 0, 0, 0),
(5, 'ESPN', 'ESPN', 14, 'espn', 1, 70, '0000-00-00 00:00:00', 72, 0, 307, 0, 325, 0),
(6, 'AXS TV', 'AXS TV', 25, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(8, 'Bloomberg ', 'Bloomberg Television', 8, '', 2, 0, '0000-00-00 00:00:00', 12, 0, 99, 1, 306, 149),
(9, 'Freeform', 'Freeform', 4, '', 2, 100, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(10, 'TNT', 'TNT', 0, 'tnt', 1, 140, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(11, 'MotorTrend', 'MotorTrend', 14, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(13, 'Comedy Cen', 'Comedy Central', 1, 'comedy_central', 2, 0, '0000-00-00 00:00:00', 12, 0, 339, 0, 0, 0),
(290, 'A&E', 'A&E', 16, 'ae', 1, 210, '2019-04-24 21:03:25', 0, 0, 0, 0, 0, 0),
(16, 'Food Netwo', 'Food Network', 20, 'food_network', 1, 240, '0000-00-00 00:00:00', 0, 0, 105, 0, 0, 0),
(17, 'HGTV', 'HGTV', 4, 'hgtv', 1, 90, '0000-00-00 00:00:00', 0, 0, 310, 0, 0, 0),
(18, 'AMC', 'AMC', 16, 'amc', 1, 250, '0000-00-00 00:00:00', 0, 0, 39, 0, 0, 0),
(20, 'Cartoon Ne', 'Cartoon Network', 18, 'cartoon_network', 2, 160, '0000-00-00 00:00:00', 63, 0, 84, 0, 0, 0),
(21, 'Lifetime', 'Lifetime', 4, 'lifetime', 2, 60, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(22, 'BBC Americ', 'BBC America', 16, 'bbc_america', 2, 0, '0000-00-00 00:00:00', 47, 0, 18, 0, 39, 0),
(23, 'CNN', 'CNN', 8, 'cnn_usa', 1, 220, '0000-00-00 00:00:00', 12, 0, 98, 0, 131, 0),
(24, 'IFC', 'IFC', 16, 'ifc', 2, 0, '0000-00-00 00:00:00', 0, 0, 339, 0, 13, 0),
(25, 'TBS', 'TBS', 0, 'tbs', 1, 120, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(26, 'ACC Networ', 'ACC Network', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(29, 'EPIX Drive', 'EPIX Drive-In', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(30, 'ESPN3', 'ESPN3', 28, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(31, 'Local Now', 'Local Now', 3, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(32, 'Tribeca Sh', 'Tribeca Shortlist', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(33, 'BET', 'BET', 16, 'bet', 2, 250, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(34, 'Bravo', 'Bravo', 2, 'bravo', 1, 250, '2019-06-17 20:51:19', 0, 0, 0, 0, 0, 0),
(39, 'FX', 'FX', 16, '', 2, 10, '0000-00-00 00:00:00', 2975, 0, 18, 0, 0, 0),
(40, 'FXX', 'FXX', 16, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(351, 'NBC Sports', 'NBC Sports 4K', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(46, 'Nick Jr.', 'Nick Jr.', 25, '', 2, 210, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(47, 'SYFY', 'SYFY', 0, 'syfy', 2, 120, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(54, 'Paramount ', 'Paramount network', 0, '', 2, 190, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(327, 'FOX', 'FOX', 16, 'fox', 1, 40, '0000-00-00 00:00:00', 4, 0, 0, 0, 0, 0),
(328, 'NFL Networ', 'NFL Network', 14, '', 2, 0, '0000-00-00 00:00:00', 130, 0, 5, 0, 0, 0),
(59, 'SEC Networ', 'SEC Network+', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(63, 'NHL Networ', 'NHL Network', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(64, 'beIN SPORT', 'beIN SPORTS', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(66, 'ESPN Bases', 'ESPN Bases Loaded', 9, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(67, 'Stadium Pl', 'Stadium Plus 1', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(69, 'Tennis Cha', 'Tennis Channel', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(70, 'RedZone', 'RedZone', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 328, 0, 0, 0),
(72, 'Olympic Ch', 'Olympic Channel', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(73, 'MTV', 'MTV', 4, 'mtv', 2, 70, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(74, 'MTV2', 'MTV2', 4, 'mtv2', 4, 0, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(75, 'CMT', 'CMT', 4, 'cmt', 2, 0, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(76, 'Logo', 'Logo', 1, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(77, 'Revolt', 'Revolt', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(78, 'GSN', 'GSN', 4, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(79, 'TV Land', 'TV Land', 0, '', 5, 80, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(81, 'Disney XD', 'Disney XD', 25, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(82, 'Nicktoons', 'Nicktoons', 0, 'nicktoons', 4, 0, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(83, 'TeenNick', 'TeenNick', 0, 'teennick', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(84, 'Boomerang', 'Boomerang', 25, 'boomerang', 3, 0, '0000-00-00 00:00:00', 63, 0, 20, 1, 46, 0),
(85, 'Baby First', 'Baby First TV', 25, 'baby_first_tv', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(86, 'BBC World ', 'BBC World News', 8, '', 3, 0, '0000-00-00 00:00:00', 25, 0, 0, 1, 0, 0),
(90, 'Fusion', 'Fusion', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(91, 'Euronews.', 'Euronews.', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(92, 'NEWS18', 'NEWS18', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(93, 'RT America', 'RT America', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(94, 'CGTN', 'CGTN', 19, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(96, 'NEWSMAXtv', 'NEWSMAXtv', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(97, 'FS', 'FS', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(98, 'MSNBC', 'MSNBC', 8, 'msnbc', 1, 60, '0000-00-00 00:00:00', 0, 0, 23, 0, 0, 0),
(99, 'CNBC', 'CNBC', 8, 'cnbc', 2, 0, '0000-00-00 00:00:00', 12, 0, 8, 0, 149, 306),
(349, 'HLN', 'HLN', 8, '', 2, 0, '0000-00-00 00:00:00', 12, 0, 23, 0, 0, 0),
(354, 'Cheddar Ne', 'Cheddar Big News', 8, '', 3, 0, '0000-00-00 00:00:00', 12, 0, 23, 0, 0, 0),
(102, 'France24', 'France24', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(103, 'NDTV24x7', 'NDTV24x7', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(105, 'Cooking Ch', 'Cooking Channel', 20, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 16, 0, 0, 0),
(112, 'Hallmark D', 'Hallmark Drama', 4, '', 4, 0, '0000-00-00 00:00:00', 2794, 0, 0, 1, 0, 0),
(113, 'ZLIVING', 'ZLIVING', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(114, 'afro', 'afro', 17, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(115, 'OXYGEN', 'OXYGEN', 0, 'oxygen', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(116, 'CBS', 'CBS', 16, 'cbs', 1, 20, '0000-00-00 00:00:00', 16, 0, 0, 1, 0, 0),
(118, 'SNY', 'SNY', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(119, 'MSG', 'MSG', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(120, 'MSG+', 'MSG+', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(121, 'MSG2', 'MSG2', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(122, 'MSG+2', 'MSG+2', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(308, 'FS2', 'FS2', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 302, 0, 0, 0),
(329, 'Outside tv', 'Outside tv', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(325, 'NBC Sports', 'NBC Sports', 14, '', 2, 240, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(352, 'Sundance T', 'Sundance TV', 0, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(331, 'People TV', 'People TV', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(129, 'Univision', 'Univision', 0, 'univision', 3, 100, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(302, 'ESPN2', 'ESPN2', 0, 'espn2', 2, 0, '0000-00-00 00:00:00', 0, 0, 307, 0, 0, 0),
(131, 'Fox News', 'Fox News', 8, 'fox_news', 1, 50, '0000-00-00 00:00:00', 88, 0, 348, 1, 0, 0),
(317, 'Law & Crim', 'Law & Crime', 17, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(341, 'WE tv', 'WE tv', 0, '', 5, 230, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(134, 'bein Sport', 'bein Sports n', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(137, 'Fox Deport', 'Fox Deportes', 14, 'fox_deportes', 4, 0, '0000-00-00 00:00:00', 0, 0, 265, 0, 0, 0),
(309, 'FS RSNs', 'FS RSNs', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(139, 'Eleven Spo', 'Eleven Sports', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(140, 'Fox Soccer', 'Fox Soccer Plus', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(141, 'FXM', 'FXM', 4, '', 4, 0, '0000-00-00 00:00:00', 15, 0, 0, 0, 0, 0),
(337, 'TLC', 'TLC', 0, 'tlc', 1, 200, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(340, 'USA', 'USA', 0, 'usa_network', 1, 80, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(144, 'TCM', 'TCM', 0, 'tcm', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(145, 'Telemundo', 'Telemundo', 0, 'telemundo', 5, 160, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(146, 'WLNY 55', 'WLNY 55', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(149, 'Cheddar Bu', 'Cheddar Business', 8, '', 3, 0, '0000-00-00 00:00:00', 12, 0, 99, 0, 8, 306),
(151, 'The Weathe', 'The Weather Channel', 0, 'the_weather_channel', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(152, 'Galavision', 'Galavision', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(153, 'Universo', 'Universo', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(154, 'UniMas', 'UniMas', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(155, 'Telexites', 'Telexites', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(157, 'Pop', 'Pop', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(158, 'Smithsonia', 'Smithsonian Channel', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(159, 'universal ', 'universal Kids', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(160, 'bein sport', 'bein sports 4-8', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(161, 'fuboTV Net', 'fuboTV Network', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(162, 'Nickelodeo', 'Nickelodeon', 0, 'nickelodeon', 1, 240, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(288, 'VH1', 'VH1', 0, '', 5, 90, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(301, 'E!', 'E!', 4, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(165, 'INSP', 'INSP', 4, '', 2, 140, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(168, 'Stadium', 'Stadium', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(169, 'Stadium 1', 'Stadium 1', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(170, 'Stadium 2', 'Stadium 2', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(171, 'Stadium 3', 'Stadium 3', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(172, 'XITE', 'XITE', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(173, 'XITE.rock', 'XITE.rock', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(174, 'XITE.vibe', 'XITE.vibe', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(175, 'BET Her', 'BET Her', 16, '', 3, 0, '0000-00-00 00:00:00', 12, 0, 0, 0, 0, 0),
(176, 'BET Jams', 'BET Jams', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(177, 'BET Soul', 'BET Soul', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(178, 'Nick Music', 'Nick Music', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(319, 'MLB Networ', 'MLB Network', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(181, 'OWN', 'OWN', 0, '', 2, 220, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(332, 'Science Ch', 'Science Channel', 0, '', 2, 0, '0000-00-00 00:00:00', 81, 0, 297, 0, 0, 0),
(333, 'SEC ESPN N', 'SEC ESPN Network', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(185, 'Tastemade', 'Tastemade', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(187, 'ASPiRE TV', 'ASPiRE TV', 10, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(188, 'Destinatio', 'Destination America', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(189, 'Discovery ', 'Discovery Family', 10, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(192, 'MTV Live', 'MTV Live', 4, 'mtv_live', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(193, 'UP', 'UP', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(194, 'ABC', 'ABC', 16, 'abc', 1, 30, '2019-04-24 21:30:39', 4, 0, 0, 0, 0, 0),
(326, 'NBC', 'NBC', 16, 'nbc', 1, 10, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(346, 'Discovery ', 'Discovery Life', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(200, 'Comet', 'Comet', 4, '', 3, 0, '0000-00-00 00:00:00', 2820, 0, 47, 0, 0, 0),
(201, 'The CW', 'The CW', 0, 'cw', 1, 110, '0000-00-00 00:00:00', 28, 0, 0, 1, 0, 0),
(303, 'ESPNU', 'ESPNU', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(205, 'Fox Sports', 'Fox Sports', 14, 'fox_sports', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(207, 'Los Angele', 'Los Angeles Football Club', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(210, 'NECN', 'NECN', 8, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(211, 'NESN', 'NESN', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(212, 'Orlando Ci', 'Orlando City SC', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(213, 'Seattle So', 'Seattle Sounders', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(353, 'W', 'W', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(215, 'NBC Univer', 'NBC Universo', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(216, 'The Young ', 'The Young Turks', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(217, 'YouTube Or', 'YouTube Originals', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(218, 'ABC NEWS L', 'ABC NEWS LIVE', 8, '', 3, 0, '0000-00-00 00:00:00', 25, 0, 0, 0, 0, 0),
(344, 'CBSN', 'CBSN', 8, '', 3, 0, '0000-00-00 00:00:00', 25, 0, 23, 0, 0, 0),
(292, 'CNBC World', 'CNBC World', 8, 'cnbc_world', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(222, 'CNN INTERN', 'CNN INTERNATIONAL', 8, 'cnn_international', 3, 0, '0000-00-00 00:00:00', 0, 0, 86, 0, 0, 0),
(348, 'Theblaze', 'Theblaze', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(304, 'ESPNews', 'ESPNews', 0, 'espnews', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(227, 'ESPN COLLE', 'ESPN COLLEGE EXTRA', 6, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(312, 'Hallmark C', 'Hallmark Channel', 4, 'hallmark_channel', 1, 170, '0000-00-00 00:00:00', 2794, 0, 21, 1, 0, 0),
(324, 'NBA tv', 'NBA tv', 14, 'nba_tv', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(334, 'Sony Movie', 'Sony Movie', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(338, 'Travel Cha', 'Travel Channel', 0, '', 5, 180, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(339, 'TruTV', 'TruTV', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(293, 'American H', 'American Heroes Channel', 5, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(299, 'Disney Cha', 'Disney Channel', 25, 'disney_channel', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(237, 'AUDIENCE', 'AUDIENCE', 7, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(347, 'Disney Jun', 'Disney Junior', 25, '', 2, 130, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(311, 'Golf Chann', 'Golf Channel', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(313, 'Hallmark M', 'Hallmark Moves & Mysteries', 4, '', 2, 110, '0000-00-00 00:00:00', 2794, 0, 318, 1, 0, 0),
(314, 'HISTORY', 'HISTORY', 27, 'history', 1, 150, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(242, 'HELLO LABS', 'HELLO LABS', 16, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(245, 'TAYLOR SWI', 'TAYLOR SWIFT NOW', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(246, 'VELOCITY', 'VELOCITY', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(342, 'YES Networ', 'YES Network', 0, '', 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(248, 'HBO', 'HBO', 4, 'hbo', 1, 0, '0000-00-00 00:00:00', 10, 0, 274, 0, 255, 0),
(249, 'HBO Family', 'HBO Family', 4, 'hbo_family', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(250, 'HBO Latino', 'HBO Latino', 4, 'hbo_latino', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(251, 'Accuweathe', 'Accuweather', 8, '', 3, 0, '0000-00-00 00:00:00', 51, 0, 151, 1, 0, 0),
(300, 'DIY Networ', 'DIY Network', 4, 'diy_network', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(321, 'My Network', 'My Network TV', 16, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(254, 'Ovation', 'Ovation', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(255, 'Cinemax', 'Cinemax', 16, '', 3, 0, '0000-00-00 00:00:00', 10, 0, 248, 0, 274, 0),
(305, 'ESPN Goal ', 'ESPN Goal Line', 0, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(345, 'CBS Sports', 'CBS Sports Network', 14, 'cbs_sports_network', 3, 0, '0000-00-00 00:00:00', 72, 0, 0, 1, 0, 0),
(296, 'Cozi TV', 'Cozi TV', 16, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(295, 'Big Ten Ne', 'Big Ten Network', 14, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(297, 'Discovery', 'Discovery', 4, 'discovery', 1, 180, '0000-00-00 00:00:00', 81, 0, 322, 1, 0, 0),
(264, 'Epix Hits', 'Epix Hits', 4, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(265, 'ESPN Depor', 'ESPN Deportes', 30, 'espn_deportes', 3, 0, '0000-00-00 00:00:00', 0, 0, 137, 0, 0, 0),
(307, 'FS1', 'FS1', 14, '', 2, 0, '0000-00-00 00:00:00', 72, 0, 5, 0, 0, 0),
(267, 'Ginx Espor', 'Ginx EsportsTV', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(350, 'NBC RSNs', 'NBC RSNs', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(316, 'Investigat', 'Investigation Discovery', 17, 'investigation_discovery', 1, 190, '2019-05-20 17:48:17', 0, 0, 0, 0, 0, 0),
(318, 'Lifetime M', 'Lifetime Movies', 4, '', 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(322, 'National G', 'National Geographic', 4, 'nat_geo', 1, 250, '0000-00-00 00:00:00', 81, 0, 297, 0, 0, 0),
(323, 'Nat Geo Wi', 'Nat Geo Wild', 4, 'nat_geo_wild', 2, 0, '0000-00-00 00:00:00', 0, 0, 291, 0, 0, 0),
(273, 'PS emergin', 'PS emerging filmakers program', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(274, 'Showtime', 'Showtime', 0, 'showtime', 1, 0, '0000-00-00 00:00:00', 30, 0, 248, 0, 255, 0),
(335, 'StartTV', 'StartTV', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(276, 'Spotlight', 'Spotlight', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(306, 'Fox Busine', 'Fox Business', 8, 'fox_business', 3, 0, '0000-00-00 00:00:00', 12, 0, 99, 0, 8, 149),
(279, 'ESPN Class', 'ESPN Classic', 2, 'espn_classic', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(280, 'Longhorn N', 'Longhorn Network', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(281, 'MLB Strike', 'MLB StrikeZone', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(282, 'NESN Natio', 'NESN National', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(330, 'PAC 12', 'PAC 12', 0, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(310, 'FYI,', 'FYI,', 4, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 17, 0, 0, 0),
(285, 'Fox Colleg', 'Fox College Sports', 14, '', 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(286, 'Baby TV', 'Baby TV', 25, '', 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0),
(291, 'Animal Pla', 'Animal Planet', 4, 'animal_planet', 2, 170, '0000-00-00 00:00:00', 0, 0, 323, 0, 0, 0),
(355, 'OANN', 'One America News Network', 8, '', 3, 0, '2019-05-20 17:47:18', 0, 0, 0, 0, 0, 0),
(356, 'C-SPAN', 'C-SPAN', 8, 'c-span', 3, 0, '2019-05-20 17:46:28', 0, 0, 0, 0, 0, 0),
(357, 'REELZ', 'REELZ', 17, '', 3, 0, '2019-05-20 17:48:01', 0, 0, 0, 0, 0, 0),
(358, 'PBS', 'PBS', 25, 'pbs', 3, 0, '0000-00-00 00:00:00', 23, 0, 0, 1, 0, 0),
(359, 'Starz', 'Starz', 0, 'starz', 1, 0, '2019-06-12 09:28:19', 0, 0, 0, 0, 0, 0),
(361, 'EPIX', 'EPIX', 0, 'epix', 1, 0, '2019-06-17 20:50:02', 0, 0, 0, 0, 0, 0);

--  --------------------------------------------------------

--
-- Table structure for table `channel_groupings`
--

CREATE TABLE `channel_groupings` (
  `channel_grouping_id` int(2) NOT NULL,
  `channel_grouping_name` varchar(255) NOT NULL,
  `channel_grouping_sort_order` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `channel_groupings`
--

INSERT INTO `channel_groupings` (`channel_grouping_id`, `channel_grouping_name`, `channel_grouping_sort_order`) VALUES
(1, 'Top 25', 10),
(2, '26-50', 20),
(3, 'The Rest', 30),
(4, 'Not set', 99),
(5, '51-75', 25);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `url`, `logo`, `icon`) VALUES
(1, 'Spectrum', '', '', ''),
(2, 'Sling', '', '/assets/images/logos/services/sling-logo.png', ''),
(3, 'Fubu', '', '/assets/images/logos/services/fubu-logo.png', ''),
(4, 'Philo', '', '/assets/images/logos/services/philo-logo.png', ''),
(5, 'Youtube', '', '/assets/images/logos/services/youtube-logo.png', ''),
(6, 'HULU', '', '/assets/images/logos/services/hulu-wide.png', '/assets/images/logos/services/hulu-icon.png'),
(7, 'Netflix', '', '', ''),
(8, 'Amazon', '', '', ''),
(9, 'AT&T', '', '/assets/images/logos/services/att-logo.png', ''),
(10, 'DirecTV', '', '/assets/images/logos/services/directvnow-logo.png', ''),
(11, 'Playstation Vue', '', '/assets/images/logos/services/playstation-vue-logo.png', '');

-- 