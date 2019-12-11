-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-11 15:31:11
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_home`
--

-- --------------------------------------------------------

--
-- 表的结构 `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, '北京'),
(2, '上海'),
(3, '成都'),
(4, '西安'),
(5, '重庆'),
(6, '杭州'),
(7, '南京'),
(8, '广州'),
(9, '哈尔滨'),
(10, '辽宁');

-- --------------------------------------------------------

--
-- 表的结构 `homestay`
--

CREATE TABLE `homestay` (
  `home_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `landlord_id` int(11) NOT NULL,
  `home_bigImg` varchar(128) NOT NULL,
  `home_title` varchar(128) NOT NULL,
  `home_subtitle` varchar(128) NOT NULL,
  `discount` decimal(2,1) NOT NULL DEFAULT '1.0' COMMENT '折扣',
  `home_lastPrice` smallint(6) NOT NULL COMMENT '原价',
  `grade` int(11) NOT NULL COMMENT '评分',
  `tags` varchar(128) NOT NULL,
  `home_address` varchar(128) NOT NULL,
  `environment` varchar(512) NOT NULL,
  `inTime` varchar(32) NOT NULL,
  `outTime` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `homestay`
--

INSERT INTO `homestay` (`home_id`, `city_id`, `landlord_id`, `home_bigImg`, `home_title`, `home_subtitle`, `discount`, `home_lastPrice`, `grade`, `tags`, `home_address`, `environment`, `inTime`, `outTime`) VALUES
(1, 1, 1, 'images/home_imgs/Ruined1.jpg,images/home_imgs/Ruined2.jpg,images/home_imgs/Ruined3.jpg,images/home_imgs/Ruined4.jpg', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '整间LOFT,1室1卫1床,最多住2人', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(2, 1, 3, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00'),
(4, 1, 1, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00'),
(5, 1, 2, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00');

-- --------------------------------------------------------

--
-- 表的结构 `landlord`
--

CREATE TABLE `landlord` (
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(32) NOT NULL,
  `landlord_appraise` varchar(128) NOT NULL,
  `landlord_produce` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `landlord`
--

INSERT INTO `landlord` (`landlord_id`, `landlord_name`, `landlord_appraise`, `landlord_produce`) VALUES
(1, 'Kk', '超赞房东 · 共收到1025条评价 · 已验证', '老姐姐,设计专业,希望给第一次来上海的小可爱们带来不一样的惊喜｡i\'m Interior designer & producer ^ ^ based at Shanghai.\r\n可爱善良的管家罗阿姨或者KK小房东一起管理的民宿~ '),
(2, 'Cc', '超赞房东 · 共收到1025条评价 · 已验证', '老姐姐,设计专业,希望给第一次来上海的小可爱们带来不一样的惊喜｡i\'m Interior designer & producer ^ ^ based at Shanghai.\r\n可爱善良的管家罗阿姨或者KK小房东一起管理的民宿~ '),
(3, 'Dd', '超赞房东 · 共收到1025条评价 · 已验证', '老姐姐,设计专业,希望给第一次来上海的小可爱们带来不一样的惊喜｡i\'m Interior designer & producer ^ ^ based at Shanghai.\r\n可爱善良的管家罗阿姨或者KK小房东一起管理的民宿~ ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
  ADD PRIMARY KEY (`landlord_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `homestay`
--
ALTER TABLE `homestay`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `landlord`
--
ALTER TABLE `landlord`
  MODIFY `landlord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
