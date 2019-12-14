-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-14 08:05:00
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
(2, 2, 3, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00'),
(4, 2, 1, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00'),
(5, 2, 2, 'images/home_imgs/sh1.jpg,images/home_imgs/sh2.jpg,images/home_imgs/sh3.jpg,images/home_imgs/sh4.jpg,', 'Greendoor/ Spainsh style/FCC', '上海,整间LOFT,1室1卫1床,最多住1人', '0.9', 87, 5, '整套房子/公寓,超赞房东,高性价比,自助入住,可以停车', '上海,中国', '楼下对面就是大型购物中心，内有电影院、ktv、超市和海底捞、大董等各式美食。\r\n• 故宫：车程 20 分钟\r\n• 天坛：车程 12 分钟\r\n• 北京南站：车程 12 分钟\r\n• 南苑机场：车程 21 分钟', '14:00', '1:00'),
(6, 2, 3, 'images/home_imgs/sh/h1.jpg,images/home_imgs/sh/h2.jpg,images/home_imgs/sh/h3.jpg,images/home_imgs/sh/h4.jpg', '【东昌】陆家嘴/八佰伴/东昌路温馨一居室', '上海·整套公寓·1室1卫1床·最多住2人', '0.0', 260, 5, '4.8分 · 4条评论，整套房子/公寓，近地铁站，可以做饭，有洗衣机', '上海，中国', '{哈喽，欢迎入住大牛的家！}大牛是一名互联网宅男运营，从大学毕业以后一直待在上海，喜欢结交来自世界各地、不同行业的朋友，喜欢分享自己的经历，喜欢旅游，更喜欢装饰房子。城市一隅，总有某个温暖的角落为你停留。消除您旅途的疲惫，成为您旅行途中的慵懒小窝。小窝位于东昌路地铁旁，周边交通便利，餐饮商店琳琅满目，非常便捷呢！小窝装修清新温暖，家电齐全。精心为您配备了电视机、洗衣机、晾衣架、空调、冰箱等家电。热…', '', ''),
(7, 1, 2, 'images/home_imgs/bj/bj1.jpg,images/home_imgs/bj/bj2.jpg,images/home_imgs/bj/bj3.jpg,images/home_imgs/bj/bj4.jpg', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '北京 · 客房里的独立房间', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(8, 1, 1, 'images/home_imgs/bj/bj1.jpg,images/home_imgs/bj/bj2.jpg,images/home_imgs/bj/bj3.jpg,images/home_imgs/bj/bj4.jpg', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '北京 · 客房里的独立房间', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(9, 1, 1, 'images/home_imgs/bj/bj1.jpg,images/home_imgs/bj/bj2.jpg,images/home_imgs/bj/bj3.jpg,images/home_imgs/bj/bj4.jpg', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '北京 · 客房里的独立房间', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(10, 3, 2, 'images/home_imgs/cd/cd1.jpg,images/home_imgs/cd/cd2.jpg,images/home_imgs/cd/cd3.jps,images/home_imgs/cd/cd4.jps', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '成都市 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(11, 3, 3, 'images/home_imgs/cd/cd1.jpg,images/home_imgs/cd/cd2.jpg,images/home_imgs/cd/cd3.jps,images/home_imgs/cd/cd4.jps', '同商圈最高性价比！『尔南•宿-ins风』春熙路/太古里/宽窄巷子双地铁/行李寄存可开发票', '成都市 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '-----如果此房源在您选定日期无房,请点击房东头像，可查看同大厦内的其他精致房源-----\r\n\r\n房源位于成都著名的顺城大街和西玉龙街的交叉口，属于春熙路、天府广场、宽窄巷子商圈，公寓附近有很多出名的小吃、餐馆，陈麻婆豆腐老店、第四代面吧、滇味餐厅、滇禧园滚锅牛、好奇鸭甜品店、六和豆浆、罗莎蛋糕、满记甜品、邱二哥锅盔、四川特产购物中心、宋鸡片、甜叔叔专卖店、云南蒙自过桥米线、张烤鸭、张凉粉、重庆懒鬼…', '14:00', '12:00'),
(12, 3, 3, 'images/home_imgs/cd/cd1.jpg,images/home_imgs/cd/cd2.jpg,images/home_imgs/cd/cd3.jps,images/home_imgs/cd/cd4.jps', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '成都市 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(13, 3, 3, 'images/home_imgs/cd/cd1.jpg,images/home_imgs/cd/cd2.jpg,images/home_imgs/cd/cd3.jps,images/home_imgs/cd/cd4.jps', 'Ruined houseA【距离雍和宫地铁站仅300米】(面积最大,设施最棒)后海､南锣鼓巷､故宫', '成都市 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '北京,中国', '我们的小房子坐落于北京著名的文化胡同.\r\n这条胡同里各色餐馆和店铺林立,可以满足多种味觉需求,多种购物需求.', '14:00', '12:00'),
(14, 4, 1, 'images/home_imgs/cq/cq1.jpg,images/home_imgs/cq/cq2.jpg,images/home_imgs/cq/cq3.jpg,images/home_imgs/cq/cq4.jpg', '洪崖洞边上舒适一房+高清投影+行李寄存+可做饭！', '重庆 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '重庆，中国', '我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。', '14:00', '12:00'),
(15, 4, 1, 'images/home_imgs/cq/cq1.jpg,images/home_imgs/cq/cq2.jpg,images/home_imgs/cq/cq3.jpg,images/home_imgs/cq/cq4.jpg', '洪崖洞边上舒适一房+高清投影+行李寄存+可做饭！', '重庆 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '重庆，中国', '我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。', '14:00', '12:00'),
(16, 4, 2, 'images/home_imgs/cq/cq1.jpg,images/home_imgs/cq/cq2.jpg,images/home_imgs/cq/cq3.jpg,images/home_imgs/cq/cq4.jpg', '洪崖洞边上舒适一房+高清投影+行李寄存+可做饭！', '重庆 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '重庆，中国', '我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。', '14:00', '12:00'),
(17, 4, 2, 'images/home_imgs/cq/cq1.jpg,images/home_imgs/cq/cq2.jpg,images/home_imgs/cq/cq3.jpg,images/home_imgs/cq/cq4.jpg', '洪崖洞边上舒适一房+高清投影+行李寄存+可做饭！', '重庆 · 整套公寓', '0.9', 298, 5, '整套房子/公寓,近地铁站,高性价比,可以做饭,有洗衣机', '重庆，中国', '我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。', '14:00', '12:00'),
(18, 5, 3, 'images/home_imgs/gz/zg1.jpg,images/home_imgs/gz/zg2.jpg,images/home_imgs/gz/zg3.jpg,images/home_imgs/gz/zg4.jpg', '【ins漫生活】北京路步行街/圣心教堂/广州塔/私人影院，独立卫浴，初见3号带您吃遍广州感受地道文化', '广州市 · 整套公寓', '0.9', 298, 5, '4.6分 · 26条评论,超赞房东,近地铁站,可存行李', '广州，中国', '临近地铁6号线团一大站B出口一站直达北京路商圈！交通便利，中心城区！步行3分钟到珠江边，畅游珠江夜景！', '14:00', '12:00'),
(19, 5, 3, 'images/home_imgs/gz/zg1.jpg,images/home_imgs/gz/zg2.jpg,images/home_imgs/gz/zg3.jpg,images/home_imgs/gz/zg4.jpg', '【ins漫生活】北京路步行街/圣心教堂/广州塔/私人影院，独立卫浴，初见3号带您吃遍广州感受地道文化', '广州市 · 整套公寓', '0.9', 298, 5, '4.6分 · 26条评论,超赞房东,近地铁站,可存行李', '广州，中国', '临近地铁6号线团一大站B出口一站直达北京路商圈！交通便利，中心城区！步行3分钟到珠江边，畅游珠江夜景！', '14:00', '12:00'),
(20, 5, 2, 'images/home_imgs/gz/zg1.jpg,images/home_imgs/gz/zg2.jpg,images/home_imgs/gz/zg3.jpg,images/home_imgs/gz/zg4.jpg', '【ins漫生活】北京路步行街/圣心教堂/广州塔/私人影院，独立卫浴，初见3号带您吃遍广州感受地道文化', '广州市 · 整套公寓', '0.9', 298, 5, '4.6分 · 26条评论,超赞房东,近地铁站,可存行李', '广州，中国', '临近地铁6号线团一大站B出口一站直达北京路商圈！交通便利，中心城区！步行3分钟到珠江边，畅游珠江夜景！', '14:00', '12:00'),
(21, 5, 3, 'images/home_imgs/gz/zg1.jpg,images/home_imgs/gz/zg2.jpg,images/home_imgs/gz/zg3.jpg,images/home_imgs/gz/zg4.jpg', '【ins漫生活】北京路步行街/圣心教堂/广州塔/私人影院，独立卫浴，初见3号带您吃遍广州感受地道文化', '广州市 · 整套公寓', '0.9', 298, 5, '4.6分 · 26条评论,超赞房东,近地铁站,可存行李', '广州，中国', '临近地铁6号线团一大站B出口一站直达北京路商圈！交通便利，中心城区！步行3分钟到珠江边，畅游珠江夜景！', '14:00', '12:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`home_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `homestay`
--
ALTER TABLE `homestay`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
